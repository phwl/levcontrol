// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_dma_channel_mapper_0_0/design_0_dma_channel_mapper_0_0_stub.v
// Design      : design_0_dma_channel_mapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{}" *) (* CORE_GENERATION_INFO = "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dma_channel_mapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "dma_channel_mapper,Vivado 2024.2" *) 
module design_0_dma_channel_mapper_0_0(lqg_uk_0, lqg_uk_1, lqg_yk_0, lqg_yk_1, 
  lqg_xkhat_0, lqg_xkhat_1, lqg_xkhat_2, lqg_xkhat_3, lqg_xkhat_4, lqg_xkhat_5, lqg_xkhat_6, 
  dma_channel_a, dma_channel_b, dma_channel_c, dma_channel_d, dma_channel_e, dma_channel_f, 
  dma_channel_g, dma_channel_h)
/* synthesis syn_black_box black_box_pad_pin="lqg_uk_0[13:0],lqg_uk_1[13:0],lqg_yk_0[13:0],lqg_yk_1[13:0],lqg_xkhat_0[24:0],lqg_xkhat_1[24:0],lqg_xkhat_2[24:0],lqg_xkhat_3[24:0],lqg_xkhat_4[24:0],lqg_xkhat_5[24:0],lqg_xkhat_6[24:0],dma_channel_a[31:0],dma_channel_b[31:0],dma_channel_c[31:0],dma_channel_d[31:0],dma_channel_e[31:0],dma_channel_f[31:0],dma_channel_g[31:0],dma_channel_h[31:0]" */;
  input [13:0]lqg_uk_0;
  input [13:0]lqg_uk_1;
  input [13:0]lqg_yk_0;
  input [13:0]lqg_yk_1;
  input [24:0]lqg_xkhat_0;
  input [24:0]lqg_xkhat_1;
  input [24:0]lqg_xkhat_2;
  input [24:0]lqg_xkhat_3;
  input [24:0]lqg_xkhat_4;
  input [24:0]lqg_xkhat_5;
  input [24:0]lqg_xkhat_6;
  output [31:0]dma_channel_a;
  output [31:0]dma_channel_b;
  output [31:0]dma_channel_c;
  output [31:0]dma_channel_d;
  output [31:0]dma_channel_e;
  output [31:0]dma_channel_f;
  output [31:0]dma_channel_g;
  output [31:0]dma_channel_h;
endmodule
