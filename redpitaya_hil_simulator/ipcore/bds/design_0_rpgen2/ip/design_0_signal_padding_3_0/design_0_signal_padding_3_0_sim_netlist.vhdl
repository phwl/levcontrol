-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon May  4 12:18:54 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_signal_padding_3_0/design_0_signal_padding_3_0_sim_netlist.vhdl
-- Design      : design_0_signal_padding_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_signal_padding_3_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_signal_padding_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_signal_padding_3_0 : entity is "design_0_signal_padding_3_0,signal_padding,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_signal_padding_3_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_signal_padding_3_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_signal_padding_3_0 : entity is "signal_padding,Vivado 2024.2";
end design_0_signal_padding_3_0;

architecture STRUCTURE of design_0_signal_padding_3_0 is
  signal \^data_in\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  \^data_in\(13 downto 0) <= data_in(13 downto 0);
  data_out(15) <= \^data_in\(13);
  data_out(14) <= \^data_in\(13);
  data_out(13 downto 0) <= \^data_in\(13 downto 0);
end STRUCTURE;
