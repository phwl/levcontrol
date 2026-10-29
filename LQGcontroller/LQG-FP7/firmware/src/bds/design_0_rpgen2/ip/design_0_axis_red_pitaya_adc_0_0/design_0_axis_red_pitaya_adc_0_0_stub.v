// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:12 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_axis_red_pitaya_adc_0_0/design_0_axis_red_pitaya_adc_0_0_stub.v
// Design      : design_0_axis_red_pitaya_adc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{}" *) (* CORE_GENERATION_INFO = "design_0_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_red_pitaya_adc,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_DATA_WIDTH=14,AXIS_TDATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "axis_red_pitaya_adc,Vivado 2024.2" *) 
module design_0_axis_red_pitaya_adc_0_0(adc_clk, adc_csn, adc_clk_p, adc_clk_n, 
  adc_dat_a, adc_dat_b, offset_a, offset_b, bypass, m_axis_tvalid, m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="adc_csn,adc_clk_p,adc_clk_n,adc_dat_a[13:0],adc_dat_b[13:0],offset_a[13:0],offset_b[13:0],bypass,m_axis_tvalid,m_axis_tdata[31:0]" */
/* synthesis syn_force_seq_prim="adc_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_adc_0_0_adc_clk, INSERT_VIP 0" *) output adc_clk /* synthesis syn_isclock = 1 */;
  output adc_csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_a, INSERT_VIP 0" *) input adc_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_b, INSERT_VIP 0" *) input adc_clk_n;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  input [13:0]offset_a;
  input [13:0]offset_b;
  input bypass;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
endmodule
