-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon May  4 12:20:02 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_hilsim_ipcore_0_0/design_0_hilsim_ipcore_0_0_stub.vhdl
-- Design      : design_0_hilsim_ipcore_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_hilsim_ipcore_0_0 is
  Port ( 
    adc_ch0_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_ch1_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    procclk_nlf_sw_ext_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_domain_clk : in STD_LOGIC;
    proc_domain_clk : in STD_LOGIC;
    adc_dac_domain_clk : in STD_LOGIC;
    axi_domain_aresetn : in STD_LOGIC;
    axi_domain_s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_domain_s_axi_awvalid : in STD_LOGIC;
    axi_domain_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_domain_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_domain_s_axi_wvalid : in STD_LOGIC;
    axi_domain_s_axi_bready : in STD_LOGIC;
    axi_domain_s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_domain_s_axi_arvalid : in STD_LOGIC;
    axi_domain_s_axi_rready : in STD_LOGIC;
    axi_domain_axi_b_s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    axi_domain_axi_b_s_axi_awvalid : in STD_LOGIC;
    axi_domain_axi_b_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_domain_axi_b_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_domain_axi_b_s_axi_wvalid : in STD_LOGIC;
    axi_domain_axi_b_s_axi_bready : in STD_LOGIC;
    axi_domain_axi_b_s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    axi_domain_axi_b_s_axi_arvalid : in STD_LOGIC;
    axi_domain_axi_b_s_axi_rready : in STD_LOGIC;
    dac_ch0_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_ch1_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dma_ch1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_ch2h_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dma_ch2l_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dma_trigger_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    leds_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_domain_s_axi_awready : out STD_LOGIC;
    axi_domain_s_axi_wready : out STD_LOGIC;
    axi_domain_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_domain_s_axi_bvalid : out STD_LOGIC;
    axi_domain_s_axi_arready : out STD_LOGIC;
    axi_domain_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_domain_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_domain_s_axi_rvalid : out STD_LOGIC;
    axi_domain_axi_b_s_axi_awready : out STD_LOGIC;
    axi_domain_axi_b_s_axi_wready : out STD_LOGIC;
    axi_domain_axi_b_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_domain_axi_b_s_axi_bvalid : out STD_LOGIC;
    axi_domain_axi_b_s_axi_arready : out STD_LOGIC;
    axi_domain_axi_b_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_domain_axi_b_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_domain_axi_b_s_axi_rvalid : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_hilsim_ipcore_0_0 : entity is "design_0_hilsim_ipcore_0_0,hilsim_ipcore,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_hilsim_ipcore_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_hilsim_ipcore_0_0 : entity is "sysgen";
end design_0_hilsim_ipcore_0_0;

architecture stub of design_0_hilsim_ipcore_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "adc_ch0_in[13:0],adc_ch1_in[13:0],procclk_nlf_sw_ext_in[8:0],axi_domain_clk,proc_domain_clk,adc_dac_domain_clk,axi_domain_aresetn,axi_domain_s_axi_awaddr[8:0],axi_domain_s_axi_awvalid,axi_domain_s_axi_wdata[31:0],axi_domain_s_axi_wstrb[3:0],axi_domain_s_axi_wvalid,axi_domain_s_axi_bready,axi_domain_s_axi_araddr[8:0],axi_domain_s_axi_arvalid,axi_domain_s_axi_rready,axi_domain_axi_b_s_axi_awaddr[6:0],axi_domain_axi_b_s_axi_awvalid,axi_domain_axi_b_s_axi_wdata[31:0],axi_domain_axi_b_s_axi_wstrb[3:0],axi_domain_axi_b_s_axi_wvalid,axi_domain_axi_b_s_axi_bready,axi_domain_axi_b_s_axi_araddr[6:0],axi_domain_axi_b_s_axi_arvalid,axi_domain_axi_b_s_axi_rready,dac_ch0_out[13:0],dac_ch1_out[13:0],dma_ch1_out[31:0],dma_ch2h_out[15:0],dma_ch2l_out[15:0],dma_trigger_out[0:0],leds_out[7:0],axi_domain_s_axi_awready,axi_domain_s_axi_wready,axi_domain_s_axi_bresp[1:0],axi_domain_s_axi_bvalid,axi_domain_s_axi_arready,axi_domain_s_axi_rdata[31:0],axi_domain_s_axi_rresp[1:0],axi_domain_s_axi_rvalid,axi_domain_axi_b_s_axi_awready,axi_domain_axi_b_s_axi_wready,axi_domain_axi_b_s_axi_bresp[1:0],axi_domain_axi_b_s_axi_bvalid,axi_domain_axi_b_s_axi_arready,axi_domain_axi_b_s_axi_rdata[31:0],axi_domain_axi_b_s_axi_rresp[1:0],axi_domain_axi_b_s_axi_rvalid";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_ch0_in : signal is "xilinx.com:signal:data:1.0 adc_ch0_in DATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of adc_ch0_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_ch0_in : signal is "XIL_INTERFACENAME adc_ch0_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of adc_ch1_in : signal is "xilinx.com:signal:data:1.0 adc_ch1_in DATA";
  attribute X_INTERFACE_MODE of adc_ch1_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_ch1_in : signal is "XIL_INTERFACENAME adc_ch1_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of procclk_nlf_sw_ext_in : signal is "xilinx.com:signal:data:1.0 procclk_nlf_sw_ext_in DATA";
  attribute X_INTERFACE_MODE of procclk_nlf_sw_ext_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of procclk_nlf_sw_ext_in : signal is "XIL_INTERFACENAME procclk_nlf_sw_ext_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of axi_domain_clk : signal is "xilinx.com:signal:clock:1.0 axi_domain_clk CLK";
  attribute X_INTERFACE_MODE of axi_domain_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_domain_clk : signal is "XIL_INTERFACENAME axi_domain_clk, ASSOCIATED_RESET axi_domain_aresetn, ASSOCIATED_BUSIF axi_domain_axi_b_s_axi:axi_domain_s_axi, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of proc_domain_clk : signal is "xilinx.com:signal:clock:1.0 proc_domain_clk CLK";
  attribute X_INTERFACE_MODE of proc_domain_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of proc_domain_clk : signal is "XIL_INTERFACENAME proc_domain_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /pll_procclk_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_dac_domain_clk : signal is "xilinx.com:signal:clock:1.0 adc_dac_domain_clk CLK";
  attribute X_INTERFACE_MODE of adc_dac_domain_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_dac_domain_clk : signal is "XIL_INTERFACENAME adc_dac_domain_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_domain_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_domain_aresetn RST";
  attribute X_INTERFACE_MODE of axi_domain_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_domain_aresetn : signal is "XIL_INTERFACENAME axi_domain_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWADDR";
  attribute X_INTERFACE_MODE of axi_domain_s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_domain_s_axi_awaddr : signal is "XIL_INTERFACENAME axi_domain_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWVALID";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WDATA";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WSTRB";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WVALID";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BREADY";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARADDR";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARVALID";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RREADY";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWADDR";
  attribute X_INTERFACE_MODE of axi_domain_axi_b_s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_domain_axi_b_s_axi_awaddr : signal is "XIL_INTERFACENAME axi_domain_axi_b_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWVALID";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WDATA";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WSTRB";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WVALID";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BREADY";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARADDR";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARVALID";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RREADY";
  attribute X_INTERFACE_INFO of dac_ch0_out : signal is "xilinx.com:signal:data:1.0 dac_ch0_out DATA";
  attribute X_INTERFACE_MODE of dac_ch0_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dac_ch0_out : signal is "XIL_INTERFACENAME dac_ch0_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of dac_ch1_out : signal is "xilinx.com:signal:data:1.0 dac_ch1_out DATA";
  attribute X_INTERFACE_MODE of dac_ch1_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dac_ch1_out : signal is "XIL_INTERFACENAME dac_ch1_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of dma_ch1_out : signal is "xilinx.com:signal:data:1.0 dma_ch1_out DATA";
  attribute X_INTERFACE_MODE of dma_ch1_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_ch1_out : signal is "XIL_INTERFACENAME dma_ch1_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of dma_ch2h_out : signal is "xilinx.com:signal:data:1.0 dma_ch2h_out DATA";
  attribute X_INTERFACE_MODE of dma_ch2h_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_ch2h_out : signal is "XIL_INTERFACENAME dma_ch2h_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of dma_ch2l_out : signal is "xilinx.com:signal:data:1.0 dma_ch2l_out DATA";
  attribute X_INTERFACE_MODE of dma_ch2l_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_ch2l_out : signal is "XIL_INTERFACENAME dma_ch2l_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of dma_trigger_out : signal is "xilinx.com:signal:data:1.0 dma_trigger_out DATA";
  attribute X_INTERFACE_MODE of dma_trigger_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_trigger_out : signal is "XIL_INTERFACENAME dma_trigger_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of leds_out : signal is "xilinx.com:signal:data:1.0 leds_out DATA";
  attribute X_INTERFACE_MODE of leds_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of leds_out : signal is "XIL_INTERFACENAME leds_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi AWREADY";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi WREADY";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BRESP";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi BVALID";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi ARREADY";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RDATA";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RRESP";
  attribute X_INTERFACE_INFO of axi_domain_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_s_axi RVALID";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi AWREADY";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi WREADY";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BRESP";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi BVALID";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi ARREADY";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RDATA";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RRESP";
  attribute X_INTERFACE_INFO of axi_domain_axi_b_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 axi_domain_axi_b_s_axi RVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "hilsim_ipcore,Vivado 2024.2";
begin
end;
