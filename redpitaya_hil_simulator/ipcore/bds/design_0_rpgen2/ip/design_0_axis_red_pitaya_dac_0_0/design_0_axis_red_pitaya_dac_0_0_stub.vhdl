-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon May  4 12:18:54 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_axis_red_pitaya_dac_0_0/design_0_axis_red_pitaya_dac_0_0_stub.vhdl
-- Design      : design_0_axis_red_pitaya_dac_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_axis_red_pitaya_dac_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    ddr_clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    dac_clk : out STD_LOGIC;
    dac_rst : out STD_LOGIC;
    dac_sel : out STD_LOGIC;
    dac_wrt : out STD_LOGIC;
    dac_dat : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_axis_red_pitaya_dac_0_0 : entity is "design_0_axis_red_pitaya_dac_0_0,axis_red_pitaya_dac,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_axis_red_pitaya_dac_0_0 : entity is "design_0_axis_red_pitaya_dac_0_0,axis_red_pitaya_dac,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_red_pitaya_dac,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DAC_DATA_WIDTH=14,AXIS_TDATA_WIDTH=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_axis_red_pitaya_dac_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_axis_red_pitaya_dac_0_0 : entity is "module_ref";
end design_0_axis_red_pitaya_dac_0_0;

architecture stub of design_0_axis_red_pitaya_dac_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,ddr_clk,locked,dac_clk,dac_rst,dac_sel,dac_wrt,dac_dat[13:0],s_axis_tready,s_axis_tdata[31:0],s_axis_tvalid";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ddr_clk : signal is "xilinx.com:signal:clock:1.0 ddr_clk CLK";
  attribute X_INTERFACE_MODE of ddr_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ddr_clk : signal is "XIL_INTERFACENAME ddr_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /DAC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_clk : signal is "xilinx.com:signal:clock:1.0 dac_clk CLK";
  attribute X_INTERFACE_MODE of dac_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of dac_clk : signal is "XIL_INTERFACENAME dac_clk, ASSOCIATED_RESET dac_rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_dac_0_0_dac_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_rst : signal is "xilinx.com:signal:reset:1.0 dac_rst RST";
  attribute X_INTERFACE_MODE of dac_rst : signal is "master";
  attribute X_INTERFACE_PARAMETER of dac_rst : signal is "XIL_INTERFACENAME dac_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_MODE of s_axis_tready : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axis_red_pitaya_dac,Vivado 2024.2";
begin
end;
