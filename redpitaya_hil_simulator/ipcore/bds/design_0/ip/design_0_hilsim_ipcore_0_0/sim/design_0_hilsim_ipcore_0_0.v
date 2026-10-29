// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: User_Company:VMC:hilsim_ipcore:1.0
// IP Revision: 406564256

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "sysgen" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_0_hilsim_ipcore_0_0 (
  adc_ch0_in,
  adc_ch1_in,
  procclk_nlf_sw_ext_in,
  axi_domain_clk,
  proc_domain_clk,
  adc_dac_domain_clk,
  axi_domain_aresetn,
  axi_domain_s_axi_awaddr,
  axi_domain_s_axi_awvalid,
  axi_domain_s_axi_wdata,
  axi_domain_s_axi_wstrb,
  axi_domain_s_axi_wvalid,
  axi_domain_s_axi_bready,
  axi_domain_s_axi_araddr,
  axi_domain_s_axi_arvalid,
  axi_domain_s_axi_rready,
  axi_domain_axi_b_s_axi_awaddr,
  axi_domain_axi_b_s_axi_awvalid,
  axi_domain_axi_b_s_axi_wdata,
  axi_domain_axi_b_s_axi_wstrb,
  axi_domain_axi_b_s_axi_wvalid,
  axi_domain_axi_b_s_axi_bready,
  axi_domain_axi_b_s_axi_araddr,
  axi_domain_axi_b_s_axi_arvalid,
  axi_domain_axi_b_s_axi_rready,
  dac_ch0_out,
  dac_ch1_out,
  dma_ch1_out,
  dma_ch2h_out,
  dma_ch2l_out,
  dma_trigger_out,
  leds_out,
  axi_domain_s_axi_awready,
  axi_domain_s_axi_wready,
  axi_domain_s_axi_bresp,
  axi_domain_s_axi_bvalid,
  axi_domain_s_axi_arready,
  axi_domain_s_axi_rdata,
  axi_domain_s_axi_rresp,
  axi_domain_s_axi_rvalid,
  axi_domain_axi_b_s_axi_awready,
  axi_domain_axi_b_s_axi_wready,
  axi_domain_axi_b_s_axi_bresp,
  axi_domain_axi_b_s_axi_bvalid,
  axi_domain_axi_b_s_axi_arready,
  axi_domain_axi_b_s_axi_rdata,
  axi_domain_axi_b_s_axi_rresp,
  axi_domain_axi_b_s_axi_rvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 adc_ch0_in DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_ch0_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximu\
m {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
input wire [13 : 0] adc_ch0_in;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 adc_ch1_in DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_ch1_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximu\
m {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
input wire [13 : 0] adc_ch1_in;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 procclk_nlf_sw_ext_in DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME procclk_nlf_sw_ext_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum\
 {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
input wire [8 : 0] procclk_nlf_sw_ext_in;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_domain_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_domain_clk, ASSOCIATED_RESET axi_domain_aresetn, ASSOCIATED_BUSIF axi_domain_axi_b_s_axi:axi_domain_s_axi, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire axi_domain_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 proc_domain_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME proc_domain_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /pll_procclk_clk_out1, INSERT_VIP 0" *)
input wire proc_domain_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_dac_domain_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_dac_domain_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0" *)
input wire adc_dac_domain_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_domain_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_domain_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire axi_domain_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_domain_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [8 : 0] axi_domain_s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWVALID" *)
input wire axi_domain_s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WDATA" *)
input wire [31 : 0] axi_domain_s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WSTRB" *)
input wire [3 : 0] axi_domain_s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WVALID" *)
input wire axi_domain_s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BREADY" *)
input wire axi_domain_s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARADDR" *)
input wire [8 : 0] axi_domain_s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARVALID" *)
input wire axi_domain_s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RREADY" *)
input wire axi_domain_s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_domain_axi_b_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, N\
UM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [6 : 0] axi_domain_axi_b_s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWVALID" *)
input wire axi_domain_axi_b_s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WDATA" *)
input wire [31 : 0] axi_domain_axi_b_s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WSTRB" *)
input wire [3 : 0] axi_domain_axi_b_s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WVALID" *)
input wire axi_domain_axi_b_s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BREADY" *)
input wire axi_domain_axi_b_s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARADDR" *)
input wire [6 : 0] axi_domain_axi_b_s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARVALID" *)
input wire axi_domain_axi_b_s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RREADY" *)
input wire axi_domain_axi_b_s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dac_ch0_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_ch0_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxim\
um {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
output wire [13 : 0] dac_ch0_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dac_ch1_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_ch1_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxim\
um {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
output wire [13 : 0] dac_ch1_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dma_ch1_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_ch1_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxim\
um {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
output wire [31 : 0] dma_ch1_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dma_ch2h_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_ch2h_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi\
mum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
output wire [15 : 0] dma_ch2h_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dma_ch2l_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_ch2l_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi\
mum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
output wire [15 : 0] dma_ch2l_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dma_trigger_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_trigger_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} ma\
ximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
output wire [0 : 0] dma_trigger_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 leds_out DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME leds_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
output wire [7 : 0] leds_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWREADY" *)
output wire axi_domain_s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WREADY" *)
output wire axi_domain_s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BRESP" *)
output wire [1 : 0] axi_domain_s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BVALID" *)
output wire axi_domain_s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARREADY" *)
output wire axi_domain_s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RDATA" *)
output wire [31 : 0] axi_domain_s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RRESP" *)
output wire [1 : 0] axi_domain_s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RVALID" *)
output wire axi_domain_s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWREADY" *)
output wire axi_domain_axi_b_s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WREADY" *)
output wire axi_domain_axi_b_s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BRESP" *)
output wire [1 : 0] axi_domain_axi_b_s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BVALID" *)
output wire axi_domain_axi_b_s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARREADY" *)
output wire axi_domain_axi_b_s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RDATA" *)
output wire [31 : 0] axi_domain_axi_b_s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RRESP" *)
output wire [1 : 0] axi_domain_axi_b_s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RVALID" *)
output wire axi_domain_axi_b_s_axi_rvalid;

  hilsim_ipcore inst (
    .adc_ch0_in(adc_ch0_in),
    .adc_ch1_in(adc_ch1_in),
    .procclk_nlf_sw_ext_in(procclk_nlf_sw_ext_in),
    .axi_domain_clk(axi_domain_clk),
    .proc_domain_clk(proc_domain_clk),
    .adc_dac_domain_clk(adc_dac_domain_clk),
    .axi_domain_aresetn(axi_domain_aresetn),
    .axi_domain_s_axi_awaddr(axi_domain_s_axi_awaddr),
    .axi_domain_s_axi_awvalid(axi_domain_s_axi_awvalid),
    .axi_domain_s_axi_wdata(axi_domain_s_axi_wdata),
    .axi_domain_s_axi_wstrb(axi_domain_s_axi_wstrb),
    .axi_domain_s_axi_wvalid(axi_domain_s_axi_wvalid),
    .axi_domain_s_axi_bready(axi_domain_s_axi_bready),
    .axi_domain_s_axi_araddr(axi_domain_s_axi_araddr),
    .axi_domain_s_axi_arvalid(axi_domain_s_axi_arvalid),
    .axi_domain_s_axi_rready(axi_domain_s_axi_rready),
    .axi_domain_axi_b_s_axi_awaddr(axi_domain_axi_b_s_axi_awaddr),
    .axi_domain_axi_b_s_axi_awvalid(axi_domain_axi_b_s_axi_awvalid),
    .axi_domain_axi_b_s_axi_wdata(axi_domain_axi_b_s_axi_wdata),
    .axi_domain_axi_b_s_axi_wstrb(axi_domain_axi_b_s_axi_wstrb),
    .axi_domain_axi_b_s_axi_wvalid(axi_domain_axi_b_s_axi_wvalid),
    .axi_domain_axi_b_s_axi_bready(axi_domain_axi_b_s_axi_bready),
    .axi_domain_axi_b_s_axi_araddr(axi_domain_axi_b_s_axi_araddr),
    .axi_domain_axi_b_s_axi_arvalid(axi_domain_axi_b_s_axi_arvalid),
    .axi_domain_axi_b_s_axi_rready(axi_domain_axi_b_s_axi_rready),
    .dac_ch0_out(dac_ch0_out),
    .dac_ch1_out(dac_ch1_out),
    .dma_ch1_out(dma_ch1_out),
    .dma_ch2h_out(dma_ch2h_out),
    .dma_ch2l_out(dma_ch2l_out),
    .dma_trigger_out(dma_trigger_out),
    .leds_out(leds_out),
    .axi_domain_s_axi_awready(axi_domain_s_axi_awready),
    .axi_domain_s_axi_wready(axi_domain_s_axi_wready),
    .axi_domain_s_axi_bresp(axi_domain_s_axi_bresp),
    .axi_domain_s_axi_bvalid(axi_domain_s_axi_bvalid),
    .axi_domain_s_axi_arready(axi_domain_s_axi_arready),
    .axi_domain_s_axi_rdata(axi_domain_s_axi_rdata),
    .axi_domain_s_axi_rresp(axi_domain_s_axi_rresp),
    .axi_domain_s_axi_rvalid(axi_domain_s_axi_rvalid),
    .axi_domain_axi_b_s_axi_awready(axi_domain_axi_b_s_axi_awready),
    .axi_domain_axi_b_s_axi_wready(axi_domain_axi_b_s_axi_wready),
    .axi_domain_axi_b_s_axi_bresp(axi_domain_axi_b_s_axi_bresp),
    .axi_domain_axi_b_s_axi_bvalid(axi_domain_axi_b_s_axi_bvalid),
    .axi_domain_axi_b_s_axi_arready(axi_domain_axi_b_s_axi_arready),
    .axi_domain_axi_b_s_axi_rdata(axi_domain_axi_b_s_axi_rdata),
    .axi_domain_axi_b_s_axi_rresp(axi_domain_axi_b_s_axi_rresp),
    .axi_domain_axi_b_s_axi_rvalid(axi_domain_axi_b_s_axi_rvalid)
  );
endmodule
