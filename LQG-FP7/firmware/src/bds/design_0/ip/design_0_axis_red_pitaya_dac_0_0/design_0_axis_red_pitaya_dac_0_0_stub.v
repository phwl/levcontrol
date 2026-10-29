// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 12 18:11:23 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_axis_red_pitaya_dac_0_0/design_0_axis_red_pitaya_dac_0_0_stub.v
// Design      : design_0_axis_red_pitaya_dac_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_axis_red_pitaya_dac_0_0,axis_red_pitaya_dac,{}" *) (* CORE_GENERATION_INFO = "design_0_axis_red_pitaya_dac_0_0,axis_red_pitaya_dac,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_red_pitaya_dac,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DAC_DATA_WIDTH=14,AXIS_TDATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "axis_red_pitaya_dac,Vivado 2024.2" *) 
module design_0_axis_red_pitaya_dac_0_0(aclk, ddr_clk, locked, dac_clk, dac_rst, dac_sel, 
  dac_wrt, dac_dat, s_axis_tready, s_axis_tdata, s_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="locked,dac_clk,dac_rst,dac_sel,dac_wrt,dac_dat[13:0],s_axis_tready,s_axis_tdata[31:0],s_axis_tvalid" */
/* synthesis syn_force_seq_prim="aclk" */
/* synthesis syn_force_seq_prim="ddr_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ddr_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /DAC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ddr_clk /* synthesis syn_isclock = 1 */;
  input locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_clk, ASSOCIATED_RESET dac_rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_dac_0_0_dac_clk, INSERT_VIP 0" *) output dac_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dac_rst RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output dac_rst;
  output dac_sel;
  output dac_wrt;
  output [13:0]dac_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, FREQ_HZ 15625000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
endmodule
