//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Apr  1 14:24:17 2026
//Host        : model-composer running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target lqg_axi_test_bd.bd
//Design      : lqg_axi_test_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "lqg_axi_test_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lqg_axi_test_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,da_axi4_cnt=1,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "lqg_axi_test_bd.hwdef" *) 
module lqg_axi_test_bd
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
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
    yk_offset_gw_1);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_0, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_1, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_10, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_11, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_12, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_13, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_14 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_14, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_15 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_15, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_16 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_16, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_16;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_17 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_17, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_17;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_18 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_18, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_18;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_19 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_19, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_19;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_2, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_20 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_20, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_20;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_21 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_21, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_21;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_22 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_22, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_22;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_23 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_23, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_23;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_24 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_24, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_24;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_25 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_25, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_25;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_26 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_26, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_26;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_27 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_27, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_27;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_28 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_28, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_28;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_29 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_29, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_29;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_3, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_30 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_30, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_30;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_31 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_31, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_31;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_32 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_32, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_32;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_33 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_33, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_33;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_34 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_34, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_34;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_35 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_35, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_35;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_36 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_36, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_36;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_37 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_37, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_37;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_38 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_38, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_38;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_39 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_39, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_39;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_4, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_40 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_40, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_40;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_41 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_41, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_41;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_42 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_42, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_42;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_43 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_43, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_43;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_44 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_44, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_44;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_45 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_45, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_45;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_46 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_46, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_46;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_47 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_47, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_47;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_48 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_48, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_48;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_5, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_6, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_7, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_8, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_RES_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_RES_GW_9, LAYERED_METADATA undef" *) input [17:0]lqg_f_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_0, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_1, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_10, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_11, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_12, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_13, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_14 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_14, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_15 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_15, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_16 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_16, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_16;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_17 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_17, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_17;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_18 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_18, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_18;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_19 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_19, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_19;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_2, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_20 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_20, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_20;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_21 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_21, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_21;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_22 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_22, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_22;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_23 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_23, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_23;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_24 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_24, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_24;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_25 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_25, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_25;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_26 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_26, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_26;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_27 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_27, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_27;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_28 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_28, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_28;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_29 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_29, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_29;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_3, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_30 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_30, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_30;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_31 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_31, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_31;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_32 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_32, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_32;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_33 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_33, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_33;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_34 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_34, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_34;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_35 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_35, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_35;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_36 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_36, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_36;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_37 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_37, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_37;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_38 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_38, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_38;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_39 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_39, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_39;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_4, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_40 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_40, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_40;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_41 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_41, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_41;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_42 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_42, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_42;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_43 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_43, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_43;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_44 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_44, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_44;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_45 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_45, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_45;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_46 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_46, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_46;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_47 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_47, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_47;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_48 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_48, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_48;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_5, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_6, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_7, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_8, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_F_SHIFT_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_F_SHIFT_GW_9, LAYERED_METADATA undef" *) input [4:0]lqg_f_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_0, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_1, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_10, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_11, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_12, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_13, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_2, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_3, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_4, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_5, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_6, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_7, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_8, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_RES_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_RES_GW_9, LAYERED_METADATA undef" *) input [17:0]lqg_gamma_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_0, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_1, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_10, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_11, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_12, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_13, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_2, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_3, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_4, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_5, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_6, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_7, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_8, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_GAMMA_SHIFT_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_GAMMA_SHIFT_GW_9, LAYERED_METADATA undef" *) input [4:0]lqg_gamma_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_0, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_1, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_10, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_11, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_12, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_13, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_2, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_3, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_4, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_5, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_6, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_7, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_8, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_RES_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_RES_GW_9, LAYERED_METADATA undef" *) input [17:0]lqg_k_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_0, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_1, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_10, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_11, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_12, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_13, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_2, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_3, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_4, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_5, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_6, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_7, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_8, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_K_SHIFT_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_K_SHIFT_GW_9, LAYERED_METADATA undef" *) input [5:0]lqg_k_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_0, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_1, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_10, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_11, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_12, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_13, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_2, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_3, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_4, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_5, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_6, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_7, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_8, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_RES_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_RES_GW_9, LAYERED_METADATA undef" *) input [17:0]lqg_l_res_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_0, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_1, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_10, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_11, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_12, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_13, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_2, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_3, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_4, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_5, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_6, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_7, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_8, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_L_SHIFT_GW_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_L_SHIFT_GW_9, LAYERED_METADATA undef" *) input [4:0]lqg_l_shift_gw_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_LED_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_LED_IN, LAYERED_METADATA undef" *) input [7:0]lqg_led_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LQG_LED_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LQG_LED_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [7:0]lqg_led_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PROC_SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PROC_SYS_CLK, CLK_DOMAIN lqg_axi_test_bd_proc_sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input proc_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_FACTOR_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_FACTOR_GW_0, LAYERED_METADATA undef" *) input [17:0]uk_factor_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_FACTOR_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_FACTOR_GW_1, LAYERED_METADATA undef" *) input [17:0]uk_factor_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_GW_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [13:0]uk_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_GW_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [13:0]uk_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_OFFSET_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_OFFSET_GW_0, LAYERED_METADATA undef" *) input [13:0]uk_offset_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UK_OFFSET_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UK_OFFSET_GW_1, LAYERED_METADATA undef" *) input [13:0]uk_offset_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.XKHAT_GW_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.XKHAT_GW_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 22} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [24:0]xkhat_gw_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_FACTOR_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_FACTOR_GW_0, LAYERED_METADATA undef" *) input [17:0]yk_factor_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_FACTOR_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_FACTOR_GW_1, LAYERED_METADATA undef" *) input [17:0]yk_factor_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_GW_0, LAYERED_METADATA undef" *) input [13:0]yk_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_GW_1, LAYERED_METADATA undef" *) input [13:0]yk_gw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_OFFSET_GW_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_OFFSET_GW_0, LAYERED_METADATA undef" *) input [13:0]yk_offset_gw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.YK_OFFSET_GW_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.YK_OFFSET_GW_1, LAYERED_METADATA undef" *) input [13:0]yk_offset_gw_1;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [17:0]lqg_f_res_gw_0;
  wire [17:0]lqg_f_res_gw_1;
  wire [17:0]lqg_f_res_gw_10;
  wire [17:0]lqg_f_res_gw_11;
  wire [17:0]lqg_f_res_gw_12;
  wire [17:0]lqg_f_res_gw_13;
  wire [17:0]lqg_f_res_gw_14;
  wire [17:0]lqg_f_res_gw_15;
  wire [17:0]lqg_f_res_gw_16;
  wire [17:0]lqg_f_res_gw_17;
  wire [17:0]lqg_f_res_gw_18;
  wire [17:0]lqg_f_res_gw_19;
  wire [17:0]lqg_f_res_gw_2;
  wire [17:0]lqg_f_res_gw_20;
  wire [17:0]lqg_f_res_gw_21;
  wire [17:0]lqg_f_res_gw_22;
  wire [17:0]lqg_f_res_gw_23;
  wire [17:0]lqg_f_res_gw_24;
  wire [17:0]lqg_f_res_gw_25;
  wire [17:0]lqg_f_res_gw_26;
  wire [17:0]lqg_f_res_gw_27;
  wire [17:0]lqg_f_res_gw_28;
  wire [17:0]lqg_f_res_gw_29;
  wire [17:0]lqg_f_res_gw_3;
  wire [17:0]lqg_f_res_gw_30;
  wire [17:0]lqg_f_res_gw_31;
  wire [17:0]lqg_f_res_gw_32;
  wire [17:0]lqg_f_res_gw_33;
  wire [17:0]lqg_f_res_gw_34;
  wire [17:0]lqg_f_res_gw_35;
  wire [17:0]lqg_f_res_gw_36;
  wire [17:0]lqg_f_res_gw_37;
  wire [17:0]lqg_f_res_gw_38;
  wire [17:0]lqg_f_res_gw_39;
  wire [17:0]lqg_f_res_gw_4;
  wire [17:0]lqg_f_res_gw_40;
  wire [17:0]lqg_f_res_gw_41;
  wire [17:0]lqg_f_res_gw_42;
  wire [17:0]lqg_f_res_gw_43;
  wire [17:0]lqg_f_res_gw_44;
  wire [17:0]lqg_f_res_gw_45;
  wire [17:0]lqg_f_res_gw_46;
  wire [17:0]lqg_f_res_gw_47;
  wire [17:0]lqg_f_res_gw_48;
  wire [17:0]lqg_f_res_gw_5;
  wire [17:0]lqg_f_res_gw_6;
  wire [17:0]lqg_f_res_gw_7;
  wire [17:0]lqg_f_res_gw_8;
  wire [17:0]lqg_f_res_gw_9;
  wire [4:0]lqg_f_shift_gw_0;
  wire [4:0]lqg_f_shift_gw_1;
  wire [4:0]lqg_f_shift_gw_10;
  wire [4:0]lqg_f_shift_gw_11;
  wire [4:0]lqg_f_shift_gw_12;
  wire [4:0]lqg_f_shift_gw_13;
  wire [4:0]lqg_f_shift_gw_14;
  wire [4:0]lqg_f_shift_gw_15;
  wire [4:0]lqg_f_shift_gw_16;
  wire [4:0]lqg_f_shift_gw_17;
  wire [4:0]lqg_f_shift_gw_18;
  wire [4:0]lqg_f_shift_gw_19;
  wire [4:0]lqg_f_shift_gw_2;
  wire [4:0]lqg_f_shift_gw_20;
  wire [4:0]lqg_f_shift_gw_21;
  wire [4:0]lqg_f_shift_gw_22;
  wire [4:0]lqg_f_shift_gw_23;
  wire [4:0]lqg_f_shift_gw_24;
  wire [4:0]lqg_f_shift_gw_25;
  wire [4:0]lqg_f_shift_gw_26;
  wire [4:0]lqg_f_shift_gw_27;
  wire [4:0]lqg_f_shift_gw_28;
  wire [4:0]lqg_f_shift_gw_29;
  wire [4:0]lqg_f_shift_gw_3;
  wire [4:0]lqg_f_shift_gw_30;
  wire [4:0]lqg_f_shift_gw_31;
  wire [4:0]lqg_f_shift_gw_32;
  wire [4:0]lqg_f_shift_gw_33;
  wire [4:0]lqg_f_shift_gw_34;
  wire [4:0]lqg_f_shift_gw_35;
  wire [4:0]lqg_f_shift_gw_36;
  wire [4:0]lqg_f_shift_gw_37;
  wire [4:0]lqg_f_shift_gw_38;
  wire [4:0]lqg_f_shift_gw_39;
  wire [4:0]lqg_f_shift_gw_4;
  wire [4:0]lqg_f_shift_gw_40;
  wire [4:0]lqg_f_shift_gw_41;
  wire [4:0]lqg_f_shift_gw_42;
  wire [4:0]lqg_f_shift_gw_43;
  wire [4:0]lqg_f_shift_gw_44;
  wire [4:0]lqg_f_shift_gw_45;
  wire [4:0]lqg_f_shift_gw_46;
  wire [4:0]lqg_f_shift_gw_47;
  wire [4:0]lqg_f_shift_gw_48;
  wire [4:0]lqg_f_shift_gw_5;
  wire [4:0]lqg_f_shift_gw_6;
  wire [4:0]lqg_f_shift_gw_7;
  wire [4:0]lqg_f_shift_gw_8;
  wire [4:0]lqg_f_shift_gw_9;
  wire [17:0]lqg_gamma_res_gw_0;
  wire [17:0]lqg_gamma_res_gw_1;
  wire [17:0]lqg_gamma_res_gw_10;
  wire [17:0]lqg_gamma_res_gw_11;
  wire [17:0]lqg_gamma_res_gw_12;
  wire [17:0]lqg_gamma_res_gw_13;
  wire [17:0]lqg_gamma_res_gw_2;
  wire [17:0]lqg_gamma_res_gw_3;
  wire [17:0]lqg_gamma_res_gw_4;
  wire [17:0]lqg_gamma_res_gw_5;
  wire [17:0]lqg_gamma_res_gw_6;
  wire [17:0]lqg_gamma_res_gw_7;
  wire [17:0]lqg_gamma_res_gw_8;
  wire [17:0]lqg_gamma_res_gw_9;
  wire [4:0]lqg_gamma_shift_gw_0;
  wire [4:0]lqg_gamma_shift_gw_1;
  wire [4:0]lqg_gamma_shift_gw_10;
  wire [4:0]lqg_gamma_shift_gw_11;
  wire [4:0]lqg_gamma_shift_gw_12;
  wire [4:0]lqg_gamma_shift_gw_13;
  wire [4:0]lqg_gamma_shift_gw_2;
  wire [4:0]lqg_gamma_shift_gw_3;
  wire [4:0]lqg_gamma_shift_gw_4;
  wire [4:0]lqg_gamma_shift_gw_5;
  wire [4:0]lqg_gamma_shift_gw_6;
  wire [4:0]lqg_gamma_shift_gw_7;
  wire [4:0]lqg_gamma_shift_gw_8;
  wire [4:0]lqg_gamma_shift_gw_9;
  wire [17:0]lqg_k_res_gw_0;
  wire [17:0]lqg_k_res_gw_1;
  wire [17:0]lqg_k_res_gw_10;
  wire [17:0]lqg_k_res_gw_11;
  wire [17:0]lqg_k_res_gw_12;
  wire [17:0]lqg_k_res_gw_13;
  wire [17:0]lqg_k_res_gw_2;
  wire [17:0]lqg_k_res_gw_3;
  wire [17:0]lqg_k_res_gw_4;
  wire [17:0]lqg_k_res_gw_5;
  wire [17:0]lqg_k_res_gw_6;
  wire [17:0]lqg_k_res_gw_7;
  wire [17:0]lqg_k_res_gw_8;
  wire [17:0]lqg_k_res_gw_9;
  wire [5:0]lqg_k_shift_gw_0;
  wire [5:0]lqg_k_shift_gw_1;
  wire [5:0]lqg_k_shift_gw_10;
  wire [5:0]lqg_k_shift_gw_11;
  wire [5:0]lqg_k_shift_gw_12;
  wire [5:0]lqg_k_shift_gw_13;
  wire [5:0]lqg_k_shift_gw_2;
  wire [5:0]lqg_k_shift_gw_3;
  wire [5:0]lqg_k_shift_gw_4;
  wire [5:0]lqg_k_shift_gw_5;
  wire [5:0]lqg_k_shift_gw_6;
  wire [5:0]lqg_k_shift_gw_7;
  wire [5:0]lqg_k_shift_gw_8;
  wire [5:0]lqg_k_shift_gw_9;
  wire [17:0]lqg_l_res_gw_0;
  wire [17:0]lqg_l_res_gw_1;
  wire [17:0]lqg_l_res_gw_10;
  wire [17:0]lqg_l_res_gw_11;
  wire [17:0]lqg_l_res_gw_12;
  wire [17:0]lqg_l_res_gw_13;
  wire [17:0]lqg_l_res_gw_2;
  wire [17:0]lqg_l_res_gw_3;
  wire [17:0]lqg_l_res_gw_4;
  wire [17:0]lqg_l_res_gw_5;
  wire [17:0]lqg_l_res_gw_6;
  wire [17:0]lqg_l_res_gw_7;
  wire [17:0]lqg_l_res_gw_8;
  wire [17:0]lqg_l_res_gw_9;
  wire [4:0]lqg_l_shift_gw_0;
  wire [4:0]lqg_l_shift_gw_1;
  wire [4:0]lqg_l_shift_gw_10;
  wire [4:0]lqg_l_shift_gw_11;
  wire [4:0]lqg_l_shift_gw_12;
  wire [4:0]lqg_l_shift_gw_13;
  wire [4:0]lqg_l_shift_gw_2;
  wire [4:0]lqg_l_shift_gw_3;
  wire [4:0]lqg_l_shift_gw_4;
  wire [4:0]lqg_l_shift_gw_5;
  wire [4:0]lqg_l_shift_gw_6;
  wire [4:0]lqg_l_shift_gw_7;
  wire [4:0]lqg_l_shift_gw_8;
  wire [4:0]lqg_l_shift_gw_9;
  wire [7:0]lqg_led_in;
  wire [7:0]lqg_led_out;
  wire proc_sys_clk;
  wire processing_system_1_FCLK_CLK0;
  wire processing_system_1_FCLK_RESET0_N;
  wire [31:0]processing_system_1_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system_1_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system_1_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system_1_M_AXI_GP0_ARID;
  wire [3:0]processing_system_1_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system_1_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system_1_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system_1_M_AXI_GP0_ARQOS;
  wire processing_system_1_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system_1_M_AXI_GP0_ARSIZE;
  wire processing_system_1_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system_1_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system_1_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system_1_M_AXI_GP0_AWID;
  wire [3:0]processing_system_1_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system_1_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system_1_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system_1_M_AXI_GP0_AWQOS;
  wire processing_system_1_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system_1_M_AXI_GP0_AWSIZE;
  wire processing_system_1_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system_1_M_AXI_GP0_BID;
  wire processing_system_1_M_AXI_GP0_BREADY;
  wire [1:0]processing_system_1_M_AXI_GP0_BRESP;
  wire processing_system_1_M_AXI_GP0_BVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_RDATA;
  wire [11:0]processing_system_1_M_AXI_GP0_RID;
  wire processing_system_1_M_AXI_GP0_RLAST;
  wire processing_system_1_M_AXI_GP0_RREADY;
  wire [1:0]processing_system_1_M_AXI_GP0_RRESP;
  wire processing_system_1_M_AXI_GP0_RVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_WDATA;
  wire [11:0]processing_system_1_M_AXI_GP0_WID;
  wire processing_system_1_M_AXI_GP0_WLAST;
  wire processing_system_1_M_AXI_GP0_WREADY;
  wire [3:0]processing_system_1_M_AXI_GP0_WSTRB;
  wire processing_system_1_M_AXI_GP0_WVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_ARADDR;
  wire processing_system_1_axi_periph_M00_AXI_ARREADY;
  wire processing_system_1_axi_periph_M00_AXI_ARVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_AWADDR;
  wire processing_system_1_axi_periph_M00_AXI_AWREADY;
  wire processing_system_1_axi_periph_M00_AXI_AWVALID;
  wire processing_system_1_axi_periph_M00_AXI_BREADY;
  wire [1:0]processing_system_1_axi_periph_M00_AXI_BRESP;
  wire processing_system_1_axi_periph_M00_AXI_BVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_RDATA;
  wire processing_system_1_axi_periph_M00_AXI_RREADY;
  wire [1:0]processing_system_1_axi_periph_M00_AXI_RRESP;
  wire processing_system_1_axi_periph_M00_AXI_RVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_WDATA;
  wire processing_system_1_axi_periph_M00_AXI_WREADY;
  wire [3:0]processing_system_1_axi_periph_M00_AXI_WSTRB;
  wire processing_system_1_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_processing_system_1_50M_peripheral_aresetn;
  wire [17:0]uk_factor_gw_0;
  wire [17:0]uk_factor_gw_1;
  wire [13:0]uk_gw_0;
  wire [13:0]uk_gw_1;
  wire [13:0]uk_offset_gw_0;
  wire [13:0]uk_offset_gw_1;
  wire [24:0]xkhat_gw_0;
  wire [24:0]xkhat_gw_1;
  wire [24:0]xkhat_gw_2;
  wire [24:0]xkhat_gw_3;
  wire [24:0]xkhat_gw_4;
  wire [24:0]xkhat_gw_5;
  wire [24:0]xkhat_gw_6;
  wire [17:0]yk_factor_gw_0;
  wire [17:0]yk_factor_gw_1;
  wire [13:0]yk_gw_0;
  wire [13:0]yk_gw_1;
  wire [13:0]yk_offset_gw_0;
  wire [13:0]yk_offset_gw_1;

  lqg_axi_test_bd_lqg_axi_test_1_0 lqg_axi_test_1
       (.axi_sys_aresetn(rst_processing_system_1_50M_peripheral_aresetn),
        .axi_sys_clk(processing_system_1_FCLK_CLK0),
        .axi_sys_s_axi_araddr(processing_system_1_axi_periph_M00_AXI_ARADDR[3:0]),
        .axi_sys_s_axi_arready(processing_system_1_axi_periph_M00_AXI_ARREADY),
        .axi_sys_s_axi_arvalid(processing_system_1_axi_periph_M00_AXI_ARVALID),
        .axi_sys_s_axi_awaddr(processing_system_1_axi_periph_M00_AXI_AWADDR[3:0]),
        .axi_sys_s_axi_awready(processing_system_1_axi_periph_M00_AXI_AWREADY),
        .axi_sys_s_axi_awvalid(processing_system_1_axi_periph_M00_AXI_AWVALID),
        .axi_sys_s_axi_bready(processing_system_1_axi_periph_M00_AXI_BREADY),
        .axi_sys_s_axi_bresp(processing_system_1_axi_periph_M00_AXI_BRESP),
        .axi_sys_s_axi_bvalid(processing_system_1_axi_periph_M00_AXI_BVALID),
        .axi_sys_s_axi_rdata(processing_system_1_axi_periph_M00_AXI_RDATA),
        .axi_sys_s_axi_rready(processing_system_1_axi_periph_M00_AXI_RREADY),
        .axi_sys_s_axi_rresp(processing_system_1_axi_periph_M00_AXI_RRESP),
        .axi_sys_s_axi_rvalid(processing_system_1_axi_periph_M00_AXI_RVALID),
        .axi_sys_s_axi_wdata(processing_system_1_axi_periph_M00_AXI_WDATA),
        .axi_sys_s_axi_wready(processing_system_1_axi_periph_M00_AXI_WREADY),
        .axi_sys_s_axi_wstrb(processing_system_1_axi_periph_M00_AXI_WSTRB),
        .axi_sys_s_axi_wvalid(processing_system_1_axi_periph_M00_AXI_WVALID),
        .lqg_f_res_gw_0(lqg_f_res_gw_0),
        .lqg_f_res_gw_1(lqg_f_res_gw_1),
        .lqg_f_res_gw_10(lqg_f_res_gw_10),
        .lqg_f_res_gw_11(lqg_f_res_gw_11),
        .lqg_f_res_gw_12(lqg_f_res_gw_12),
        .lqg_f_res_gw_13(lqg_f_res_gw_13),
        .lqg_f_res_gw_14(lqg_f_res_gw_14),
        .lqg_f_res_gw_15(lqg_f_res_gw_15),
        .lqg_f_res_gw_16(lqg_f_res_gw_16),
        .lqg_f_res_gw_17(lqg_f_res_gw_17),
        .lqg_f_res_gw_18(lqg_f_res_gw_18),
        .lqg_f_res_gw_19(lqg_f_res_gw_19),
        .lqg_f_res_gw_2(lqg_f_res_gw_2),
        .lqg_f_res_gw_20(lqg_f_res_gw_20),
        .lqg_f_res_gw_21(lqg_f_res_gw_21),
        .lqg_f_res_gw_22(lqg_f_res_gw_22),
        .lqg_f_res_gw_23(lqg_f_res_gw_23),
        .lqg_f_res_gw_24(lqg_f_res_gw_24),
        .lqg_f_res_gw_25(lqg_f_res_gw_25),
        .lqg_f_res_gw_26(lqg_f_res_gw_26),
        .lqg_f_res_gw_27(lqg_f_res_gw_27),
        .lqg_f_res_gw_28(lqg_f_res_gw_28),
        .lqg_f_res_gw_29(lqg_f_res_gw_29),
        .lqg_f_res_gw_3(lqg_f_res_gw_3),
        .lqg_f_res_gw_30(lqg_f_res_gw_30),
        .lqg_f_res_gw_31(lqg_f_res_gw_31),
        .lqg_f_res_gw_32(lqg_f_res_gw_32),
        .lqg_f_res_gw_33(lqg_f_res_gw_33),
        .lqg_f_res_gw_34(lqg_f_res_gw_34),
        .lqg_f_res_gw_35(lqg_f_res_gw_35),
        .lqg_f_res_gw_36(lqg_f_res_gw_36),
        .lqg_f_res_gw_37(lqg_f_res_gw_37),
        .lqg_f_res_gw_38(lqg_f_res_gw_38),
        .lqg_f_res_gw_39(lqg_f_res_gw_39),
        .lqg_f_res_gw_4(lqg_f_res_gw_4),
        .lqg_f_res_gw_40(lqg_f_res_gw_40),
        .lqg_f_res_gw_41(lqg_f_res_gw_41),
        .lqg_f_res_gw_42(lqg_f_res_gw_42),
        .lqg_f_res_gw_43(lqg_f_res_gw_43),
        .lqg_f_res_gw_44(lqg_f_res_gw_44),
        .lqg_f_res_gw_45(lqg_f_res_gw_45),
        .lqg_f_res_gw_46(lqg_f_res_gw_46),
        .lqg_f_res_gw_47(lqg_f_res_gw_47),
        .lqg_f_res_gw_48(lqg_f_res_gw_48),
        .lqg_f_res_gw_5(lqg_f_res_gw_5),
        .lqg_f_res_gw_6(lqg_f_res_gw_6),
        .lqg_f_res_gw_7(lqg_f_res_gw_7),
        .lqg_f_res_gw_8(lqg_f_res_gw_8),
        .lqg_f_res_gw_9(lqg_f_res_gw_9),
        .lqg_f_shift_gw_0(lqg_f_shift_gw_0),
        .lqg_f_shift_gw_1(lqg_f_shift_gw_1),
        .lqg_f_shift_gw_10(lqg_f_shift_gw_10),
        .lqg_f_shift_gw_11(lqg_f_shift_gw_11),
        .lqg_f_shift_gw_12(lqg_f_shift_gw_12),
        .lqg_f_shift_gw_13(lqg_f_shift_gw_13),
        .lqg_f_shift_gw_14(lqg_f_shift_gw_14),
        .lqg_f_shift_gw_15(lqg_f_shift_gw_15),
        .lqg_f_shift_gw_16(lqg_f_shift_gw_16),
        .lqg_f_shift_gw_17(lqg_f_shift_gw_17),
        .lqg_f_shift_gw_18(lqg_f_shift_gw_18),
        .lqg_f_shift_gw_19(lqg_f_shift_gw_19),
        .lqg_f_shift_gw_2(lqg_f_shift_gw_2),
        .lqg_f_shift_gw_20(lqg_f_shift_gw_20),
        .lqg_f_shift_gw_21(lqg_f_shift_gw_21),
        .lqg_f_shift_gw_22(lqg_f_shift_gw_22),
        .lqg_f_shift_gw_23(lqg_f_shift_gw_23),
        .lqg_f_shift_gw_24(lqg_f_shift_gw_24),
        .lqg_f_shift_gw_25(lqg_f_shift_gw_25),
        .lqg_f_shift_gw_26(lqg_f_shift_gw_26),
        .lqg_f_shift_gw_27(lqg_f_shift_gw_27),
        .lqg_f_shift_gw_28(lqg_f_shift_gw_28),
        .lqg_f_shift_gw_29(lqg_f_shift_gw_29),
        .lqg_f_shift_gw_3(lqg_f_shift_gw_3),
        .lqg_f_shift_gw_30(lqg_f_shift_gw_30),
        .lqg_f_shift_gw_31(lqg_f_shift_gw_31),
        .lqg_f_shift_gw_32(lqg_f_shift_gw_32),
        .lqg_f_shift_gw_33(lqg_f_shift_gw_33),
        .lqg_f_shift_gw_34(lqg_f_shift_gw_34),
        .lqg_f_shift_gw_35(lqg_f_shift_gw_35),
        .lqg_f_shift_gw_36(lqg_f_shift_gw_36),
        .lqg_f_shift_gw_37(lqg_f_shift_gw_37),
        .lqg_f_shift_gw_38(lqg_f_shift_gw_38),
        .lqg_f_shift_gw_39(lqg_f_shift_gw_39),
        .lqg_f_shift_gw_4(lqg_f_shift_gw_4),
        .lqg_f_shift_gw_40(lqg_f_shift_gw_40),
        .lqg_f_shift_gw_41(lqg_f_shift_gw_41),
        .lqg_f_shift_gw_42(lqg_f_shift_gw_42),
        .lqg_f_shift_gw_43(lqg_f_shift_gw_43),
        .lqg_f_shift_gw_44(lqg_f_shift_gw_44),
        .lqg_f_shift_gw_45(lqg_f_shift_gw_45),
        .lqg_f_shift_gw_46(lqg_f_shift_gw_46),
        .lqg_f_shift_gw_47(lqg_f_shift_gw_47),
        .lqg_f_shift_gw_48(lqg_f_shift_gw_48),
        .lqg_f_shift_gw_5(lqg_f_shift_gw_5),
        .lqg_f_shift_gw_6(lqg_f_shift_gw_6),
        .lqg_f_shift_gw_7(lqg_f_shift_gw_7),
        .lqg_f_shift_gw_8(lqg_f_shift_gw_8),
        .lqg_f_shift_gw_9(lqg_f_shift_gw_9),
        .lqg_gamma_res_gw_0(lqg_gamma_res_gw_0),
        .lqg_gamma_res_gw_1(lqg_gamma_res_gw_1),
        .lqg_gamma_res_gw_10(lqg_gamma_res_gw_10),
        .lqg_gamma_res_gw_11(lqg_gamma_res_gw_11),
        .lqg_gamma_res_gw_12(lqg_gamma_res_gw_12),
        .lqg_gamma_res_gw_13(lqg_gamma_res_gw_13),
        .lqg_gamma_res_gw_2(lqg_gamma_res_gw_2),
        .lqg_gamma_res_gw_3(lqg_gamma_res_gw_3),
        .lqg_gamma_res_gw_4(lqg_gamma_res_gw_4),
        .lqg_gamma_res_gw_5(lqg_gamma_res_gw_5),
        .lqg_gamma_res_gw_6(lqg_gamma_res_gw_6),
        .lqg_gamma_res_gw_7(lqg_gamma_res_gw_7),
        .lqg_gamma_res_gw_8(lqg_gamma_res_gw_8),
        .lqg_gamma_res_gw_9(lqg_gamma_res_gw_9),
        .lqg_gamma_shift_gw_0(lqg_gamma_shift_gw_0),
        .lqg_gamma_shift_gw_1(lqg_gamma_shift_gw_1),
        .lqg_gamma_shift_gw_10(lqg_gamma_shift_gw_10),
        .lqg_gamma_shift_gw_11(lqg_gamma_shift_gw_11),
        .lqg_gamma_shift_gw_12(lqg_gamma_shift_gw_12),
        .lqg_gamma_shift_gw_13(lqg_gamma_shift_gw_13),
        .lqg_gamma_shift_gw_2(lqg_gamma_shift_gw_2),
        .lqg_gamma_shift_gw_3(lqg_gamma_shift_gw_3),
        .lqg_gamma_shift_gw_4(lqg_gamma_shift_gw_4),
        .lqg_gamma_shift_gw_5(lqg_gamma_shift_gw_5),
        .lqg_gamma_shift_gw_6(lqg_gamma_shift_gw_6),
        .lqg_gamma_shift_gw_7(lqg_gamma_shift_gw_7),
        .lqg_gamma_shift_gw_8(lqg_gamma_shift_gw_8),
        .lqg_gamma_shift_gw_9(lqg_gamma_shift_gw_9),
        .lqg_k_res_gw_0(lqg_k_res_gw_0),
        .lqg_k_res_gw_1(lqg_k_res_gw_1),
        .lqg_k_res_gw_10(lqg_k_res_gw_10),
        .lqg_k_res_gw_11(lqg_k_res_gw_11),
        .lqg_k_res_gw_12(lqg_k_res_gw_12),
        .lqg_k_res_gw_13(lqg_k_res_gw_13),
        .lqg_k_res_gw_2(lqg_k_res_gw_2),
        .lqg_k_res_gw_3(lqg_k_res_gw_3),
        .lqg_k_res_gw_4(lqg_k_res_gw_4),
        .lqg_k_res_gw_5(lqg_k_res_gw_5),
        .lqg_k_res_gw_6(lqg_k_res_gw_6),
        .lqg_k_res_gw_7(lqg_k_res_gw_7),
        .lqg_k_res_gw_8(lqg_k_res_gw_8),
        .lqg_k_res_gw_9(lqg_k_res_gw_9),
        .lqg_k_shift_gw_0(lqg_k_shift_gw_0),
        .lqg_k_shift_gw_1(lqg_k_shift_gw_1),
        .lqg_k_shift_gw_10(lqg_k_shift_gw_10),
        .lqg_k_shift_gw_11(lqg_k_shift_gw_11),
        .lqg_k_shift_gw_12(lqg_k_shift_gw_12),
        .lqg_k_shift_gw_13(lqg_k_shift_gw_13),
        .lqg_k_shift_gw_2(lqg_k_shift_gw_2),
        .lqg_k_shift_gw_3(lqg_k_shift_gw_3),
        .lqg_k_shift_gw_4(lqg_k_shift_gw_4),
        .lqg_k_shift_gw_5(lqg_k_shift_gw_5),
        .lqg_k_shift_gw_6(lqg_k_shift_gw_6),
        .lqg_k_shift_gw_7(lqg_k_shift_gw_7),
        .lqg_k_shift_gw_8(lqg_k_shift_gw_8),
        .lqg_k_shift_gw_9(lqg_k_shift_gw_9),
        .lqg_l_res_gw_0(lqg_l_res_gw_0),
        .lqg_l_res_gw_1(lqg_l_res_gw_1),
        .lqg_l_res_gw_10(lqg_l_res_gw_10),
        .lqg_l_res_gw_11(lqg_l_res_gw_11),
        .lqg_l_res_gw_12(lqg_l_res_gw_12),
        .lqg_l_res_gw_13(lqg_l_res_gw_13),
        .lqg_l_res_gw_2(lqg_l_res_gw_2),
        .lqg_l_res_gw_3(lqg_l_res_gw_3),
        .lqg_l_res_gw_4(lqg_l_res_gw_4),
        .lqg_l_res_gw_5(lqg_l_res_gw_5),
        .lqg_l_res_gw_6(lqg_l_res_gw_6),
        .lqg_l_res_gw_7(lqg_l_res_gw_7),
        .lqg_l_res_gw_8(lqg_l_res_gw_8),
        .lqg_l_res_gw_9(lqg_l_res_gw_9),
        .lqg_l_shift_gw_0(lqg_l_shift_gw_0),
        .lqg_l_shift_gw_1(lqg_l_shift_gw_1),
        .lqg_l_shift_gw_10(lqg_l_shift_gw_10),
        .lqg_l_shift_gw_11(lqg_l_shift_gw_11),
        .lqg_l_shift_gw_12(lqg_l_shift_gw_12),
        .lqg_l_shift_gw_13(lqg_l_shift_gw_13),
        .lqg_l_shift_gw_2(lqg_l_shift_gw_2),
        .lqg_l_shift_gw_3(lqg_l_shift_gw_3),
        .lqg_l_shift_gw_4(lqg_l_shift_gw_4),
        .lqg_l_shift_gw_5(lqg_l_shift_gw_5),
        .lqg_l_shift_gw_6(lqg_l_shift_gw_6),
        .lqg_l_shift_gw_7(lqg_l_shift_gw_7),
        .lqg_l_shift_gw_8(lqg_l_shift_gw_8),
        .lqg_l_shift_gw_9(lqg_l_shift_gw_9),
        .lqg_led_in(lqg_led_in),
        .lqg_led_out(lqg_led_out),
        .proc_sys_clk(proc_sys_clk),
        .uk_factor_gw_0(uk_factor_gw_0),
        .uk_factor_gw_1(uk_factor_gw_1),
        .uk_gw_0(uk_gw_0),
        .uk_gw_1(uk_gw_1),
        .uk_offset_gw_0(uk_offset_gw_0),
        .uk_offset_gw_1(uk_offset_gw_1),
        .xkhat_gw_0(xkhat_gw_0),
        .xkhat_gw_1(xkhat_gw_1),
        .xkhat_gw_2(xkhat_gw_2),
        .xkhat_gw_3(xkhat_gw_3),
        .xkhat_gw_4(xkhat_gw_4),
        .xkhat_gw_5(xkhat_gw_5),
        .xkhat_gw_6(xkhat_gw_6),
        .yk_factor_gw_0(yk_factor_gw_0),
        .yk_factor_gw_1(yk_factor_gw_1),
        .yk_gw_0(yk_gw_0),
        .yk_gw_1(yk_gw_1),
        .yk_offset_gw_0(yk_offset_gw_0),
        .yk_offset_gw_1(yk_offset_gw_1));
  lqg_axi_test_bd_processing_system_1_0 processing_system_1
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system_1_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system_1_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system_1_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system_1_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system_1_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system_1_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system_1_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system_1_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system_1_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system_1_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system_1_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system_1_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system_1_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system_1_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system_1_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system_1_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system_1_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system_1_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system_1_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system_1_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system_1_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system_1_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system_1_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system_1_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system_1_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system_1_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system_1_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system_1_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system_1_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system_1_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system_1_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system_1_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system_1_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system_1_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system_1_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system_1_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system_1_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system_1_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system_1_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system_1_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system_1_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  lqg_axi_test_bd_processing_system_1_axi_periph_0 processing_system_1_axi_periph
       (.ACLK(processing_system_1_FCLK_CLK0),
        .ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .M00_ACLK(processing_system_1_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .M00_AXI_araddr(processing_system_1_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(processing_system_1_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(processing_system_1_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(processing_system_1_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(processing_system_1_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(processing_system_1_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(processing_system_1_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(processing_system_1_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(processing_system_1_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(processing_system_1_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(processing_system_1_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(processing_system_1_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(processing_system_1_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(processing_system_1_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(processing_system_1_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(processing_system_1_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(processing_system_1_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(processing_system_1_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system_1_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system_1_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system_1_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system_1_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system_1_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system_1_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system_1_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system_1_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system_1_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system_1_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system_1_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system_1_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system_1_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system_1_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system_1_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system_1_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system_1_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system_1_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system_1_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system_1_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system_1_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system_1_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system_1_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system_1_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system_1_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system_1_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system_1_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system_1_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system_1_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system_1_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system_1_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system_1_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system_1_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system_1_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system_1_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system_1_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system_1_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system_1_M_AXI_GP0_WVALID));
  lqg_axi_test_bd_rst_processing_system_1_50M_0 rst_processing_system_1_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system_1_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system_1_50M_peripheral_aresetn),
        .slowest_sync_clk(processing_system_1_FCLK_CLK0));
endmodule

module lqg_axi_test_bd_processing_system_1_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [11:0]S00_AXI_arid;
  wire [3:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [11:0]S00_AXI_awid;
  wire [3:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [11:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [11:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [11:0]S00_AXI_wid;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  s00_couplers_imp_PC87JD s00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arid(S00_AXI_arid),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arqos(S00_AXI_arqos),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awid(S00_AXI_awid),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awqos(S00_AXI_awqos),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bid(S00_AXI_bid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rid(S00_AXI_rid),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wid(S00_AXI_wid),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
endmodule

module s00_couplers_imp_PC87JD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [11:0]S_AXI_arid;
  wire [3:0]S_AXI_arlen;
  wire [1:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [11:0]S_AXI_awid;
  wire [3:0]S_AXI_awlen;
  wire [1:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [11:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [11:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [11:0]S_AXI_wid;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  lqg_axi_test_bd_processing_system_1_axi_periph_imp_auto_pc_0 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wid(S_AXI_wid),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule
