-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Jan 12 18:11:22 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_signal_padding_3_0/design_0_signal_padding_3_0_stub.vhdl
-- Design      : design_0_signal_padding_3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_signal_padding_3_0 is
  Port ( 
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_signal_padding_3_0 : entity is "design_0_signal_padding_3_0,signal_padding,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_signal_padding_3_0 : entity is "design_0_signal_padding_3_0,signal_padding,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=signal_padding,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH_IN=14,DATA_WIDTH_OUT=16}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_signal_padding_3_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_signal_padding_3_0 : entity is "module_ref";
end design_0_signal_padding_3_0;

architecture stub of design_0_signal_padding_3_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "data_in[13:0],data_out[15:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "signal_padding,Vivado 2024.2";
begin
end;
