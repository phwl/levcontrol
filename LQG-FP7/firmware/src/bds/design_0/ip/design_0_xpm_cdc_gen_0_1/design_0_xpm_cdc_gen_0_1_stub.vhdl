-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed May 28 18:34:54 2025
-- Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_0_xpm_cdc_gen_0_1 -prefix
--               design_0_xpm_cdc_gen_0_1_ design_0_xpm_cdc_gen_0_1_stub.vhdl
-- Design      : design_0_xpm_cdc_gen_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_xpm_cdc_gen_0_1 is
  Port ( 
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_xpm_cdc_gen_0_1 : entity is "design_0_xpm_cdc_gen_0_1,xpm_cdc_gen_v1_0_4,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_xpm_cdc_gen_0_1 : entity is "design_0_xpm_cdc_gen_0_1,xpm_cdc_gen_v1_0_4,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xpm_cdc_gen,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_CDC_TYPE=6,SRC_CLK_PERIOD=5000,DEST_CLK_PERIOD=2500,SIM_ASSERT_CHK=1,DEST_SYNC_FF=2,INIT_SYNC_FF=0,SRC_INPUT_REG=1,WIDTH=1,REG_OUTPUT=0,SIM_LOSSLESS_GRAY_CHK=0,SRC_SYNC_FF=4,DEST_EXT_HSK=1,RST_USED=1,INIT=1,RST_ACTIVE_HIGH=0}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_xpm_cdc_gen_0_1 : entity is "yes";
end design_0_xpm_cdc_gen_0_1;

architecture stub of design_0_xpm_cdc_gen_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "src_clk,dest_clk,src_in[0:0],dest_out[0:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of src_clk : signal is "xilinx.com:signal:clock:1.0 src_signal_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of src_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of src_clk : signal is "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dest_clk : signal is "xilinx.com:signal:clock:1.0 dest_signal_clock CLK";
  attribute X_INTERFACE_MODE of dest_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of dest_clk : signal is "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "xpm_cdc_gen_v1_0_4,Vivado 2024.2";
begin
end;
