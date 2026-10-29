//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Apr  1 14:24:17 2026
//Host        : model-composer running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target lqg_axi_test_bd_wrapper.bd
//Design      : lqg_axi_test_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lqg_axi_test_bd_wrapper
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
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [17:0]lqg_f_res_gw_0;
  input [17:0]lqg_f_res_gw_1;
  input [17:0]lqg_f_res_gw_10;
  input [17:0]lqg_f_res_gw_11;
  input [17:0]lqg_f_res_gw_12;
  input [17:0]lqg_f_res_gw_13;
  input [17:0]lqg_f_res_gw_14;
  input [17:0]lqg_f_res_gw_15;
  input [17:0]lqg_f_res_gw_16;
  input [17:0]lqg_f_res_gw_17;
  input [17:0]lqg_f_res_gw_18;
  input [17:0]lqg_f_res_gw_19;
  input [17:0]lqg_f_res_gw_2;
  input [17:0]lqg_f_res_gw_20;
  input [17:0]lqg_f_res_gw_21;
  input [17:0]lqg_f_res_gw_22;
  input [17:0]lqg_f_res_gw_23;
  input [17:0]lqg_f_res_gw_24;
  input [17:0]lqg_f_res_gw_25;
  input [17:0]lqg_f_res_gw_26;
  input [17:0]lqg_f_res_gw_27;
  input [17:0]lqg_f_res_gw_28;
  input [17:0]lqg_f_res_gw_29;
  input [17:0]lqg_f_res_gw_3;
  input [17:0]lqg_f_res_gw_30;
  input [17:0]lqg_f_res_gw_31;
  input [17:0]lqg_f_res_gw_32;
  input [17:0]lqg_f_res_gw_33;
  input [17:0]lqg_f_res_gw_34;
  input [17:0]lqg_f_res_gw_35;
  input [17:0]lqg_f_res_gw_36;
  input [17:0]lqg_f_res_gw_37;
  input [17:0]lqg_f_res_gw_38;
  input [17:0]lqg_f_res_gw_39;
  input [17:0]lqg_f_res_gw_4;
  input [17:0]lqg_f_res_gw_40;
  input [17:0]lqg_f_res_gw_41;
  input [17:0]lqg_f_res_gw_42;
  input [17:0]lqg_f_res_gw_43;
  input [17:0]lqg_f_res_gw_44;
  input [17:0]lqg_f_res_gw_45;
  input [17:0]lqg_f_res_gw_46;
  input [17:0]lqg_f_res_gw_47;
  input [17:0]lqg_f_res_gw_48;
  input [17:0]lqg_f_res_gw_5;
  input [17:0]lqg_f_res_gw_6;
  input [17:0]lqg_f_res_gw_7;
  input [17:0]lqg_f_res_gw_8;
  input [17:0]lqg_f_res_gw_9;
  input [4:0]lqg_f_shift_gw_0;
  input [4:0]lqg_f_shift_gw_1;
  input [4:0]lqg_f_shift_gw_10;
  input [4:0]lqg_f_shift_gw_11;
  input [4:0]lqg_f_shift_gw_12;
  input [4:0]lqg_f_shift_gw_13;
  input [4:0]lqg_f_shift_gw_14;
  input [4:0]lqg_f_shift_gw_15;
  input [4:0]lqg_f_shift_gw_16;
  input [4:0]lqg_f_shift_gw_17;
  input [4:0]lqg_f_shift_gw_18;
  input [4:0]lqg_f_shift_gw_19;
  input [4:0]lqg_f_shift_gw_2;
  input [4:0]lqg_f_shift_gw_20;
  input [4:0]lqg_f_shift_gw_21;
  input [4:0]lqg_f_shift_gw_22;
  input [4:0]lqg_f_shift_gw_23;
  input [4:0]lqg_f_shift_gw_24;
  input [4:0]lqg_f_shift_gw_25;
  input [4:0]lqg_f_shift_gw_26;
  input [4:0]lqg_f_shift_gw_27;
  input [4:0]lqg_f_shift_gw_28;
  input [4:0]lqg_f_shift_gw_29;
  input [4:0]lqg_f_shift_gw_3;
  input [4:0]lqg_f_shift_gw_30;
  input [4:0]lqg_f_shift_gw_31;
  input [4:0]lqg_f_shift_gw_32;
  input [4:0]lqg_f_shift_gw_33;
  input [4:0]lqg_f_shift_gw_34;
  input [4:0]lqg_f_shift_gw_35;
  input [4:0]lqg_f_shift_gw_36;
  input [4:0]lqg_f_shift_gw_37;
  input [4:0]lqg_f_shift_gw_38;
  input [4:0]lqg_f_shift_gw_39;
  input [4:0]lqg_f_shift_gw_4;
  input [4:0]lqg_f_shift_gw_40;
  input [4:0]lqg_f_shift_gw_41;
  input [4:0]lqg_f_shift_gw_42;
  input [4:0]lqg_f_shift_gw_43;
  input [4:0]lqg_f_shift_gw_44;
  input [4:0]lqg_f_shift_gw_45;
  input [4:0]lqg_f_shift_gw_46;
  input [4:0]lqg_f_shift_gw_47;
  input [4:0]lqg_f_shift_gw_48;
  input [4:0]lqg_f_shift_gw_5;
  input [4:0]lqg_f_shift_gw_6;
  input [4:0]lqg_f_shift_gw_7;
  input [4:0]lqg_f_shift_gw_8;
  input [4:0]lqg_f_shift_gw_9;
  input [17:0]lqg_gamma_res_gw_0;
  input [17:0]lqg_gamma_res_gw_1;
  input [17:0]lqg_gamma_res_gw_10;
  input [17:0]lqg_gamma_res_gw_11;
  input [17:0]lqg_gamma_res_gw_12;
  input [17:0]lqg_gamma_res_gw_13;
  input [17:0]lqg_gamma_res_gw_2;
  input [17:0]lqg_gamma_res_gw_3;
  input [17:0]lqg_gamma_res_gw_4;
  input [17:0]lqg_gamma_res_gw_5;
  input [17:0]lqg_gamma_res_gw_6;
  input [17:0]lqg_gamma_res_gw_7;
  input [17:0]lqg_gamma_res_gw_8;
  input [17:0]lqg_gamma_res_gw_9;
  input [4:0]lqg_gamma_shift_gw_0;
  input [4:0]lqg_gamma_shift_gw_1;
  input [4:0]lqg_gamma_shift_gw_10;
  input [4:0]lqg_gamma_shift_gw_11;
  input [4:0]lqg_gamma_shift_gw_12;
  input [4:0]lqg_gamma_shift_gw_13;
  input [4:0]lqg_gamma_shift_gw_2;
  input [4:0]lqg_gamma_shift_gw_3;
  input [4:0]lqg_gamma_shift_gw_4;
  input [4:0]lqg_gamma_shift_gw_5;
  input [4:0]lqg_gamma_shift_gw_6;
  input [4:0]lqg_gamma_shift_gw_7;
  input [4:0]lqg_gamma_shift_gw_8;
  input [4:0]lqg_gamma_shift_gw_9;
  input [17:0]lqg_k_res_gw_0;
  input [17:0]lqg_k_res_gw_1;
  input [17:0]lqg_k_res_gw_10;
  input [17:0]lqg_k_res_gw_11;
  input [17:0]lqg_k_res_gw_12;
  input [17:0]lqg_k_res_gw_13;
  input [17:0]lqg_k_res_gw_2;
  input [17:0]lqg_k_res_gw_3;
  input [17:0]lqg_k_res_gw_4;
  input [17:0]lqg_k_res_gw_5;
  input [17:0]lqg_k_res_gw_6;
  input [17:0]lqg_k_res_gw_7;
  input [17:0]lqg_k_res_gw_8;
  input [17:0]lqg_k_res_gw_9;
  input [5:0]lqg_k_shift_gw_0;
  input [5:0]lqg_k_shift_gw_1;
  input [5:0]lqg_k_shift_gw_10;
  input [5:0]lqg_k_shift_gw_11;
  input [5:0]lqg_k_shift_gw_12;
  input [5:0]lqg_k_shift_gw_13;
  input [5:0]lqg_k_shift_gw_2;
  input [5:0]lqg_k_shift_gw_3;
  input [5:0]lqg_k_shift_gw_4;
  input [5:0]lqg_k_shift_gw_5;
  input [5:0]lqg_k_shift_gw_6;
  input [5:0]lqg_k_shift_gw_7;
  input [5:0]lqg_k_shift_gw_8;
  input [5:0]lqg_k_shift_gw_9;
  input [17:0]lqg_l_res_gw_0;
  input [17:0]lqg_l_res_gw_1;
  input [17:0]lqg_l_res_gw_10;
  input [17:0]lqg_l_res_gw_11;
  input [17:0]lqg_l_res_gw_12;
  input [17:0]lqg_l_res_gw_13;
  input [17:0]lqg_l_res_gw_2;
  input [17:0]lqg_l_res_gw_3;
  input [17:0]lqg_l_res_gw_4;
  input [17:0]lqg_l_res_gw_5;
  input [17:0]lqg_l_res_gw_6;
  input [17:0]lqg_l_res_gw_7;
  input [17:0]lqg_l_res_gw_8;
  input [17:0]lqg_l_res_gw_9;
  input [4:0]lqg_l_shift_gw_0;
  input [4:0]lqg_l_shift_gw_1;
  input [4:0]lqg_l_shift_gw_10;
  input [4:0]lqg_l_shift_gw_11;
  input [4:0]lqg_l_shift_gw_12;
  input [4:0]lqg_l_shift_gw_13;
  input [4:0]lqg_l_shift_gw_2;
  input [4:0]lqg_l_shift_gw_3;
  input [4:0]lqg_l_shift_gw_4;
  input [4:0]lqg_l_shift_gw_5;
  input [4:0]lqg_l_shift_gw_6;
  input [4:0]lqg_l_shift_gw_7;
  input [4:0]lqg_l_shift_gw_8;
  input [4:0]lqg_l_shift_gw_9;
  input [7:0]lqg_led_in;
  output [7:0]lqg_led_out;
  input proc_sys_clk;
  input [17:0]uk_factor_gw_0;
  input [17:0]uk_factor_gw_1;
  output [13:0]uk_gw_0;
  output [13:0]uk_gw_1;
  input [13:0]uk_offset_gw_0;
  input [13:0]uk_offset_gw_1;
  output [24:0]xkhat_gw_0;
  output [24:0]xkhat_gw_1;
  output [24:0]xkhat_gw_2;
  output [24:0]xkhat_gw_3;
  output [24:0]xkhat_gw_4;
  output [24:0]xkhat_gw_5;
  output [24:0]xkhat_gw_6;
  input [17:0]yk_factor_gw_0;
  input [17:0]yk_factor_gw_1;
  input [13:0]yk_gw_0;
  input [13:0]yk_gw_1;
  input [13:0]yk_offset_gw_0;
  input [13:0]yk_offset_gw_1;

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

  lqg_axi_test_bd lqg_axi_test_bd_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
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
endmodule
