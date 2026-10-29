-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Apr 27 18:10:56 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_dma_channel_mapper_0_0/design_0_dma_channel_mapper_0_0_stub.vhdl
-- Design      : design_0_dma_channel_mapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_0_dma_channel_mapper_0_0 is
  Port ( 
    lqg_uk_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    lqg_uk_1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    lqg_yk_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    lqg_yk_1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    lqg_xkhat_0 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_1 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_2 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_3 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_4 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    lqg_xkhat_6 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    dma_channel_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_c : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_e : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_f : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_g : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_channel_h : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_dma_channel_mapper_0_0 : entity is "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_0_dma_channel_mapper_0_0 : entity is "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dma_channel_mapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_dma_channel_mapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_dma_channel_mapper_0_0 : entity is "module_ref";
end design_0_dma_channel_mapper_0_0;

architecture stub of design_0_dma_channel_mapper_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "lqg_uk_0[13:0],lqg_uk_1[13:0],lqg_yk_0[13:0],lqg_yk_1[13:0],lqg_xkhat_0[24:0],lqg_xkhat_1[24:0],lqg_xkhat_2[24:0],lqg_xkhat_3[24:0],lqg_xkhat_4[24:0],lqg_xkhat_5[24:0],lqg_xkhat_6[24:0],dma_channel_a[31:0],dma_channel_b[31:0],dma_channel_c[31:0],dma_channel_d[31:0],dma_channel_e[31:0],dma_channel_f[31:0],dma_channel_g[31:0],dma_channel_h[31:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "dma_channel_mapper,Vivado 2024.2";
begin
end;
