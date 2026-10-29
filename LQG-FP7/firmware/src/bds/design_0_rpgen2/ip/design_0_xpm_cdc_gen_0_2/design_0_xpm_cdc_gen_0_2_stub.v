// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May 28 18:34:54 2025
// Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_0_xpm_cdc_gen_0_2 -prefix
//               design_0_xpm_cdc_gen_0_2_ design_0_xpm_cdc_gen_0_2_stub.v
// Design      : design_0_xpm_cdc_gen_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_xpm_cdc_gen_0_2,xpm_cdc_gen_v1_0_4,{}" *) (* CORE_GENERATION_INFO = "design_0_xpm_cdc_gen_0_2,xpm_cdc_gen_v1_0_4,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xpm_cdc_gen,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_CDC_TYPE=5,SRC_CLK_PERIOD=5000,DEST_CLK_PERIOD=2500,SIM_ASSERT_CHK=1,DEST_SYNC_FF=2,INIT_SYNC_FF=0,SRC_INPUT_REG=1,WIDTH=1,REG_OUTPUT=1,SIM_LOSSLESS_GRAY_CHK=0,SRC_SYNC_FF=4,DEST_EXT_HSK=1,RST_USED=0,INIT=1,RST_ACTIVE_HIGH=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "xpm_cdc_gen_v1_0_4,Vivado 2024.2" *) 
module design_0_xpm_cdc_gen_0_2(src_clk, dest_clk, src_pulse, dest_pulse)
/* synthesis syn_black_box black_box_pad_pin="src_pulse,dest_pulse" */
/* synthesis syn_force_seq_prim="src_clk" */
/* synthesis syn_force_seq_prim="dest_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 src_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input src_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dest_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input dest_clk /* synthesis syn_isclock = 1 */;
  input src_pulse;
  output dest_pulse;
endmodule
