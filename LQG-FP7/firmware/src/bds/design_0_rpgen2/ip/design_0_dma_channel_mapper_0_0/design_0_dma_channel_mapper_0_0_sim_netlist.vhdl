-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Apr 27 18:10:56 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_dma_channel_mapper_0_0/design_0_dma_channel_mapper_0_0_sim_netlist.vhdl
-- Design      : design_0_dma_channel_mapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_dma_channel_mapper_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_dma_channel_mapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_dma_channel_mapper_0_0 : entity is "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_dma_channel_mapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_dma_channel_mapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_dma_channel_mapper_0_0 : entity is "dma_channel_mapper,Vivado 2024.2";
end design_0_dma_channel_mapper_0_0;

architecture STRUCTURE of design_0_dma_channel_mapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^lqg_uk_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^lqg_uk_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^lqg_xkhat_0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_1\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_2\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_3\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_4\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_5\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_xkhat_6\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^lqg_yk_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^lqg_yk_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  \^lqg_uk_0\(13 downto 0) <= lqg_uk_0(13 downto 0);
  \^lqg_uk_1\(13 downto 0) <= lqg_uk_1(13 downto 0);
  \^lqg_xkhat_0\(24 downto 0) <= lqg_xkhat_0(24 downto 0);
  \^lqg_xkhat_1\(24 downto 0) <= lqg_xkhat_1(24 downto 0);
  \^lqg_xkhat_2\(24 downto 0) <= lqg_xkhat_2(24 downto 0);
  \^lqg_xkhat_3\(24 downto 0) <= lqg_xkhat_3(24 downto 0);
  \^lqg_xkhat_4\(24 downto 0) <= lqg_xkhat_4(24 downto 0);
  \^lqg_xkhat_5\(24 downto 0) <= lqg_xkhat_5(24 downto 0);
  \^lqg_xkhat_6\(24 downto 0) <= lqg_xkhat_6(24 downto 0);
  \^lqg_yk_0\(13 downto 0) <= lqg_yk_0(13 downto 0);
  \^lqg_yk_1\(13 downto 0) <= lqg_yk_1(13 downto 0);
  dma_channel_a(31 downto 28) <= \^lqg_yk_0\(3 downto 0);
  dma_channel_a(27 downto 14) <= \^lqg_uk_1\(13 downto 0);
  dma_channel_a(13 downto 0) <= \^lqg_uk_0\(13 downto 0);
  dma_channel_b(31 downto 24) <= \^lqg_xkhat_0\(7 downto 0);
  dma_channel_b(23 downto 10) <= \^lqg_yk_1\(13 downto 0);
  dma_channel_b(9 downto 0) <= \^lqg_yk_0\(13 downto 4);
  dma_channel_c(31 downto 17) <= \^lqg_xkhat_1\(14 downto 0);
  dma_channel_c(16 downto 0) <= \^lqg_xkhat_0\(24 downto 8);
  dma_channel_d(31 downto 10) <= \^lqg_xkhat_2\(21 downto 0);
  dma_channel_d(9 downto 0) <= \^lqg_xkhat_1\(24 downto 15);
  dma_channel_e(31 downto 28) <= \^lqg_xkhat_4\(3 downto 0);
  dma_channel_e(27 downto 3) <= \^lqg_xkhat_3\(24 downto 0);
  dma_channel_e(2 downto 0) <= \^lqg_xkhat_2\(24 downto 22);
  dma_channel_f(31 downto 21) <= \^lqg_xkhat_5\(10 downto 0);
  dma_channel_f(20 downto 0) <= \^lqg_xkhat_4\(24 downto 4);
  dma_channel_g(31 downto 14) <= \^lqg_xkhat_6\(17 downto 0);
  dma_channel_g(13 downto 0) <= \^lqg_xkhat_5\(24 downto 11);
  dma_channel_h(31) <= \<const0>\;
  dma_channel_h(30) <= \<const0>\;
  dma_channel_h(29) <= \<const0>\;
  dma_channel_h(28) <= \<const0>\;
  dma_channel_h(27) <= \<const0>\;
  dma_channel_h(26) <= \<const0>\;
  dma_channel_h(25) <= \<const0>\;
  dma_channel_h(24) <= \<const0>\;
  dma_channel_h(23) <= \<const0>\;
  dma_channel_h(22) <= \<const0>\;
  dma_channel_h(21) <= \<const0>\;
  dma_channel_h(20) <= \<const0>\;
  dma_channel_h(19) <= \<const0>\;
  dma_channel_h(18) <= \<const0>\;
  dma_channel_h(17) <= \<const0>\;
  dma_channel_h(16) <= \<const0>\;
  dma_channel_h(15) <= \<const0>\;
  dma_channel_h(14) <= \<const0>\;
  dma_channel_h(13) <= \<const0>\;
  dma_channel_h(12) <= \<const0>\;
  dma_channel_h(11) <= \<const0>\;
  dma_channel_h(10) <= \<const0>\;
  dma_channel_h(9) <= \<const0>\;
  dma_channel_h(8) <= \<const0>\;
  dma_channel_h(7) <= \<const0>\;
  dma_channel_h(6 downto 0) <= \^lqg_xkhat_6\(24 downto 18);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
