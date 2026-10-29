-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Apr 27 18:12:41 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_lqg_axi_test_wrapper_0_0/design_0_lqg_axi_test_wrapper_0_0_stub.vhdl
-- Design      : design_0_lqg_axi_test_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_lqg_axi_test_wrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    cfg_ram_en : out STD_LOGIC;
    cfg_ram_clk : out STD_LOGIC;
    cfg_ram_rst : out STD_LOGIC;
    cfg_ram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    cfg_ram_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_load : in STD_LOGIC;
    cfg_load_done : out STD_LOGIC;
    cfg_apply : in STD_LOGIC;
    axi_sys_s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_sys_s_axi_awvalid : in STD_LOGIC;
    axi_sys_s_axi_awready : out STD_LOGIC;
    axi_sys_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_sys_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_sys_s_axi_wvalid : in STD_LOGIC;
    axi_sys_s_axi_wready : out STD_LOGIC;
    axi_sys_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_sys_s_axi_bvalid : out STD_LOGIC;
    axi_sys_s_axi_bready : in STD_LOGIC;
    axi_sys_s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_sys_s_axi_arvalid : in STD_LOGIC;
    axi_sys_s_axi_arready : out STD_LOGIC;
    axi_sys_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_sys_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_sys_s_axi_rvalid : out STD_LOGIC;
    axi_sys_s_axi_rready : in STD_LOGIC;
    proc_sys_clk : in STD_LOGIC;
    axi_sys_clk : in STD_LOGIC;
    axi_sys_aresetn : in STD_LOGIC;
    LQG_yk_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    LQG_yk_1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    LQG_uk_0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    LQG_uk_1 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    LQG_xkhat_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_2 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_3 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_4 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_5 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_xkhat_6 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    LQG_led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_lqg_axi_test_wrapper_0_0 : entity is "design_0_lqg_axi_test_wrapper_0_0,lqg_axi_test_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_lqg_axi_test_wrapper_0_0 : entity is "design_0_lqg_axi_test_wrapper_0_0,lqg_axi_test_wrapper,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=lqg_axi_test_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BRAM_ADDR_WIDTH=13,BRAM_DATA_WIDTH=32,BRAM_READ_LATENCY=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_lqg_axi_test_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_lqg_axi_test_wrapper_0_0 : entity is "module_ref";
end design_0_lqg_axi_test_wrapper_0_0;

architecture stub of design_0_lqg_axi_test_wrapper_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,cfg_ram_en,cfg_ram_clk,cfg_ram_rst,cfg_ram_addr[12:0],cfg_ram_dout[31:0],cfg_load,cfg_load_done,cfg_apply,axi_sys_s_axi_awaddr[2:0],axi_sys_s_axi_awvalid,axi_sys_s_axi_awready,axi_sys_s_axi_wdata[31:0],axi_sys_s_axi_wstrb[3:0],axi_sys_s_axi_wvalid,axi_sys_s_axi_wready,axi_sys_s_axi_bresp[1:0],axi_sys_s_axi_bvalid,axi_sys_s_axi_bready,axi_sys_s_axi_araddr[2:0],axi_sys_s_axi_arvalid,axi_sys_s_axi_arready,axi_sys_s_axi_rdata[31:0],axi_sys_s_axi_rresp[1:0],axi_sys_s_axi_rvalid,axi_sys_s_axi_rready,proc_sys_clk,axi_sys_clk,axi_sys_aresetn,LQG_yk_0[13:0],LQG_yk_1[13:0],LQG_uk_0[13:0],LQG_uk_1[13:0],LQG_xkhat_0[24:0],LQG_xkhat_1[24:0],LQG_xkhat_2[24:0],LQG_xkhat_3[24:0],LQG_xkhat_4[24:0],LQG_xkhat_5[24:0],LQG_xkhat_6[24:0],LQG_led_out[7:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF '', ASSOCIATED_RESET rst, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cfg_ram_en : signal is "xilinx.com:interface:bram:1.0 cfg_ram EN";
  attribute X_INTERFACE_MODE of cfg_ram_en : signal is "master";
  attribute X_INTERFACE_PARAMETER of cfg_ram_en : signal is "XIL_INTERFACENAME cfg_ram, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of cfg_ram_clk : signal is "xilinx.com:interface:bram:1.0 cfg_ram CLK";
  attribute X_INTERFACE_INFO of cfg_ram_rst : signal is "xilinx.com:interface:bram:1.0 cfg_ram RST";
  attribute X_INTERFACE_INFO of cfg_ram_addr : signal is "xilinx.com:interface:bram:1.0 cfg_ram ADDR";
  attribute X_INTERFACE_INFO of cfg_ram_dout : signal is "xilinx.com:interface:bram:1.0 cfg_ram DOUT";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWADDR";
  attribute X_INTERFACE_MODE of axi_sys_s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_sys_s_axi_awaddr : signal is "XIL_INTERFACENAME axi_sys_s_axi, PROTOCOL AXI4LITE, FREQ_HZ 125000000, DATA_WIDTH 32, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWVALID";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWREADY";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WDATA";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WSTRB";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WVALID";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WREADY";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BRESP";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BVALID";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BREADY";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARADDR";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARVALID";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARREADY";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RDATA";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RRESP";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RVALID";
  attribute X_INTERFACE_INFO of axi_sys_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RREADY";
  attribute X_INTERFACE_INFO of proc_sys_clk : signal is "xilinx.com:signal:clock:1.0 proc_sys_clk CLK";
  attribute X_INTERFACE_MODE of proc_sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of proc_sys_clk : signal is "XIL_INTERFACENAME proc_sys_clk, FREQ_HZ 15625000, ASSOCIATED_BUSIF '', FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_sys_clk : signal is "xilinx.com:signal:clock:1.0 axi_sys_clk CLK";
  attribute X_INTERFACE_MODE of axi_sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_sys_clk : signal is "XIL_INTERFACENAME axi_sys_clk, ASSOCIATED_RESET axi_sys_aresetn, FREQ_HZ 125000000, ASSOCIATED_BUSIF axi_sys_s_axi, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_sys_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_sys_aresetn RST";
  attribute X_INTERFACE_MODE of axi_sys_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_sys_aresetn : signal is "XIL_INTERFACENAME axi_sys_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "lqg_axi_test_wrapper,Vivado 2024.2";
begin
end;
