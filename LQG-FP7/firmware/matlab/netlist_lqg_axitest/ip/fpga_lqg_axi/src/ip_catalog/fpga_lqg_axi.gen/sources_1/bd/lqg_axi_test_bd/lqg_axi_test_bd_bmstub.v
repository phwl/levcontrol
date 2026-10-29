// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module lqg_axi_test_bd (
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
  lqg_f_res_gw_0,
  lqg_f_res_gw_1,
  lqg_f_res_gw_10,
  lqg_f_res_gw_11,
  lqg_f_res_gw_12,
  lqg_f_res_gw_13,
  lqg_f_res_gw_14,
  lqg_f_res_gw_15,
  lqg_f_res_gw_16,
  lqg_f_res_gw_17,
  lqg_f_res_gw_18,
  lqg_f_res_gw_19,
  lqg_f_res_gw_2,
  lqg_f_res_gw_20,
  lqg_f_res_gw_21,
  lqg_f_res_gw_22,
  lqg_f_res_gw_23,
  lqg_f_res_gw_24,
  lqg_f_res_gw_25,
  lqg_f_res_gw_26,
  lqg_f_res_gw_27,
  lqg_f_res_gw_28,
  lqg_f_res_gw_29,
  lqg_f_res_gw_3,
  lqg_f_res_gw_30,
  lqg_f_res_gw_31,
  lqg_f_res_gw_32,
  lqg_f_res_gw_33,
  lqg_f_res_gw_34,
  lqg_f_res_gw_35,
  lqg_f_res_gw_36,
  lqg_f_res_gw_37,
  lqg_f_res_gw_38,
  lqg_f_res_gw_39,
  lqg_f_res_gw_4,
  lqg_f_res_gw_40,
  lqg_f_res_gw_41,
  lqg_f_res_gw_42,
  lqg_f_res_gw_43,
  lqg_f_res_gw_44,
  lqg_f_res_gw_45,
  lqg_f_res_gw_46,
  lqg_f_res_gw_47,
  lqg_f_res_gw_48,
  lqg_f_res_gw_5,
  lqg_f_res_gw_6,
  lqg_f_res_gw_7,
  lqg_f_res_gw_8,
  lqg_f_res_gw_9,
  lqg_f_shift_gw_0,
  lqg_f_shift_gw_1,
  lqg_f_shift_gw_10,
  lqg_f_shift_gw_11,
  lqg_f_shift_gw_12,
  lqg_f_shift_gw_13,
  lqg_f_shift_gw_14,
  lqg_f_shift_gw_15,
  lqg_f_shift_gw_16,
  lqg_f_shift_gw_17,
  lqg_f_shift_gw_18,
  lqg_f_shift_gw_19,
  lqg_f_shift_gw_2,
  lqg_f_shift_gw_20,
  lqg_f_shift_gw_21,
  lqg_f_shift_gw_22,
  lqg_f_shift_gw_23,
  lqg_f_shift_gw_24,
  lqg_f_shift_gw_25,
  lqg_f_shift_gw_26,
  lqg_f_shift_gw_27,
  lqg_f_shift_gw_28,
  lqg_f_shift_gw_29,
  lqg_f_shift_gw_3,
  lqg_f_shift_gw_30,
  lqg_f_shift_gw_31,
  lqg_f_shift_gw_32,
  lqg_f_shift_gw_33,
  lqg_f_shift_gw_34,
  lqg_f_shift_gw_35,
  lqg_f_shift_gw_36,
  lqg_f_shift_gw_37,
  lqg_f_shift_gw_38,
  lqg_f_shift_gw_39,
  lqg_f_shift_gw_4,
  lqg_f_shift_gw_40,
  lqg_f_shift_gw_41,
  lqg_f_shift_gw_42,
  lqg_f_shift_gw_43,
  lqg_f_shift_gw_44,
  lqg_f_shift_gw_45,
  lqg_f_shift_gw_46,
  lqg_f_shift_gw_47,
  lqg_f_shift_gw_48,
  lqg_f_shift_gw_5,
  lqg_f_shift_gw_6,
  lqg_f_shift_gw_7,
  lqg_f_shift_gw_8,
  lqg_f_shift_gw_9,
  lqg_gamma_res_gw_0,
  lqg_gamma_res_gw_1,
  lqg_gamma_res_gw_10,
  lqg_gamma_res_gw_11,
  lqg_gamma_res_gw_12,
  lqg_gamma_res_gw_13,
  lqg_gamma_res_gw_2,
  lqg_gamma_res_gw_3,
  lqg_gamma_res_gw_4,
  lqg_gamma_res_gw_5,
  lqg_gamma_res_gw_6,
  lqg_gamma_res_gw_7,
  lqg_gamma_res_gw_8,
  lqg_gamma_res_gw_9,
  lqg_gamma_shift_gw_0,
  lqg_gamma_shift_gw_1,
  lqg_gamma_shift_gw_10,
  lqg_gamma_shift_gw_11,
  lqg_gamma_shift_gw_12,
  lqg_gamma_shift_gw_13,
  lqg_gamma_shift_gw_2,
  lqg_gamma_shift_gw_3,
  lqg_gamma_shift_gw_4,
  lqg_gamma_shift_gw_5,
  lqg_gamma_shift_gw_6,
  lqg_gamma_shift_gw_7,
  lqg_gamma_shift_gw_8,
  lqg_gamma_shift_gw_9,
  lqg_k_res_gw_0,
  lqg_k_res_gw_1,
  lqg_k_res_gw_10,
  lqg_k_res_gw_11,
  lqg_k_res_gw_12,
  lqg_k_res_gw_13,
  lqg_k_res_gw_2,
  lqg_k_res_gw_3,
  lqg_k_res_gw_4,
  lqg_k_res_gw_5,
  lqg_k_res_gw_6,
  lqg_k_res_gw_7,
  lqg_k_res_gw_8,
  lqg_k_res_gw_9,
  lqg_k_shift_gw_0,
  lqg_k_shift_gw_1,
  lqg_k_shift_gw_10,
  lqg_k_shift_gw_11,
  lqg_k_shift_gw_12,
  lqg_k_shift_gw_13,
  lqg_k_shift_gw_2,
  lqg_k_shift_gw_3,
  lqg_k_shift_gw_4,
  lqg_k_shift_gw_5,
  lqg_k_shift_gw_6,
  lqg_k_shift_gw_7,
  lqg_k_shift_gw_8,
  lqg_k_shift_gw_9,
  lqg_l_res_gw_0,
  lqg_l_res_gw_1,
  lqg_l_res_gw_10,
  lqg_l_res_gw_11,
  lqg_l_res_gw_12,
  lqg_l_res_gw_13,
  lqg_l_res_gw_2,
  lqg_l_res_gw_3,
  lqg_l_res_gw_4,
  lqg_l_res_gw_5,
  lqg_l_res_gw_6,
  lqg_l_res_gw_7,
  lqg_l_res_gw_8,
  lqg_l_res_gw_9,
  lqg_l_shift_gw_0,
  lqg_l_shift_gw_1,
  lqg_l_shift_gw_10,
  lqg_l_shift_gw_11,
  lqg_l_shift_gw_12,
  lqg_l_shift_gw_13,
  lqg_l_shift_gw_2,
  lqg_l_shift_gw_3,
  lqg_l_shift_gw_4,
  lqg_l_shift_gw_5,
  lqg_l_shift_gw_6,
  lqg_l_shift_gw_7,
  lqg_l_shift_gw_8,
  lqg_l_shift_gw_9,
  lqg_led_in,
  lqg_led_out,
  proc_sys_clk,
  uk_factor_gw_0,
  uk_factor_gw_1,
  uk_gw_0,
  uk_gw_1,
  uk_offset_gw_0,
  uk_offset_gw_1,
  xkhat_gw_0,
  xkhat_gw_1,
  xkhat_gw_2,
  xkhat_gw_3,
  xkhat_gw_4,
  xkhat_gw_5,
  xkhat_gw_6,
  yk_factor_gw_0,
  yk_factor_gw_1,
  yk_gw_0,
  yk_gw_1,
  yk_offset_gw_0,
  yk_offset_gw_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_0, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_1, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_10, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_11, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_12, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_13, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_14 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_14" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_14, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_15 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_15" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_15, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_16 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_16" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_16, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_16;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_17 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_17" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_17, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_17;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_18 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_18" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_18, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_18;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_19 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_19" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_19, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_19;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_2, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_20 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_20" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_20, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_20;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_21 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_21" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_21, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_21;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_22 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_22" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_22, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_22;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_23 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_23" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_23, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_23;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_24 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_24" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_24, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_24;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_25 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_25" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_25, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_25;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_26 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_26" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_26, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_26;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_27 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_27" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_27, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_27;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_28 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_28" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_28, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_28;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_29 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_29" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_29, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_29;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_3, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_30 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_30" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_30, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_30;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_31 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_31" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_31, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_31;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_32 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_32" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_32, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_32;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_33 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_33" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_33, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_33;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_34 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_34" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_34, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_34;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_35 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_35" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_35, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_35;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_36 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_36" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_36, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_36;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_37 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_37" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_37, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_37;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_38 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_38" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_38, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_38;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_39 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_39" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_39, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_39;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_4, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_40 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_40" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_40, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_40;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_41 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_41" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_41, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_41;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_42 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_42" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_42, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_42;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_43 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_43" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_43, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_43;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_44 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_44" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_44, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_44;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_45 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_45" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_45, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_45;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_46 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_46" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_46, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_46;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_47 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_47" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_47, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_47;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_48 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_48" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_48, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_48;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_5, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_6, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_7, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_8, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_RES_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_9, LAYERED_METADATA undef" *)
  input [17:0]lqg_f_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_0, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_1, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_10, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_11, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_12, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_13, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_14 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_14" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_14, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_15 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_15" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_15, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_16 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_16" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_16, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_16;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_17 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_17" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_17, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_17;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_18 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_18" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_18, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_18;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_19 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_19" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_19, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_19;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_2, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_20 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_20" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_20, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_20;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_21 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_21" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_21, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_21;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_22 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_22" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_22, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_22;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_23 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_23" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_23, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_23;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_24 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_24" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_24, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_24;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_25 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_25" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_25, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_25;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_26 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_26" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_26, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_26;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_27 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_27" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_27, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_27;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_28 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_28" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_28, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_28;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_29 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_29" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_29, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_29;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_3, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_30 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_30" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_30, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_30;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_31 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_31" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_31, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_31;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_32 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_32" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_32, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_32;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_33 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_33" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_33, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_33;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_34 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_34" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_34, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_34;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_35 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_35" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_35, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_35;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_36 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_36" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_36, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_36;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_37 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_37" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_37, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_37;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_38 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_38" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_38, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_38;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_39 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_39" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_39, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_39;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_4, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_40 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_40" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_40, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_40;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_41 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_41" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_41, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_41;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_42 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_42" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_42, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_42;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_43 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_43" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_43, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_43;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_44 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_44" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_44, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_44;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_45 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_45" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_45, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_45;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_46 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_46" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_46, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_46;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_47 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_47" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_47, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_47;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_48 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_48" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_48, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_48;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_5, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_6, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_7, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_8, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_F_SHIFT_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_9, LAYERED_METADATA undef" *)
  input [4:0]lqg_f_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_0, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_1, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_10, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_11, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_12, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_13, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_2, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_3, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_4, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_5, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_6, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_7, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_8, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_RES_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_9, LAYERED_METADATA undef" *)
  input [17:0]lqg_gamma_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_0, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_1, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_10, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_11, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_12, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_13, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_2, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_3, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_4, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_5, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_6, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_7, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_8, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_GAMMA_SHIFT_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_9, LAYERED_METADATA undef" *)
  input [4:0]lqg_gamma_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_0, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_1, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_10, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_11, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_12, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_13, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_2, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_3, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_4, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_5, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_6, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_7, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_8, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_RES_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_9, LAYERED_METADATA undef" *)
  input [17:0]lqg_k_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_0, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_1, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_10, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_11, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_12, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_13, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_2, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_3, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_4, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_5, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_6, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_7, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_8, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_K_SHIFT_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_9, LAYERED_METADATA undef" *)
  input [5:0]lqg_k_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_0, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_1, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_10, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_11, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_12, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_13, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_2, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_3, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_4, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_5, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_6, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_7, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_8, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_RES_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_9, LAYERED_METADATA undef" *)
  input [17:0]lqg_l_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_0, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_1, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_10 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_10" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_10, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_11 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_11" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_11, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_12 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_12" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_12, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_13 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_13" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_13, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_2, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_3, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_4, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_5, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_6, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_7 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_7" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_7, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_8 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_8" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_8, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_9 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_L_SHIFT_GW_9" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_9, LAYERED_METADATA undef" *)
  input [4:0]lqg_l_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_LED_IN DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.LQG_LED_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_LED_IN, LAYERED_METADATA undef" *)
  input [7:0]lqg_led_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_LED_OUT DATA" *)
  (* X_INTERFACE_MODE = "master DATA.LQG_LED_OUT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_LED_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
  output [7:0]lqg_led_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PROC_SYS_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.PROC_SYS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PROC_SYS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN lqg_axi_test_bd_proc_sys_clk, INSERT_VIP 0" *)
  input proc_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_FACTOR_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.UK_FACTOR_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_FACTOR_GW_0, LAYERED_METADATA undef" *)
  input [17:0]uk_factor_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_FACTOR_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.UK_FACTOR_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_FACTOR_GW_1, LAYERED_METADATA undef" *)
  input [17:0]uk_factor_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.UK_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_GW_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [13:0]uk_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.UK_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_GW_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [13:0]uk_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_OFFSET_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.UK_OFFSET_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_OFFSET_GW_0, LAYERED_METADATA undef" *)
  input [13:0]uk_offset_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_OFFSET_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.UK_OFFSET_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_OFFSET_GW_1, LAYERED_METADATA undef" *)
  input [13:0]uk_offset_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_2 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_3 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_4 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_5 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_6 DATA" *)
  (* X_INTERFACE_MODE = "master DATA.XKHAT_GW_6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
  output [24:0]xkhat_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_FACTOR_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_FACTOR_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_FACTOR_GW_0, LAYERED_METADATA undef" *)
  input [17:0]yk_factor_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_FACTOR_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_FACTOR_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_FACTOR_GW_1, LAYERED_METADATA undef" *)
  input [17:0]yk_factor_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_GW_0, LAYERED_METADATA undef" *)
  input [13:0]yk_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_GW_1, LAYERED_METADATA undef" *)
  input [13:0]yk_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_OFFSET_GW_0 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_OFFSET_GW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_OFFSET_GW_0, LAYERED_METADATA undef" *)
  input [13:0]yk_offset_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_OFFSET_GW_1 DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.YK_OFFSET_GW_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_OFFSET_GW_1, LAYERED_METADATA undef" *)
  input [13:0]yk_offset_gw_1;

  // stub module has no contents

endmodule
