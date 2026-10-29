// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:12:41 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_lqg_axi_test_wrapper_0_0/design_0_lqg_axi_test_wrapper_0_0_stub.v
// Design      : design_0_lqg_axi_test_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_lqg_axi_test_wrapper_0_0,lqg_axi_test_wrapper,{}" *) (* CORE_GENERATION_INFO = "design_0_lqg_axi_test_wrapper_0_0,lqg_axi_test_wrapper,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=lqg_axi_test_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BRAM_ADDR_WIDTH=13,BRAM_DATA_WIDTH=32,BRAM_READ_LATENCY=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "lqg_axi_test_wrapper,Vivado 2024.2" *) 
module design_0_lqg_axi_test_wrapper_0_0(clk, rst, cfg_ram_en, cfg_ram_clk, cfg_ram_rst, 
  cfg_ram_addr, cfg_ram_dout, cfg_load, cfg_load_done, cfg_apply, axi_sys_s_axi_awaddr, 
  axi_sys_s_axi_awvalid, axi_sys_s_axi_awready, axi_sys_s_axi_wdata, axi_sys_s_axi_wstrb, 
  axi_sys_s_axi_wvalid, axi_sys_s_axi_wready, axi_sys_s_axi_bresp, axi_sys_s_axi_bvalid, 
  axi_sys_s_axi_bready, axi_sys_s_axi_araddr, axi_sys_s_axi_arvalid, 
  axi_sys_s_axi_arready, axi_sys_s_axi_rdata, axi_sys_s_axi_rresp, axi_sys_s_axi_rvalid, 
  axi_sys_s_axi_rready, proc_sys_clk, axi_sys_clk, axi_sys_aresetn, LQG_yk_0, LQG_yk_1, 
  LQG_uk_0, LQG_uk_1, LQG_xkhat_0, LQG_xkhat_1, LQG_xkhat_2, LQG_xkhat_3, LQG_xkhat_4, 
  LQG_xkhat_5, LQG_xkhat_6, LQG_led_out)
/* synthesis syn_black_box black_box_pad_pin="rst,cfg_ram_en,cfg_ram_rst,cfg_ram_addr[12:0],cfg_ram_dout[31:0],cfg_load,cfg_load_done,cfg_apply,axi_sys_s_axi_awaddr[2:0],axi_sys_s_axi_awvalid,axi_sys_s_axi_awready,axi_sys_s_axi_wdata[31:0],axi_sys_s_axi_wstrb[3:0],axi_sys_s_axi_wvalid,axi_sys_s_axi_wready,axi_sys_s_axi_bresp[1:0],axi_sys_s_axi_bvalid,axi_sys_s_axi_bready,axi_sys_s_axi_araddr[2:0],axi_sys_s_axi_arvalid,axi_sys_s_axi_arready,axi_sys_s_axi_rdata[31:0],axi_sys_s_axi_rresp[1:0],axi_sys_s_axi_rvalid,axi_sys_s_axi_rready,proc_sys_clk,axi_sys_clk,axi_sys_aresetn,LQG_yk_0[13:0],LQG_yk_1[13:0],LQG_uk_0[13:0],LQG_uk_1[13:0],LQG_xkhat_0[24:0],LQG_xkhat_1[24:0],LQG_xkhat_2[24:0],LQG_xkhat_3[24:0],LQG_xkhat_4[24:0],LQG_xkhat_5[24:0],LQG_xkhat_6[24:0],LQG_led_out[7:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="cfg_ram_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF '', ASSOCIATED_RESET rst, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram EN" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cfg_ram, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) output cfg_ram_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram CLK" *) output cfg_ram_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram RST" *) output cfg_ram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram ADDR" *) output [12:0]cfg_ram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram DOUT" *) input [31:0]cfg_ram_dout;
  input cfg_load;
  output cfg_load_done;
  input cfg_apply;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_sys_s_axi, PROTOCOL AXI4LITE, FREQ_HZ 125000000, DATA_WIDTH 32, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [2:0]axi_sys_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWVALID" *) input axi_sys_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWREADY" *) output axi_sys_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WDATA" *) input [31:0]axi_sys_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WSTRB" *) input [3:0]axi_sys_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WVALID" *) input axi_sys_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WREADY" *) output axi_sys_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BRESP" *) output [1:0]axi_sys_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BVALID" *) output axi_sys_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BREADY" *) input axi_sys_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARADDR" *) input [2:0]axi_sys_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARVALID" *) input axi_sys_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARREADY" *) output axi_sys_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RDATA" *) output [31:0]axi_sys_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RRESP" *) output [1:0]axi_sys_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RVALID" *) output axi_sys_s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RREADY" *) input axi_sys_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 proc_sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME proc_sys_clk, FREQ_HZ 15625000, ASSOCIATED_BUSIF '', FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input proc_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_sys_clk, ASSOCIATED_RESET axi_sys_aresetn, FREQ_HZ 125000000, ASSOCIATED_BUSIF axi_sys_s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_sys_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_sys_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_sys_aresetn;
  input [13:0]LQG_yk_0;
  input [13:0]LQG_yk_1;
  output [13:0]LQG_uk_0;
  output [13:0]LQG_uk_1;
  output [24:0]LQG_xkhat_0;
  output [24:0]LQG_xkhat_1;
  output [24:0]LQG_xkhat_2;
  output [24:0]LQG_xkhat_3;
  output [24:0]LQG_xkhat_4;
  output [24:0]LQG_xkhat_5;
  output [24:0]LQG_xkhat_6;
  output [7:0]LQG_led_out;
endmodule
