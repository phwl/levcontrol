-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Jan 12 18:11:20 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_axis_red_pitaya_adc_0_0/design_0_axis_red_pitaya_adc_0_0_stub.vhdl
-- Design      : design_0_axis_red_pitaya_adc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_axis_red_pitaya_adc_0_0 is
  Port ( 
    adc_clk : out STD_LOGIC;
    adc_csn : out STD_LOGIC;
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    offset_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    offset_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    bypass : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_axis_red_pitaya_adc_0_0 : entity is "design_0_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_axis_red_pitaya_adc_0_0 : entity is "design_0_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_red_pitaya_adc,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_DATA_WIDTH=14,AXIS_TDATA_WIDTH=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_axis_red_pitaya_adc_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_axis_red_pitaya_adc_0_0 : entity is "module_ref";
end design_0_axis_red_pitaya_adc_0_0;

architecture stub of design_0_axis_red_pitaya_adc_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "adc_clk,adc_csn,adc_clk_p,adc_clk_n,adc_dat_a[13:0],adc_dat_b[13:0],offset_a[13:0],offset_b[13:0],bypass,m_axis_tvalid,m_axis_tdata[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of adc_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_adc_0_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_p : signal is "xilinx.com:signal:clock:1.0 adc_clk_p CLK";
  attribute X_INTERFACE_MODE of adc_clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_clk_p : signal is "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_a, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_n : signal is "xilinx.com:signal:clock:1.0 adc_clk_n CLK";
  attribute X_INTERFACE_MODE of adc_clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_clk_n : signal is "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_b, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axis_red_pitaya_adc,Vivado 2024.2";
begin
end;
