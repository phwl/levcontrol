-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon May  4 12:18:19 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_thrtl_8ch_cfg_0_0/design_0_thrtl_8ch_cfg_0_0_stub.vhdl
-- Design      : design_0_thrtl_8ch_cfg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_thrtl_8ch_cfg_0_0 is
  Port ( 
    data_in_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_f : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_h : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dma_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_in_hw : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    thrtl_8ch_cfg_aresetn : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_awvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_wvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_bready : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_arvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_rready : in STD_LOGIC;
    dma_ready_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dma_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_dma_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_awready : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_wready : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_bvalid : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_arready : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_rvalid : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_thrtl_8ch_cfg_0_0 : entity is "design_0_thrtl_8ch_cfg_0_0,thrtl_8ch_cfg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_thrtl_8ch_cfg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_thrtl_8ch_cfg_0_0 : entity is "sysgen";
end design_0_thrtl_8ch_cfg_0_0;

architecture stub of design_0_thrtl_8ch_cfg_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "data_in_a[31:0],data_in_b[31:0],data_in_c[31:0],data_in_d[31:0],data_in_e[31:0],data_in_f[31:0],data_in_g[31:0],data_in_h[31:0],m_axis_dma_tready[0:0],trigger_in_hw[0:0],clk,thrtl_8ch_cfg_aresetn,thrtl_8ch_cfg_cfg_in_s_axi_awaddr[4:0],thrtl_8ch_cfg_cfg_in_s_axi_awvalid,thrtl_8ch_cfg_cfg_in_s_axi_wdata[31:0],thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3:0],thrtl_8ch_cfg_cfg_in_s_axi_wvalid,thrtl_8ch_cfg_cfg_in_s_axi_bready,thrtl_8ch_cfg_cfg_in_s_axi_araddr[4:0],thrtl_8ch_cfg_cfg_in_s_axi_arvalid,thrtl_8ch_cfg_cfg_in_s_axi_rready,dma_ready_out[0:0],m_axis_dma_tdata[31:0],m_axis_dma_tkeep[3:0],m_axis_dma_tlast[0:0],m_axis_dma_tvalid[0:0],thrtl_8ch_cfg_cfg_in_s_axi_awready,thrtl_8ch_cfg_cfg_in_s_axi_wready,thrtl_8ch_cfg_cfg_in_s_axi_bresp[1:0],thrtl_8ch_cfg_cfg_in_s_axi_bvalid,thrtl_8ch_cfg_cfg_in_s_axi_arready,thrtl_8ch_cfg_cfg_in_s_axi_rdata[31:0],thrtl_8ch_cfg_cfg_in_s_axi_rresp[1:0],thrtl_8ch_cfg_cfg_in_s_axi_rvalid";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data_in_a : signal is "xilinx.com:signal:data:1.0 data_in_a DATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of data_in_a : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of data_in_a : signal is "XIL_INTERFACENAME data_in_a, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_b : signal is "xilinx.com:signal:data:1.0 data_in_b DATA";
  attribute X_INTERFACE_MODE of data_in_b : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_b : signal is "XIL_INTERFACENAME data_in_b, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_c : signal is "xilinx.com:signal:data:1.0 data_in_c DATA";
  attribute X_INTERFACE_MODE of data_in_c : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_c : signal is "XIL_INTERFACENAME data_in_c, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_d : signal is "xilinx.com:signal:data:1.0 data_in_d DATA";
  attribute X_INTERFACE_MODE of data_in_d : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_d : signal is "XIL_INTERFACENAME data_in_d, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_e : signal is "xilinx.com:signal:data:1.0 data_in_e DATA";
  attribute X_INTERFACE_MODE of data_in_e : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_e : signal is "XIL_INTERFACENAME data_in_e, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_f : signal is "xilinx.com:signal:data:1.0 data_in_f DATA";
  attribute X_INTERFACE_MODE of data_in_f : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_f : signal is "XIL_INTERFACENAME data_in_f, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_g : signal is "xilinx.com:signal:data:1.0 data_in_g DATA";
  attribute X_INTERFACE_MODE of data_in_g : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_g : signal is "XIL_INTERFACENAME data_in_g, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in_h : signal is "xilinx.com:signal:data:1.0 data_in_h DATA";
  attribute X_INTERFACE_MODE of data_in_h : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in_h : signal is "XIL_INTERFACENAME data_in_h, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_dma_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TREADY";
  attribute X_INTERFACE_MODE of m_axis_dma_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_dma_tready : signal is "XIL_INTERFACENAME m_axis_dma, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of trigger_in_hw : signal is "xilinx.com:signal:data:1.0 trigger_in_hw DATA";
  attribute X_INTERFACE_MODE of trigger_in_hw : signal is "slave";
  attribute X_INTERFACE_PARAMETER of trigger_in_hw : signal is "XIL_INTERFACENAME trigger_in_hw, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF thrtl_8ch_cfg_cfg_in_s_axi:m_axis_dma:data_in_a:data_in_b:data_in_c:data_in_d:data_in_e:data_in_f:data_in_g:data_in_h, ASSOCIATED_RESET thrtl_8ch_cfg_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_aresetn : signal is "xilinx.com:signal:reset:1.0 thrtl_8ch_cfg_aresetn RST";
  attribute X_INTERFACE_MODE of thrtl_8ch_cfg_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of thrtl_8ch_cfg_aresetn : signal is "XIL_INTERFACENAME thrtl_8ch_cfg_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWADDR";
  attribute X_INTERFACE_MODE of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "XIL_INTERFACENAME thrtl_8ch_cfg_cfg_in_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WDATA";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WSTRB";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARADDR";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RREADY";
  attribute X_INTERFACE_INFO of dma_ready_out : signal is "xilinx.com:signal:data:1.0 dma_ready_out DATA";
  attribute X_INTERFACE_MODE of dma_ready_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_ready_out : signal is "XIL_INTERFACENAME dma_ready_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of m_axis_dma_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TDATA";
  attribute X_INTERFACE_INFO of m_axis_dma_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP";
  attribute X_INTERFACE_INFO of m_axis_dma_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TLAST";
  attribute X_INTERFACE_INFO of m_axis_dma_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BRESP";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RDATA";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RRESP";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "thrtl_8ch_cfg,Vivado 2024.2";
begin
end;
