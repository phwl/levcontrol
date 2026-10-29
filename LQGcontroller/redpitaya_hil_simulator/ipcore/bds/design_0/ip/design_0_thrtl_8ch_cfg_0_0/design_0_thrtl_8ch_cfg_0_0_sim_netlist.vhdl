-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon May  4 12:32:20 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0/ip/design_0_thrtl_8ch_cfg_0_0/design_0_thrtl_8ch_cfg_0_0_sim_netlist.vhdl
-- Design      : design_0_thrtl_8ch_cfg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_single_reg_w_init is
  port (
    unregy_join_6_1 : out STD_LOGIC;
    trigger_in_hw : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    trigger_src : in STD_LOGIC;
    register12_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init : entity is "single_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_single_reg_w_init;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init is
  signal register15_q_net : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trigger_in_hw(0),
      Q => register15_q_net,
      R => '0'
    );
\pipe_16_22[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register15_q_net,
      I1 => trigger_src,
      I2 => register12_q_net,
      O => unregy_join_6_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26 is
  port (
    register14_q_net : out STD_LOGIC;
    m_axis_dma_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26 : entity is "single_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axis_dma_tready(0),
      Q => register14_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28 is
  port (
    register13_q_net : out STD_LOGIC;
    usr_rst_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28 : entity is "single_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => usr_rst_in,
      Q => register13_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30 is
  port (
    register12_q_net : out STD_LOGIC;
    trigger_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30 : entity is "single_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trigger_in,
      Q => register12_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_1_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0\ is
  signal \^o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[0]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[10]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[11]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[12]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[13]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[14]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[15]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[16]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[17]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[18]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[19]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[1]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[20]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[21]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[22]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[23]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[24]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[25]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[26]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[27]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[28]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[29]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[2]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[30]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[31]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[3]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[4]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[5]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[6]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[7]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[8]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \data_vec_store_1_15_28[9]_i_1\ : label is "soft_lutpair177";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
  o(31 downto 0) <= \^o\(31 downto 0);
\data_vec_store_1_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(0),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(0),
      O => D(0)
    );
\data_vec_store_1_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(10),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(10),
      O => D(10)
    );
\data_vec_store_1_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(11),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(11),
      O => D(11)
    );
\data_vec_store_1_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(12),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(12),
      O => D(12)
    );
\data_vec_store_1_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(13),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(13),
      O => D(13)
    );
\data_vec_store_1_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(14),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(14),
      O => D(14)
    );
\data_vec_store_1_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(15),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(15),
      O => D(15)
    );
\data_vec_store_1_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(16),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(16),
      O => D(16)
    );
\data_vec_store_1_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(17),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(17),
      O => D(17)
    );
\data_vec_store_1_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(18),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(18),
      O => D(18)
    );
\data_vec_store_1_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(19),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(19),
      O => D(19)
    );
\data_vec_store_1_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(1),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(1),
      O => D(1)
    );
\data_vec_store_1_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(20),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(20),
      O => D(20)
    );
\data_vec_store_1_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(21),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(21),
      O => D(21)
    );
\data_vec_store_1_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(22),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(22),
      O => D(22)
    );
\data_vec_store_1_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(23),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(23),
      O => D(23)
    );
\data_vec_store_1_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(24),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(24),
      O => D(24)
    );
\data_vec_store_1_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(25),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(25),
      O => D(25)
    );
\data_vec_store_1_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(26),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(26),
      O => D(26)
    );
\data_vec_store_1_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(27),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(27),
      O => D(27)
    );
\data_vec_store_1_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(28),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(28),
      O => D(28)
    );
\data_vec_store_1_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(29),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(29),
      O => D(29)
    );
\data_vec_store_1_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(2),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(2),
      O => D(2)
    );
\data_vec_store_1_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(30),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(30),
      O => D(30)
    );
\data_vec_store_1_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(31),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(31),
      O => D(31)
    );
\data_vec_store_1_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(3),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(3),
      O => D(3)
    );
\data_vec_store_1_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(4),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(4),
      O => D(4)
    );
\data_vec_store_1_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(5),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(5),
      O => D(5)
    );
\data_vec_store_1_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(6),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(6),
      O => D(6)
    );
\data_vec_store_1_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(7),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(7),
      O => D(7)
    );
\data_vec_store_1_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(8),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(8),
      O => D(8)
    );
\data_vec_store_1_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(9),
      I1 => CO(0),
      I2 => \data_vec_store_1_15_28_reg[31]\(9),
      O => D(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(0),
      Q => \^o\(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(10),
      Q => \^o\(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(11),
      Q => \^o\(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(12),
      Q => \^o\(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(13),
      Q => \^o\(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(14),
      Q => \^o\(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(15),
      Q => \^o\(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(16),
      Q => \^o\(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(17),
      Q => \^o\(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(18),
      Q => \^o\(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(19),
      Q => \^o\(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(1),
      Q => \^o\(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(20),
      Q => \^o\(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(21),
      Q => \^o\(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(22),
      Q => \^o\(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(23),
      Q => \^o\(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(24),
      Q => \^o\(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(25),
      Q => \^o\(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(26),
      Q => \^o\(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(27),
      Q => \^o\(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(28),
      Q => \^o\(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(29),
      Q => \^o\(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(2),
      Q => \^o\(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(30),
      Q => \^o\(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(31),
      Q => \^o\(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(3),
      Q => \^o\(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(4),
      Q => \^o\(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(5),
      Q => \^o\(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(6),
      Q => \^o\(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(7),
      Q => \^o\(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(8),
      Q => \^o\(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_b(9),
      Q => \^o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14\ is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(10),
      Q => o(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(11),
      Q => o(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(12),
      Q => o(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(13),
      Q => o(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(14),
      Q => o(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(15),
      Q => o(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(16),
      Q => o(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(17),
      Q => o(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(18),
      Q => o(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(19),
      Q => o(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(20),
      Q => o(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(21),
      Q => o(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(22),
      Q => o(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(23),
      Q => o(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(24),
      Q => o(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(25),
      Q => o(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(26),
      Q => o(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(27),
      Q => o(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(28),
      Q => o(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(29),
      Q => o(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(2),
      Q => o(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(30),
      Q => o(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(31),
      Q => o(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(3),
      Q => o(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(4),
      Q => o(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(5),
      Q => o(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(6),
      Q => o(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(7),
      Q => o(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(8),
      Q => o(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_a(9),
      Q => o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_7_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_h : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16\ is
  signal register6_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[0]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[10]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[11]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[12]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[13]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[14]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[15]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[16]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[17]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[18]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[19]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[1]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[20]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[21]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[22]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[23]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[24]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[25]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[26]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[27]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[28]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[29]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[2]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[30]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[31]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[3]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[4]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[5]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[6]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[7]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[8]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \data_vec_store_7_15_28[9]_i_1\ : label is "soft_lutpair161";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\data_vec_store_7_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(0),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_7_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(10),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_7_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(11),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_7_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(12),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_7_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(13),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_7_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(14),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_7_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(15),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_7_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(16),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_7_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(17),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_7_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(18),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_7_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(19),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_7_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(1),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_7_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(20),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_7_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(21),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_7_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(22),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_7_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(23),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_7_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(24),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_7_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(25),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_7_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(26),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_7_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(27),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_7_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(28),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_7_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(29),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_7_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(2),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_7_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(30),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_7_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(31),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_7_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(3),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_7_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(4),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_7_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(5),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_7_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(6),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_7_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(7),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_7_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(8),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_7_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register6_q_net(9),
      I1 => CO(0),
      I2 => \data_vec_store_7_15_28_reg[31]\(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(0),
      Q => register6_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(10),
      Q => register6_q_net(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(11),
      Q => register6_q_net(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(12),
      Q => register6_q_net(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(13),
      Q => register6_q_net(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(14),
      Q => register6_q_net(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(15),
      Q => register6_q_net(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(16),
      Q => register6_q_net(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(17),
      Q => register6_q_net(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(18),
      Q => register6_q_net(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(19),
      Q => register6_q_net(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(1),
      Q => register6_q_net(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(20),
      Q => register6_q_net(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(21),
      Q => register6_q_net(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(22),
      Q => register6_q_net(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(23),
      Q => register6_q_net(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(24),
      Q => register6_q_net(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(25),
      Q => register6_q_net(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(26),
      Q => register6_q_net(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(27),
      Q => register6_q_net(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(28),
      Q => register6_q_net(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(29),
      Q => register6_q_net(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(2),
      Q => register6_q_net(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(30),
      Q => register6_q_net(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(31),
      Q => register6_q_net(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(3),
      Q => register6_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(4),
      Q => register6_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(5),
      Q => register6_q_net(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(6),
      Q => register6_q_net(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(7),
      Q => register6_q_net(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(8),
      Q => register6_q_net(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_h(9),
      Q => register6_q_net(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_4_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18\ is
  signal register5_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[0]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[10]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[11]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[12]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[13]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[14]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[15]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[16]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[17]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[18]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[19]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[1]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[20]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[21]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[22]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[23]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[24]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[25]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[26]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[27]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[28]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[29]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[2]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[30]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[31]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[3]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[4]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[5]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[6]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[7]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[8]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \data_vec_store_4_15_28[9]_i_1\ : label is "soft_lutpair145";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\data_vec_store_4_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(0),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_4_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(10),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_4_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(11),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_4_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(12),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_4_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(13),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_4_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(14),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_4_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(15),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_4_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(16),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_4_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(17),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_4_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(18),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_4_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(19),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_4_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(1),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_4_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(20),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_4_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(21),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_4_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(22),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_4_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(23),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_4_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(24),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_4_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(25),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_4_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(26),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_4_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(27),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_4_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(28),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_4_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(29),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_4_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(2),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_4_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(30),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_4_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(31),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_4_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(3),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_4_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(4),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_4_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(5),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_4_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(6),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_4_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(7),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_4_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(8),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_4_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register5_q_net(9),
      I1 => CO(0),
      I2 => \data_vec_store_4_15_28_reg[31]\(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(0),
      Q => register5_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(10),
      Q => register5_q_net(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(11),
      Q => register5_q_net(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(12),
      Q => register5_q_net(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(13),
      Q => register5_q_net(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(14),
      Q => register5_q_net(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(15),
      Q => register5_q_net(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(16),
      Q => register5_q_net(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(17),
      Q => register5_q_net(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(18),
      Q => register5_q_net(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(19),
      Q => register5_q_net(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(1),
      Q => register5_q_net(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(20),
      Q => register5_q_net(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(21),
      Q => register5_q_net(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(22),
      Q => register5_q_net(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(23),
      Q => register5_q_net(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(24),
      Q => register5_q_net(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(25),
      Q => register5_q_net(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(26),
      Q => register5_q_net(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(27),
      Q => register5_q_net(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(28),
      Q => register5_q_net(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(29),
      Q => register5_q_net(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(2),
      Q => register5_q_net(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(30),
      Q => register5_q_net(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(31),
      Q => register5_q_net(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(3),
      Q => register5_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(4),
      Q => register5_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(5),
      Q => register5_q_net(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(6),
      Q => register5_q_net(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(7),
      Q => register5_q_net(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(8),
      Q => register5_q_net(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_e(9),
      Q => register5_q_net(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20\ is
  signal \^o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[0]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[10]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[11]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[12]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[13]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[14]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[15]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[16]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[17]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[18]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[19]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[1]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[20]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[21]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[22]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[23]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[24]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[25]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[26]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[27]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[28]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[29]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[2]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[30]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[31]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[3]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[4]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[5]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[6]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[7]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[8]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \data_vec_store_6_15_28[9]_i_1\ : label is "soft_lutpair129";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
  o(31 downto 0) <= \^o\(31 downto 0);
\data_vec_store_6_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(0),
      I1 => CO(0),
      I2 => Q(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_6_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(10),
      I1 => CO(0),
      I2 => Q(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_6_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(11),
      I1 => CO(0),
      I2 => Q(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_6_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(12),
      I1 => CO(0),
      I2 => Q(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_6_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(13),
      I1 => CO(0),
      I2 => Q(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_6_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(14),
      I1 => CO(0),
      I2 => Q(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_6_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(15),
      I1 => CO(0),
      I2 => Q(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_6_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(16),
      I1 => CO(0),
      I2 => Q(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_6_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(17),
      I1 => CO(0),
      I2 => Q(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_6_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(18),
      I1 => CO(0),
      I2 => Q(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_6_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(19),
      I1 => CO(0),
      I2 => Q(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_6_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(1),
      I1 => CO(0),
      I2 => Q(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_6_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(20),
      I1 => CO(0),
      I2 => Q(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_6_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(21),
      I1 => CO(0),
      I2 => Q(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_6_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(22),
      I1 => CO(0),
      I2 => Q(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_6_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(23),
      I1 => CO(0),
      I2 => Q(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_6_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(24),
      I1 => CO(0),
      I2 => Q(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_6_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(25),
      I1 => CO(0),
      I2 => Q(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_6_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(26),
      I1 => CO(0),
      I2 => Q(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_6_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(27),
      I1 => CO(0),
      I2 => Q(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_6_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(28),
      I1 => CO(0),
      I2 => Q(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_6_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(29),
      I1 => CO(0),
      I2 => Q(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_6_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(2),
      I1 => CO(0),
      I2 => Q(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_6_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(30),
      I1 => CO(0),
      I2 => Q(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_6_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(31),
      I1 => CO(0),
      I2 => Q(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_6_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(3),
      I1 => CO(0),
      I2 => Q(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_6_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(4),
      I1 => CO(0),
      I2 => Q(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_6_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(5),
      I1 => CO(0),
      I2 => Q(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_6_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(6),
      I1 => CO(0),
      I2 => Q(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_6_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(7),
      I1 => CO(0),
      I2 => Q(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_6_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(8),
      I1 => CO(0),
      I2 => Q(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_6_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(9),
      I1 => CO(0),
      I2 => Q(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(0),
      Q => \^o\(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(10),
      Q => \^o\(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(11),
      Q => \^o\(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(12),
      Q => \^o\(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(13),
      Q => \^o\(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(14),
      Q => \^o\(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(15),
      Q => \^o\(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(16),
      Q => \^o\(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(17),
      Q => \^o\(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(18),
      Q => \^o\(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(19),
      Q => \^o\(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(1),
      Q => \^o\(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(20),
      Q => \^o\(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(21),
      Q => \^o\(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(22),
      Q => \^o\(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(23),
      Q => \^o\(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(24),
      Q => \^o\(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(25),
      Q => \^o\(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(26),
      Q => \^o\(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(27),
      Q => \^o\(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(28),
      Q => \^o\(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(29),
      Q => \^o\(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(2),
      Q => \^o\(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(30),
      Q => \^o\(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(31),
      Q => \^o\(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(3),
      Q => \^o\(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(4),
      Q => \^o\(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(5),
      Q => \^o\(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(6),
      Q => \^o\(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(7),
      Q => \^o\(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(8),
      Q => \^o\(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_g(9),
      Q => \^o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_5_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_f : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22\ is
  signal \^o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[0]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[10]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[11]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[12]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[13]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[14]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[15]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[16]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[17]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[18]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[19]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[1]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[20]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[21]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[22]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[23]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[24]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[25]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[26]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[27]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[28]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[29]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[2]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[30]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[31]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[3]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[4]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[6]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[7]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[8]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \data_vec_store_5_15_28[9]_i_1\ : label is "soft_lutpair113";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
  o(31 downto 0) <= \^o\(31 downto 0);
\data_vec_store_5_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(0),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_5_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(10),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_5_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(11),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_5_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(12),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_5_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(13),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_5_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(14),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_5_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(15),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_5_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(16),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_5_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(17),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_5_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(18),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_5_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(19),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_5_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(1),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_5_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(20),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_5_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(21),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_5_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(22),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_5_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(23),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_5_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(24),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_5_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(25),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_5_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(26),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_5_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(27),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_5_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(28),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_5_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(29),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_5_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(2),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_5_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(30),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_5_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(31),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_5_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(3),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_5_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(4),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_5_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(5),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_5_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(6),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_5_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(7),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_5_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(8),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_5_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o\(9),
      I1 => CO(0),
      I2 => \data_vec_store_5_15_28_reg[31]\(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(0),
      Q => \^o\(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(10),
      Q => \^o\(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(11),
      Q => \^o\(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(12),
      Q => \^o\(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(13),
      Q => \^o\(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(14),
      Q => \^o\(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(15),
      Q => \^o\(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(16),
      Q => \^o\(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(17),
      Q => \^o\(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(18),
      Q => \^o\(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(19),
      Q => \^o\(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(1),
      Q => \^o\(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(20),
      Q => \^o\(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(21),
      Q => \^o\(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(22),
      Q => \^o\(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(23),
      Q => \^o\(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(24),
      Q => \^o\(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(25),
      Q => \^o\(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(26),
      Q => \^o\(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(27),
      Q => \^o\(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(28),
      Q => \^o\(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(29),
      Q => \^o\(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(2),
      Q => \^o\(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(30),
      Q => \^o\(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(31),
      Q => \^o\(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(3),
      Q => \^o\(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(4),
      Q => \^o\(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(5),
      Q => \^o\(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(6),
      Q => \^o\(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(7),
      Q => \^o\(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(8),
      Q => \^o\(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_f(9),
      Q => \^o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_3_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24\ is
  signal register2_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[0]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[10]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[11]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[12]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[13]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[14]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[15]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[16]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[17]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[18]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[19]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[20]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[21]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[22]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[23]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[24]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[25]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[26]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[27]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[28]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[29]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[30]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[31]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[3]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[4]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[5]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[6]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[7]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[8]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \data_vec_store_3_15_28[9]_i_1\ : label is "soft_lutpair97";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\data_vec_store_3_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(0),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_3_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(10),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_3_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(11),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_3_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(12),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_3_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(13),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_3_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(14),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_3_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(15),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_3_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(16),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_3_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(17),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_3_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(18),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_3_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(19),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_3_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(1),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_3_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(20),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_3_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(21),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_3_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(22),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_3_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(23),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_3_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(24),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_3_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(25),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_3_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(26),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_3_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(27),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_3_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(28),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_3_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(29),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_3_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(2),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_3_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(30),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_3_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(31),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_3_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(3),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_3_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(4),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_3_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(5),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_3_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(6),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_3_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(7),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_3_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(8),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_3_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register2_q_net(9),
      I1 => CO(0),
      I2 => \data_vec_store_3_15_28_reg[31]\(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(0),
      Q => register2_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(10),
      Q => register2_q_net(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(11),
      Q => register2_q_net(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(12),
      Q => register2_q_net(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(13),
      Q => register2_q_net(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(14),
      Q => register2_q_net(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(15),
      Q => register2_q_net(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(16),
      Q => register2_q_net(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(17),
      Q => register2_q_net(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(18),
      Q => register2_q_net(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(19),
      Q => register2_q_net(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(1),
      Q => register2_q_net(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(20),
      Q => register2_q_net(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(21),
      Q => register2_q_net(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(22),
      Q => register2_q_net(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(23),
      Q => register2_q_net(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(24),
      Q => register2_q_net(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(25),
      Q => register2_q_net(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(26),
      Q => register2_q_net(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(27),
      Q => register2_q_net(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(28),
      Q => register2_q_net(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(29),
      Q => register2_q_net(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(2),
      Q => register2_q_net(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(30),
      Q => register2_q_net(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(31),
      Q => register2_q_net(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(3),
      Q => register2_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(4),
      Q => register2_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(5),
      Q => register2_q_net(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(6),
      Q => register2_q_net(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(7),
      Q => register2_q_net(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(8),
      Q => register2_q_net(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_d(9),
      Q => register2_q_net(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32\ is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^o\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    rel_85_16_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32\ is
  signal register10_q_net : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(0),
      Q => register10_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(10),
      Q => \^o\(7),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(11),
      Q => \^o\(8),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(12),
      Q => \^o\(9),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(13),
      Q => \^o\(10),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(14),
      Q => \^o\(11),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(15),
      Q => \^o\(12),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(16),
      Q => \^o\(13),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(17),
      Q => \^o\(14),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(18),
      Q => \^o\(15),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(19),
      Q => \^o\(16),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(1),
      Q => register10_q_net(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(20),
      Q => \^o\(17),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(21),
      Q => \^o\(18),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(22),
      Q => \^o\(19),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(23),
      Q => \^o\(20),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(24),
      Q => \^o\(21),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(25),
      Q => \^o\(22),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(26),
      Q => \^o\(23),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(27),
      Q => \^o\(24),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(28),
      Q => \^o\(25),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(29),
      Q => \^o\(26),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(2),
      Q => register10_q_net(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(30),
      Q => \^o\(27),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(31),
      Q => \^o\(28),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(3),
      Q => \^o\(0),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(4),
      Q => \^o\(1),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(5),
      Q => \^o\(2),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(6),
      Q => \^o\(3),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(7),
      Q => \^o\(4),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(8),
      Q => \^o\(5),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i(9),
      Q => \^o\(6),
      R => '0'
    );
rel_85_16_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => register10_q_net(0),
      I1 => rel_85_16_carry(0),
      I2 => O(1),
      I3 => register10_q_net(2),
      I4 => O(0),
      I5 => register10_q_net(1),
      O => \fd_prim_array[0].rst_comp.fdre_comp_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_2_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34\ is
  signal register1_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[10]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[11]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[12]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[13]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[14]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[15]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[16]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[17]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[18]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[19]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[20]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[21]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[22]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[23]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[24]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[25]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[26]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[27]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[28]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[29]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[30]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[31]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[8]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \data_vec_store_2_15_28[9]_i_1\ : label is "soft_lutpair74";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[16].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[17].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[18].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[19].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[20].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[21].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[22].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[23].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[24].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[25].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[26].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[27].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[28].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[29].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[30].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[31].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\data_vec_store_2_15_28[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(0),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(0),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(0)
    );
\data_vec_store_2_15_28[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(10),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(10),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(10)
    );
\data_vec_store_2_15_28[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(11),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(11),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(11)
    );
\data_vec_store_2_15_28[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(12),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(12),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(12)
    );
\data_vec_store_2_15_28[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(13),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(13),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(13)
    );
\data_vec_store_2_15_28[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(14),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(14),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(14)
    );
\data_vec_store_2_15_28[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(15),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(15),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(15)
    );
\data_vec_store_2_15_28[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(16),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(16),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(16)
    );
\data_vec_store_2_15_28[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(17),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(17),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(17)
    );
\data_vec_store_2_15_28[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(18),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(18),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(18)
    );
\data_vec_store_2_15_28[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(19),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(19),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(19)
    );
\data_vec_store_2_15_28[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(1),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(1),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(1)
    );
\data_vec_store_2_15_28[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(20),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(20),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(20)
    );
\data_vec_store_2_15_28[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(21),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(21),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(21)
    );
\data_vec_store_2_15_28[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(22),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(22),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(22)
    );
\data_vec_store_2_15_28[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(23),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(23),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(23)
    );
\data_vec_store_2_15_28[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(24),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(24),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(24)
    );
\data_vec_store_2_15_28[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(25),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(25),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(25)
    );
\data_vec_store_2_15_28[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(26),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(26),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(26)
    );
\data_vec_store_2_15_28[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(27),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(27),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(27)
    );
\data_vec_store_2_15_28[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(28),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(28),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(28)
    );
\data_vec_store_2_15_28[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(29),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(29),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(29)
    );
\data_vec_store_2_15_28[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(2),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(2),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(2)
    );
\data_vec_store_2_15_28[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(30),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(30),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(30)
    );
\data_vec_store_2_15_28[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(31),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(31),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(31)
    );
\data_vec_store_2_15_28[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(3),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(3),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(3)
    );
\data_vec_store_2_15_28[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(4),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(4),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(4)
    );
\data_vec_store_2_15_28[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(5),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(5),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(5)
    );
\data_vec_store_2_15_28[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(6),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(6),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(6)
    );
\data_vec_store_2_15_28[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(7),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(7),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(7)
    );
\data_vec_store_2_15_28[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(8),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(8),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(8)
    );
\data_vec_store_2_15_28[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register1_q_net(9),
      I1 => CO(0),
      I2 => \data_vec_store_2_15_28_reg[31]\(9),
      O => \fd_prim_array[31].rst_comp.fdre_comp_0\(9)
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(0),
      Q => register1_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(10),
      Q => register1_q_net(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(11),
      Q => register1_q_net(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(12),
      Q => register1_q_net(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(13),
      Q => register1_q_net(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(14),
      Q => register1_q_net(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(15),
      Q => register1_q_net(15),
      R => '0'
    );
\fd_prim_array[16].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(16),
      Q => register1_q_net(16),
      R => '0'
    );
\fd_prim_array[17].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(17),
      Q => register1_q_net(17),
      R => '0'
    );
\fd_prim_array[18].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(18),
      Q => register1_q_net(18),
      R => '0'
    );
\fd_prim_array[19].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(19),
      Q => register1_q_net(19),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(1),
      Q => register1_q_net(1),
      R => '0'
    );
\fd_prim_array[20].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(20),
      Q => register1_q_net(20),
      R => '0'
    );
\fd_prim_array[21].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(21),
      Q => register1_q_net(21),
      R => '0'
    );
\fd_prim_array[22].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(22),
      Q => register1_q_net(22),
      R => '0'
    );
\fd_prim_array[23].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(23),
      Q => register1_q_net(23),
      R => '0'
    );
\fd_prim_array[24].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(24),
      Q => register1_q_net(24),
      R => '0'
    );
\fd_prim_array[25].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(25),
      Q => register1_q_net(25),
      R => '0'
    );
\fd_prim_array[26].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(26),
      Q => register1_q_net(26),
      R => '0'
    );
\fd_prim_array[27].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(27),
      Q => register1_q_net(27),
      R => '0'
    );
\fd_prim_array[28].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(28),
      Q => register1_q_net(28),
      R => '0'
    );
\fd_prim_array[29].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(29),
      Q => register1_q_net(29),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(2),
      Q => register1_q_net(2),
      R => '0'
    );
\fd_prim_array[30].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(30),
      Q => register1_q_net(30),
      R => '0'
    );
\fd_prim_array[31].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(31),
      Q => register1_q_net(31),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(3),
      Q => register1_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(4),
      Q => register1_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(5),
      Q => register1_q_net(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(6),
      Q => register1_q_net(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(7),
      Q => register1_q_net(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(8),
      Q => register1_q_net(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_in_c(9),
      Q => register1_q_net(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1\ is
  port (
    \fd_prim_array[15].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \decim_count_11_25_reg[0]\ : out STD_LOGIC;
    decim_count_11_25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    o : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fd_prim_array[15].rst_comp.fdre_comp_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1\ is
  signal register11_q_net : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_sel_store_16_28[4]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \decim_count_11_25[0]_i_1\ : label is "soft_lutpair79";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[10].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[11].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[12].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[13].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[14].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[15].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[8].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[9].rst_comp.fdre_comp\ : label is "PRIMITIVE";
begin
\data_sel_store_16_28[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CO(0),
      I1 => o(0),
      O => \fd_prim_array[0].rst_comp.fdre_comp_0\
    );
\decim_count_11_25[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      I1 => decim_count_11_25(0),
      O => \decim_count_11_25_reg[0]\
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(0),
      Q => register11_q_net(0),
      R => '0'
    );
\fd_prim_array[10].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(10),
      Q => register11_q_net(10),
      R => '0'
    );
\fd_prim_array[11].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(11),
      Q => register11_q_net(11),
      R => '0'
    );
\fd_prim_array[12].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(12),
      Q => register11_q_net(12),
      R => '0'
    );
\fd_prim_array[13].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(13),
      Q => register11_q_net(13),
      R => '0'
    );
\fd_prim_array[14].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(14),
      Q => register11_q_net(14),
      R => '0'
    );
\fd_prim_array[15].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(15),
      Q => register11_q_net(15),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(1),
      Q => register11_q_net(1),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(2),
      Q => register11_q_net(2),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(3),
      Q => register11_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(4),
      Q => register11_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(5),
      Q => register11_q_net(5),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(6),
      Q => register11_q_net(6),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(7),
      Q => register11_q_net(7),
      R => '0'
    );
\fd_prim_array[8].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(8),
      Q => register11_q_net(8),
      R => '0'
    );
\fd_prim_array[9].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[15].rst_comp.fdre_comp_1\(9),
      Q => register11_q_net(9),
      R => '0'
    );
\rel_72_12_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => register11_q_net(15),
      I1 => decim_count_11_25(15),
      O => \fd_prim_array[15].rst_comp.fdre_comp_0\(1)
    );
\rel_72_12_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => register11_q_net(14),
      I1 => decim_count_11_25(14),
      I2 => decim_count_11_25(12),
      I3 => register11_q_net(12),
      I4 => decim_count_11_25(13),
      I5 => register11_q_net(13),
      O => \fd_prim_array[15].rst_comp.fdre_comp_0\(0)
    );
rel_72_12_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => register11_q_net(11),
      I1 => decim_count_11_25(11),
      I2 => decim_count_11_25(9),
      I3 => register11_q_net(9),
      I4 => decim_count_11_25(10),
      I5 => register11_q_net(10),
      O => S(3)
    );
rel_72_12_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => register11_q_net(8),
      I1 => decim_count_11_25(8),
      I2 => decim_count_11_25(7),
      I3 => register11_q_net(7),
      I4 => decim_count_11_25(6),
      I5 => register11_q_net(6),
      O => S(2)
    );
rel_72_12_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => register11_q_net(5),
      I1 => decim_count_11_25(5),
      I2 => decim_count_11_25(3),
      I3 => register11_q_net(3),
      I4 => decim_count_11_25(4),
      I5 => register11_q_net(4),
      O => S(1)
    );
rel_72_12_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => register11_q_net(2),
      I1 => decim_count_11_25(2),
      I2 => decim_count_11_25(0),
      I3 => register11_q_net(0),
      I4 => decim_count_11_25(1),
      I5 => register11_q_net(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3\ is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[3].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[4].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[8].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[9].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[10].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[11].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[12].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[13].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[14].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[15].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[16].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[17].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[18].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[19].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[20].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[21].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[22].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[23].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[24].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[25].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[26].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[27].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[28].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[29].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[30].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \fd_prim_array[7].rst_comp.fdre_comp_1\ : out STD_LOGIC;
    muxing_run_join_99_9 : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp_1\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp_1\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp_1\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]\ : out STD_LOGIC;
    \fd_prim_array[0].rst_comp.fdre_comp_1\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]_0\ : out STD_LOGIC;
    \op_mem_20_24_reg[0][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][0]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][1]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][2]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][3]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][4]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][5]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][6]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][7]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][8]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][9]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][10]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][11]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][12]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][13]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][14]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][15]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][16]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][17]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][18]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][19]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][20]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][21]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][22]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][23]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][24]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][25]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][26]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][27]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][28]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][29]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][30]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_0\ : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \op_mem_20_24_reg[0][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    register13_q_net : in STD_LOGIC;
    \data_sel_store_16_28_reg[7]\ : in STD_LOGIC;
    data_sel_store_16_28 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    muxing_run_14_24_reg : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_4\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_5\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_6\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_7\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_sel_store_16_28_reg[4]\ : in STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3\ : entity is "single_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3\ is
  signal \data_sel_store_16_28[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[6]_i_3_n_0\ : STD_LOGIC;
  signal \^data_sel_store_16_28_reg[1]\ : STD_LOGIC;
  signal \^fd_prim_array[1].rst_comp.fdre_comp_1\ : STD_LOGIC;
  signal \^fd_prim_array[2].rst_comp.fdre_comp_1\ : STD_LOGIC;
  signal \^fd_prim_array[5].rst_comp.fdre_comp_1\ : STD_LOGIC;
  signal \^fd_prim_array[6].rst_comp.fdre_comp_1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \op_mem_20_24[0][0]_i_2__1_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_9_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][10]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][10]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][10]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][11]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][11]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][11]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][12]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][12]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][12]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][13]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][13]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][13]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][14]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][14]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][14]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][15]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][15]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][16]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][16]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][16]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][17]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][17]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][17]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][18]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][18]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][18]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][19]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][19]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][19]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][1]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][20]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][20]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][20]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][21]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][21]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][21]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][22]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][22]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][22]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][23]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][23]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][23]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][24]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][24]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][24]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][25]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][25]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][25]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][26]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][26]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][26]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][27]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][27]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][27]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][28]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][28]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][28]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][29]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][29]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][29]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][30]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][30]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][30]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_10_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_11_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_6_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_8_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][31]_i_9_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][4]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][5]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][6]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][6]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][6]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][9]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][9]_i_3_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][9]_i_4_n_0\ : STD_LOGIC;
  signal register16_q_net : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_sel_store_16_28[2]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \data_sel_store_16_28[3]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \data_sel_store_16_28[5]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \data_sel_store_16_28[5]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \data_sel_store_16_28[5]_i_5\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \data_sel_store_16_28[5]_i_6\ : label is "soft_lutpair83";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \fd_prim_array[0].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[1].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[2].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[3].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[4].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[5].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[6].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \fd_prim_array[7].rst_comp.fdre_comp\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of muxing_run_14_24_i_1 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_4__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_6\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_8\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_9\ : label is "soft_lutpair81";
begin
  \data_sel_store_16_28_reg[1]\ <= \^data_sel_store_16_28_reg[1]\;
  \fd_prim_array[1].rst_comp.fdre_comp_1\ <= \^fd_prim_array[1].rst_comp.fdre_comp_1\;
  \fd_prim_array[2].rst_comp.fdre_comp_1\ <= \^fd_prim_array[2].rst_comp.fdre_comp_1\;
  \fd_prim_array[5].rst_comp.fdre_comp_1\ <= \^fd_prim_array[5].rst_comp.fdre_comp_1\;
  \fd_prim_array[6].rst_comp.fdre_comp_1\(4 downto 0) <= \^fd_prim_array[6].rst_comp.fdre_comp_1\(4 downto 0);
\data_sel_store_16_28[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0355"
    )
        port map (
      I0 => data_sel_store_16_28(0),
      I1 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      I2 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I3 => CO(0),
      O => \^data_sel_store_16_28_reg[1]\
    );
\data_sel_store_16_28[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \^data_sel_store_16_28_reg[1]\,
      I1 => \data_sel_store_16_28[5]_i_4_n_0\,
      I2 => \data_sel_store_16_28[5]_i_3_n_0\,
      O => \data_sel_store_16_28_reg[1]_0\
    );
\data_sel_store_16_28[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFDDD00000000"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_8_n_0\,
      I1 => \data_sel_store_16_28_reg[4]\,
      I2 => \data_sel_store_16_28[5]_i_3_n_0\,
      I3 => \^data_sel_store_16_28_reg[1]\,
      I4 => \data_sel_store_16_28[5]_i_4_n_0\,
      I5 => \data_sel_store_16_28[5]_i_6_n_0\,
      O => \fd_prim_array[0].rst_comp.fdre_comp_1\
    );
\data_sel_store_16_28[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \data_sel_store_16_28[5]_i_3_n_0\,
      I1 => \data_sel_store_16_28[5]_i_4_n_0\,
      I2 => \^data_sel_store_16_28_reg[1]\,
      I3 => \data_sel_store_16_28[5]_i_5_n_0\,
      I4 => \data_sel_store_16_28[5]_i_6_n_0\,
      O => \^fd_prim_array[2].rst_comp.fdre_comp_1\
    );
\data_sel_store_16_28[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      I1 => CO(0),
      I2 => data_sel_store_16_28(1),
      O => \data_sel_store_16_28[5]_i_3_n_0\
    );
\data_sel_store_16_28[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register16_q_net(3),
      I1 => CO(0),
      I2 => data_sel_store_16_28(2),
      O => \data_sel_store_16_28[5]_i_4_n_0\
    );
\data_sel_store_16_28[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(3),
      I1 => CO(0),
      I2 => data_sel_store_16_28(4),
      O => \data_sel_store_16_28[5]_i_5_n_0\
    );
\data_sel_store_16_28[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register16_q_net(4),
      I1 => CO(0),
      I2 => data_sel_store_16_28(3),
      O => \data_sel_store_16_28[5]_i_6_n_0\
    );
\data_sel_store_16_28[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEEEFFFFFFFF"
    )
        port map (
      I0 => \data_sel_store_16_28[5]_i_4_n_0\,
      I1 => \data_sel_store_16_28[5]_i_6_n_0\,
      I2 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(3),
      I3 => CO(0),
      I4 => data_sel_store_16_28(4),
      I5 => \data_sel_store_16_28[6]_i_3_n_0\,
      O => \^fd_prim_array[5].rst_comp.fdre_comp_1\
    );
\data_sel_store_16_28[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F1111000F"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I1 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      I2 => data_sel_store_16_28(0),
      I3 => data_sel_store_16_28(1),
      I4 => CO(0),
      I5 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      O => \data_sel_store_16_28[6]_i_3_n_0\
    );
\data_sel_store_16_28[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000FF00800000"
    )
        port map (
      I0 => CO(0),
      I1 => register16_q_net(7),
      I2 => \op_mem_20_24[0][31]_i_6_n_0\,
      I3 => register13_q_net,
      I4 => \data_sel_store_16_28_reg[7]\,
      I5 => data_sel_store_16_28(6),
      O => \fd_prim_array[7].rst_comp.fdre_comp_1\
    );
\fd_prim_array[0].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(0),
      Q => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      R => '0'
    );
\fd_prim_array[1].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(1),
      Q => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      R => '0'
    );
\fd_prim_array[2].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(2),
      Q => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      R => '0'
    );
\fd_prim_array[3].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(3),
      Q => register16_q_net(3),
      R => '0'
    );
\fd_prim_array[4].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(4),
      Q => register16_q_net(4),
      R => '0'
    );
\fd_prim_array[5].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(5),
      Q => \^fd_prim_array[6].rst_comp.fdre_comp_1\(3),
      R => '0'
    );
\fd_prim_array[6].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(6),
      Q => \^fd_prim_array[6].rst_comp.fdre_comp_1\(4),
      R => '0'
    );
\fd_prim_array[7].rst_comp.fdre_comp\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fd_prim_array[7].rst_comp.fdre_comp_2\(7),
      Q => register16_q_net(7),
      R => '0'
    );
muxing_run_14_24_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^fd_prim_array[1].rst_comp.fdre_comp_1\,
      I1 => CO(0),
      I2 => muxing_run_14_24_reg,
      O => muxing_run_join_99_9
    );
\op_mem_20_24[0][0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][0]_i_2__1_n_0\,
      I1 => \op_mem_20_24[0][0]_i_3__0_n_0\,
      I2 => \op_mem_20_24[0][0]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(0),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][0]\,
      O => \fd_prim_array[0].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEEE"
    )
        port map (
      I0 => \op_mem_20_24[0][0]_i_4__0_n_0\,
      I1 => \op_mem_20_24[0][0]_i_5__0_n_0\,
      I2 => \op_mem_20_24[0][0]_i_6_n_0\,
      I3 => \op_mem_20_24[0][0]_i_7_n_0\,
      I4 => \^fd_prim_array[5].rst_comp.fdre_comp_1\,
      I5 => \op_mem_20_24[0][0]_i_8_n_0\,
      O => \^fd_prim_array[1].rst_comp.fdre_comp_1\
    );
\op_mem_20_24[0][0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(0),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(0),
      I3 => \op_mem_20_24_reg[0][31]_2\(0),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][0]_i_2__1_n_0\
    );
\op_mem_20_24[0][0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \op_mem_20_24_reg[0][31]_5\(0),
      I1 => \op_mem_20_24[0][31]_i_10_n_0\,
      I2 => \op_mem_20_24_reg[0][31]_6\(0),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24[0][31]_i_9_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_7\(0),
      O => \op_mem_20_24[0][0]_i_3__0_n_0\
    );
\op_mem_20_24[0][0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(0),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(0),
      O => \op_mem_20_24[0][0]_i_4_n_0\
    );
\op_mem_20_24[0][0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      I1 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I2 => CO(0),
      O => \op_mem_20_24[0][0]_i_4__0_n_0\
    );
\op_mem_20_24[0][0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE8"
    )
        port map (
      I0 => \data_sel_store_16_28[5]_i_6_n_0\,
      I1 => \data_sel_store_16_28[5]_i_4_n_0\,
      I2 => \data_sel_store_16_28_reg[4]\,
      I3 => \op_mem_20_24[0][0]_i_9_n_0\,
      I4 => \data_sel_store_16_28[5]_i_3_n_0\,
      O => \op_mem_20_24[0][0]_i_5__0_n_0\
    );
\op_mem_20_24[0][0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(4),
      I1 => CO(0),
      I2 => data_sel_store_16_28(5),
      O => \op_mem_20_24[0][0]_i_6_n_0\
    );
\op_mem_20_24[0][0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => register16_q_net(7),
      I1 => CO(0),
      I2 => data_sel_store_16_28(6),
      O => \op_mem_20_24[0][0]_i_7_n_0\
    );
\op_mem_20_24[0][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFFC8CC"
    )
        port map (
      I0 => \data_sel_store_16_28[5]_i_4_n_0\,
      I1 => \data_sel_store_16_28[5]_i_5_n_0\,
      I2 => \data_sel_store_16_28[5]_i_6_n_0\,
      I3 => \^data_sel_store_16_28_reg[1]\,
      I4 => \data_sel_store_16_28[5]_i_3_n_0\,
      O => \op_mem_20_24[0][0]_i_8_n_0\
    );
\op_mem_20_24[0][0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      I1 => CO(0),
      I2 => data_sel_store_16_28(0),
      O => \op_mem_20_24[0][0]_i_9_n_0\
    );
\op_mem_20_24[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][10]_i_2_n_0\,
      I1 => \op_mem_20_24[0][10]_i_3_n_0\,
      I2 => \op_mem_20_24[0][10]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(10),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][10]\,
      O => \fd_prim_array[10].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(10),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(10),
      I3 => \op_mem_20_24_reg[0][31]_2\(10),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][10]_i_2_n_0\
    );
\op_mem_20_24[0][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(10),
      I2 => \op_mem_20_24_reg[0][31]_6\(10),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(10),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][10]_i_3_n_0\
    );
\op_mem_20_24[0][10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(10),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(10),
      O => \op_mem_20_24[0][10]_i_4_n_0\
    );
\op_mem_20_24[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][11]_i_2_n_0\,
      I1 => \op_mem_20_24[0][11]_i_3_n_0\,
      I2 => \op_mem_20_24[0][11]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(11),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][11]\,
      O => \fd_prim_array[11].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(11),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(11),
      I3 => \op_mem_20_24_reg[0][31]_2\(11),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][11]_i_2_n_0\
    );
\op_mem_20_24[0][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(11),
      I2 => \op_mem_20_24_reg[0][31]_6\(11),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(11),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][11]_i_3_n_0\
    );
\op_mem_20_24[0][11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(11),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(11),
      O => \op_mem_20_24[0][11]_i_4_n_0\
    );
\op_mem_20_24[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][12]_i_2_n_0\,
      I1 => \op_mem_20_24[0][12]_i_3_n_0\,
      I2 => \op_mem_20_24[0][12]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(12),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][12]\,
      O => \fd_prim_array[12].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(12),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(12),
      I3 => \op_mem_20_24_reg[0][31]_2\(12),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][12]_i_2_n_0\
    );
\op_mem_20_24[0][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(12),
      I2 => \op_mem_20_24_reg[0][31]_5\(12),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(12),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][12]_i_3_n_0\
    );
\op_mem_20_24[0][12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(12),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(12),
      O => \op_mem_20_24[0][12]_i_4_n_0\
    );
\op_mem_20_24[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][13]_i_2_n_0\,
      I1 => \op_mem_20_24[0][13]_i_3_n_0\,
      I2 => \op_mem_20_24[0][13]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(13),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][13]\,
      O => \fd_prim_array[13].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(13),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(13),
      I3 => \op_mem_20_24_reg[0][31]_2\(13),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][13]_i_2_n_0\
    );
\op_mem_20_24[0][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(13),
      I2 => \op_mem_20_24_reg[0][31]_6\(13),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(13),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][13]_i_3_n_0\
    );
\op_mem_20_24[0][13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(13),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(13),
      O => \op_mem_20_24[0][13]_i_4_n_0\
    );
\op_mem_20_24[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][14]_i_2_n_0\,
      I1 => \op_mem_20_24[0][14]_i_3_n_0\,
      I2 => \op_mem_20_24[0][14]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(14),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][14]\,
      O => \fd_prim_array[14].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(14),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(14),
      I3 => \op_mem_20_24_reg[0][31]_2\(14),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][14]_i_2_n_0\
    );
\op_mem_20_24[0][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(14),
      I2 => \op_mem_20_24_reg[0][31]_5\(14),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(14),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][14]_i_3_n_0\
    );
\op_mem_20_24[0][14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(14),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(14),
      O => \op_mem_20_24[0][14]_i_4_n_0\
    );
\op_mem_20_24[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][15]_i_2_n_0\,
      I1 => \op_mem_20_24[0][15]_i_3_n_0\,
      I2 => \op_mem_20_24[0][15]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(15),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][15]\,
      O => \fd_prim_array[15].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(15),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(15),
      I3 => \op_mem_20_24_reg[0][31]_2\(15),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][15]_i_2_n_0\
    );
\op_mem_20_24[0][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(15),
      I2 => \op_mem_20_24_reg[0][31]_6\(15),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(15),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][15]_i_3_n_0\
    );
\op_mem_20_24[0][15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(15),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(15),
      O => \op_mem_20_24[0][15]_i_4_n_0\
    );
\op_mem_20_24[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][16]_i_2_n_0\,
      I1 => \op_mem_20_24[0][16]_i_3_n_0\,
      I2 => \op_mem_20_24[0][16]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(16),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][16]\,
      O => \fd_prim_array[16].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(16),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(16),
      I3 => \op_mem_20_24_reg[0][31]_2\(16),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][16]_i_2_n_0\
    );
\op_mem_20_24[0][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(16),
      I2 => \op_mem_20_24_reg[0][31]_5\(16),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(16),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][16]_i_3_n_0\
    );
\op_mem_20_24[0][16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(16),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(16),
      O => \op_mem_20_24[0][16]_i_4_n_0\
    );
\op_mem_20_24[0][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][17]_i_2_n_0\,
      I1 => \op_mem_20_24[0][17]_i_3_n_0\,
      I2 => \op_mem_20_24[0][17]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(17),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][17]\,
      O => \fd_prim_array[17].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(17),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(17),
      I3 => \op_mem_20_24_reg[0][31]_2\(17),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][17]_i_2_n_0\
    );
\op_mem_20_24[0][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(17),
      I2 => \op_mem_20_24_reg[0][31]_5\(17),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(17),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][17]_i_3_n_0\
    );
\op_mem_20_24[0][17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(17),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(17),
      O => \op_mem_20_24[0][17]_i_4_n_0\
    );
\op_mem_20_24[0][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][18]_i_2_n_0\,
      I1 => \op_mem_20_24[0][18]_i_3_n_0\,
      I2 => \op_mem_20_24[0][18]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(18),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][18]\,
      O => \fd_prim_array[18].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(18),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(18),
      I3 => \op_mem_20_24_reg[0][31]_2\(18),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][18]_i_2_n_0\
    );
\op_mem_20_24[0][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(18),
      I2 => \op_mem_20_24_reg[0][31]_6\(18),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(18),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][18]_i_3_n_0\
    );
\op_mem_20_24[0][18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(18),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(18),
      O => \op_mem_20_24[0][18]_i_4_n_0\
    );
\op_mem_20_24[0][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][19]_i_2_n_0\,
      I1 => \op_mem_20_24[0][19]_i_3_n_0\,
      I2 => \op_mem_20_24[0][19]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(19),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][19]\,
      O => \fd_prim_array[19].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(19),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(19),
      I3 => \op_mem_20_24_reg[0][31]_2\(19),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][19]_i_2_n_0\
    );
\op_mem_20_24[0][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(19),
      I2 => \op_mem_20_24_reg[0][31]_5\(19),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(19),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][19]_i_3_n_0\
    );
\op_mem_20_24[0][19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(19),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(19),
      O => \op_mem_20_24[0][19]_i_4_n_0\
    );
\op_mem_20_24[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][1]_i_2_n_0\,
      I1 => \op_mem_20_24[0][1]_i_3_n_0\,
      I2 => \op_mem_20_24[0][1]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(1),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][1]\,
      O => \fd_prim_array[1].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(1),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(1),
      I3 => \op_mem_20_24_reg[0][31]_2\(1),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][1]_i_2_n_0\
    );
\op_mem_20_24[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(1),
      I2 => \op_mem_20_24_reg[0][31]_5\(1),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(1),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][1]_i_3_n_0\
    );
\op_mem_20_24[0][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(1),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(1),
      O => \op_mem_20_24[0][1]_i_4_n_0\
    );
\op_mem_20_24[0][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][20]_i_2_n_0\,
      I1 => \op_mem_20_24[0][20]_i_3_n_0\,
      I2 => \op_mem_20_24[0][20]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(20),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][20]\,
      O => \fd_prim_array[20].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(20),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(20),
      I3 => \op_mem_20_24_reg[0][31]_2\(20),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][20]_i_2_n_0\
    );
\op_mem_20_24[0][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(20),
      I2 => \op_mem_20_24_reg[0][31]_6\(20),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(20),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][20]_i_3_n_0\
    );
\op_mem_20_24[0][20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(20),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(20),
      O => \op_mem_20_24[0][20]_i_4_n_0\
    );
\op_mem_20_24[0][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][21]_i_2_n_0\,
      I1 => \op_mem_20_24[0][21]_i_3_n_0\,
      I2 => \op_mem_20_24[0][21]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(21),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][21]\,
      O => \fd_prim_array[21].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(21),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(21),
      I3 => \op_mem_20_24_reg[0][31]_2\(21),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][21]_i_2_n_0\
    );
\op_mem_20_24[0][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(21),
      I2 => \op_mem_20_24_reg[0][31]_6\(21),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(21),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][21]_i_3_n_0\
    );
\op_mem_20_24[0][21]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(21),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(21),
      O => \op_mem_20_24[0][21]_i_4_n_0\
    );
\op_mem_20_24[0][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][22]_i_2_n_0\,
      I1 => \op_mem_20_24[0][22]_i_3_n_0\,
      I2 => \op_mem_20_24[0][22]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(22),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][22]\,
      O => \fd_prim_array[22].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(22),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(22),
      I3 => \op_mem_20_24_reg[0][31]_2\(22),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][22]_i_2_n_0\
    );
\op_mem_20_24[0][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(22),
      I2 => \op_mem_20_24_reg[0][31]_6\(22),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(22),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][22]_i_3_n_0\
    );
\op_mem_20_24[0][22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(22),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(22),
      O => \op_mem_20_24[0][22]_i_4_n_0\
    );
\op_mem_20_24[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][23]_i_2_n_0\,
      I1 => \op_mem_20_24[0][23]_i_3_n_0\,
      I2 => \op_mem_20_24[0][23]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(23),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][23]\,
      O => \fd_prim_array[23].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(23),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(23),
      I3 => \op_mem_20_24_reg[0][31]_2\(23),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][23]_i_2_n_0\
    );
\op_mem_20_24[0][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(23),
      I2 => \op_mem_20_24_reg[0][31]_6\(23),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(23),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][23]_i_3_n_0\
    );
\op_mem_20_24[0][23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(23),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(23),
      O => \op_mem_20_24[0][23]_i_4_n_0\
    );
\op_mem_20_24[0][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][24]_i_2_n_0\,
      I1 => \op_mem_20_24[0][24]_i_3_n_0\,
      I2 => \op_mem_20_24[0][24]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(24),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][24]\,
      O => \fd_prim_array[24].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(24),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(24),
      I3 => \op_mem_20_24_reg[0][31]_2\(24),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][24]_i_2_n_0\
    );
\op_mem_20_24[0][24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(24),
      I2 => \op_mem_20_24_reg[0][31]_6\(24),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(24),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][24]_i_3_n_0\
    );
\op_mem_20_24[0][24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(24),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(24),
      O => \op_mem_20_24[0][24]_i_4_n_0\
    );
\op_mem_20_24[0][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][25]_i_2_n_0\,
      I1 => \op_mem_20_24[0][25]_i_3_n_0\,
      I2 => \op_mem_20_24[0][25]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(25),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][25]\,
      O => \fd_prim_array[25].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(25),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(25),
      I3 => \op_mem_20_24_reg[0][31]_2\(25),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][25]_i_2_n_0\
    );
\op_mem_20_24[0][25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \op_mem_20_24_reg[0][31]_6\(25),
      I1 => \op_mem_20_24[0][31]_i_11_n_0\,
      I2 => \op_mem_20_24_reg[0][31]_5\(25),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24[0][31]_i_9_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_7\(25),
      O => \op_mem_20_24[0][25]_i_3_n_0\
    );
\op_mem_20_24[0][25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(25),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(25),
      O => \op_mem_20_24[0][25]_i_4_n_0\
    );
\op_mem_20_24[0][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][26]_i_2_n_0\,
      I1 => \op_mem_20_24[0][26]_i_3_n_0\,
      I2 => \op_mem_20_24[0][26]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(26),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][26]\,
      O => \fd_prim_array[26].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(26),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(26),
      I3 => \op_mem_20_24_reg[0][31]_2\(26),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][26]_i_2_n_0\
    );
\op_mem_20_24[0][26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(26),
      I2 => \op_mem_20_24_reg[0][31]_6\(26),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(26),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][26]_i_3_n_0\
    );
\op_mem_20_24[0][26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(26),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(26),
      O => \op_mem_20_24[0][26]_i_4_n_0\
    );
\op_mem_20_24[0][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][27]_i_2_n_0\,
      I1 => \op_mem_20_24[0][27]_i_3_n_0\,
      I2 => \op_mem_20_24[0][27]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(27),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][27]\,
      O => \fd_prim_array[27].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(27),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(27),
      I3 => \op_mem_20_24_reg[0][31]_2\(27),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][27]_i_2_n_0\
    );
\op_mem_20_24[0][27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(27),
      I2 => \op_mem_20_24_reg[0][31]_6\(27),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(27),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][27]_i_3_n_0\
    );
\op_mem_20_24[0][27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(27),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(27),
      O => \op_mem_20_24[0][27]_i_4_n_0\
    );
\op_mem_20_24[0][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][28]_i_2_n_0\,
      I1 => \op_mem_20_24[0][28]_i_3_n_0\,
      I2 => \op_mem_20_24[0][28]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(28),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][28]\,
      O => \fd_prim_array[28].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(28),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(28),
      I3 => \op_mem_20_24_reg[0][31]_2\(28),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][28]_i_2_n_0\
    );
\op_mem_20_24[0][28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(28),
      I2 => \op_mem_20_24_reg[0][31]_5\(28),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(28),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][28]_i_3_n_0\
    );
\op_mem_20_24[0][28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(28),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(28),
      O => \op_mem_20_24[0][28]_i_4_n_0\
    );
\op_mem_20_24[0][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][29]_i_2_n_0\,
      I1 => \op_mem_20_24[0][29]_i_3_n_0\,
      I2 => \op_mem_20_24[0][29]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(29),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][29]\,
      O => \fd_prim_array[29].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(29),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(29),
      I3 => \op_mem_20_24_reg[0][31]_2\(29),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][29]_i_2_n_0\
    );
\op_mem_20_24[0][29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(29),
      I2 => \op_mem_20_24_reg[0][31]_6\(29),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(29),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][29]_i_3_n_0\
    );
\op_mem_20_24[0][29]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(29),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(29),
      O => \op_mem_20_24[0][29]_i_4_n_0\
    );
\op_mem_20_24[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][2]_i_2_n_0\,
      I1 => \op_mem_20_24[0][2]_i_3_n_0\,
      I2 => \op_mem_20_24[0][2]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(2),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][2]\,
      O => \fd_prim_array[2].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(2),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(2),
      I3 => \op_mem_20_24_reg[0][31]_2\(2),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][2]_i_2_n_0\
    );
\op_mem_20_24[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \op_mem_20_24_reg[0][31]_6\(2),
      I1 => \op_mem_20_24[0][31]_i_11_n_0\,
      I2 => \op_mem_20_24_reg[0][31]_5\(2),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24[0][31]_i_9_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_7\(2),
      O => \op_mem_20_24[0][2]_i_3_n_0\
    );
\op_mem_20_24[0][2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(2),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(2),
      O => \op_mem_20_24[0][2]_i_4_n_0\
    );
\op_mem_20_24[0][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][30]_i_2_n_0\,
      I1 => \op_mem_20_24[0][30]_i_3_n_0\,
      I2 => \op_mem_20_24[0][30]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(30),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][30]\,
      O => \fd_prim_array[30].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(30),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(30),
      I3 => \op_mem_20_24_reg[0][31]_2\(30),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][30]_i_2_n_0\
    );
\op_mem_20_24[0][30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(30),
      I2 => \op_mem_20_24_reg[0][31]_5\(30),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(30),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][30]_i_3_n_0\
    );
\op_mem_20_24[0][30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(30),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(30),
      O => \op_mem_20_24[0][30]_i_4_n_0\
    );
\op_mem_20_24[0][31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2FFFFFFFFFFFF"
    )
        port map (
      I0 => data_sel_store_16_28(1),
      I1 => CO(0),
      I2 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      I3 => \data_sel_store_16_28[5]_i_4_n_0\,
      I4 => \^data_sel_store_16_28_reg[1]\,
      I5 => \data_sel_store_16_28[5]_i_6_n_0\,
      O => \op_mem_20_24[0][31]_i_10_n_0\
    );
\op_mem_20_24[0][31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFFFFFFFCFFF"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      I1 => data_sel_store_16_28(1),
      I2 => \^data_sel_store_16_28_reg[1]\,
      I3 => data_sel_store_16_28(2),
      I4 => CO(0),
      I5 => register16_q_net(3),
      O => \op_mem_20_24[0][31]_i_11_n_0\
    );
\op_mem_20_24[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_3_n_0\,
      I1 => \op_mem_20_24[0][31]_i_4_n_0\,
      I2 => \op_mem_20_24[0][31]_i_5_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(31),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_0\,
      O => \fd_prim_array[31].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(31),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(31),
      I3 => \op_mem_20_24_reg[0][31]_2\(31),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][31]_i_3_n_0\
    );
\op_mem_20_24[0][31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(31),
      I2 => \op_mem_20_24_reg[0][31]_5\(31),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(31),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][31]_i_4_n_0\
    );
\op_mem_20_24[0][31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(31),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(31),
      O => \op_mem_20_24[0][31]_i_5_n_0\
    );
\op_mem_20_24[0][31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBFFAFFBABF"
    )
        port map (
      I0 => \^fd_prim_array[5].rst_comp.fdre_comp_1\,
      I1 => register16_q_net(7),
      I2 => CO(0),
      I3 => data_sel_store_16_28(6),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(4),
      I5 => data_sel_store_16_28(5),
      O => \op_mem_20_24[0][31]_i_6_n_0\
    );
\op_mem_20_24[0][31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3F3"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I1 => data_sel_store_16_28(0),
      I2 => CO(0),
      I3 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      O => \op_mem_20_24[0][31]_i_8_n_0\
    );
\op_mem_20_24[0][31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEF0FFFFFFF0FF"
    )
        port map (
      I0 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I1 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(1),
      I2 => data_sel_store_16_28(0),
      I3 => data_sel_store_16_28(1),
      I4 => CO(0),
      I5 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(2),
      O => \op_mem_20_24[0][31]_i_9_n_0\
    );
\op_mem_20_24[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][3]_i_2_n_0\,
      I1 => \op_mem_20_24[0][3]_i_3_n_0\,
      I2 => \op_mem_20_24[0][3]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(3),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][3]\,
      O => \fd_prim_array[3].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(3),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(3),
      I3 => \op_mem_20_24_reg[0][31]_2\(3),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][3]_i_2_n_0\
    );
\op_mem_20_24[0][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(3),
      I2 => \op_mem_20_24_reg[0][31]_5\(3),
      I3 => \op_mem_20_24[0][31]_i_10_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_6\(3),
      I5 => \op_mem_20_24[0][31]_i_11_n_0\,
      O => \op_mem_20_24[0][3]_i_3_n_0\
    );
\op_mem_20_24[0][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(3),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(3),
      O => \op_mem_20_24[0][3]_i_4_n_0\
    );
\op_mem_20_24[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][4]_i_2_n_0\,
      I1 => \op_mem_20_24[0][4]_i_3_n_0\,
      I2 => \op_mem_20_24[0][4]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(4),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][4]\,
      O => \fd_prim_array[4].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(4),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(4),
      I3 => \op_mem_20_24_reg[0][31]_2\(4),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][4]_i_2_n_0\
    );
\op_mem_20_24[0][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(4),
      I2 => \op_mem_20_24_reg[0][31]_6\(4),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(4),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][4]_i_3_n_0\
    );
\op_mem_20_24[0][4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(4),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(4),
      O => \op_mem_20_24[0][4]_i_4_n_0\
    );
\op_mem_20_24[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][5]_i_2_n_0\,
      I1 => \op_mem_20_24[0][5]_i_3_n_0\,
      I2 => \op_mem_20_24[0][5]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(5),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][5]\,
      O => \fd_prim_array[5].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(5),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(5),
      I3 => \op_mem_20_24_reg[0][31]_2\(5),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][5]_i_2_n_0\
    );
\op_mem_20_24[0][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(5),
      I2 => \op_mem_20_24_reg[0][31]_6\(5),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(5),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][5]_i_3_n_0\
    );
\op_mem_20_24[0][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(5),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(5),
      O => \op_mem_20_24[0][5]_i_4_n_0\
    );
\op_mem_20_24[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][6]_i_2_n_0\,
      I1 => \op_mem_20_24[0][6]_i_3_n_0\,
      I2 => \op_mem_20_24[0][6]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(6),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][6]\,
      O => \fd_prim_array[6].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(6),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(6),
      I3 => \op_mem_20_24_reg[0][31]_2\(6),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][6]_i_2_n_0\
    );
\op_mem_20_24[0][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \op_mem_20_24_reg[0][31]_5\(6),
      I1 => \op_mem_20_24[0][31]_i_10_n_0\,
      I2 => \op_mem_20_24_reg[0][31]_6\(6),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24[0][31]_i_9_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_7\(6),
      O => \op_mem_20_24[0][6]_i_3_n_0\
    );
\op_mem_20_24[0][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(6),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(6),
      O => \op_mem_20_24[0][6]_i_4_n_0\
    );
\op_mem_20_24[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][7]_i_2_n_0\,
      I1 => \op_mem_20_24[0][7]_i_3_n_0\,
      I2 => \op_mem_20_24[0][7]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(7),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][7]\,
      O => \fd_prim_array[7].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(7),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(7),
      I3 => \op_mem_20_24_reg[0][31]_2\(7),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][7]_i_2_n_0\
    );
\op_mem_20_24[0][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(7),
      I2 => \op_mem_20_24_reg[0][31]_6\(7),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(7),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][7]_i_3_n_0\
    );
\op_mem_20_24[0][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(7),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(7),
      O => \op_mem_20_24[0][7]_i_4_n_0\
    );
\op_mem_20_24[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][8]_i_2_n_0\,
      I1 => \op_mem_20_24[0][8]_i_3_n_0\,
      I2 => \op_mem_20_24[0][8]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(8),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][8]\,
      O => \fd_prim_array[8].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(8),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(8),
      I3 => \op_mem_20_24_reg[0][31]_2\(8),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][8]_i_2_n_0\
    );
\op_mem_20_24[0][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \op_mem_20_24[0][31]_i_9_n_0\,
      I1 => \op_mem_20_24_reg[0][31]_7\(8),
      I2 => \op_mem_20_24_reg[0][31]_6\(8),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24_reg[0][31]_5\(8),
      I5 => \op_mem_20_24[0][31]_i_10_n_0\,
      O => \op_mem_20_24[0][8]_i_3_n_0\
    );
\op_mem_20_24[0][8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(8),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(8),
      O => \op_mem_20_24[0][8]_i_4_n_0\
    );
\op_mem_20_24[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFFFEF"
    )
        port map (
      I0 => \op_mem_20_24[0][9]_i_2_n_0\,
      I1 => \op_mem_20_24[0][9]_i_3_n_0\,
      I2 => \op_mem_20_24[0][9]_i_4_n_0\,
      I3 => \op_mem_20_24_reg[0][31]\(9),
      I4 => \op_mem_20_24[0][31]_i_6_n_0\,
      I5 => \op_mem_20_24_reg[0][9]\,
      O => \fd_prim_array[9].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000FCB8B8B8"
    )
        port map (
      I0 => o(9),
      I1 => CO(0),
      I2 => \op_mem_20_24_reg[0][31]_1\(9),
      I3 => \op_mem_20_24_reg[0][31]_2\(9),
      I4 => \^fd_prim_array[6].rst_comp.fdre_comp_1\(0),
      I5 => \op_mem_20_24[0][31]_i_8_n_0\,
      O => \op_mem_20_24[0][9]_i_2_n_0\
    );
\op_mem_20_24[0][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \op_mem_20_24_reg[0][31]_5\(9),
      I1 => \op_mem_20_24[0][31]_i_10_n_0\,
      I2 => \op_mem_20_24_reg[0][31]_6\(9),
      I3 => \op_mem_20_24[0][31]_i_11_n_0\,
      I4 => \op_mem_20_24[0][31]_i_9_n_0\,
      I5 => \op_mem_20_24_reg[0][31]_7\(9),
      O => \op_mem_20_24[0][9]_i_3_n_0\
    );
\op_mem_20_24[0][9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \^fd_prim_array[2].rst_comp.fdre_comp_1\,
      I1 => \op_mem_20_24_reg[0][31]_3\(9),
      I2 => CO(0),
      I3 => \op_mem_20_24_reg[0][31]_4\(9),
      O => \op_mem_20_24[0][9]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c is
  port (
    m_axis_dma_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \op_mem_20_24_reg[0][30]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][29]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][28]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][27]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][26]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][25]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][24]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][23]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][22]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][21]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][20]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][19]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][18]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][17]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][16]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][15]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][14]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][13]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][12]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][11]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][10]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][9]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][8]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][7]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][6]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][5]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][4]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][3]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][2]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][1]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c : entity is "sysgen_delay_815930150c";
end design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c is
begin
\op_mem_20_24_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][0]_0\,
      Q => m_axis_dma_tdata(0),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][10]_0\,
      Q => m_axis_dma_tdata(10),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][11]_0\,
      Q => m_axis_dma_tdata(11),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][12]_0\,
      Q => m_axis_dma_tdata(12),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][13]_0\,
      Q => m_axis_dma_tdata(13),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][14]_0\,
      Q => m_axis_dma_tdata(14),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][15]_0\,
      Q => m_axis_dma_tdata(15),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][16]_0\,
      Q => m_axis_dma_tdata(16),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][17]_0\,
      Q => m_axis_dma_tdata(17),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][18]_0\,
      Q => m_axis_dma_tdata(18),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][19]_0\,
      Q => m_axis_dma_tdata(19),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][1]_0\,
      Q => m_axis_dma_tdata(1),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][20]_0\,
      Q => m_axis_dma_tdata(20),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][21]_0\,
      Q => m_axis_dma_tdata(21),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][22]_0\,
      Q => m_axis_dma_tdata(22),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][23]_0\,
      Q => m_axis_dma_tdata(23),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][24]_0\,
      Q => m_axis_dma_tdata(24),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][25]_0\,
      Q => m_axis_dma_tdata(25),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][26]_0\,
      Q => m_axis_dma_tdata(26),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][27]_0\,
      Q => m_axis_dma_tdata(27),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][28]_0\,
      Q => m_axis_dma_tdata(28),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][29]_0\,
      Q => m_axis_dma_tdata(29),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][2]_0\,
      Q => m_axis_dma_tdata(2),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][30]_0\,
      Q => m_axis_dma_tdata(30),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][31]_1\,
      Q => m_axis_dma_tdata(31),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][3]_0\,
      Q => m_axis_dma_tdata(3),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][4]_0\,
      Q => m_axis_dma_tdata(4),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][5]_0\,
      Q => m_axis_dma_tdata(5),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][6]_0\,
      Q => m_axis_dma_tdata(6),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][7]_0\,
      Q => m_axis_dma_tdata(7),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][8]_0\,
      Q => m_axis_dma_tdata(8),
      R => \op_mem_20_24_reg[0][31]_0\
    );
\op_mem_20_24_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][9]_0\,
      Q => m_axis_dma_tdata(9),
      R => \op_mem_20_24_reg[0][31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253 is
  port (
    m_axis_dma_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    mcode_tvalid_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253 : entity is "sysgen_delay_f009745253";
end design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253 is
begin
\op_mem_20_24_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mcode_tvalid_net,
      Q => m_axis_dma_tvalid(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0 is
  port (
    m_axis_dma_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \op_mem_20_24_reg[0][0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0 : entity is "sysgen_delay_f009745253";
end design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0 is
begin
\op_mem_20_24_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \op_mem_20_24_reg[0][0]_0\,
      Q => m_axis_dma_tlast(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1 is
  port (
    m_axis_dma_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    register13_q_net : in STD_LOGIC;
    tready_join_68_5 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1 : entity is "sysgen_delay_f009745253";
end design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1 is
begin
\op_mem_20_24_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tready_join_68_5,
      Q => m_axis_dma_tkeep(0),
      R => register13_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3 is
  port (
    inverter_op_net : out STD_LOGIC;
    internal_ip_12_1_bitnot : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3 : entity is "sysgen_inverter_2f95a066e3";
end design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3 is
begin
\op_mem_22_20_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => internal_ip_12_1_bitnot,
      Q => inverter_op_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f is
  port (
    muxing_run_14_24_reg_0 : out STD_LOGIC;
    tready_join_68_5 : out STD_LOGIC;
    decim_count_11_25 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \frame_count_12_25_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC;
    data_sel_store_16_28 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    muxing_run_14_24_reg_1 : out STD_LOGIC;
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    mcode_tvalid_net : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_6_15_28_reg[1]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[2]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[3]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[4]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[5]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[6]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[7]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[8]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[9]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[10]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[11]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[12]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[13]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[14]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[15]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[16]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[17]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[18]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[19]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[20]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[21]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[22]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[23]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[24]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[25]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[26]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[27]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[28]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[29]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[30]_0\ : out STD_LOGIC;
    \data_vec_store_6_15_28_reg[31]_0\ : out STD_LOGIC;
    \data_vec_store_1_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_2_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_3_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_4_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_5_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_7_15_28_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    register13_q_net : in STD_LOGIC;
    muxing_run_join_99_9 : in STD_LOGIC;
    clk : in STD_LOGIC;
    register14_q_net : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    last_frame_flag_17_29_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rel_85_16_carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_frame_flag_17_29_reg_1 : in STD_LOGIC;
    inverter_op_net : in STD_LOGIC;
    mux2_y_net : in STD_LOGIC;
    \^o\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_sel_store_16_28_reg[2]_0\ : in STD_LOGIC;
    \data_sel_store_16_28_reg[6]_0\ : in STD_LOGIC;
    \data_sel_store_16_28_reg[3]_0\ : in STD_LOGIC;
    \data_sel_store_16_28_reg[4]_0\ : in STD_LOGIC;
    \data_sel_store_16_28_reg[5]_0\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rel_85_16_carry__1_0\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \decim_count_11_25_reg[0]_0\ : in STD_LOGIC;
    \data_sel_store_16_28_reg[7]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_2_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_3_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_4_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_5_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_6_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_vec_store_7_15_28_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f : entity is "sysgen_mcode_block_792d208b0f";
end design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^data_sel_store_16_28\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_sel_store_16_28[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_sel_store_16_28[6]_i_1_n_0\ : STD_LOGIC;
  signal \^decim_count_11_25\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \decim_count_11_25[10]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[11]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[12]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[13]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[14]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[15]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[1]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[2]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[3]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[4]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[5]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[6]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[7]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[8]_i_1_n_0\ : STD_LOGIC;
  signal \decim_count_11_25[9]_i_1_n_0\ : STD_LOGIC;
  signal decim_count_96_13_addsub : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \decim_count_96_13_addsub_carry__0_n_0\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__0_n_1\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__0_n_2\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__0_n_3\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__1_n_0\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__1_n_1\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__1_n_2\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__1_n_3\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__2_n_2\ : STD_LOGIC;
  signal \decim_count_96_13_addsub_carry__2_n_3\ : STD_LOGIC;
  signal decim_count_96_13_addsub_carry_n_0 : STD_LOGIC;
  signal decim_count_96_13_addsub_carry_n_1 : STD_LOGIC;
  signal decim_count_96_13_addsub_carry_n_2 : STD_LOGIC;
  signal decim_count_96_13_addsub_carry_n_3 : STD_LOGIC;
  signal delayed_ready_0_23_27 : STD_LOGIC;
  signal delayed_ready_1_23_27 : STD_LOGIC;
  signal delayed_ready_2_23_27 : STD_LOGIC;
  signal delayed_ready_3_23_27 : STD_LOGIC;
  signal frame_count_12_25 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \frame_count_12_25[10]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[11]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[12]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[13]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[14]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[15]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[16]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[17]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[18]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[19]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[20]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[21]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[22]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[23]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[24]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[25]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[26]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[27]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[28]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[29]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[30]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[30]_i_2_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[31]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[5]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[6]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_12_25[9]_i_1_n_0\ : STD_LOGIC;
  signal \^frame_count_12_25_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal frame_count_73_13_addsub : STD_LOGIC_VECTOR ( 32 downto 3 );
  signal \frame_count_73_13_addsub_carry__0_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__0_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__0_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__0_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__1_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__1_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__1_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__1_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__2_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__2_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__2_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__2_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__3_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__3_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__3_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__3_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__4_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__4_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__4_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__4_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__5_n_0\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__5_n_1\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__5_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__5_n_3\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__6_n_2\ : STD_LOGIC;
  signal \frame_count_73_13_addsub_carry__6_n_3\ : STD_LOGIC;
  signal frame_count_73_13_addsub_carry_n_0 : STD_LOGIC;
  signal frame_count_73_13_addsub_carry_n_1 : STD_LOGIC;
  signal frame_count_73_13_addsub_carry_n_2 : STD_LOGIC;
  signal frame_count_73_13_addsub_carry_n_3 : STD_LOGIC;
  signal last_frame_flag_17_29 : STD_LOGIC;
  signal last_frame_flag_17_29_i_1_n_0 : STD_LOGIC;
  signal \^muxing_run_14_24_reg_0\ : STD_LOGIC;
  signal \^muxing_run_14_24_reg_1\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \op_mem_20_24[0][0]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rel_72_12_carry__0_n_3\ : STD_LOGIC;
  signal rel_72_12_carry_n_0 : STD_LOGIC;
  signal rel_72_12_carry_n_1 : STD_LOGIC;
  signal rel_72_12_carry_n_2 : STD_LOGIC;
  signal rel_72_12_carry_n_3 : STD_LOGIC;
  signal rel_85_16 : STD_LOGIC;
  signal \rel_85_16_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__0_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__0_n_1\ : STD_LOGIC;
  signal \rel_85_16_carry__0_n_2\ : STD_LOGIC;
  signal \rel_85_16_carry__0_n_3\ : STD_LOGIC;
  signal \rel_85_16_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rel_85_16_carry__1_n_2\ : STD_LOGIC;
  signal \rel_85_16_carry__1_n_3\ : STD_LOGIC;
  signal rel_85_16_carry_i_1_n_0 : STD_LOGIC;
  signal rel_85_16_carry_i_2_n_0 : STD_LOGIC;
  signal rel_85_16_carry_i_3_n_0 : STD_LOGIC;
  signal rel_85_16_carry_n_0 : STD_LOGIC;
  signal rel_85_16_carry_n_1 : STD_LOGIC;
  signal rel_85_16_carry_n_2 : STD_LOGIC;
  signal rel_85_16_carry_n_3 : STD_LOGIC;
  signal \^tready_join_68_5\ : STD_LOGIC;
  signal triggered_10_23 : STD_LOGIC;
  signal triggered_10_23_i_2_n_0 : STD_LOGIC;
  signal triggered_join_68_5 : STD_LOGIC;
  signal \NLW_decim_count_96_13_addsub_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_decim_count_96_13_addsub_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frame_count_73_13_addsub_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_frame_count_73_13_addsub_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rel_72_12_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rel_72_12_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rel_72_12_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rel_85_16_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rel_85_16_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rel_85_16_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rel_85_16_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_sel_store_16_28[7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \decim_count_11_25[10]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \decim_count_11_25[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \decim_count_11_25[13]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \decim_count_11_25[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \decim_count_11_25[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \decim_count_11_25[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \decim_count_11_25[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \decim_count_11_25[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \decim_count_11_25[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \decim_count_11_25[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \frame_count_12_25[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \frame_count_12_25[13]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \frame_count_12_25[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \frame_count_12_25[22]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \frame_count_12_25[23]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \frame_count_12_25[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \frame_count_12_25[25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \frame_count_12_25[26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \frame_count_12_25[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \frame_count_12_25[29]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \frame_count_12_25[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \frame_count_12_25[30]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \frame_count_12_25[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \frame_count_12_25[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \frame_count_12_25[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \frame_count_12_25[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][0]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \op_mem_20_24[0][31]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of triggered_10_23_i_2 : label is "soft_lutpair47";
begin
  CO(0) <= \^co\(0);
  O(1 downto 0) <= \^o_1\(1 downto 0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  data_sel_store_16_28(6 downto 0) <= \^data_sel_store_16_28\(6 downto 0);
  decim_count_11_25(15 downto 0) <= \^decim_count_11_25\(15 downto 0);
  \frame_count_12_25_reg[0]_0\(0) <= \^frame_count_12_25_reg[0]_0\(0);
  muxing_run_14_24_reg_0 <= \^muxing_run_14_24_reg_0\;
  muxing_run_14_24_reg_1 <= \^muxing_run_14_24_reg_1\;
  tready_join_68_5 <= \^tready_join_68_5\;
\data_sel_store_16_28[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F8FFF80008000"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^o\(0),
      I2 => \^tready_join_68_5\,
      I3 => \^co\(0),
      I4 => \^muxing_run_14_24_reg_0\,
      I5 => \^data_sel_store_16_28\(0),
      O => \data_sel_store_16_28[1]_i_1_n_0\
    );
\data_sel_store_16_28[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F3F2FFF20002000"
    )
        port map (
      I0 => \^o\(2),
      I1 => \data_sel_store_16_28_reg[2]_0\,
      I2 => \^tready_join_68_5\,
      I3 => \^co\(0),
      I4 => \^muxing_run_14_24_reg_0\,
      I5 => \^data_sel_store_16_28\(1),
      O => \data_sel_store_16_28[2]_i_1_n_0\
    );
\data_sel_store_16_28[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FEAA000002AA"
    )
        port map (
      I0 => \^data_sel_store_16_28\(2),
      I1 => \^muxing_run_14_24_reg_0\,
      I2 => \^co\(0),
      I3 => \^tready_join_68_5\,
      I4 => register13_q_net,
      I5 => \data_sel_store_16_28_reg[3]_0\,
      O => \data_sel_store_16_28[3]_i_1_n_0\
    );
\data_sel_store_16_28[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FEAA000002AA"
    )
        port map (
      I0 => \^data_sel_store_16_28\(3),
      I1 => \^muxing_run_14_24_reg_0\,
      I2 => \^co\(0),
      I3 => \^tready_join_68_5\,
      I4 => register13_q_net,
      I5 => \data_sel_store_16_28_reg[4]_0\,
      O => \data_sel_store_16_28[4]_i_1_n_0\
    );
\data_sel_store_16_28[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101032301030"
    )
        port map (
      I0 => \^muxing_run_14_24_reg_1\,
      I1 => register13_q_net,
      I2 => \^data_sel_store_16_28\(4),
      I3 => \^co\(0),
      I4 => \^o\(3),
      I5 => \data_sel_store_16_28_reg[5]_0\,
      O => \data_sel_store_16_28[5]_i_1_n_0\
    );
\data_sel_store_16_28[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FCF8FFF80008000"
    )
        port map (
      I0 => \^o\(4),
      I1 => \data_sel_store_16_28_reg[6]_0\,
      I2 => \^tready_join_68_5\,
      I3 => \^co\(0),
      I4 => \^muxing_run_14_24_reg_0\,
      I5 => \^data_sel_store_16_28\(5),
      O => \data_sel_store_16_28[6]_i_1_n_0\
    );
\data_sel_store_16_28[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^tready_join_68_5\,
      I1 => \^co\(0),
      I2 => \^muxing_run_14_24_reg_0\,
      O => \^muxing_run_14_24_reg_1\
    );
\data_sel_store_16_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[1]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(0),
      R => register13_q_net
    );
\data_sel_store_16_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[2]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(1),
      R => register13_q_net
    );
\data_sel_store_16_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[3]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(2),
      R => '0'
    );
\data_sel_store_16_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[4]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(3),
      R => '0'
    );
\data_sel_store_16_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[5]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(4),
      R => '0'
    );
\data_sel_store_16_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28[6]_i_1_n_0\,
      Q => \^data_sel_store_16_28\(5),
      R => register13_q_net
    );
\data_sel_store_16_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sel_store_16_28_reg[7]_0\,
      Q => \^data_sel_store_16_28\(6),
      R => '0'
    );
\data_vec_store_1_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(0),
      Q => \data_vec_store_1_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(10),
      Q => \data_vec_store_1_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(11),
      Q => \data_vec_store_1_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(12),
      Q => \data_vec_store_1_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(13),
      Q => \data_vec_store_1_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(14),
      Q => \data_vec_store_1_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(15),
      Q => \data_vec_store_1_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(16),
      Q => \data_vec_store_1_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(17),
      Q => \data_vec_store_1_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(18),
      Q => \data_vec_store_1_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(19),
      Q => \data_vec_store_1_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(1),
      Q => \data_vec_store_1_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(20),
      Q => \data_vec_store_1_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(21),
      Q => \data_vec_store_1_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(22),
      Q => \data_vec_store_1_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(23),
      Q => \data_vec_store_1_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(24),
      Q => \data_vec_store_1_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(25),
      Q => \data_vec_store_1_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(26),
      Q => \data_vec_store_1_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(27),
      Q => \data_vec_store_1_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(28),
      Q => \data_vec_store_1_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(29),
      Q => \data_vec_store_1_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(2),
      Q => \data_vec_store_1_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(30),
      Q => \data_vec_store_1_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(31),
      Q => \data_vec_store_1_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(3),
      Q => \data_vec_store_1_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(4),
      Q => \data_vec_store_1_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(5),
      Q => \data_vec_store_1_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(6),
      Q => \data_vec_store_1_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(7),
      Q => \data_vec_store_1_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(8),
      Q => \data_vec_store_1_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_1_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => D(9),
      Q => \data_vec_store_1_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(0),
      Q => \data_vec_store_2_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(10),
      Q => \data_vec_store_2_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(11),
      Q => \data_vec_store_2_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(12),
      Q => \data_vec_store_2_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(13),
      Q => \data_vec_store_2_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(14),
      Q => \data_vec_store_2_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(15),
      Q => \data_vec_store_2_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(16),
      Q => \data_vec_store_2_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(17),
      Q => \data_vec_store_2_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(18),
      Q => \data_vec_store_2_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(19),
      Q => \data_vec_store_2_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(1),
      Q => \data_vec_store_2_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(20),
      Q => \data_vec_store_2_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(21),
      Q => \data_vec_store_2_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(22),
      Q => \data_vec_store_2_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(23),
      Q => \data_vec_store_2_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(24),
      Q => \data_vec_store_2_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(25),
      Q => \data_vec_store_2_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(26),
      Q => \data_vec_store_2_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(27),
      Q => \data_vec_store_2_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(28),
      Q => \data_vec_store_2_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(29),
      Q => \data_vec_store_2_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(2),
      Q => \data_vec_store_2_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(30),
      Q => \data_vec_store_2_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(31),
      Q => \data_vec_store_2_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(3),
      Q => \data_vec_store_2_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(4),
      Q => \data_vec_store_2_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(5),
      Q => \data_vec_store_2_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(6),
      Q => \data_vec_store_2_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(7),
      Q => \data_vec_store_2_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(8),
      Q => \data_vec_store_2_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_2_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_2_15_28_reg[31]_1\(9),
      Q => \data_vec_store_2_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(0),
      Q => \data_vec_store_3_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(10),
      Q => \data_vec_store_3_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(11),
      Q => \data_vec_store_3_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(12),
      Q => \data_vec_store_3_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(13),
      Q => \data_vec_store_3_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(14),
      Q => \data_vec_store_3_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(15),
      Q => \data_vec_store_3_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(16),
      Q => \data_vec_store_3_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(17),
      Q => \data_vec_store_3_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(18),
      Q => \data_vec_store_3_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(19),
      Q => \data_vec_store_3_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(1),
      Q => \data_vec_store_3_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(20),
      Q => \data_vec_store_3_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(21),
      Q => \data_vec_store_3_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(22),
      Q => \data_vec_store_3_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(23),
      Q => \data_vec_store_3_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(24),
      Q => \data_vec_store_3_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(25),
      Q => \data_vec_store_3_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(26),
      Q => \data_vec_store_3_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(27),
      Q => \data_vec_store_3_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(28),
      Q => \data_vec_store_3_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(29),
      Q => \data_vec_store_3_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(2),
      Q => \data_vec_store_3_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(30),
      Q => \data_vec_store_3_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(31),
      Q => \data_vec_store_3_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(3),
      Q => \data_vec_store_3_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(4),
      Q => \data_vec_store_3_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(5),
      Q => \data_vec_store_3_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(6),
      Q => \data_vec_store_3_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(7),
      Q => \data_vec_store_3_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(8),
      Q => \data_vec_store_3_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_3_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_3_15_28_reg[31]_1\(9),
      Q => \data_vec_store_3_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(0),
      Q => \data_vec_store_4_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(10),
      Q => \data_vec_store_4_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(11),
      Q => \data_vec_store_4_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(12),
      Q => \data_vec_store_4_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(13),
      Q => \data_vec_store_4_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(14),
      Q => \data_vec_store_4_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(15),
      Q => \data_vec_store_4_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(16),
      Q => \data_vec_store_4_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(17),
      Q => \data_vec_store_4_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(18),
      Q => \data_vec_store_4_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(19),
      Q => \data_vec_store_4_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(1),
      Q => \data_vec_store_4_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(20),
      Q => \data_vec_store_4_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(21),
      Q => \data_vec_store_4_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(22),
      Q => \data_vec_store_4_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(23),
      Q => \data_vec_store_4_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(24),
      Q => \data_vec_store_4_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(25),
      Q => \data_vec_store_4_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(26),
      Q => \data_vec_store_4_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(27),
      Q => \data_vec_store_4_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(28),
      Q => \data_vec_store_4_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(29),
      Q => \data_vec_store_4_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(2),
      Q => \data_vec_store_4_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(30),
      Q => \data_vec_store_4_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(31),
      Q => \data_vec_store_4_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(3),
      Q => \data_vec_store_4_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(4),
      Q => \data_vec_store_4_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(5),
      Q => \data_vec_store_4_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(6),
      Q => \data_vec_store_4_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(7),
      Q => \data_vec_store_4_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(8),
      Q => \data_vec_store_4_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_4_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_4_15_28_reg[31]_1\(9),
      Q => \data_vec_store_4_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(0),
      Q => \data_vec_store_5_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(10),
      Q => \data_vec_store_5_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(11),
      Q => \data_vec_store_5_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(12),
      Q => \data_vec_store_5_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(13),
      Q => \data_vec_store_5_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(14),
      Q => \data_vec_store_5_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(15),
      Q => \data_vec_store_5_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(16),
      Q => \data_vec_store_5_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(17),
      Q => \data_vec_store_5_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(18),
      Q => \data_vec_store_5_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(19),
      Q => \data_vec_store_5_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(1),
      Q => \data_vec_store_5_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(20),
      Q => \data_vec_store_5_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(21),
      Q => \data_vec_store_5_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(22),
      Q => \data_vec_store_5_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(23),
      Q => \data_vec_store_5_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(24),
      Q => \data_vec_store_5_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(25),
      Q => \data_vec_store_5_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(26),
      Q => \data_vec_store_5_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(27),
      Q => \data_vec_store_5_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(28),
      Q => \data_vec_store_5_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(29),
      Q => \data_vec_store_5_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(2),
      Q => \data_vec_store_5_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(30),
      Q => \data_vec_store_5_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(31),
      Q => \data_vec_store_5_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(3),
      Q => \data_vec_store_5_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(4),
      Q => \data_vec_store_5_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(5),
      Q => \data_vec_store_5_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(6),
      Q => \data_vec_store_5_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(7),
      Q => \data_vec_store_5_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(8),
      Q => \data_vec_store_5_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_5_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_5_15_28_reg[31]_1\(9),
      Q => \data_vec_store_5_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(0),
      Q => \^q\(0),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(10),
      Q => \^q\(10),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(11),
      Q => \^q\(11),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(12),
      Q => \^q\(12),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(13),
      Q => \^q\(13),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(14),
      Q => \^q\(14),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(15),
      Q => \^q\(15),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(16),
      Q => \^q\(16),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(17),
      Q => \^q\(17),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(18),
      Q => \^q\(18),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(19),
      Q => \^q\(19),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(1),
      Q => \^q\(1),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(20),
      Q => \^q\(20),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(21),
      Q => \^q\(21),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(22),
      Q => \^q\(22),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(23),
      Q => \^q\(23),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(24),
      Q => \^q\(24),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(25),
      Q => \^q\(25),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(26),
      Q => \^q\(26),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(27),
      Q => \^q\(27),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(28),
      Q => \^q\(28),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(29),
      Q => \^q\(29),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(2),
      Q => \^q\(2),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(30),
      Q => \^q\(30),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(31),
      Q => \^q\(31),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(3),
      Q => \^q\(3),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(4),
      Q => \^q\(4),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(5),
      Q => \^q\(5),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(6),
      Q => \^q\(6),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(7),
      Q => \^q\(7),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(8),
      Q => \^q\(8),
      R => register13_q_net
    );
\data_vec_store_6_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_6_15_28_reg[31]_1\(9),
      Q => \^q\(9),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(0),
      Q => \data_vec_store_7_15_28_reg[31]_0\(0),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(10),
      Q => \data_vec_store_7_15_28_reg[31]_0\(10),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(11),
      Q => \data_vec_store_7_15_28_reg[31]_0\(11),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(12),
      Q => \data_vec_store_7_15_28_reg[31]_0\(12),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(13),
      Q => \data_vec_store_7_15_28_reg[31]_0\(13),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(14),
      Q => \data_vec_store_7_15_28_reg[31]_0\(14),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(15),
      Q => \data_vec_store_7_15_28_reg[31]_0\(15),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(16),
      Q => \data_vec_store_7_15_28_reg[31]_0\(16),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(17),
      Q => \data_vec_store_7_15_28_reg[31]_0\(17),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(18),
      Q => \data_vec_store_7_15_28_reg[31]_0\(18),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(19),
      Q => \data_vec_store_7_15_28_reg[31]_0\(19),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(1),
      Q => \data_vec_store_7_15_28_reg[31]_0\(1),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(20),
      Q => \data_vec_store_7_15_28_reg[31]_0\(20),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(21),
      Q => \data_vec_store_7_15_28_reg[31]_0\(21),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(22),
      Q => \data_vec_store_7_15_28_reg[31]_0\(22),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(23),
      Q => \data_vec_store_7_15_28_reg[31]_0\(23),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(24),
      Q => \data_vec_store_7_15_28_reg[31]_0\(24),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(25),
      Q => \data_vec_store_7_15_28_reg[31]_0\(25),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(26),
      Q => \data_vec_store_7_15_28_reg[31]_0\(26),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(27),
      Q => \data_vec_store_7_15_28_reg[31]_0\(27),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(28),
      Q => \data_vec_store_7_15_28_reg[31]_0\(28),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(29),
      Q => \data_vec_store_7_15_28_reg[31]_0\(29),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(2),
      Q => \data_vec_store_7_15_28_reg[31]_0\(2),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(30),
      Q => \data_vec_store_7_15_28_reg[31]_0\(30),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(31),
      Q => \data_vec_store_7_15_28_reg[31]_0\(31),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(3),
      Q => \data_vec_store_7_15_28_reg[31]_0\(3),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(4),
      Q => \data_vec_store_7_15_28_reg[31]_0\(4),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(5),
      Q => \data_vec_store_7_15_28_reg[31]_0\(5),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(6),
      Q => \data_vec_store_7_15_28_reg[31]_0\(6),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(7),
      Q => \data_vec_store_7_15_28_reg[31]_0\(7),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(8),
      Q => \data_vec_store_7_15_28_reg[31]_0\(8),
      R => register13_q_net
    );
\data_vec_store_7_15_28_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \data_vec_store_7_15_28_reg[31]_1\(9),
      Q => \data_vec_store_7_15_28_reg[31]_0\(9),
      R => register13_q_net
    );
\decim_count_11_25[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(10),
      I1 => \^co\(0),
      O => \decim_count_11_25[10]_i_1_n_0\
    );
\decim_count_11_25[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \^decim_count_11_25\(11),
      I1 => \^tready_join_68_5\,
      I2 => decim_count_96_13_addsub(11),
      I3 => \^co\(0),
      O => \decim_count_11_25[11]_i_1_n_0\
    );
\decim_count_11_25[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(12),
      I1 => \^co\(0),
      O => \decim_count_11_25[12]_i_1_n_0\
    );
\decim_count_11_25[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(13),
      I1 => \^co\(0),
      O => \decim_count_11_25[13]_i_1_n_0\
    );
\decim_count_11_25[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \^decim_count_11_25\(14),
      I1 => \^tready_join_68_5\,
      I2 => decim_count_96_13_addsub(14),
      I3 => \^co\(0),
      O => \decim_count_11_25[14]_i_1_n_0\
    );
\decim_count_11_25[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(15),
      I1 => \^co\(0),
      O => \decim_count_11_25[15]_i_1_n_0\
    );
\decim_count_11_25[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(1),
      I1 => \^co\(0),
      O => \decim_count_11_25[1]_i_1_n_0\
    );
\decim_count_11_25[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \^decim_count_11_25\(2),
      I1 => \^tready_join_68_5\,
      I2 => decim_count_96_13_addsub(2),
      I3 => \^co\(0),
      O => \decim_count_11_25[2]_i_1_n_0\
    );
\decim_count_11_25[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(3),
      I1 => \^co\(0),
      O => \decim_count_11_25[3]_i_1_n_0\
    );
\decim_count_11_25[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(4),
      I1 => \^co\(0),
      O => \decim_count_11_25[4]_i_1_n_0\
    );
\decim_count_11_25[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \^decim_count_11_25\(5),
      I1 => \^tready_join_68_5\,
      I2 => decim_count_96_13_addsub(5),
      I3 => \^co\(0),
      O => \decim_count_11_25[5]_i_1_n_0\
    );
\decim_count_11_25[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(6),
      I1 => \^co\(0),
      O => \decim_count_11_25[6]_i_1_n_0\
    );
\decim_count_11_25[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(7),
      I1 => \^co\(0),
      O => \decim_count_11_25[7]_i_1_n_0\
    );
\decim_count_11_25[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \^decim_count_11_25\(8),
      I1 => \^tready_join_68_5\,
      I2 => decim_count_96_13_addsub(8),
      I3 => \^co\(0),
      O => \decim_count_11_25[8]_i_1_n_0\
    );
\decim_count_11_25[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decim_count_96_13_addsub(9),
      I1 => \^co\(0),
      O => \decim_count_11_25[9]_i_1_n_0\
    );
\decim_count_11_25_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25_reg[0]_0\,
      Q => \^decim_count_11_25\(0),
      R => register13_q_net
    );
\decim_count_11_25_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[10]_i_1_n_0\,
      Q => \^decim_count_11_25\(10),
      R => register13_q_net
    );
\decim_count_11_25_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \decim_count_11_25[11]_i_1_n_0\,
      Q => \^decim_count_11_25\(11),
      R => register13_q_net
    );
\decim_count_11_25_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[12]_i_1_n_0\,
      Q => \^decim_count_11_25\(12),
      R => register13_q_net
    );
\decim_count_11_25_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[13]_i_1_n_0\,
      Q => \^decim_count_11_25\(13),
      R => register13_q_net
    );
\decim_count_11_25_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \decim_count_11_25[14]_i_1_n_0\,
      Q => \^decim_count_11_25\(14),
      R => register13_q_net
    );
\decim_count_11_25_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[15]_i_1_n_0\,
      Q => \^decim_count_11_25\(15),
      R => register13_q_net
    );
\decim_count_11_25_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[1]_i_1_n_0\,
      Q => \^decim_count_11_25\(1),
      R => register13_q_net
    );
\decim_count_11_25_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \decim_count_11_25[2]_i_1_n_0\,
      Q => \^decim_count_11_25\(2),
      R => register13_q_net
    );
\decim_count_11_25_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[3]_i_1_n_0\,
      Q => \^decim_count_11_25\(3),
      R => register13_q_net
    );
\decim_count_11_25_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[4]_i_1_n_0\,
      Q => \^decim_count_11_25\(4),
      R => register13_q_net
    );
\decim_count_11_25_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \decim_count_11_25[5]_i_1_n_0\,
      Q => \^decim_count_11_25\(5),
      R => register13_q_net
    );
\decim_count_11_25_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[6]_i_1_n_0\,
      Q => \^decim_count_11_25\(6),
      R => register13_q_net
    );
\decim_count_11_25_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[7]_i_1_n_0\,
      Q => \^decim_count_11_25\(7),
      R => register13_q_net
    );
\decim_count_11_25_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \decim_count_11_25[8]_i_1_n_0\,
      Q => \^decim_count_11_25\(8),
      R => register13_q_net
    );
\decim_count_11_25_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => \decim_count_11_25[9]_i_1_n_0\,
      Q => \^decim_count_11_25\(9),
      R => register13_q_net
    );
decim_count_96_13_addsub_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decim_count_96_13_addsub_carry_n_0,
      CO(2) => decim_count_96_13_addsub_carry_n_1,
      CO(1) => decim_count_96_13_addsub_carry_n_2,
      CO(0) => decim_count_96_13_addsub_carry_n_3,
      CYINIT => \^decim_count_11_25\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => decim_count_96_13_addsub(4 downto 1),
      S(3 downto 0) => \^decim_count_11_25\(4 downto 1)
    );
\decim_count_96_13_addsub_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => decim_count_96_13_addsub_carry_n_0,
      CO(3) => \decim_count_96_13_addsub_carry__0_n_0\,
      CO(2) => \decim_count_96_13_addsub_carry__0_n_1\,
      CO(1) => \decim_count_96_13_addsub_carry__0_n_2\,
      CO(0) => \decim_count_96_13_addsub_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => decim_count_96_13_addsub(8 downto 5),
      S(3 downto 0) => \^decim_count_11_25\(8 downto 5)
    );
\decim_count_96_13_addsub_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \decim_count_96_13_addsub_carry__0_n_0\,
      CO(3) => \decim_count_96_13_addsub_carry__1_n_0\,
      CO(2) => \decim_count_96_13_addsub_carry__1_n_1\,
      CO(1) => \decim_count_96_13_addsub_carry__1_n_2\,
      CO(0) => \decim_count_96_13_addsub_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => decim_count_96_13_addsub(12 downto 9),
      S(3 downto 0) => \^decim_count_11_25\(12 downto 9)
    );
\decim_count_96_13_addsub_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \decim_count_96_13_addsub_carry__1_n_0\,
      CO(3 downto 2) => \NLW_decim_count_96_13_addsub_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \decim_count_96_13_addsub_carry__2_n_2\,
      CO(0) => \decim_count_96_13_addsub_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_decim_count_96_13_addsub_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => decim_count_96_13_addsub(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => \^decim_count_11_25\(15 downto 13)
    );
delayed_ready_0_23_27_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => register14_q_net,
      Q => delayed_ready_0_23_27,
      R => register13_q_net
    );
delayed_ready_1_23_27_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delayed_ready_0_23_27,
      Q => delayed_ready_1_23_27,
      R => register13_q_net
    );
delayed_ready_2_23_27_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delayed_ready_1_23_27,
      Q => delayed_ready_2_23_27,
      R => register13_q_net
    );
delayed_ready_3_23_27_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delayed_ready_2_23_27,
      Q => delayed_ready_3_23_27,
      R => register13_q_net
    );
\frame_count_12_25[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01303030"
    )
        port map (
      I0 => rel_85_16,
      I1 => register13_q_net,
      I2 => \^frame_count_12_25_reg[0]_0\(0),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => p_0_in(0)
    );
\frame_count_12_25[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(10),
      I2 => frame_count_12_25(10),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[10]_i_1_n_0\
    );
\frame_count_12_25[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(11),
      I1 => rel_85_16,
      O => \frame_count_12_25[11]_i_1_n_0\
    );
\frame_count_12_25[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(12),
      I2 => frame_count_12_25(12),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[12]_i_1_n_0\
    );
\frame_count_12_25[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(13),
      I1 => rel_85_16,
      O => \frame_count_12_25[13]_i_1_n_0\
    );
\frame_count_12_25[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(14),
      I2 => frame_count_12_25(14),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[14]_i_1_n_0\
    );
\frame_count_12_25[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(15),
      I2 => frame_count_12_25(15),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[15]_i_1_n_0\
    );
\frame_count_12_25[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(16),
      I2 => frame_count_12_25(16),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[16]_i_1_n_0\
    );
\frame_count_12_25[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(17),
      I2 => frame_count_12_25(17),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[17]_i_1_n_0\
    );
\frame_count_12_25[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(18),
      I1 => rel_85_16,
      O => \frame_count_12_25[18]_i_1_n_0\
    );
\frame_count_12_25[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(19),
      I2 => frame_count_12_25(19),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[19]_i_1_n_0\
    );
\frame_count_12_25[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => \^o_1\(0),
      I2 => frame_count_12_25(1),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[1]_i_1_n_0\
    );
\frame_count_12_25[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(20),
      I2 => frame_count_12_25(20),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[20]_i_1_n_0\
    );
\frame_count_12_25[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(21),
      I2 => frame_count_12_25(21),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[21]_i_1_n_0\
    );
\frame_count_12_25[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(22),
      I1 => rel_85_16,
      O => \frame_count_12_25[22]_i_1_n_0\
    );
\frame_count_12_25[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(23),
      I1 => rel_85_16,
      O => \frame_count_12_25[23]_i_1_n_0\
    );
\frame_count_12_25[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(24),
      I1 => rel_85_16,
      O => \frame_count_12_25[24]_i_1_n_0\
    );
\frame_count_12_25[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(25),
      I1 => rel_85_16,
      O => \frame_count_12_25[25]_i_1_n_0\
    );
\frame_count_12_25[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(26),
      I1 => rel_85_16,
      O => \frame_count_12_25[26]_i_1_n_0\
    );
\frame_count_12_25[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(27),
      I1 => rel_85_16,
      O => \frame_count_12_25[27]_i_1_n_0\
    );
\frame_count_12_25[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(28),
      I2 => frame_count_12_25(28),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[28]_i_1_n_0\
    );
\frame_count_12_25[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(29),
      I1 => rel_85_16,
      O => \frame_count_12_25[29]_i_1_n_0\
    );
\frame_count_12_25[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_1\(1),
      I1 => rel_85_16,
      O => \frame_count_12_25[2]_i_1_n_0\
    );
\frame_count_12_25[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^tready_join_68_5\,
      I1 => \^co\(0),
      O => \frame_count_12_25[30]_i_1_n_0\
    );
\frame_count_12_25[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(30),
      I1 => rel_85_16,
      O => \frame_count_12_25[30]_i_2_n_0\
    );
\frame_count_12_25[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(31),
      I2 => frame_count_12_25(31),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[31]_i_1_n_0\
    );
\frame_count_12_25[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(3),
      I2 => frame_count_12_25(3),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[3]_i_1_n_0\
    );
\frame_count_12_25[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(4),
      I1 => rel_85_16,
      O => \frame_count_12_25[4]_i_1_n_0\
    );
\frame_count_12_25[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(5),
      I2 => frame_count_12_25(5),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[5]_i_1_n_0\
    );
\frame_count_12_25[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(6),
      I1 => rel_85_16,
      O => \frame_count_12_25[6]_i_1_n_0\
    );
\frame_count_12_25[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(7),
      I1 => rel_85_16,
      O => \frame_count_12_25[7]_i_1_n_0\
    );
\frame_count_12_25[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_count_73_13_addsub(8),
      I1 => rel_85_16,
      O => \frame_count_12_25[8]_i_1_n_0\
    );
\frame_count_12_25[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F0F0F0"
    )
        port map (
      I0 => rel_85_16,
      I1 => frame_count_73_13_addsub(9),
      I2 => frame_count_12_25(9),
      I3 => \^co\(0),
      I4 => \^tready_join_68_5\,
      O => \frame_count_12_25[9]_i_1_n_0\
    );
\frame_count_12_25_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \^frame_count_12_25_reg[0]_0\(0),
      R => '0'
    );
\frame_count_12_25_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[10]_i_1_n_0\,
      Q => frame_count_12_25(10),
      R => register13_q_net
    );
\frame_count_12_25_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[11]_i_1_n_0\,
      Q => frame_count_12_25(11),
      R => register13_q_net
    );
\frame_count_12_25_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[12]_i_1_n_0\,
      Q => frame_count_12_25(12),
      R => register13_q_net
    );
\frame_count_12_25_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[13]_i_1_n_0\,
      Q => frame_count_12_25(13),
      R => register13_q_net
    );
\frame_count_12_25_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[14]_i_1_n_0\,
      Q => frame_count_12_25(14),
      R => register13_q_net
    );
\frame_count_12_25_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[15]_i_1_n_0\,
      Q => frame_count_12_25(15),
      R => register13_q_net
    );
\frame_count_12_25_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[16]_i_1_n_0\,
      Q => frame_count_12_25(16),
      R => register13_q_net
    );
\frame_count_12_25_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[17]_i_1_n_0\,
      Q => frame_count_12_25(17),
      R => register13_q_net
    );
\frame_count_12_25_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[18]_i_1_n_0\,
      Q => frame_count_12_25(18),
      R => register13_q_net
    );
\frame_count_12_25_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[19]_i_1_n_0\,
      Q => frame_count_12_25(19),
      R => register13_q_net
    );
\frame_count_12_25_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[1]_i_1_n_0\,
      Q => frame_count_12_25(1),
      R => register13_q_net
    );
\frame_count_12_25_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[20]_i_1_n_0\,
      Q => frame_count_12_25(20),
      R => register13_q_net
    );
\frame_count_12_25_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[21]_i_1_n_0\,
      Q => frame_count_12_25(21),
      R => register13_q_net
    );
\frame_count_12_25_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[22]_i_1_n_0\,
      Q => frame_count_12_25(22),
      R => register13_q_net
    );
\frame_count_12_25_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[23]_i_1_n_0\,
      Q => frame_count_12_25(23),
      R => register13_q_net
    );
\frame_count_12_25_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[24]_i_1_n_0\,
      Q => frame_count_12_25(24),
      R => register13_q_net
    );
\frame_count_12_25_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[25]_i_1_n_0\,
      Q => frame_count_12_25(25),
      R => register13_q_net
    );
\frame_count_12_25_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[26]_i_1_n_0\,
      Q => frame_count_12_25(26),
      R => register13_q_net
    );
\frame_count_12_25_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[27]_i_1_n_0\,
      Q => frame_count_12_25(27),
      R => register13_q_net
    );
\frame_count_12_25_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[28]_i_1_n_0\,
      Q => frame_count_12_25(28),
      R => register13_q_net
    );
\frame_count_12_25_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[29]_i_1_n_0\,
      Q => frame_count_12_25(29),
      R => register13_q_net
    );
\frame_count_12_25_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[2]_i_1_n_0\,
      Q => frame_count_12_25(2),
      R => register13_q_net
    );
\frame_count_12_25_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[30]_i_2_n_0\,
      Q => frame_count_12_25(30),
      R => register13_q_net
    );
\frame_count_12_25_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[31]_i_1_n_0\,
      Q => frame_count_12_25(31),
      R => register13_q_net
    );
\frame_count_12_25_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[3]_i_1_n_0\,
      Q => frame_count_12_25(3),
      R => register13_q_net
    );
\frame_count_12_25_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[4]_i_1_n_0\,
      Q => frame_count_12_25(4),
      R => register13_q_net
    );
\frame_count_12_25_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[5]_i_1_n_0\,
      Q => frame_count_12_25(5),
      R => register13_q_net
    );
\frame_count_12_25_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[6]_i_1_n_0\,
      Q => frame_count_12_25(6),
      R => register13_q_net
    );
\frame_count_12_25_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[7]_i_1_n_0\,
      Q => frame_count_12_25(7),
      R => register13_q_net
    );
\frame_count_12_25_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_count_12_25[30]_i_1_n_0\,
      D => \frame_count_12_25[8]_i_1_n_0\,
      Q => frame_count_12_25(8),
      R => register13_q_net
    );
\frame_count_12_25_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \frame_count_12_25[9]_i_1_n_0\,
      Q => frame_count_12_25(9),
      R => register13_q_net
    );
frame_count_73_13_addsub_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_count_73_13_addsub_carry_n_0,
      CO(2) => frame_count_73_13_addsub_carry_n_1,
      CO(1) => frame_count_73_13_addsub_carry_n_2,
      CO(0) => frame_count_73_13_addsub_carry_n_3,
      CYINIT => \^frame_count_12_25_reg[0]_0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => frame_count_73_13_addsub(4 downto 3),
      O(1 downto 0) => \^o_1\(1 downto 0),
      S(3 downto 0) => frame_count_12_25(4 downto 1)
    );
\frame_count_73_13_addsub_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => frame_count_73_13_addsub_carry_n_0,
      CO(3) => \frame_count_73_13_addsub_carry__0_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__0_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__0_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(8 downto 5),
      S(3 downto 0) => frame_count_12_25(8 downto 5)
    );
\frame_count_73_13_addsub_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__0_n_0\,
      CO(3) => \frame_count_73_13_addsub_carry__1_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__1_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__1_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(12 downto 9),
      S(3 downto 0) => frame_count_12_25(12 downto 9)
    );
\frame_count_73_13_addsub_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__1_n_0\,
      CO(3) => \frame_count_73_13_addsub_carry__2_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__2_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__2_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(16 downto 13),
      S(3 downto 0) => frame_count_12_25(16 downto 13)
    );
\frame_count_73_13_addsub_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__2_n_0\,
      CO(3) => \frame_count_73_13_addsub_carry__3_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__3_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__3_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(20 downto 17),
      S(3 downto 0) => frame_count_12_25(20 downto 17)
    );
\frame_count_73_13_addsub_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__3_n_0\,
      CO(3) => \frame_count_73_13_addsub_carry__4_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__4_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__4_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(24 downto 21),
      S(3 downto 0) => frame_count_12_25(24 downto 21)
    );
\frame_count_73_13_addsub_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__4_n_0\,
      CO(3) => \frame_count_73_13_addsub_carry__5_n_0\,
      CO(2) => \frame_count_73_13_addsub_carry__5_n_1\,
      CO(1) => \frame_count_73_13_addsub_carry__5_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame_count_73_13_addsub(28 downto 25),
      S(3 downto 0) => frame_count_12_25(28 downto 25)
    );
\frame_count_73_13_addsub_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_73_13_addsub_carry__5_n_0\,
      CO(3) => frame_count_73_13_addsub(32),
      CO(2) => \NLW_frame_count_73_13_addsub_carry__6_CO_UNCONNECTED\(2),
      CO(1) => \frame_count_73_13_addsub_carry__6_n_2\,
      CO(0) => \frame_count_73_13_addsub_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_frame_count_73_13_addsub_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => frame_count_73_13_addsub(31 downto 29),
      S(3) => '1',
      S(2 downto 0) => frame_count_12_25(31 downto 29)
    );
last_frame_flag_17_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAA0A0A2A2A"
    )
        port map (
      I0 => last_frame_flag_17_29,
      I1 => \^co\(0),
      I2 => \^tready_join_68_5\,
      I3 => rel_85_16,
      I4 => \^muxing_run_14_24_reg_0\,
      I5 => last_frame_flag_17_29_reg_1,
      O => last_frame_flag_17_29_i_1_n_0
    );
last_frame_flag_17_29_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => last_frame_flag_17_29_i_1_n_0,
      Q => last_frame_flag_17_29,
      R => register13_q_net
    );
muxing_run_14_24_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^tready_join_68_5\,
      D => muxing_run_join_99_9,
      Q => \^muxing_run_14_24_reg_0\,
      R => register13_q_net
    );
\op_mem_20_24[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^muxing_run_14_24_reg_0\,
      I1 => \^co\(0),
      I2 => \^tready_join_68_5\,
      I3 => register13_q_net,
      O => mcode_tvalid_net
    );
\op_mem_20_24[0][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \op_mem_20_24[0][0]_i_2_n_0\,
      I1 => delayed_ready_0_23_27,
      I2 => delayed_ready_3_23_27,
      I3 => delayed_ready_2_23_27,
      I4 => delayed_ready_1_23_27,
      I5 => register14_q_net,
      O => \^tready_join_68_5\
    );
\op_mem_20_24[0][0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => register13_q_net,
      I1 => \^co\(0),
      I2 => \^muxing_run_14_24_reg_0\,
      I3 => last_frame_flag_17_29_reg_1,
      I4 => \op_mem_20_24[0][0]_i_3_n_0\,
      O => \fd_prim_array[0].rst_comp.fdre_comp\
    );
\op_mem_20_24[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => triggered_10_23,
      I1 => mux2_y_net,
      I2 => inverter_op_net,
      O => \op_mem_20_24[0][0]_i_2_n_0\
    );
\op_mem_20_24[0][0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F5F"
    )
        port map (
      I0 => last_frame_flag_17_29,
      I1 => \^co\(0),
      I2 => \^tready_join_68_5\,
      I3 => rel_85_16,
      O => \op_mem_20_24[0][0]_i_3_n_0\
    );
\op_mem_20_24[0][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \op_mem_20_24_reg[0][31]\(0),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[0]_0\
    );
\op_mem_20_24[0][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \op_mem_20_24_reg[0][31]\(10),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[10]_0\
    );
\op_mem_20_24[0][11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \op_mem_20_24_reg[0][31]\(11),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[11]_0\
    );
\op_mem_20_24[0][12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \op_mem_20_24_reg[0][31]\(12),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[12]_0\
    );
\op_mem_20_24[0][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(13),
      I1 => \op_mem_20_24_reg[0][31]\(13),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[13]_0\
    );
\op_mem_20_24[0][14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \op_mem_20_24_reg[0][31]\(14),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[14]_0\
    );
\op_mem_20_24[0][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(15),
      I1 => \op_mem_20_24_reg[0][31]\(15),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[15]_0\
    );
\op_mem_20_24[0][16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \op_mem_20_24_reg[0][31]\(16),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[16]_0\
    );
\op_mem_20_24[0][17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(17),
      I1 => \op_mem_20_24_reg[0][31]\(17),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[17]_0\
    );
\op_mem_20_24[0][18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \op_mem_20_24_reg[0][31]\(18),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[18]_0\
    );
\op_mem_20_24[0][19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(19),
      I1 => \op_mem_20_24_reg[0][31]\(19),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[19]_0\
    );
\op_mem_20_24[0][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \op_mem_20_24_reg[0][31]\(1),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[1]_0\
    );
\op_mem_20_24[0][20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(20),
      I1 => \op_mem_20_24_reg[0][31]\(20),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[20]_0\
    );
\op_mem_20_24[0][21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \op_mem_20_24_reg[0][31]\(21),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[21]_0\
    );
\op_mem_20_24[0][22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \op_mem_20_24_reg[0][31]\(22),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[22]_0\
    );
\op_mem_20_24[0][23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(23),
      I1 => \op_mem_20_24_reg[0][31]\(23),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[23]_0\
    );
\op_mem_20_24[0][24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(24),
      I1 => \op_mem_20_24_reg[0][31]\(24),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[24]_0\
    );
\op_mem_20_24[0][25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(25),
      I1 => \op_mem_20_24_reg[0][31]\(25),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[25]_0\
    );
\op_mem_20_24[0][26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \op_mem_20_24_reg[0][31]\(26),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[26]_0\
    );
\op_mem_20_24[0][27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \op_mem_20_24_reg[0][31]\(27),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[27]_0\
    );
\op_mem_20_24[0][28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \op_mem_20_24_reg[0][31]\(28),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[28]_0\
    );
\op_mem_20_24[0][29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \op_mem_20_24_reg[0][31]\(29),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[29]_0\
    );
\op_mem_20_24[0][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \op_mem_20_24_reg[0][31]\(2),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[2]_0\
    );
\op_mem_20_24[0][30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \op_mem_20_24_reg[0][31]\(30),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[30]_0\
    );
\op_mem_20_24[0][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBF"
    )
        port map (
      I0 => register13_q_net,
      I1 => \^tready_join_68_5\,
      I2 => \^co\(0),
      I3 => \^muxing_run_14_24_reg_0\,
      O => \fd_prim_array[0].rst_comp.fdre_comp_0\
    );
\op_mem_20_24[0][31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \op_mem_20_24_reg[0][31]\(31),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[31]_0\
    );
\op_mem_20_24[0][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \op_mem_20_24_reg[0][31]\(3),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[3]_0\
    );
\op_mem_20_24[0][4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \op_mem_20_24_reg[0][31]\(4),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[4]_0\
    );
\op_mem_20_24[0][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \op_mem_20_24_reg[0][31]\(5),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[5]_0\
    );
\op_mem_20_24[0][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \op_mem_20_24_reg[0][31]\(6),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[6]_0\
    );
\op_mem_20_24[0][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \op_mem_20_24_reg[0][31]\(7),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[7]_0\
    );
\op_mem_20_24[0][8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \op_mem_20_24_reg[0][31]\(8),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[8]_0\
    );
\op_mem_20_24[0][9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \op_mem_20_24_reg[0][31]\(9),
      I2 => \^o\(4),
      I3 => \^co\(0),
      I4 => \^data_sel_store_16_28\(5),
      I5 => \data_sel_store_16_28_reg[6]_0\,
      O => \data_vec_store_6_15_28_reg[9]_0\
    );
rel_72_12_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rel_72_12_carry_n_0,
      CO(2) => rel_72_12_carry_n_1,
      CO(1) => rel_72_12_carry_n_2,
      CO(0) => rel_72_12_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rel_72_12_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\rel_72_12_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rel_72_12_carry_n_0,
      CO(3 downto 2) => \NLW_rel_72_12_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => \rel_72_12_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rel_72_12_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => last_frame_flag_17_29_reg_0(1 downto 0)
    );
rel_85_16_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rel_85_16_carry_n_0,
      CO(2) => rel_85_16_carry_n_1,
      CO(1) => rel_85_16_carry_n_2,
      CO(0) => rel_85_16_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rel_85_16_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rel_85_16_carry_i_1_n_0,
      S(2) => rel_85_16_carry_i_2_n_0,
      S(1) => rel_85_16_carry_i_3_n_0,
      S(0) => \rel_85_16_carry__0_0\(0)
    );
\rel_85_16_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rel_85_16_carry_n_0,
      CO(3) => \rel_85_16_carry__0_n_0\,
      CO(2) => \rel_85_16_carry__0_n_1\,
      CO(1) => \rel_85_16_carry__0_n_2\,
      CO(0) => \rel_85_16_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rel_85_16_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rel_85_16_carry__0_i_1_n_0\,
      S(2) => \rel_85_16_carry__0_i_2_n_0\,
      S(1) => \rel_85_16_carry__0_i_3_n_0\,
      S(0) => \rel_85_16_carry__0_i_4_n_0\
    );
\rel_85_16_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(22),
      I1 => \rel_85_16_carry__1_0\(19),
      I2 => frame_count_73_13_addsub(21),
      I3 => \rel_85_16_carry__1_0\(18),
      I4 => \rel_85_16_carry__1_0\(20),
      I5 => frame_count_73_13_addsub(23),
      O => \rel_85_16_carry__0_i_1_n_0\
    );
\rel_85_16_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(18),
      I1 => \rel_85_16_carry__1_0\(15),
      I2 => frame_count_73_13_addsub(19),
      I3 => \rel_85_16_carry__1_0\(16),
      I4 => \rel_85_16_carry__1_0\(17),
      I5 => frame_count_73_13_addsub(20),
      O => \rel_85_16_carry__0_i_2_n_0\
    );
\rel_85_16_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(15),
      I1 => \rel_85_16_carry__1_0\(12),
      I2 => frame_count_73_13_addsub(16),
      I3 => \rel_85_16_carry__1_0\(13),
      I4 => \rel_85_16_carry__1_0\(14),
      I5 => frame_count_73_13_addsub(17),
      O => \rel_85_16_carry__0_i_3_n_0\
    );
\rel_85_16_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(12),
      I1 => \rel_85_16_carry__1_0\(9),
      I2 => frame_count_73_13_addsub(13),
      I3 => \rel_85_16_carry__1_0\(10),
      I4 => \rel_85_16_carry__1_0\(11),
      I5 => frame_count_73_13_addsub(14),
      O => \rel_85_16_carry__0_i_4_n_0\
    );
\rel_85_16_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rel_85_16_carry__0_n_0\,
      CO(3) => \NLW_rel_85_16_carry__1_CO_UNCONNECTED\(3),
      CO(2) => rel_85_16,
      CO(1) => \rel_85_16_carry__1_n_2\,
      CO(0) => \rel_85_16_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rel_85_16_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \rel_85_16_carry__1_i_1_n_0\,
      S(1) => \rel_85_16_carry__1_i_2_n_0\,
      S(0) => \rel_85_16_carry__1_i_3_n_0\
    );
\rel_85_16_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => frame_count_73_13_addsub(31),
      I1 => \rel_85_16_carry__1_0\(28),
      I2 => frame_count_73_13_addsub(32),
      I3 => \rel_85_16_carry__1_0\(27),
      I4 => frame_count_73_13_addsub(30),
      O => \rel_85_16_carry__1_i_1_n_0\
    );
\rel_85_16_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(27),
      I1 => \rel_85_16_carry__1_0\(24),
      I2 => frame_count_73_13_addsub(28),
      I3 => \rel_85_16_carry__1_0\(25),
      I4 => \rel_85_16_carry__1_0\(26),
      I5 => frame_count_73_13_addsub(29),
      O => \rel_85_16_carry__1_i_2_n_0\
    );
\rel_85_16_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(25),
      I1 => \rel_85_16_carry__1_0\(22),
      I2 => frame_count_73_13_addsub(24),
      I3 => \rel_85_16_carry__1_0\(21),
      I4 => \rel_85_16_carry__1_0\(23),
      I5 => frame_count_73_13_addsub(26),
      O => \rel_85_16_carry__1_i_3_n_0\
    );
rel_85_16_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(9),
      I1 => \rel_85_16_carry__1_0\(6),
      I2 => frame_count_73_13_addsub(10),
      I3 => \rel_85_16_carry__1_0\(7),
      I4 => \rel_85_16_carry__1_0\(8),
      I5 => frame_count_73_13_addsub(11),
      O => rel_85_16_carry_i_1_n_0
    );
rel_85_16_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(7),
      I1 => \rel_85_16_carry__1_0\(4),
      I2 => frame_count_73_13_addsub(6),
      I3 => \rel_85_16_carry__1_0\(3),
      I4 => \rel_85_16_carry__1_0\(5),
      I5 => frame_count_73_13_addsub(8),
      O => rel_85_16_carry_i_2_n_0
    );
rel_85_16_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_count_73_13_addsub(4),
      I1 => \rel_85_16_carry__1_0\(1),
      I2 => frame_count_73_13_addsub(3),
      I3 => \rel_85_16_carry__1_0\(0),
      I4 => \rel_85_16_carry__1_0\(2),
      I5 => frame_count_73_13_addsub(5),
      O => rel_85_16_carry_i_3_n_0
    );
triggered_10_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8F8F800"
    )
        port map (
      I0 => inverter_op_net,
      I1 => mux2_y_net,
      I2 => triggered_10_23,
      I3 => triggered_10_23_i_2_n_0,
      I4 => last_frame_flag_17_29_reg_1,
      I5 => \op_mem_20_24[0][0]_i_3_n_0\,
      O => triggered_join_68_5
    );
triggered_10_23_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^muxing_run_14_24_reg_0\,
      I1 => \^co\(0),
      O => triggered_10_23_i_2_n_0
    );
triggered_10_23_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => triggered_join_68_5,
      Q => triggered_10_23,
      R => register13_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba is
  port (
    mux2_y_net : out STD_LOGIC;
    internal_ip_12_1_bitnot : out STD_LOGIC;
    unregy_join_6_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba : entity is "sysgen_mux_41889c05ba";
end design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba is
  signal \^mux2_y_net\ : STD_LOGIC;
begin
  mux2_y_net <= \^mux2_y_net\;
\op_mem_22_20[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mux2_y_net\,
      O => internal_ip_12_1_bitnot
    );
\pipe_16_22_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => unregy_join_6_1,
      Q => \^mux2_y_net\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_bvalid : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_rvalid : out STD_LOGIC;
    i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg_array_reg[4][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \slv_reg_array_reg[5][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    trigger_in : out STD_LOGIC;
    trigger_src : out STD_LOGIC;
    usr_rst_in : out STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_awvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_wvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_bready : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_arvalid : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_rready : in STD_LOGIC;
    thrtl_8ch_cfg_aresetn : in STD_LOGIC;
    thrtl_8ch_cfg_cfg_in_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    thrtl_8ch_cfg_cfg_in_s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface : entity is "thrtl_8ch_cfg_cfg_in_axi_lite_interface";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface is
  signal axi_araddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \dec_r__12\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_12_out__2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_12_out__3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg_array[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[3][9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[4][9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[5][9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array_reg[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg_array_reg[1]_1\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg_array_reg[2]_2\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^slv_reg_array_reg[4][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg_array_reg[4]_3\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \^slv_reg_array_reg[5][7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_reg_array_reg[5]_4\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal slv_wire_array : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^thrtl_8ch_cfg_cfg_in_s_axi_bvalid\ : STD_LOGIC;
  signal \^thrtl_8ch_cfg_cfg_in_s_axi_rvalid\ : STD_LOGIC;
  signal \^trigger_in\ : STD_LOGIC;
  signal \^trigger_src\ : STD_LOGIC;
  signal \^usr_rst_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \slv_reg_array[0][0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg_array[0][10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_array[0][11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_array[0][12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_array[0][13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_array[0][14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_array[0][15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_array[0][16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_array[0][17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_array[0][18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_array[0][19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_array[0][20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_array[0][21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_array[0][22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_array[0][23]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_array[0][25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_array[0][26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_array[0][27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_array[0][28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_array[0][29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg_array[0][2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_array[0][30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg_array[0][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg_array[0][3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_array[0][4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_array[0][5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_array[0][6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_array[0][7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_array[0][8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg_array[0][9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg_array[1][0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg_array[2][0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg_array[3][0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg_array[3][10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg_array[3][11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg_array[3][12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg_array[3][13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg_array[3][14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg_array[3][15]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg_array[3][16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg_array[3][17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg_array[3][18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg_array[3][19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg_array[3][20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg_array[3][21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg_array[3][22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg_array[3][23]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg_array[3][24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg_array[3][25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg_array[3][26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg_array[3][27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg_array[3][28]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg_array[3][29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg_array[3][2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \slv_reg_array[3][30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg_array[3][31]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg_array[3][3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \slv_reg_array[3][4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg_array[3][5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg_array[3][6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg_array[3][7]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg_array[3][8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg_array[3][9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg_array[4][0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg_array[4][10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \slv_reg_array[4][11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \slv_reg_array[4][12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \slv_reg_array[4][13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \slv_reg_array[4][14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \slv_reg_array[4][15]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \slv_reg_array[4][16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \slv_reg_array[4][17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \slv_reg_array[4][18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \slv_reg_array[4][19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \slv_reg_array[4][20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \slv_reg_array[4][21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \slv_reg_array[4][22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \slv_reg_array[4][23]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \slv_reg_array[4][24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \slv_reg_array[4][25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \slv_reg_array[4][26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \slv_reg_array[4][27]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \slv_reg_array[4][28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \slv_reg_array[4][29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \slv_reg_array[4][2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \slv_reg_array[4][30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \slv_reg_array[4][31]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \slv_reg_array[4][3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \slv_reg_array[4][4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \slv_reg_array[4][5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \slv_reg_array[4][6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \slv_reg_array[4][7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \slv_reg_array[4][8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \slv_reg_array[4][9]_i_1\ : label is "soft_lutpair43";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  i(31 downto 0) <= \^i\(31 downto 0);
  \slv_reg_array_reg[4][15]_0\(15 downto 0) <= \^slv_reg_array_reg[4][15]_0\(15 downto 0);
  \slv_reg_array_reg[5][7]_0\(7 downto 0) <= \^slv_reg_array_reg[5][7]_0\(7 downto 0);
  thrtl_8ch_cfg_cfg_in_s_axi_bvalid <= \^thrtl_8ch_cfg_cfg_in_s_axi_bvalid\;
  thrtl_8ch_cfg_cfg_in_s_axi_rvalid <= \^thrtl_8ch_cfg_cfg_in_s_axi_rvalid\;
  trigger_in <= \^trigger_in\;
  trigger_src <= \^trigger_src\;
  usr_rst_in <= \^usr_rst_in\;
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_arready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_araddr(0),
      Q => axi_araddr(0),
      R => p_0_in
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_arready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_araddr(1),
      Q => axi_araddr(1),
      R => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_arready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_araddr(2),
      Q => axi_araddr(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_arready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_araddr(3),
      Q => axi_araddr(3),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_arready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_araddr(4),
      Q => axi_araddr(4),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_awready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(0),
      Q => axi_awaddr(0),
      R => p_0_in
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_awready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(1),
      Q => axi_awaddr(1),
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_awready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(2),
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_awready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(3),
      Q => axi_awaddr(3),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => axi_awready0,
      D => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(4),
      Q => axi_awaddr(4),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => thrtl_8ch_cfg_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => thrtl_8ch_cfg_cfg_in_s_axi_bready,
      I5 => \^thrtl_8ch_cfg_cfg_in_s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^thrtl_8ch_cfg_cfg_in_s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(0),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(0),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[0]_i_2_n_0\,
      O => slv_wire_array(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(0),
      I1 => \^trigger_in\,
      I2 => \dec_r__12\(1),
      I3 => \^trigger_src\,
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \^usr_rst_in\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(10),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(10),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[10]_i_2_n_0\,
      O => slv_wire_array(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(10),
      I1 => \slv_reg_array_reg[2]_2\(10),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(10),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(11),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(11),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[11]_i_2_n_0\,
      O => slv_wire_array(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(11),
      I1 => \slv_reg_array_reg[2]_2\(11),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(11),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(12),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(12),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[12]_i_2_n_0\,
      O => slv_wire_array(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(12),
      I1 => \slv_reg_array_reg[2]_2\(12),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(12),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(13),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(13),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[13]_i_2_n_0\,
      O => slv_wire_array(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(13),
      I1 => \slv_reg_array_reg[2]_2\(13),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(13),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(14),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(14),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[14]_i_2_n_0\,
      O => slv_wire_array(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(14),
      I1 => \slv_reg_array_reg[2]_2\(14),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(14),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(15),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(15),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[15]_i_2_n_0\,
      O => slv_wire_array(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(15),
      I1 => \slv_reg_array_reg[2]_2\(15),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(15),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(16),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(16),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[16]_i_2_n_0\,
      O => slv_wire_array(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(16),
      I1 => \slv_reg_array_reg[2]_2\(16),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(16),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(17),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(17),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[17]_i_2_n_0\,
      O => slv_wire_array(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(17),
      I1 => \slv_reg_array_reg[2]_2\(17),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(17),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(18),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(18),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[18]_i_2_n_0\,
      O => slv_wire_array(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(18),
      I1 => \slv_reg_array_reg[2]_2\(18),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(18),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(19),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(19),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[19]_i_2_n_0\,
      O => slv_wire_array(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(19),
      I1 => \slv_reg_array_reg[2]_2\(19),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(19),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(1),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(1),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[1]_i_2_n_0\,
      O => slv_wire_array(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(1),
      I1 => \slv_reg_array_reg[2]_2\(1),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(1),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(20),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(20),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[20]_i_2_n_0\,
      O => slv_wire_array(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(20),
      I1 => \slv_reg_array_reg[2]_2\(20),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(20),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(21),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(21),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[21]_i_2_n_0\,
      O => slv_wire_array(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(21),
      I1 => \slv_reg_array_reg[2]_2\(21),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(21),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(22),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(22),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[22]_i_2_n_0\,
      O => slv_wire_array(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(22),
      I1 => \slv_reg_array_reg[2]_2\(22),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(22),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(23),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(23),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[23]_i_2_n_0\,
      O => slv_wire_array(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(23),
      I1 => \slv_reg_array_reg[2]_2\(23),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(23),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(24),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(24),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[24]_i_2_n_0\,
      O => slv_wire_array(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(24),
      I1 => \slv_reg_array_reg[2]_2\(24),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(24),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(25),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(25),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[25]_i_2_n_0\,
      O => slv_wire_array(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(25),
      I1 => \slv_reg_array_reg[2]_2\(25),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(25),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(26),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(26),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[26]_i_2_n_0\,
      O => slv_wire_array(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(26),
      I1 => \slv_reg_array_reg[2]_2\(26),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(26),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(27),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(27),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[27]_i_2_n_0\,
      O => slv_wire_array(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(27),
      I1 => \slv_reg_array_reg[2]_2\(27),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(27),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(28),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(28),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[28]_i_2_n_0\,
      O => slv_wire_array(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(28),
      I1 => \slv_reg_array_reg[2]_2\(28),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(28),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(29),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(29),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[29]_i_2_n_0\,
      O => slv_wire_array(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(29),
      I1 => \slv_reg_array_reg[2]_2\(29),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(29),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(2),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(2),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[2]_i_2_n_0\,
      O => slv_wire_array(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(2),
      I1 => \slv_reg_array_reg[2]_2\(2),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(2),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(30),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(30),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[30]_i_2_n_0\,
      O => slv_wire_array(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(30),
      I1 => \slv_reg_array_reg[2]_2\(30),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(30),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(31),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \slv_reg_array_reg[4]_3\(31),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[31]_i_4_n_0\,
      O => slv_wire_array(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000026"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100000"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => axi_araddr(1),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      O => \dec_r__12\(2)
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(31),
      I1 => \slv_reg_array_reg[2]_2\(31),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(31),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      O => \dec_r__12\(1)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(3),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(3),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[3]_i_2_n_0\,
      O => slv_wire_array(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(3),
      I1 => \slv_reg_array_reg[2]_2\(3),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(3),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(4),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(4),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[4]_i_2_n_0\,
      O => slv_wire_array(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(4),
      I1 => \slv_reg_array_reg[2]_2\(4),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(4),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(5),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(5),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[5]_i_2_n_0\,
      O => slv_wire_array(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(5),
      I1 => \slv_reg_array_reg[2]_2\(5),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(5),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(6),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(6),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[6]_i_2_n_0\,
      O => slv_wire_array(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(6),
      I1 => \slv_reg_array_reg[2]_2\(6),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(6),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^slv_reg_array_reg[5][7]_0\(7),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(7),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[7]_i_2_n_0\,
      O => slv_wire_array(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(7),
      I1 => \slv_reg_array_reg[2]_2\(7),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(7),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(8),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(8),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[8]_i_2_n_0\,
      O => slv_wire_array(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(8),
      I1 => \slv_reg_array_reg[2]_2\(8),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(8),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg_array_reg[5]_4\(9),
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^slv_reg_array_reg[4][15]_0\(9),
      I3 => \dec_r__12\(2),
      I4 => \axi_rdata[9]_i_2_n_0\,
      O => slv_wire_array(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^i\(9),
      I1 => \slv_reg_array_reg[2]_2\(9),
      I2 => \dec_r__12\(1),
      I3 => \slv_reg_array_reg[1]_1\(9),
      I4 => \axi_rdata[31]_i_2_n_0\,
      I5 => \slv_reg_array_reg[0]_0\(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(0),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(10),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(11),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(12),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(13),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(14),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(15),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(16),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(17),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(18),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(19),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(1),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(20),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(21),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(22),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(23),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(24),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(25),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(26),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(27),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(28),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(29),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(2),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(30),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(31),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(3),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(4),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(5),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(6),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(7),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(8),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => slv_wire_array(9),
      Q => thrtl_8ch_cfg_cfg_in_s_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_rready,
      I3 => \^thrtl_8ch_cfg_cfg_in_s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^thrtl_8ch_cfg_cfg_in_s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => p_0_in
    );
\slv_reg_array[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000080000000"
    )
        port map (
      I0 => p_12_out(0),
      I1 => \slv_reg_array[0][31]_i_3_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^usr_rst_in\,
      O => \slv_reg_array[0][0]_i_1_n_0\
    );
\slv_reg_array[0][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => thrtl_8ch_cfg_aresetn,
      O => p_12_out(0)
    );
\slv_reg_array[0][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][10]_i_1_n_0\
    );
\slv_reg_array[0][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][11]_i_1_n_0\
    );
\slv_reg_array[0][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][12]_i_1_n_0\
    );
\slv_reg_array[0][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][13]_i_1_n_0\
    );
\slv_reg_array[0][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][14]_i_1_n_0\
    );
\slv_reg_array[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[0][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][15]_i_1_n_0\
    );
\slv_reg_array[0][15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][15]_i_2_n_0\
    );
\slv_reg_array[0][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][16]_i_1_n_0\
    );
\slv_reg_array[0][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][17]_i_1_n_0\
    );
\slv_reg_array[0][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][18]_i_1_n_0\
    );
\slv_reg_array[0][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][19]_i_1_n_0\
    );
\slv_reg_array[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][1]_i_1_n_0\
    );
\slv_reg_array[0][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][20]_i_1_n_0\
    );
\slv_reg_array[0][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][21]_i_1_n_0\
    );
\slv_reg_array[0][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][22]_i_1_n_0\
    );
\slv_reg_array[0][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[0][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][23]_i_1_n_0\
    );
\slv_reg_array[0][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][23]_i_2_n_0\
    );
\slv_reg_array[0][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][24]_i_1_n_0\
    );
\slv_reg_array[0][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][25]_i_1_n_0\
    );
\slv_reg_array[0][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][26]_i_1_n_0\
    );
\slv_reg_array[0][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][27]_i_1_n_0\
    );
\slv_reg_array[0][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][28]_i_1_n_0\
    );
\slv_reg_array[0][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][29]_i_1_n_0\
    );
\slv_reg_array[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][2]_i_1_n_0\
    );
\slv_reg_array[0][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][30]_i_1_n_0\
    );
\slv_reg_array[0][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[0][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][31]_i_1_n_0\
    );
\slv_reg_array[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][31]_i_2_n_0\
    );
\slv_reg_array[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFC2FFFFFFFF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(0),
      I5 => thrtl_8ch_cfg_aresetn,
      O => \slv_reg_array[0][31]_i_3_n_0\
    );
\slv_reg_array[0][31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      I3 => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg_array[0][31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFFEEE"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_awaddr(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      O => \slv_reg_array[0][31]_i_5_n_0\
    );
\slv_reg_array[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][3]_i_1_n_0\
    );
\slv_reg_array[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][4]_i_1_n_0\
    );
\slv_reg_array[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][5]_i_1_n_0\
    );
\slv_reg_array[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][6]_i_1_n_0\
    );
\slv_reg_array[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[0][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][7]_i_1_n_0\
    );
\slv_reg_array[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][7]_i_2_n_0\
    );
\slv_reg_array[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][8]_i_1_n_0\
    );
\slv_reg_array[0][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      I1 => \slv_reg_array[0][31]_i_5_n_0\,
      O => \slv_reg_array[0][9]_i_1_n_0\
    );
\slv_reg_array[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000080000000"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => \slv_reg_array[1][0]_i_2_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^trigger_src\,
      O => \slv_reg_array[1][0]_i_1_n_0\
    );
\slv_reg_array[1][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_awaddr(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      O => \slv_reg_array[1][0]_i_2_n_0\
    );
\slv_reg_array[1][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[1][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[1][15]_i_1_n_0\
    );
\slv_reg_array[1][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[1][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[1][23]_i_1_n_0\
    );
\slv_reg_array[1][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[1][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[1][31]_i_1_n_0\
    );
\slv_reg_array[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[1][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[1][7]_i_1_n_0\
    );
\slv_reg_array[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000080000000"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => \slv_reg_array[2][0]_i_2_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^trigger_in\,
      O => \slv_reg_array[2][0]_i_1_n_0\
    );
\slv_reg_array[2][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => axi_awaddr(0),
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(3),
      I4 => axi_awaddr(2),
      O => \slv_reg_array[2][0]_i_2_n_0\
    );
\slv_reg_array[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[2][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[2][15]_i_1_n_0\
    );
\slv_reg_array[2][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[2][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[2][23]_i_1_n_0\
    );
\slv_reg_array[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[2][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[2][31]_i_1_n_0\
    );
\slv_reg_array[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[2][0]_i_2_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[2][7]_i_1_n_0\
    );
\slv_reg_array[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000080000000"
    )
        port map (
      I0 => \p_12_out__2\(0),
      I1 => \slv_reg_array[3][31]_i_3_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^i\(0),
      O => \slv_reg_array[3][0]_i_1_n_0\
    );
\slv_reg_array[3][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => thrtl_8ch_cfg_aresetn,
      O => \p_12_out__2\(0)
    );
\slv_reg_array[3][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][10]_i_1_n_0\
    );
\slv_reg_array[3][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][11]_i_1_n_0\
    );
\slv_reg_array[3][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][12]_i_1_n_0\
    );
\slv_reg_array[3][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][13]_i_1_n_0\
    );
\slv_reg_array[3][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][14]_i_1_n_0\
    );
\slv_reg_array[3][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[3][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[3][15]_i_1_n_0\
    );
\slv_reg_array[3][15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][15]_i_2_n_0\
    );
\slv_reg_array[3][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][16]_i_1_n_0\
    );
\slv_reg_array[3][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][17]_i_1_n_0\
    );
\slv_reg_array[3][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][18]_i_1_n_0\
    );
\slv_reg_array[3][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][19]_i_1_n_0\
    );
\slv_reg_array[3][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][1]_i_1_n_0\
    );
\slv_reg_array[3][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][20]_i_1_n_0\
    );
\slv_reg_array[3][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][21]_i_1_n_0\
    );
\slv_reg_array[3][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][22]_i_1_n_0\
    );
\slv_reg_array[3][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[3][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[3][23]_i_1_n_0\
    );
\slv_reg_array[3][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][23]_i_2_n_0\
    );
\slv_reg_array[3][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][24]_i_1_n_0\
    );
\slv_reg_array[3][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][25]_i_1_n_0\
    );
\slv_reg_array[3][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][26]_i_1_n_0\
    );
\slv_reg_array[3][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][27]_i_1_n_0\
    );
\slv_reg_array[3][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][28]_i_1_n_0\
    );
\slv_reg_array[3][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][29]_i_1_n_0\
    );
\slv_reg_array[3][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][2]_i_1_n_0\
    );
\slv_reg_array[3][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][30]_i_1_n_0\
    );
\slv_reg_array[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[3][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[3][31]_i_1_n_0\
    );
\slv_reg_array[3][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][31]_i_2_n_0\
    );
\slv_reg_array[3][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000004FFFFFFFF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(0),
      I5 => thrtl_8ch_cfg_aresetn,
      O => \slv_reg_array[3][31]_i_3_n_0\
    );
\slv_reg_array[3][31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => axi_awaddr(4),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(3),
      O => \slv_reg_array[3][31]_i_4_n_0\
    );
\slv_reg_array[3][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][3]_i_1_n_0\
    );
\slv_reg_array[3][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][4]_i_1_n_0\
    );
\slv_reg_array[3][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][5]_i_1_n_0\
    );
\slv_reg_array[3][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][6]_i_1_n_0\
    );
\slv_reg_array[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[3][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[3][7]_i_1_n_0\
    );
\slv_reg_array[3][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][7]_i_2_n_0\
    );
\slv_reg_array[3][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][8]_i_1_n_0\
    );
\slv_reg_array[3][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      I1 => \slv_reg_array[3][31]_i_4_n_0\,
      O => \slv_reg_array[3][9]_i_1_n_0\
    );
\slv_reg_array[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000080000000"
    )
        port map (
      I0 => \p_12_out__3\(0),
      I1 => \slv_reg_array[4][31]_i_3_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^slv_reg_array_reg[4][15]_0\(0),
      O => \slv_reg_array[4][0]_i_1_n_0\
    );
\slv_reg_array[4][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => thrtl_8ch_cfg_aresetn,
      O => \p_12_out__3\(0)
    );
\slv_reg_array[4][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][10]_i_1_n_0\
    );
\slv_reg_array[4][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][11]_i_1_n_0\
    );
\slv_reg_array[4][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][12]_i_1_n_0\
    );
\slv_reg_array[4][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][13]_i_1_n_0\
    );
\slv_reg_array[4][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][14]_i_1_n_0\
    );
\slv_reg_array[4][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[4][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[4][15]_i_1_n_0\
    );
\slv_reg_array[4][15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][15]_i_2_n_0\
    );
\slv_reg_array[4][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][16]_i_1_n_0\
    );
\slv_reg_array[4][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][17]_i_1_n_0\
    );
\slv_reg_array[4][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][18]_i_1_n_0\
    );
\slv_reg_array[4][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][19]_i_1_n_0\
    );
\slv_reg_array[4][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][1]_i_1_n_0\
    );
\slv_reg_array[4][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][20]_i_1_n_0\
    );
\slv_reg_array[4][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][21]_i_1_n_0\
    );
\slv_reg_array[4][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][22]_i_1_n_0\
    );
\slv_reg_array[4][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[4][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[4][23]_i_1_n_0\
    );
\slv_reg_array[4][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][23]_i_2_n_0\
    );
\slv_reg_array[4][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][24]_i_1_n_0\
    );
\slv_reg_array[4][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][25]_i_1_n_0\
    );
\slv_reg_array[4][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][26]_i_1_n_0\
    );
\slv_reg_array[4][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][27]_i_1_n_0\
    );
\slv_reg_array[4][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][28]_i_1_n_0\
    );
\slv_reg_array[4][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][29]_i_1_n_0\
    );
\slv_reg_array[4][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][2]_i_1_n_0\
    );
\slv_reg_array[4][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][30]_i_1_n_0\
    );
\slv_reg_array[4][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[4][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[4][31]_i_1_n_0\
    );
\slv_reg_array[4][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][31]_i_2_n_0\
    );
\slv_reg_array[4][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(0),
      I5 => thrtl_8ch_cfg_aresetn,
      O => \slv_reg_array[4][31]_i_3_n_0\
    );
\slv_reg_array[4][31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => axi_awaddr(4),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(3),
      O => \slv_reg_array[4][31]_i_4_n_0\
    );
\slv_reg_array[4][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][3]_i_1_n_0\
    );
\slv_reg_array[4][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][4]_i_1_n_0\
    );
\slv_reg_array[4][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][5]_i_1_n_0\
    );
\slv_reg_array[4][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][6]_i_1_n_0\
    );
\slv_reg_array[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[4][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[4][7]_i_1_n_0\
    );
\slv_reg_array[4][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][7]_i_2_n_0\
    );
\slv_reg_array[4][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][8]_i_1_n_0\
    );
\slv_reg_array[4][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      I1 => \slv_reg_array[4][31]_i_4_n_0\,
      O => \slv_reg_array[4][9]_i_1_n_0\
    );
\slv_reg_array[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF8000FFFF"
    )
        port map (
      I0 => \slv_reg_array[5][0]_i_2_n_0\,
      I1 => \slv_reg_array[5][31]_i_3_n_0\,
      I2 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      I4 => thrtl_8ch_cfg_aresetn,
      I5 => \^slv_reg_array_reg[5][7]_0\(0),
      O => \slv_reg_array[5][0]_i_1_n_0\
    );
\slv_reg_array[5][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(0),
      I1 => axi_awaddr(0),
      I2 => axi_awaddr(1),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(2),
      O => \slv_reg_array[5][0]_i_2_n_0\
    );
\slv_reg_array[5][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      O => \slv_reg_array[5][10]_i_1_n_0\
    );
\slv_reg_array[5][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      O => \slv_reg_array[5][11]_i_1_n_0\
    );
\slv_reg_array[5][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      O => \slv_reg_array[5][12]_i_1_n_0\
    );
\slv_reg_array[5][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      O => \slv_reg_array[5][13]_i_1_n_0\
    );
\slv_reg_array[5][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      O => \slv_reg_array[5][14]_i_1_n_0\
    );
\slv_reg_array[5][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[5][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(1),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[5][15]_i_1_n_0\
    );
\slv_reg_array[5][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      O => \slv_reg_array[5][15]_i_2_n_0\
    );
\slv_reg_array[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      O => \slv_reg_array[5][16]_i_1_n_0\
    );
\slv_reg_array[5][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      O => \slv_reg_array[5][17]_i_1_n_0\
    );
\slv_reg_array[5][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      O => \slv_reg_array[5][18]_i_1_n_0\
    );
\slv_reg_array[5][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      O => \slv_reg_array[5][19]_i_1_n_0\
    );
\slv_reg_array[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \slv_reg_array[5][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      I4 => \slv_reg_array[5][1]_i_2_n_0\,
      I5 => \^slv_reg_array_reg[5][7]_0\(1),
      O => \slv_reg_array[5][1]_i_1_n_0\
    );
\slv_reg_array[5][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      I1 => axi_awaddr(0),
      I2 => axi_awaddr(1),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(2),
      O => \slv_reg_array[5][1]_i_2_n_0\
    );
\slv_reg_array[5][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      O => \slv_reg_array[5][20]_i_1_n_0\
    );
\slv_reg_array[5][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      O => \slv_reg_array[5][21]_i_1_n_0\
    );
\slv_reg_array[5][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      O => \slv_reg_array[5][22]_i_1_n_0\
    );
\slv_reg_array[5][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[5][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(2),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[5][23]_i_1_n_0\
    );
\slv_reg_array[5][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      O => \slv_reg_array[5][23]_i_2_n_0\
    );
\slv_reg_array[5][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      O => \slv_reg_array[5][24]_i_1_n_0\
    );
\slv_reg_array[5][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      O => \slv_reg_array[5][25]_i_1_n_0\
    );
\slv_reg_array[5][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      O => \slv_reg_array[5][26]_i_1_n_0\
    );
\slv_reg_array[5][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      O => \slv_reg_array[5][27]_i_1_n_0\
    );
\slv_reg_array[5][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      O => \slv_reg_array[5][28]_i_1_n_0\
    );
\slv_reg_array[5][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      O => \slv_reg_array[5][29]_i_1_n_0\
    );
\slv_reg_array[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      O => \slv_reg_array[5][2]_i_1_n_0\
    );
\slv_reg_array[5][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      O => \slv_reg_array[5][30]_i_1_n_0\
    );
\slv_reg_array[5][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[5][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[5][31]_i_1_n_0\
    );
\slv_reg_array[5][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      O => \slv_reg_array[5][31]_i_2_n_0\
    );
\slv_reg_array[5][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(1),
      I4 => axi_awaddr(0),
      I5 => thrtl_8ch_cfg_aresetn,
      O => \slv_reg_array[5][31]_i_3_n_0\
    );
\slv_reg_array[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      O => \slv_reg_array[5][3]_i_1_n_0\
    );
\slv_reg_array[5][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      O => \slv_reg_array[5][4]_i_1_n_0\
    );
\slv_reg_array[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      O => \slv_reg_array[5][5]_i_1_n_0\
    );
\slv_reg_array[5][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      O => \slv_reg_array[5][6]_i_1_n_0\
    );
\slv_reg_array[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_array[5][31]_i_3_n_0\,
      I1 => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(0),
      I2 => thrtl_8ch_cfg_aresetn,
      I3 => \slv_reg_wren__0\,
      O => \slv_reg_array[5][7]_i_1_n_0\
    );
\slv_reg_array[5][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      O => \slv_reg_array[5][7]_i_2_n_0\
    );
\slv_reg_array[5][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      O => \slv_reg_array[5][8]_i_1_n_0\
    );
\slv_reg_array[5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(0),
      I4 => axi_awaddr(1),
      I5 => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      O => \slv_reg_array[5][9]_i_1_n_0\
    );
\slv_reg_array_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[0][0]_i_1_n_0\,
      Q => \^usr_rst_in\,
      R => '0'
    );
\slv_reg_array_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][10]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(10),
      R => '0'
    );
\slv_reg_array_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][11]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(11),
      R => '0'
    );
\slv_reg_array_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][12]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(12),
      R => '0'
    );
\slv_reg_array_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][13]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(13),
      R => '0'
    );
\slv_reg_array_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][14]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(14),
      R => '0'
    );
\slv_reg_array_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][15]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]_0\(15),
      R => '0'
    );
\slv_reg_array_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][16]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(16),
      R => '0'
    );
\slv_reg_array_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][17]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(17),
      R => '0'
    );
\slv_reg_array_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][18]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(18),
      R => '0'
    );
\slv_reg_array_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][19]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(19),
      R => '0'
    );
\slv_reg_array_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][1]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(1),
      R => '0'
    );
\slv_reg_array_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][20]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(20),
      R => '0'
    );
\slv_reg_array_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][21]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(21),
      R => '0'
    );
\slv_reg_array_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][22]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(22),
      R => '0'
    );
\slv_reg_array_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][23]_i_1_n_0\,
      D => \slv_reg_array[0][23]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]_0\(23),
      R => '0'
    );
\slv_reg_array_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][24]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(24),
      R => '0'
    );
\slv_reg_array_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][25]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(25),
      R => '0'
    );
\slv_reg_array_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][26]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(26),
      R => '0'
    );
\slv_reg_array_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][27]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(27),
      R => '0'
    );
\slv_reg_array_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][28]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(28),
      R => '0'
    );
\slv_reg_array_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][29]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(29),
      R => '0'
    );
\slv_reg_array_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][2]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(2),
      R => '0'
    );
\slv_reg_array_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][30]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(30),
      R => '0'
    );
\slv_reg_array_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][31]_i_1_n_0\,
      D => \slv_reg_array[0][31]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]_0\(31),
      R => '0'
    );
\slv_reg_array_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][3]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(3),
      R => '0'
    );
\slv_reg_array_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][4]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(4),
      R => '0'
    );
\slv_reg_array_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][5]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(5),
      R => '0'
    );
\slv_reg_array_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][6]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(6),
      R => '0'
    );
\slv_reg_array_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][7]_i_1_n_0\,
      D => \slv_reg_array[0][7]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]_0\(7),
      R => '0'
    );
\slv_reg_array_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][8]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(8),
      R => '0'
    );
\slv_reg_array_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[0][15]_i_1_n_0\,
      D => \slv_reg_array[0][9]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]_0\(9),
      R => '0'
    );
\slv_reg_array_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[1][0]_i_1_n_0\,
      Q => \^trigger_src\,
      R => '0'
    );
\slv_reg_array_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      Q => \slv_reg_array_reg[1]_1\(10),
      R => '0'
    );
\slv_reg_array_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      Q => \slv_reg_array_reg[1]_1\(11),
      R => '0'
    );
\slv_reg_array_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      Q => \slv_reg_array_reg[1]_1\(12),
      R => '0'
    );
\slv_reg_array_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      Q => \slv_reg_array_reg[1]_1\(13),
      R => '0'
    );
\slv_reg_array_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      Q => \slv_reg_array_reg[1]_1\(14),
      R => '0'
    );
\slv_reg_array_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      Q => \slv_reg_array_reg[1]_1\(15),
      R => '0'
    );
\slv_reg_array_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      Q => \slv_reg_array_reg[1]_1\(16),
      R => '0'
    );
\slv_reg_array_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      Q => \slv_reg_array_reg[1]_1\(17),
      R => '0'
    );
\slv_reg_array_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      Q => \slv_reg_array_reg[1]_1\(18),
      R => '0'
    );
\slv_reg_array_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      Q => \slv_reg_array_reg[1]_1\(19),
      R => '0'
    );
\slv_reg_array_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      Q => \slv_reg_array_reg[1]_1\(1),
      R => '0'
    );
\slv_reg_array_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      Q => \slv_reg_array_reg[1]_1\(20),
      R => '0'
    );
\slv_reg_array_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      Q => \slv_reg_array_reg[1]_1\(21),
      R => '0'
    );
\slv_reg_array_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      Q => \slv_reg_array_reg[1]_1\(22),
      R => '0'
    );
\slv_reg_array_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      Q => \slv_reg_array_reg[1]_1\(23),
      R => '0'
    );
\slv_reg_array_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      Q => \slv_reg_array_reg[1]_1\(24),
      R => '0'
    );
\slv_reg_array_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      Q => \slv_reg_array_reg[1]_1\(25),
      R => '0'
    );
\slv_reg_array_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      Q => \slv_reg_array_reg[1]_1\(26),
      R => '0'
    );
\slv_reg_array_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      Q => \slv_reg_array_reg[1]_1\(27),
      R => '0'
    );
\slv_reg_array_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      Q => \slv_reg_array_reg[1]_1\(28),
      R => '0'
    );
\slv_reg_array_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      Q => \slv_reg_array_reg[1]_1\(29),
      R => '0'
    );
\slv_reg_array_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      Q => \slv_reg_array_reg[1]_1\(2),
      R => '0'
    );
\slv_reg_array_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      Q => \slv_reg_array_reg[1]_1\(30),
      R => '0'
    );
\slv_reg_array_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      Q => \slv_reg_array_reg[1]_1\(31),
      R => '0'
    );
\slv_reg_array_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      Q => \slv_reg_array_reg[1]_1\(3),
      R => '0'
    );
\slv_reg_array_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      Q => \slv_reg_array_reg[1]_1\(4),
      R => '0'
    );
\slv_reg_array_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      Q => \slv_reg_array_reg[1]_1\(5),
      R => '0'
    );
\slv_reg_array_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      Q => \slv_reg_array_reg[1]_1\(6),
      R => '0'
    );
\slv_reg_array_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      Q => \slv_reg_array_reg[1]_1\(7),
      R => '0'
    );
\slv_reg_array_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      Q => \slv_reg_array_reg[1]_1\(8),
      R => '0'
    );
\slv_reg_array_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[1][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      Q => \slv_reg_array_reg[1]_1\(9),
      R => '0'
    );
\slv_reg_array_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[2][0]_i_1_n_0\,
      Q => \^trigger_in\,
      R => '0'
    );
\slv_reg_array_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(10),
      Q => \slv_reg_array_reg[2]_2\(10),
      R => '0'
    );
\slv_reg_array_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(11),
      Q => \slv_reg_array_reg[2]_2\(11),
      R => '0'
    );
\slv_reg_array_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(12),
      Q => \slv_reg_array_reg[2]_2\(12),
      R => '0'
    );
\slv_reg_array_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(13),
      Q => \slv_reg_array_reg[2]_2\(13),
      R => '0'
    );
\slv_reg_array_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(14),
      Q => \slv_reg_array_reg[2]_2\(14),
      R => '0'
    );
\slv_reg_array_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(15),
      Q => \slv_reg_array_reg[2]_2\(15),
      R => '0'
    );
\slv_reg_array_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(16),
      Q => \slv_reg_array_reg[2]_2\(16),
      R => '0'
    );
\slv_reg_array_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(17),
      Q => \slv_reg_array_reg[2]_2\(17),
      R => '0'
    );
\slv_reg_array_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(18),
      Q => \slv_reg_array_reg[2]_2\(18),
      R => '0'
    );
\slv_reg_array_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(19),
      Q => \slv_reg_array_reg[2]_2\(19),
      R => '0'
    );
\slv_reg_array_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(1),
      Q => \slv_reg_array_reg[2]_2\(1),
      R => '0'
    );
\slv_reg_array_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(20),
      Q => \slv_reg_array_reg[2]_2\(20),
      R => '0'
    );
\slv_reg_array_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(21),
      Q => \slv_reg_array_reg[2]_2\(21),
      R => '0'
    );
\slv_reg_array_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(22),
      Q => \slv_reg_array_reg[2]_2\(22),
      R => '0'
    );
\slv_reg_array_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][23]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(23),
      Q => \slv_reg_array_reg[2]_2\(23),
      R => '0'
    );
\slv_reg_array_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(24),
      Q => \slv_reg_array_reg[2]_2\(24),
      R => '0'
    );
\slv_reg_array_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(25),
      Q => \slv_reg_array_reg[2]_2\(25),
      R => '0'
    );
\slv_reg_array_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(26),
      Q => \slv_reg_array_reg[2]_2\(26),
      R => '0'
    );
\slv_reg_array_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(27),
      Q => \slv_reg_array_reg[2]_2\(27),
      R => '0'
    );
\slv_reg_array_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(28),
      Q => \slv_reg_array_reg[2]_2\(28),
      R => '0'
    );
\slv_reg_array_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(29),
      Q => \slv_reg_array_reg[2]_2\(29),
      R => '0'
    );
\slv_reg_array_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(2),
      Q => \slv_reg_array_reg[2]_2\(2),
      R => '0'
    );
\slv_reg_array_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(30),
      Q => \slv_reg_array_reg[2]_2\(30),
      R => '0'
    );
\slv_reg_array_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][31]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31),
      Q => \slv_reg_array_reg[2]_2\(31),
      R => '0'
    );
\slv_reg_array_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(3),
      Q => \slv_reg_array_reg[2]_2\(3),
      R => '0'
    );
\slv_reg_array_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(4),
      Q => \slv_reg_array_reg[2]_2\(4),
      R => '0'
    );
\slv_reg_array_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(5),
      Q => \slv_reg_array_reg[2]_2\(5),
      R => '0'
    );
\slv_reg_array_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(6),
      Q => \slv_reg_array_reg[2]_2\(6),
      R => '0'
    );
\slv_reg_array_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][7]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(7),
      Q => \slv_reg_array_reg[2]_2\(7),
      R => '0'
    );
\slv_reg_array_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(8),
      Q => \slv_reg_array_reg[2]_2\(8),
      R => '0'
    );
\slv_reg_array_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[2][15]_i_1_n_0\,
      D => thrtl_8ch_cfg_cfg_in_s_axi_wdata(9),
      Q => \slv_reg_array_reg[2]_2\(9),
      R => '0'
    );
\slv_reg_array_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[3][0]_i_1_n_0\,
      Q => \^i\(0),
      R => '0'
    );
\slv_reg_array_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][10]_i_1_n_0\,
      Q => \^i\(10),
      R => '0'
    );
\slv_reg_array_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][11]_i_1_n_0\,
      Q => \^i\(11),
      R => '0'
    );
\slv_reg_array_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][12]_i_1_n_0\,
      Q => \^i\(12),
      R => '0'
    );
\slv_reg_array_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][13]_i_1_n_0\,
      Q => \^i\(13),
      R => '0'
    );
\slv_reg_array_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][14]_i_1_n_0\,
      Q => \^i\(14),
      R => '0'
    );
\slv_reg_array_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][15]_i_2_n_0\,
      Q => \^i\(15),
      R => '0'
    );
\slv_reg_array_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][16]_i_1_n_0\,
      Q => \^i\(16),
      R => '0'
    );
\slv_reg_array_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][17]_i_1_n_0\,
      Q => \^i\(17),
      R => '0'
    );
\slv_reg_array_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][18]_i_1_n_0\,
      Q => \^i\(18),
      R => '0'
    );
\slv_reg_array_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][19]_i_1_n_0\,
      Q => \^i\(19),
      R => '0'
    );
\slv_reg_array_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][1]_i_1_n_0\,
      Q => \^i\(1),
      R => '0'
    );
\slv_reg_array_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][20]_i_1_n_0\,
      Q => \^i\(20),
      R => '0'
    );
\slv_reg_array_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][21]_i_1_n_0\,
      Q => \^i\(21),
      R => '0'
    );
\slv_reg_array_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][22]_i_1_n_0\,
      Q => \^i\(22),
      R => '0'
    );
\slv_reg_array_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][23]_i_1_n_0\,
      D => \slv_reg_array[3][23]_i_2_n_0\,
      Q => \^i\(23),
      R => '0'
    );
\slv_reg_array_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][24]_i_1_n_0\,
      Q => \^i\(24),
      R => '0'
    );
\slv_reg_array_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][25]_i_1_n_0\,
      Q => \^i\(25),
      R => '0'
    );
\slv_reg_array_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][26]_i_1_n_0\,
      Q => \^i\(26),
      R => '0'
    );
\slv_reg_array_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][27]_i_1_n_0\,
      Q => \^i\(27),
      R => '0'
    );
\slv_reg_array_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][28]_i_1_n_0\,
      Q => \^i\(28),
      R => '0'
    );
\slv_reg_array_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][29]_i_1_n_0\,
      Q => \^i\(29),
      R => '0'
    );
\slv_reg_array_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][2]_i_1_n_0\,
      Q => \^i\(2),
      R => '0'
    );
\slv_reg_array_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][30]_i_1_n_0\,
      Q => \^i\(30),
      R => '0'
    );
\slv_reg_array_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][31]_i_1_n_0\,
      D => \slv_reg_array[3][31]_i_2_n_0\,
      Q => \^i\(31),
      R => '0'
    );
\slv_reg_array_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][3]_i_1_n_0\,
      Q => \^i\(3),
      R => '0'
    );
\slv_reg_array_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][4]_i_1_n_0\,
      Q => \^i\(4),
      R => '0'
    );
\slv_reg_array_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][5]_i_1_n_0\,
      Q => \^i\(5),
      R => '0'
    );
\slv_reg_array_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][6]_i_1_n_0\,
      Q => \^i\(6),
      R => '0'
    );
\slv_reg_array_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][7]_i_1_n_0\,
      D => \slv_reg_array[3][7]_i_2_n_0\,
      Q => \^i\(7),
      R => '0'
    );
\slv_reg_array_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][8]_i_1_n_0\,
      Q => \^i\(8),
      R => '0'
    );
\slv_reg_array_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[3][15]_i_1_n_0\,
      D => \slv_reg_array[3][9]_i_1_n_0\,
      Q => \^i\(9),
      R => '0'
    );
\slv_reg_array_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[4][0]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(0),
      R => '0'
    );
\slv_reg_array_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][10]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(10),
      R => '0'
    );
\slv_reg_array_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][11]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(11),
      R => '0'
    );
\slv_reg_array_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][12]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(12),
      R => '0'
    );
\slv_reg_array_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][13]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(13),
      R => '0'
    );
\slv_reg_array_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][14]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(14),
      R => '0'
    );
\slv_reg_array_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][15]_i_2_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(15),
      R => '0'
    );
\slv_reg_array_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][16]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(16),
      R => '0'
    );
\slv_reg_array_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][17]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(17),
      R => '0'
    );
\slv_reg_array_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][18]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(18),
      R => '0'
    );
\slv_reg_array_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][19]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(19),
      R => '0'
    );
\slv_reg_array_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][1]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(1),
      R => '0'
    );
\slv_reg_array_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][20]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(20),
      R => '0'
    );
\slv_reg_array_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][21]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(21),
      R => '0'
    );
\slv_reg_array_reg[4][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][22]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(22),
      R => '0'
    );
\slv_reg_array_reg[4][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][23]_i_1_n_0\,
      D => \slv_reg_array[4][23]_i_2_n_0\,
      Q => \slv_reg_array_reg[4]_3\(23),
      R => '0'
    );
\slv_reg_array_reg[4][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][24]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(24),
      R => '0'
    );
\slv_reg_array_reg[4][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][25]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(25),
      R => '0'
    );
\slv_reg_array_reg[4][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][26]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(26),
      R => '0'
    );
\slv_reg_array_reg[4][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][27]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(27),
      R => '0'
    );
\slv_reg_array_reg[4][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][28]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(28),
      R => '0'
    );
\slv_reg_array_reg[4][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][29]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(29),
      R => '0'
    );
\slv_reg_array_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][2]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(2),
      R => '0'
    );
\slv_reg_array_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][30]_i_1_n_0\,
      Q => \slv_reg_array_reg[4]_3\(30),
      R => '0'
    );
\slv_reg_array_reg[4][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][31]_i_1_n_0\,
      D => \slv_reg_array[4][31]_i_2_n_0\,
      Q => \slv_reg_array_reg[4]_3\(31),
      R => '0'
    );
\slv_reg_array_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][3]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(3),
      R => '0'
    );
\slv_reg_array_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][4]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(4),
      R => '0'
    );
\slv_reg_array_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][5]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(5),
      R => '0'
    );
\slv_reg_array_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][6]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(6),
      R => '0'
    );
\slv_reg_array_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][7]_i_1_n_0\,
      D => \slv_reg_array[4][7]_i_2_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(7),
      R => '0'
    );
\slv_reg_array_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][8]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(8),
      R => '0'
    );
\slv_reg_array_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[4][15]_i_1_n_0\,
      D => \slv_reg_array[4][9]_i_1_n_0\,
      Q => \^slv_reg_array_reg[4][15]_0\(9),
      R => '0'
    );
\slv_reg_array_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[5][0]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(0),
      R => '0'
    );
\slv_reg_array_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][10]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(10),
      R => '0'
    );
\slv_reg_array_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][11]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(11),
      R => '0'
    );
\slv_reg_array_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][12]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(12),
      R => '0'
    );
\slv_reg_array_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][13]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(13),
      R => '0'
    );
\slv_reg_array_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][14]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(14),
      R => '0'
    );
\slv_reg_array_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][15]_i_2_n_0\,
      Q => \slv_reg_array_reg[5]_4\(15),
      R => '0'
    );
\slv_reg_array_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][16]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(16),
      R => '0'
    );
\slv_reg_array_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][17]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(17),
      R => '0'
    );
\slv_reg_array_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][18]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(18),
      R => '0'
    );
\slv_reg_array_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][19]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(19),
      R => '0'
    );
\slv_reg_array_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[5][1]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(1),
      R => '0'
    );
\slv_reg_array_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][20]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(20),
      R => '0'
    );
\slv_reg_array_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][21]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(21),
      R => '0'
    );
\slv_reg_array_reg[5][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][22]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(22),
      R => '0'
    );
\slv_reg_array_reg[5][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][23]_i_1_n_0\,
      D => \slv_reg_array[5][23]_i_2_n_0\,
      Q => \slv_reg_array_reg[5]_4\(23),
      R => '0'
    );
\slv_reg_array_reg[5][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][24]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(24),
      R => '0'
    );
\slv_reg_array_reg[5][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][25]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(25),
      R => '0'
    );
\slv_reg_array_reg[5][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][26]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(26),
      R => '0'
    );
\slv_reg_array_reg[5][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][27]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(27),
      R => '0'
    );
\slv_reg_array_reg[5][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][28]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(28),
      R => '0'
    );
\slv_reg_array_reg[5][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][29]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(29),
      R => '0'
    );
\slv_reg_array_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][2]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(2),
      R => '0'
    );
\slv_reg_array_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][30]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(30),
      R => '0'
    );
\slv_reg_array_reg[5][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][31]_i_1_n_0\,
      D => \slv_reg_array[5][31]_i_2_n_0\,
      Q => \slv_reg_array_reg[5]_4\(31),
      R => '0'
    );
\slv_reg_array_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][3]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(3),
      R => '0'
    );
\slv_reg_array_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][4]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(4),
      R => '0'
    );
\slv_reg_array_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][5]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(5),
      R => '0'
    );
\slv_reg_array_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][6]_i_1_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(6),
      R => '0'
    );
\slv_reg_array_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][7]_i_1_n_0\,
      D => \slv_reg_array[5][7]_i_2_n_0\,
      Q => \^slv_reg_array_reg[5][7]_0\(7),
      R => '0'
    );
\slv_reg_array_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][8]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(8),
      R => '0'
    );
\slv_reg_array_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slv_reg_array[5][15]_i_1_n_0\,
      D => \slv_reg_array[5][9]_i_1_n_0\,
      Q => \slv_reg_array_reg[5]_4\(9),
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
      I1 => \^thrtl_8ch_cfg_cfg_in_s_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init is
  port (
    unregy_join_6_1 : out STD_LOGIC;
    trigger_in_hw : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    trigger_src : in STD_LOGIC;
    register12_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init : entity is "synth_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.design_0_thrtl_8ch_cfg_0_0_single_reg_w_init
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in_hw(0) => trigger_in_hw(0),
      trigger_src => trigger_src,
      unregy_join_6_1 => unregy_join_6_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25 is
  port (
    register14_q_net : out STD_LOGIC;
    m_axis_dma_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25 : entity is "synth_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25 is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26
     port map (
      clk => clk,
      m_axis_dma_tready(0) => m_axis_dma_tready(0),
      register14_q_net => register14_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27 is
  port (
    register13_q_net : out STD_LOGIC;
    usr_rst_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27 : entity is "synth_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27 is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28
     port map (
      clk => clk,
      register13_q_net => register13_q_net,
      usr_rst_in => usr_rst_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29 is
  port (
    register12_q_net : out STD_LOGIC;
    trigger_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29 : entity is "synth_reg_w_init";
end design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29 is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in => trigger_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_1_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0\
     port map (
      CO(0) => CO(0),
      D(31 downto 0) => D(31 downto 0),
      clk => clk,
      data_in_b(31 downto 0) => data_in_b(31 downto 0),
      \data_vec_store_1_15_28_reg[31]\(31 downto 0) => \data_vec_store_1_15_28_reg[31]\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13\ is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14\
     port map (
      clk => clk,
      data_in_a(31 downto 0) => data_in_a(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_7_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_h : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_h(31 downto 0) => data_in_h(31 downto 0),
      \data_vec_store_7_15_28_reg[31]\(31 downto 0) => \data_vec_store_7_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_4_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_e(31 downto 0) => data_in_e(31 downto 0),
      \data_vec_store_4_15_28_reg[31]\(31 downto 0) => \data_vec_store_4_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20\
     port map (
      CO(0) => CO(0),
      Q(31 downto 0) => Q(31 downto 0),
      clk => clk,
      data_in_g(31 downto 0) => data_in_g(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_5_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_f : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_f(31 downto 0) => data_in_f(31 downto 0),
      \data_vec_store_5_15_28_reg[31]\(31 downto 0) => \data_vec_store_5_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_3_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_d(31 downto 0) => data_in_d(31 downto 0),
      \data_vec_store_3_15_28_reg[31]\(31 downto 0) => \data_vec_store_3_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31\ is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^o\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    rel_85_16_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32\
     port map (
      O(1 downto 0) => O(1 downto 0),
      clk => clk,
      \fd_prim_array[0].rst_comp.fdre_comp_0\(0) => \fd_prim_array[0].rst_comp.fdre_comp\(0),
      i(31 downto 0) => i(31 downto 0),
      \^o\(28 downto 0) => \^o\(28 downto 0),
      rel_85_16_carry(0) => rel_85_16_carry(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33\ is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_2_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_c(31 downto 0) => data_in_c(31 downto 0),
      \data_vec_store_2_15_28_reg[31]\(31 downto 0) => \data_vec_store_2_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp_0\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1\ is
  port (
    \fd_prim_array[15].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \decim_count_11_25_reg[0]\ : out STD_LOGIC;
    decim_count_11_25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    o : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fd_prim_array[15].rst_comp.fdre_comp_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1\
     port map (
      CO(0) => CO(0),
      S(3 downto 0) => S(3 downto 0),
      clk => clk,
      decim_count_11_25(15 downto 0) => decim_count_11_25(15 downto 0),
      \decim_count_11_25_reg[0]\ => \decim_count_11_25_reg[0]\,
      \fd_prim_array[0].rst_comp.fdre_comp_0\ => \fd_prim_array[0].rst_comp.fdre_comp\,
      \fd_prim_array[15].rst_comp.fdre_comp_0\(1 downto 0) => \fd_prim_array[15].rst_comp.fdre_comp\(1 downto 0),
      \fd_prim_array[15].rst_comp.fdre_comp_1\(15 downto 0) => \fd_prim_array[15].rst_comp.fdre_comp_0\(15 downto 0),
      o(0) => o(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3\ is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[3].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[4].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[8].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[9].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[10].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[11].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[12].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[13].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[14].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[15].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[16].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[17].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[18].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[19].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[20].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[21].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[22].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[23].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[24].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[25].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[26].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[27].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[28].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[29].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[30].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \fd_prim_array[7].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    muxing_run_join_99_9 : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]\ : out STD_LOGIC;
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]_0\ : out STD_LOGIC;
    \op_mem_20_24_reg[0][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][0]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][1]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][2]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][3]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][4]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][5]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][6]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][7]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][8]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][9]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][10]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][11]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][12]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][13]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][14]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][15]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][16]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][17]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][18]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][19]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][20]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][21]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][22]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][23]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][24]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][25]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][26]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][27]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][28]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][29]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][30]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_0\ : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \op_mem_20_24_reg[0][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    register13_q_net : in STD_LOGIC;
    \data_sel_store_16_28_reg[7]\ : in STD_LOGIC;
    data_sel_store_16_28 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    muxing_run_14_24_reg : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_4\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_5\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_6\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_7\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_sel_store_16_28_reg[4]\ : in STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3\ : entity is "synth_reg_w_init";
end \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3\ is
begin
\has_latency.fd_array[1].reg_comp_1\: entity work.\design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_sel_store_16_28(6 downto 0) => data_sel_store_16_28(6 downto 0),
      \data_sel_store_16_28_reg[1]\ => \data_sel_store_16_28_reg[1]\,
      \data_sel_store_16_28_reg[1]_0\ => \data_sel_store_16_28_reg[1]_0\,
      \data_sel_store_16_28_reg[4]\ => \data_sel_store_16_28_reg[4]\,
      \data_sel_store_16_28_reg[7]\ => \data_sel_store_16_28_reg[7]\,
      \fd_prim_array[0].rst_comp.fdre_comp_0\ => \fd_prim_array[0].rst_comp.fdre_comp\,
      \fd_prim_array[0].rst_comp.fdre_comp_1\ => \fd_prim_array[0].rst_comp.fdre_comp_0\,
      \fd_prim_array[10].rst_comp.fdre_comp\ => \fd_prim_array[10].rst_comp.fdre_comp\,
      \fd_prim_array[11].rst_comp.fdre_comp\ => \fd_prim_array[11].rst_comp.fdre_comp\,
      \fd_prim_array[12].rst_comp.fdre_comp\ => \fd_prim_array[12].rst_comp.fdre_comp\,
      \fd_prim_array[13].rst_comp.fdre_comp\ => \fd_prim_array[13].rst_comp.fdre_comp\,
      \fd_prim_array[14].rst_comp.fdre_comp\ => \fd_prim_array[14].rst_comp.fdre_comp\,
      \fd_prim_array[15].rst_comp.fdre_comp\ => \fd_prim_array[15].rst_comp.fdre_comp\,
      \fd_prim_array[16].rst_comp.fdre_comp\ => \fd_prim_array[16].rst_comp.fdre_comp\,
      \fd_prim_array[17].rst_comp.fdre_comp\ => \fd_prim_array[17].rst_comp.fdre_comp\,
      \fd_prim_array[18].rst_comp.fdre_comp\ => \fd_prim_array[18].rst_comp.fdre_comp\,
      \fd_prim_array[19].rst_comp.fdre_comp\ => \fd_prim_array[19].rst_comp.fdre_comp\,
      \fd_prim_array[1].rst_comp.fdre_comp_0\ => \fd_prim_array[1].rst_comp.fdre_comp\,
      \fd_prim_array[1].rst_comp.fdre_comp_1\ => \fd_prim_array[1].rst_comp.fdre_comp_0\,
      \fd_prim_array[20].rst_comp.fdre_comp\ => \fd_prim_array[20].rst_comp.fdre_comp\,
      \fd_prim_array[21].rst_comp.fdre_comp\ => \fd_prim_array[21].rst_comp.fdre_comp\,
      \fd_prim_array[22].rst_comp.fdre_comp\ => \fd_prim_array[22].rst_comp.fdre_comp\,
      \fd_prim_array[23].rst_comp.fdre_comp\ => \fd_prim_array[23].rst_comp.fdre_comp\,
      \fd_prim_array[24].rst_comp.fdre_comp\ => \fd_prim_array[24].rst_comp.fdre_comp\,
      \fd_prim_array[25].rst_comp.fdre_comp\ => \fd_prim_array[25].rst_comp.fdre_comp\,
      \fd_prim_array[26].rst_comp.fdre_comp\ => \fd_prim_array[26].rst_comp.fdre_comp\,
      \fd_prim_array[27].rst_comp.fdre_comp\ => \fd_prim_array[27].rst_comp.fdre_comp\,
      \fd_prim_array[28].rst_comp.fdre_comp\ => \fd_prim_array[28].rst_comp.fdre_comp\,
      \fd_prim_array[29].rst_comp.fdre_comp\ => \fd_prim_array[29].rst_comp.fdre_comp\,
      \fd_prim_array[2].rst_comp.fdre_comp_0\ => \fd_prim_array[2].rst_comp.fdre_comp\,
      \fd_prim_array[2].rst_comp.fdre_comp_1\ => \fd_prim_array[2].rst_comp.fdre_comp_0\,
      \fd_prim_array[30].rst_comp.fdre_comp\ => \fd_prim_array[30].rst_comp.fdre_comp\,
      \fd_prim_array[31].rst_comp.fdre_comp\ => \fd_prim_array[31].rst_comp.fdre_comp\,
      \fd_prim_array[3].rst_comp.fdre_comp_0\ => \fd_prim_array[3].rst_comp.fdre_comp\,
      \fd_prim_array[4].rst_comp.fdre_comp_0\ => \fd_prim_array[4].rst_comp.fdre_comp\,
      \fd_prim_array[5].rst_comp.fdre_comp_0\ => \fd_prim_array[5].rst_comp.fdre_comp\,
      \fd_prim_array[5].rst_comp.fdre_comp_1\ => \fd_prim_array[5].rst_comp.fdre_comp_0\,
      \fd_prim_array[6].rst_comp.fdre_comp_0\ => \fd_prim_array[6].rst_comp.fdre_comp\,
      \fd_prim_array[6].rst_comp.fdre_comp_1\(4 downto 0) => \fd_prim_array[6].rst_comp.fdre_comp_0\(4 downto 0),
      \fd_prim_array[7].rst_comp.fdre_comp_0\ => \fd_prim_array[7].rst_comp.fdre_comp\,
      \fd_prim_array[7].rst_comp.fdre_comp_1\ => \fd_prim_array[7].rst_comp.fdre_comp_0\,
      \fd_prim_array[7].rst_comp.fdre_comp_2\(7 downto 0) => \fd_prim_array[7].rst_comp.fdre_comp_1\(7 downto 0),
      \fd_prim_array[8].rst_comp.fdre_comp\ => \fd_prim_array[8].rst_comp.fdre_comp\,
      \fd_prim_array[9].rst_comp.fdre_comp\ => \fd_prim_array[9].rst_comp.fdre_comp\,
      muxing_run_14_24_reg => muxing_run_14_24_reg,
      muxing_run_join_99_9 => muxing_run_join_99_9,
      o(31 downto 0) => o(31 downto 0),
      \op_mem_20_24_reg[0][0]\ => \op_mem_20_24_reg[0][0]\,
      \op_mem_20_24_reg[0][10]\ => \op_mem_20_24_reg[0][10]\,
      \op_mem_20_24_reg[0][11]\ => \op_mem_20_24_reg[0][11]\,
      \op_mem_20_24_reg[0][12]\ => \op_mem_20_24_reg[0][12]\,
      \op_mem_20_24_reg[0][13]\ => \op_mem_20_24_reg[0][13]\,
      \op_mem_20_24_reg[0][14]\ => \op_mem_20_24_reg[0][14]\,
      \op_mem_20_24_reg[0][15]\ => \op_mem_20_24_reg[0][15]\,
      \op_mem_20_24_reg[0][16]\ => \op_mem_20_24_reg[0][16]\,
      \op_mem_20_24_reg[0][17]\ => \op_mem_20_24_reg[0][17]\,
      \op_mem_20_24_reg[0][18]\ => \op_mem_20_24_reg[0][18]\,
      \op_mem_20_24_reg[0][19]\ => \op_mem_20_24_reg[0][19]\,
      \op_mem_20_24_reg[0][1]\ => \op_mem_20_24_reg[0][1]\,
      \op_mem_20_24_reg[0][20]\ => \op_mem_20_24_reg[0][20]\,
      \op_mem_20_24_reg[0][21]\ => \op_mem_20_24_reg[0][21]\,
      \op_mem_20_24_reg[0][22]\ => \op_mem_20_24_reg[0][22]\,
      \op_mem_20_24_reg[0][23]\ => \op_mem_20_24_reg[0][23]\,
      \op_mem_20_24_reg[0][24]\ => \op_mem_20_24_reg[0][24]\,
      \op_mem_20_24_reg[0][25]\ => \op_mem_20_24_reg[0][25]\,
      \op_mem_20_24_reg[0][26]\ => \op_mem_20_24_reg[0][26]\,
      \op_mem_20_24_reg[0][27]\ => \op_mem_20_24_reg[0][27]\,
      \op_mem_20_24_reg[0][28]\ => \op_mem_20_24_reg[0][28]\,
      \op_mem_20_24_reg[0][29]\ => \op_mem_20_24_reg[0][29]\,
      \op_mem_20_24_reg[0][2]\ => \op_mem_20_24_reg[0][2]\,
      \op_mem_20_24_reg[0][30]\ => \op_mem_20_24_reg[0][30]\,
      \op_mem_20_24_reg[0][31]\(31 downto 0) => \op_mem_20_24_reg[0][31]\(31 downto 0),
      \op_mem_20_24_reg[0][31]_0\ => \op_mem_20_24_reg[0][31]_0\,
      \op_mem_20_24_reg[0][31]_1\(31 downto 0) => \op_mem_20_24_reg[0][31]_1\(31 downto 0),
      \op_mem_20_24_reg[0][31]_2\(31 downto 0) => \op_mem_20_24_reg[0][31]_2\(31 downto 0),
      \op_mem_20_24_reg[0][31]_3\(31 downto 0) => \op_mem_20_24_reg[0][31]_3\(31 downto 0),
      \op_mem_20_24_reg[0][31]_4\(31 downto 0) => \op_mem_20_24_reg[0][31]_4\(31 downto 0),
      \op_mem_20_24_reg[0][31]_5\(31 downto 0) => \op_mem_20_24_reg[0][31]_5\(31 downto 0),
      \op_mem_20_24_reg[0][31]_6\(31 downto 0) => \op_mem_20_24_reg[0][31]_6\(31 downto 0),
      \op_mem_20_24_reg[0][31]_7\(31 downto 0) => \op_mem_20_24_reg[0][31]_7\(31 downto 0),
      \op_mem_20_24_reg[0][3]\ => \op_mem_20_24_reg[0][3]\,
      \op_mem_20_24_reg[0][4]\ => \op_mem_20_24_reg[0][4]\,
      \op_mem_20_24_reg[0][5]\ => \op_mem_20_24_reg[0][5]\,
      \op_mem_20_24_reg[0][6]\ => \op_mem_20_24_reg[0][6]\,
      \op_mem_20_24_reg[0][7]\ => \op_mem_20_24_reg[0][7]\,
      \op_mem_20_24_reg[0][8]\ => \op_mem_20_24_reg[0][8]\,
      \op_mem_20_24_reg[0][9]\ => \op_mem_20_24_reg[0][9]\,
      register13_q_net => register13_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_2_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_c(31 downto 0) => data_in_c(31 downto 0),
      \data_vec_store_2_15_28_reg[31]\(31 downto 0) => \data_vec_store_2_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10 is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_7_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_h : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_h(31 downto 0) => data_in_h(31 downto 0),
      \data_vec_store_7_15_28_reg[31]\(31 downto 0) => \data_vec_store_7_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11 is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13\
     port map (
      clk => clk,
      data_in_a(31 downto 0) => data_in_a(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_1_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0\
     port map (
      CO(0) => CO(0),
      D(31 downto 0) => D(31 downto 0),
      clk => clk,
      data_in_b(31 downto 0) => data_in_b(31 downto 0),
      \data_vec_store_1_15_28_reg[31]\(31 downto 0) => \data_vec_store_1_15_28_reg[31]\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2 is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^o\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    rel_85_16_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31\
     port map (
      O(1 downto 0) => O(1 downto 0),
      clk => clk,
      \fd_prim_array[0].rst_comp.fdre_comp\(0) => \fd_prim_array[0].rst_comp.fdre_comp\(0),
      i(31 downto 0) => i(31 downto 0),
      \^o\(28 downto 0) => \^o\(28 downto 0),
      rel_85_16_carry(0) => rel_85_16_carry(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6 is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_3_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_d(31 downto 0) => data_in_d(31 downto 0),
      \data_vec_store_3_15_28_reg[31]\(31 downto 0) => \data_vec_store_3_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7 is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_5_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_f : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_f(31 downto 0) => data_in_f(31 downto 0),
      \data_vec_store_5_15_28_reg[31]\(31 downto 0) => \data_vec_store_5_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8 is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19\
     port map (
      CO(0) => CO(0),
      Q(31 downto 0) => Q(31 downto 0),
      clk => clk,
      data_in_g(31 downto 0) => data_in_g(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0),
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9 is
  port (
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_vec_store_4_15_28_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9 : entity is "thrtl_8ch_cfg_xlregister";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9 is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_in_e(31 downto 0) => data_in_e(31 downto 0),
      \data_vec_store_4_15_28_reg[31]\(31 downto 0) => \data_vec_store_4_15_28_reg[31]\(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0\ is
  port (
    \fd_prim_array[15].rst_comp.fdre_comp\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \decim_count_11_25_reg[0]\ : out STD_LOGIC;
    decim_count_11_25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    o : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fd_prim_array[15].rst_comp.fdre_comp_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0\ is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1\
     port map (
      CO(0) => CO(0),
      S(3 downto 0) => S(3 downto 0),
      clk => clk,
      decim_count_11_25(15 downto 0) => decim_count_11_25(15 downto 0),
      \decim_count_11_25_reg[0]\ => \decim_count_11_25_reg[0]\,
      \fd_prim_array[0].rst_comp.fdre_comp\ => \fd_prim_array[0].rst_comp.fdre_comp\,
      \fd_prim_array[15].rst_comp.fdre_comp\(1 downto 0) => \fd_prim_array[15].rst_comp.fdre_comp\(1 downto 0),
      \fd_prim_array[15].rst_comp.fdre_comp_0\(15 downto 0) => \fd_prim_array[15].rst_comp.fdre_comp_0\(15 downto 0),
      o(0) => o(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1\ is
  port (
    register12_q_net : out STD_LOGIC;
    trigger_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1\ is
begin
synth_reg_inst: entity work.design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in => trigger_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3\ is
  port (
    register13_q_net : out STD_LOGIC;
    usr_rst_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3\ is
begin
synth_reg_inst: entity work.design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27
     port map (
      clk => clk,
      register13_q_net => register13_q_net,
      usr_rst_in => usr_rst_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4\ is
  port (
    register14_q_net : out STD_LOGIC;
    m_axis_dma_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4\ is
begin
synth_reg_inst: entity work.design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25
     port map (
      clk => clk,
      m_axis_dma_tready(0) => m_axis_dma_tready(0),
      register14_q_net => register14_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5\ is
  port (
    unregy_join_6_1 : out STD_LOGIC;
    trigger_in_hw : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    trigger_src : in STD_LOGIC;
    register12_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5\ is
begin
synth_reg_inst: entity work.design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in_hw(0) => trigger_in_hw(0),
      trigger_src => trigger_src,
      unregy_join_6_1 => unregy_join_6_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2\ is
  port (
    \fd_prim_array[0].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[3].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[4].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[8].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[9].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[10].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[11].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[12].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[13].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[14].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[15].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[16].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[17].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[18].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[19].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[20].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[21].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[22].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[23].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[24].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[25].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[26].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[27].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[28].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[29].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[30].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[31].rst_comp.fdre_comp\ : out STD_LOGIC;
    \fd_prim_array[6].rst_comp.fdre_comp_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \fd_prim_array[7].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    muxing_run_join_99_9 : out STD_LOGIC;
    \fd_prim_array[1].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[5].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \fd_prim_array[2].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]\ : out STD_LOGIC;
    \fd_prim_array[0].rst_comp.fdre_comp_0\ : out STD_LOGIC;
    \data_sel_store_16_28_reg[1]_0\ : out STD_LOGIC;
    \op_mem_20_24_reg[0][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][0]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][1]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][2]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][3]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][4]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][5]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][6]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][7]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][8]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][9]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][10]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][11]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][12]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][13]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][14]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][15]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][16]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][17]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][18]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][19]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][20]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][21]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][22]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][23]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][24]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][25]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][26]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][27]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][28]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][29]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][30]\ : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_0\ : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \op_mem_20_24_reg[0][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    register13_q_net : in STD_LOGIC;
    \data_sel_store_16_28_reg[7]\ : in STD_LOGIC;
    data_sel_store_16_28 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    muxing_run_14_24_reg : in STD_LOGIC;
    \op_mem_20_24_reg[0][31]_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_4\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_5\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_6\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \op_mem_20_24_reg[0][31]_7\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_sel_store_16_28_reg[4]\ : in STD_LOGIC;
    \fd_prim_array[7].rst_comp.fdre_comp_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2\ : entity is "thrtl_8ch_cfg_xlregister";
end \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2\;

architecture STRUCTURE of \design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2\ is
begin
synth_reg_inst: entity work.\design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3\
     port map (
      CO(0) => CO(0),
      clk => clk,
      data_sel_store_16_28(6 downto 0) => data_sel_store_16_28(6 downto 0),
      \data_sel_store_16_28_reg[1]\ => \data_sel_store_16_28_reg[1]\,
      \data_sel_store_16_28_reg[1]_0\ => \data_sel_store_16_28_reg[1]_0\,
      \data_sel_store_16_28_reg[4]\ => \data_sel_store_16_28_reg[4]\,
      \data_sel_store_16_28_reg[7]\ => \data_sel_store_16_28_reg[7]\,
      \fd_prim_array[0].rst_comp.fdre_comp\ => \fd_prim_array[0].rst_comp.fdre_comp\,
      \fd_prim_array[0].rst_comp.fdre_comp_0\ => \fd_prim_array[0].rst_comp.fdre_comp_0\,
      \fd_prim_array[10].rst_comp.fdre_comp\ => \fd_prim_array[10].rst_comp.fdre_comp\,
      \fd_prim_array[11].rst_comp.fdre_comp\ => \fd_prim_array[11].rst_comp.fdre_comp\,
      \fd_prim_array[12].rst_comp.fdre_comp\ => \fd_prim_array[12].rst_comp.fdre_comp\,
      \fd_prim_array[13].rst_comp.fdre_comp\ => \fd_prim_array[13].rst_comp.fdre_comp\,
      \fd_prim_array[14].rst_comp.fdre_comp\ => \fd_prim_array[14].rst_comp.fdre_comp\,
      \fd_prim_array[15].rst_comp.fdre_comp\ => \fd_prim_array[15].rst_comp.fdre_comp\,
      \fd_prim_array[16].rst_comp.fdre_comp\ => \fd_prim_array[16].rst_comp.fdre_comp\,
      \fd_prim_array[17].rst_comp.fdre_comp\ => \fd_prim_array[17].rst_comp.fdre_comp\,
      \fd_prim_array[18].rst_comp.fdre_comp\ => \fd_prim_array[18].rst_comp.fdre_comp\,
      \fd_prim_array[19].rst_comp.fdre_comp\ => \fd_prim_array[19].rst_comp.fdre_comp\,
      \fd_prim_array[1].rst_comp.fdre_comp\ => \fd_prim_array[1].rst_comp.fdre_comp\,
      \fd_prim_array[1].rst_comp.fdre_comp_0\ => \fd_prim_array[1].rst_comp.fdre_comp_0\,
      \fd_prim_array[20].rst_comp.fdre_comp\ => \fd_prim_array[20].rst_comp.fdre_comp\,
      \fd_prim_array[21].rst_comp.fdre_comp\ => \fd_prim_array[21].rst_comp.fdre_comp\,
      \fd_prim_array[22].rst_comp.fdre_comp\ => \fd_prim_array[22].rst_comp.fdre_comp\,
      \fd_prim_array[23].rst_comp.fdre_comp\ => \fd_prim_array[23].rst_comp.fdre_comp\,
      \fd_prim_array[24].rst_comp.fdre_comp\ => \fd_prim_array[24].rst_comp.fdre_comp\,
      \fd_prim_array[25].rst_comp.fdre_comp\ => \fd_prim_array[25].rst_comp.fdre_comp\,
      \fd_prim_array[26].rst_comp.fdre_comp\ => \fd_prim_array[26].rst_comp.fdre_comp\,
      \fd_prim_array[27].rst_comp.fdre_comp\ => \fd_prim_array[27].rst_comp.fdre_comp\,
      \fd_prim_array[28].rst_comp.fdre_comp\ => \fd_prim_array[28].rst_comp.fdre_comp\,
      \fd_prim_array[29].rst_comp.fdre_comp\ => \fd_prim_array[29].rst_comp.fdre_comp\,
      \fd_prim_array[2].rst_comp.fdre_comp\ => \fd_prim_array[2].rst_comp.fdre_comp\,
      \fd_prim_array[2].rst_comp.fdre_comp_0\ => \fd_prim_array[2].rst_comp.fdre_comp_0\,
      \fd_prim_array[30].rst_comp.fdre_comp\ => \fd_prim_array[30].rst_comp.fdre_comp\,
      \fd_prim_array[31].rst_comp.fdre_comp\ => \fd_prim_array[31].rst_comp.fdre_comp\,
      \fd_prim_array[3].rst_comp.fdre_comp\ => \fd_prim_array[3].rst_comp.fdre_comp\,
      \fd_prim_array[4].rst_comp.fdre_comp\ => \fd_prim_array[4].rst_comp.fdre_comp\,
      \fd_prim_array[5].rst_comp.fdre_comp\ => \fd_prim_array[5].rst_comp.fdre_comp\,
      \fd_prim_array[5].rst_comp.fdre_comp_0\ => \fd_prim_array[5].rst_comp.fdre_comp_0\,
      \fd_prim_array[6].rst_comp.fdre_comp\ => \fd_prim_array[6].rst_comp.fdre_comp\,
      \fd_prim_array[6].rst_comp.fdre_comp_0\(4 downto 0) => \fd_prim_array[6].rst_comp.fdre_comp_0\(4 downto 0),
      \fd_prim_array[7].rst_comp.fdre_comp\ => \fd_prim_array[7].rst_comp.fdre_comp\,
      \fd_prim_array[7].rst_comp.fdre_comp_0\ => \fd_prim_array[7].rst_comp.fdre_comp_0\,
      \fd_prim_array[7].rst_comp.fdre_comp_1\(7 downto 0) => \fd_prim_array[7].rst_comp.fdre_comp_1\(7 downto 0),
      \fd_prim_array[8].rst_comp.fdre_comp\ => \fd_prim_array[8].rst_comp.fdre_comp\,
      \fd_prim_array[9].rst_comp.fdre_comp\ => \fd_prim_array[9].rst_comp.fdre_comp\,
      muxing_run_14_24_reg => muxing_run_14_24_reg,
      muxing_run_join_99_9 => muxing_run_join_99_9,
      o(31 downto 0) => o(31 downto 0),
      \op_mem_20_24_reg[0][0]\ => \op_mem_20_24_reg[0][0]\,
      \op_mem_20_24_reg[0][10]\ => \op_mem_20_24_reg[0][10]\,
      \op_mem_20_24_reg[0][11]\ => \op_mem_20_24_reg[0][11]\,
      \op_mem_20_24_reg[0][12]\ => \op_mem_20_24_reg[0][12]\,
      \op_mem_20_24_reg[0][13]\ => \op_mem_20_24_reg[0][13]\,
      \op_mem_20_24_reg[0][14]\ => \op_mem_20_24_reg[0][14]\,
      \op_mem_20_24_reg[0][15]\ => \op_mem_20_24_reg[0][15]\,
      \op_mem_20_24_reg[0][16]\ => \op_mem_20_24_reg[0][16]\,
      \op_mem_20_24_reg[0][17]\ => \op_mem_20_24_reg[0][17]\,
      \op_mem_20_24_reg[0][18]\ => \op_mem_20_24_reg[0][18]\,
      \op_mem_20_24_reg[0][19]\ => \op_mem_20_24_reg[0][19]\,
      \op_mem_20_24_reg[0][1]\ => \op_mem_20_24_reg[0][1]\,
      \op_mem_20_24_reg[0][20]\ => \op_mem_20_24_reg[0][20]\,
      \op_mem_20_24_reg[0][21]\ => \op_mem_20_24_reg[0][21]\,
      \op_mem_20_24_reg[0][22]\ => \op_mem_20_24_reg[0][22]\,
      \op_mem_20_24_reg[0][23]\ => \op_mem_20_24_reg[0][23]\,
      \op_mem_20_24_reg[0][24]\ => \op_mem_20_24_reg[0][24]\,
      \op_mem_20_24_reg[0][25]\ => \op_mem_20_24_reg[0][25]\,
      \op_mem_20_24_reg[0][26]\ => \op_mem_20_24_reg[0][26]\,
      \op_mem_20_24_reg[0][27]\ => \op_mem_20_24_reg[0][27]\,
      \op_mem_20_24_reg[0][28]\ => \op_mem_20_24_reg[0][28]\,
      \op_mem_20_24_reg[0][29]\ => \op_mem_20_24_reg[0][29]\,
      \op_mem_20_24_reg[0][2]\ => \op_mem_20_24_reg[0][2]\,
      \op_mem_20_24_reg[0][30]\ => \op_mem_20_24_reg[0][30]\,
      \op_mem_20_24_reg[0][31]\(31 downto 0) => \op_mem_20_24_reg[0][31]\(31 downto 0),
      \op_mem_20_24_reg[0][31]_0\ => \op_mem_20_24_reg[0][31]_0\,
      \op_mem_20_24_reg[0][31]_1\(31 downto 0) => \op_mem_20_24_reg[0][31]_1\(31 downto 0),
      \op_mem_20_24_reg[0][31]_2\(31 downto 0) => \op_mem_20_24_reg[0][31]_2\(31 downto 0),
      \op_mem_20_24_reg[0][31]_3\(31 downto 0) => \op_mem_20_24_reg[0][31]_3\(31 downto 0),
      \op_mem_20_24_reg[0][31]_4\(31 downto 0) => \op_mem_20_24_reg[0][31]_4\(31 downto 0),
      \op_mem_20_24_reg[0][31]_5\(31 downto 0) => \op_mem_20_24_reg[0][31]_5\(31 downto 0),
      \op_mem_20_24_reg[0][31]_6\(31 downto 0) => \op_mem_20_24_reg[0][31]_6\(31 downto 0),
      \op_mem_20_24_reg[0][31]_7\(31 downto 0) => \op_mem_20_24_reg[0][31]_7\(31 downto 0),
      \op_mem_20_24_reg[0][3]\ => \op_mem_20_24_reg[0][3]\,
      \op_mem_20_24_reg[0][4]\ => \op_mem_20_24_reg[0][4]\,
      \op_mem_20_24_reg[0][5]\ => \op_mem_20_24_reg[0][5]\,
      \op_mem_20_24_reg[0][6]\ => \op_mem_20_24_reg[0][6]\,
      \op_mem_20_24_reg[0][7]\ => \op_mem_20_24_reg[0][7]\,
      \op_mem_20_24_reg[0][8]\ => \op_mem_20_24_reg[0][8]\,
      \op_mem_20_24_reg[0][9]\ => \op_mem_20_24_reg[0][9]\,
      register13_q_net => register13_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct is
  port (
    m_axis_dma_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dma_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    trigger_in : in STD_LOGIC;
    usr_rst_in : in STD_LOGIC;
    m_axis_dma_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_in_hw : in STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_src : in STD_LOGIC;
    data_in_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fd_prim_array[15].rst_comp.fdre_comp\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \fd_prim_array[7].rst_comp.fdre_comp\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_f : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_g : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_h : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct : entity is "thrtl_8ch_cfg_struct";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct is
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_sel_store_16_28 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal data_vec_store_1_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_2_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_3_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_4_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_5_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_6_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_7_15_28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_vec_store_7_join_72_9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decim_count_11_25 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal frame_count_12_25 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal frame_count_73_13_addsub : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal internal_ip_12_1_bitnot : STD_LOGIC;
  signal inverter_op_net : STD_LOGIC;
  signal mcode_n_0 : STD_LOGIC;
  signal mcode_n_22 : STD_LOGIC;
  signal mcode_n_30 : STD_LOGIC;
  signal mcode_n_31 : STD_LOGIC;
  signal mcode_n_33 : STD_LOGIC;
  signal mcode_n_66 : STD_LOGIC;
  signal mcode_n_67 : STD_LOGIC;
  signal mcode_n_68 : STD_LOGIC;
  signal mcode_n_69 : STD_LOGIC;
  signal mcode_n_70 : STD_LOGIC;
  signal mcode_n_71 : STD_LOGIC;
  signal mcode_n_72 : STD_LOGIC;
  signal mcode_n_73 : STD_LOGIC;
  signal mcode_n_74 : STD_LOGIC;
  signal mcode_n_75 : STD_LOGIC;
  signal mcode_n_76 : STD_LOGIC;
  signal mcode_n_77 : STD_LOGIC;
  signal mcode_n_78 : STD_LOGIC;
  signal mcode_n_79 : STD_LOGIC;
  signal mcode_n_80 : STD_LOGIC;
  signal mcode_n_81 : STD_LOGIC;
  signal mcode_n_82 : STD_LOGIC;
  signal mcode_n_83 : STD_LOGIC;
  signal mcode_n_84 : STD_LOGIC;
  signal mcode_n_85 : STD_LOGIC;
  signal mcode_n_86 : STD_LOGIC;
  signal mcode_n_87 : STD_LOGIC;
  signal mcode_n_88 : STD_LOGIC;
  signal mcode_n_89 : STD_LOGIC;
  signal mcode_n_90 : STD_LOGIC;
  signal mcode_n_91 : STD_LOGIC;
  signal mcode_n_92 : STD_LOGIC;
  signal mcode_n_93 : STD_LOGIC;
  signal mcode_n_94 : STD_LOGIC;
  signal mcode_n_95 : STD_LOGIC;
  signal mcode_n_96 : STD_LOGIC;
  signal mcode_tvalid_net : STD_LOGIC;
  signal mux2_y_net : STD_LOGIC;
  signal muxing_run_join_99_9 : STD_LOGIC;
  signal register10_n_0 : STD_LOGIC;
  signal register10_q_net : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal register11_n_0 : STD_LOGIC;
  signal register11_n_1 : STD_LOGIC;
  signal register11_n_2 : STD_LOGIC;
  signal register11_n_3 : STD_LOGIC;
  signal register11_n_4 : STD_LOGIC;
  signal register11_n_5 : STD_LOGIC;
  signal register11_n_6 : STD_LOGIC;
  signal register11_n_7 : STD_LOGIC;
  signal register12_q_net : STD_LOGIC;
  signal register13_q_net : STD_LOGIC;
  signal register14_q_net : STD_LOGIC;
  signal register16_n_0 : STD_LOGIC;
  signal register16_n_1 : STD_LOGIC;
  signal register16_n_10 : STD_LOGIC;
  signal register16_n_11 : STD_LOGIC;
  signal register16_n_12 : STD_LOGIC;
  signal register16_n_13 : STD_LOGIC;
  signal register16_n_14 : STD_LOGIC;
  signal register16_n_15 : STD_LOGIC;
  signal register16_n_16 : STD_LOGIC;
  signal register16_n_17 : STD_LOGIC;
  signal register16_n_18 : STD_LOGIC;
  signal register16_n_19 : STD_LOGIC;
  signal register16_n_2 : STD_LOGIC;
  signal register16_n_20 : STD_LOGIC;
  signal register16_n_21 : STD_LOGIC;
  signal register16_n_22 : STD_LOGIC;
  signal register16_n_23 : STD_LOGIC;
  signal register16_n_24 : STD_LOGIC;
  signal register16_n_25 : STD_LOGIC;
  signal register16_n_26 : STD_LOGIC;
  signal register16_n_27 : STD_LOGIC;
  signal register16_n_28 : STD_LOGIC;
  signal register16_n_29 : STD_LOGIC;
  signal register16_n_3 : STD_LOGIC;
  signal register16_n_30 : STD_LOGIC;
  signal register16_n_31 : STD_LOGIC;
  signal register16_n_37 : STD_LOGIC;
  signal register16_n_39 : STD_LOGIC;
  signal register16_n_4 : STD_LOGIC;
  signal register16_n_40 : STD_LOGIC;
  signal register16_n_41 : STD_LOGIC;
  signal register16_n_42 : STD_LOGIC;
  signal register16_n_43 : STD_LOGIC;
  signal register16_n_44 : STD_LOGIC;
  signal register16_n_5 : STD_LOGIC;
  signal register16_n_6 : STD_LOGIC;
  signal register16_n_7 : STD_LOGIC;
  signal register16_n_8 : STD_LOGIC;
  signal register16_n_9 : STD_LOGIC;
  signal register16_q_net : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal register3_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register4_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register7_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register8_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rel_72_12 : STD_LOGIC;
  signal tready_join_68_5 : STD_LOGIC;
  signal unregy_join_6_1 : STD_LOGIC;
begin
delay5: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c
     port map (
      clk => clk,
      m_axis_dma_tdata(31 downto 0) => m_axis_dma_tdata(31 downto 0),
      \op_mem_20_24_reg[0][0]_0\ => register16_n_0,
      \op_mem_20_24_reg[0][10]_0\ => register16_n_10,
      \op_mem_20_24_reg[0][11]_0\ => register16_n_11,
      \op_mem_20_24_reg[0][12]_0\ => register16_n_12,
      \op_mem_20_24_reg[0][13]_0\ => register16_n_13,
      \op_mem_20_24_reg[0][14]_0\ => register16_n_14,
      \op_mem_20_24_reg[0][15]_0\ => register16_n_15,
      \op_mem_20_24_reg[0][16]_0\ => register16_n_16,
      \op_mem_20_24_reg[0][17]_0\ => register16_n_17,
      \op_mem_20_24_reg[0][18]_0\ => register16_n_18,
      \op_mem_20_24_reg[0][19]_0\ => register16_n_19,
      \op_mem_20_24_reg[0][1]_0\ => register16_n_1,
      \op_mem_20_24_reg[0][20]_0\ => register16_n_20,
      \op_mem_20_24_reg[0][21]_0\ => register16_n_21,
      \op_mem_20_24_reg[0][22]_0\ => register16_n_22,
      \op_mem_20_24_reg[0][23]_0\ => register16_n_23,
      \op_mem_20_24_reg[0][24]_0\ => register16_n_24,
      \op_mem_20_24_reg[0][25]_0\ => register16_n_25,
      \op_mem_20_24_reg[0][26]_0\ => register16_n_26,
      \op_mem_20_24_reg[0][27]_0\ => register16_n_27,
      \op_mem_20_24_reg[0][28]_0\ => register16_n_28,
      \op_mem_20_24_reg[0][29]_0\ => register16_n_29,
      \op_mem_20_24_reg[0][2]_0\ => register16_n_2,
      \op_mem_20_24_reg[0][30]_0\ => register16_n_30,
      \op_mem_20_24_reg[0][31]_0\ => mcode_n_31,
      \op_mem_20_24_reg[0][31]_1\ => register16_n_31,
      \op_mem_20_24_reg[0][3]_0\ => register16_n_3,
      \op_mem_20_24_reg[0][4]_0\ => register16_n_4,
      \op_mem_20_24_reg[0][5]_0\ => register16_n_5,
      \op_mem_20_24_reg[0][6]_0\ => register16_n_6,
      \op_mem_20_24_reg[0][7]_0\ => register16_n_7,
      \op_mem_20_24_reg[0][8]_0\ => register16_n_8,
      \op_mem_20_24_reg[0][9]_0\ => register16_n_9
    );
delay6: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253
     port map (
      clk => clk,
      m_axis_dma_tvalid(0) => m_axis_dma_tvalid(0),
      mcode_tvalid_net => mcode_tvalid_net
    );
delay7: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0
     port map (
      clk => clk,
      m_axis_dma_tlast(0) => m_axis_dma_tlast(0),
      \op_mem_20_24_reg[0][0]_0\ => mcode_n_22
    );
delay9: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1
     port map (
      clk => clk,
      m_axis_dma_tkeep(0) => m_axis_dma_tkeep(0),
      register13_q_net => register13_q_net,
      tready_join_68_5 => tready_join_68_5
    );
inverter: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3
     port map (
      clk => clk,
      internal_ip_12_1_bitnot => internal_ip_12_1_bitnot,
      inverter_op_net => inverter_op_net
    );
mcode: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f
     port map (
      CO(0) => rel_72_12,
      D(31 downto 0) => data1(31 downto 0),
      O(1 downto 0) => frame_count_73_13_addsub(2 downto 1),
      Q(31 downto 0) => data_vec_store_6_15_28(31 downto 0),
      S(3) => register11_n_3,
      S(2) => register11_n_4,
      S(1) => register11_n_5,
      S(0) => register11_n_6,
      clk => clk,
      data_sel_store_16_28(6 downto 0) => data_sel_store_16_28(7 downto 1),
      \data_sel_store_16_28_reg[2]_0\ => register16_n_42,
      \data_sel_store_16_28_reg[3]_0\ => register16_n_44,
      \data_sel_store_16_28_reg[4]_0\ => register16_n_43,
      \data_sel_store_16_28_reg[5]_0\ => register16_n_41,
      \data_sel_store_16_28_reg[6]_0\ => register16_n_40,
      \data_sel_store_16_28_reg[7]_0\ => register16_n_37,
      \data_vec_store_1_15_28_reg[31]_0\(31 downto 0) => data_vec_store_1_15_28(31 downto 0),
      \data_vec_store_2_15_28_reg[31]_0\(31 downto 0) => data_vec_store_2_15_28(31 downto 0),
      \data_vec_store_2_15_28_reg[31]_1\(31 downto 0) => data2(31 downto 0),
      \data_vec_store_3_15_28_reg[31]_0\(31 downto 0) => data_vec_store_3_15_28(31 downto 0),
      \data_vec_store_3_15_28_reg[31]_1\(31 downto 0) => data3(31 downto 0),
      \data_vec_store_4_15_28_reg[31]_0\(31 downto 0) => data_vec_store_4_15_28(31 downto 0),
      \data_vec_store_4_15_28_reg[31]_1\(31 downto 0) => data4(31 downto 0),
      \data_vec_store_5_15_28_reg[31]_0\(31 downto 0) => data_vec_store_5_15_28(31 downto 0),
      \data_vec_store_5_15_28_reg[31]_1\(31 downto 0) => data5(31 downto 0),
      \data_vec_store_6_15_28_reg[0]_0\ => mcode_n_33,
      \data_vec_store_6_15_28_reg[10]_0\ => mcode_n_75,
      \data_vec_store_6_15_28_reg[11]_0\ => mcode_n_76,
      \data_vec_store_6_15_28_reg[12]_0\ => mcode_n_77,
      \data_vec_store_6_15_28_reg[13]_0\ => mcode_n_78,
      \data_vec_store_6_15_28_reg[14]_0\ => mcode_n_79,
      \data_vec_store_6_15_28_reg[15]_0\ => mcode_n_80,
      \data_vec_store_6_15_28_reg[16]_0\ => mcode_n_81,
      \data_vec_store_6_15_28_reg[17]_0\ => mcode_n_82,
      \data_vec_store_6_15_28_reg[18]_0\ => mcode_n_83,
      \data_vec_store_6_15_28_reg[19]_0\ => mcode_n_84,
      \data_vec_store_6_15_28_reg[1]_0\ => mcode_n_66,
      \data_vec_store_6_15_28_reg[20]_0\ => mcode_n_85,
      \data_vec_store_6_15_28_reg[21]_0\ => mcode_n_86,
      \data_vec_store_6_15_28_reg[22]_0\ => mcode_n_87,
      \data_vec_store_6_15_28_reg[23]_0\ => mcode_n_88,
      \data_vec_store_6_15_28_reg[24]_0\ => mcode_n_89,
      \data_vec_store_6_15_28_reg[25]_0\ => mcode_n_90,
      \data_vec_store_6_15_28_reg[26]_0\ => mcode_n_91,
      \data_vec_store_6_15_28_reg[27]_0\ => mcode_n_92,
      \data_vec_store_6_15_28_reg[28]_0\ => mcode_n_93,
      \data_vec_store_6_15_28_reg[29]_0\ => mcode_n_94,
      \data_vec_store_6_15_28_reg[2]_0\ => mcode_n_67,
      \data_vec_store_6_15_28_reg[30]_0\ => mcode_n_95,
      \data_vec_store_6_15_28_reg[31]_0\ => mcode_n_96,
      \data_vec_store_6_15_28_reg[31]_1\(31 downto 0) => data6(31 downto 0),
      \data_vec_store_6_15_28_reg[3]_0\ => mcode_n_68,
      \data_vec_store_6_15_28_reg[4]_0\ => mcode_n_69,
      \data_vec_store_6_15_28_reg[5]_0\ => mcode_n_70,
      \data_vec_store_6_15_28_reg[6]_0\ => mcode_n_71,
      \data_vec_store_6_15_28_reg[7]_0\ => mcode_n_72,
      \data_vec_store_6_15_28_reg[8]_0\ => mcode_n_73,
      \data_vec_store_6_15_28_reg[9]_0\ => mcode_n_74,
      \data_vec_store_7_15_28_reg[31]_0\(31 downto 0) => data_vec_store_7_15_28(31 downto 0),
      \data_vec_store_7_15_28_reg[31]_1\(31 downto 0) => data_vec_store_7_join_72_9(31 downto 0),
      decim_count_11_25(15 downto 0) => decim_count_11_25(15 downto 0),
      \decim_count_11_25_reg[0]_0\ => register11_n_7,
      \fd_prim_array[0].rst_comp.fdre_comp\ => mcode_n_22,
      \fd_prim_array[0].rst_comp.fdre_comp_0\ => mcode_n_31,
      \frame_count_12_25_reg[0]_0\(0) => frame_count_12_25(0),
      inverter_op_net => inverter_op_net,
      last_frame_flag_17_29_reg_0(1) => register11_n_0,
      last_frame_flag_17_29_reg_0(0) => register11_n_1,
      last_frame_flag_17_29_reg_1 => register16_n_39,
      mcode_tvalid_net => mcode_tvalid_net,
      mux2_y_net => mux2_y_net,
      muxing_run_14_24_reg_0 => mcode_n_0,
      muxing_run_14_24_reg_1 => mcode_n_30,
      muxing_run_join_99_9 => muxing_run_join_99_9,
      \^o\(4 downto 3) => register16_q_net(6 downto 5),
      \^o\(2 downto 0) => register16_q_net(2 downto 0),
      \op_mem_20_24_reg[0][31]\(31 downto 0) => register4_q_net(31 downto 0),
      register13_q_net => register13_q_net,
      register14_q_net => register14_q_net,
      \rel_85_16_carry__0_0\(0) => register10_n_0,
      \rel_85_16_carry__1_0\(28 downto 0) => register10_q_net(31 downto 3),
      tready_join_68_5 => tready_join_68_5
    );
mux2: entity work.design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba
     port map (
      clk => clk,
      internal_ip_12_1_bitnot => internal_ip_12_1_bitnot,
      mux2_y_net => mux2_y_net,
      unregy_join_6_1 => unregy_join_6_1
    );
register1: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_in_c(31 downto 0) => data_in_c(31 downto 0),
      \data_vec_store_2_15_28_reg[31]\(31 downto 0) => data_vec_store_2_15_28(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data2(31 downto 0)
    );
register10: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2
     port map (
      O(1 downto 0) => frame_count_73_13_addsub(2 downto 1),
      clk => clk,
      \fd_prim_array[0].rst_comp.fdre_comp\(0) => register10_n_0,
      i(31 downto 0) => i(31 downto 0),
      \^o\(28 downto 0) => register10_q_net(31 downto 3),
      rel_85_16_carry(0) => frame_count_12_25(0)
    );
register11: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0\
     port map (
      CO(0) => rel_72_12,
      S(3) => register11_n_3,
      S(2) => register11_n_4,
      S(1) => register11_n_5,
      S(0) => register11_n_6,
      clk => clk,
      decim_count_11_25(15 downto 0) => decim_count_11_25(15 downto 0),
      \decim_count_11_25_reg[0]\ => register11_n_7,
      \fd_prim_array[0].rst_comp.fdre_comp\ => register11_n_2,
      \fd_prim_array[15].rst_comp.fdre_comp\(1) => register11_n_0,
      \fd_prim_array[15].rst_comp.fdre_comp\(0) => register11_n_1,
      \fd_prim_array[15].rst_comp.fdre_comp_0\(15 downto 0) => \fd_prim_array[15].rst_comp.fdre_comp\(15 downto 0),
      o(0) => register16_q_net(0)
    );
register12: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1\
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in => trigger_in
    );
register13: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3\
     port map (
      clk => clk,
      register13_q_net => register13_q_net,
      usr_rst_in => usr_rst_in
    );
register14: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4\
     port map (
      clk => clk,
      m_axis_dma_tready(0) => m_axis_dma_tready(0),
      register14_q_net => register14_q_net
    );
register15: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5\
     port map (
      clk => clk,
      register12_q_net => register12_q_net,
      trigger_in_hw(0) => trigger_in_hw(0),
      trigger_src => trigger_src,
      unregy_join_6_1 => unregy_join_6_1
    );
register16: entity work.\design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2\
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_sel_store_16_28(6 downto 0) => data_sel_store_16_28(7 downto 1),
      \data_sel_store_16_28_reg[1]\ => register16_n_42,
      \data_sel_store_16_28_reg[1]_0\ => register16_n_44,
      \data_sel_store_16_28_reg[4]\ => register11_n_2,
      \data_sel_store_16_28_reg[7]\ => mcode_n_30,
      \fd_prim_array[0].rst_comp.fdre_comp\ => register16_n_0,
      \fd_prim_array[0].rst_comp.fdre_comp_0\ => register16_n_43,
      \fd_prim_array[10].rst_comp.fdre_comp\ => register16_n_10,
      \fd_prim_array[11].rst_comp.fdre_comp\ => register16_n_11,
      \fd_prim_array[12].rst_comp.fdre_comp\ => register16_n_12,
      \fd_prim_array[13].rst_comp.fdre_comp\ => register16_n_13,
      \fd_prim_array[14].rst_comp.fdre_comp\ => register16_n_14,
      \fd_prim_array[15].rst_comp.fdre_comp\ => register16_n_15,
      \fd_prim_array[16].rst_comp.fdre_comp\ => register16_n_16,
      \fd_prim_array[17].rst_comp.fdre_comp\ => register16_n_17,
      \fd_prim_array[18].rst_comp.fdre_comp\ => register16_n_18,
      \fd_prim_array[19].rst_comp.fdre_comp\ => register16_n_19,
      \fd_prim_array[1].rst_comp.fdre_comp\ => register16_n_1,
      \fd_prim_array[1].rst_comp.fdre_comp_0\ => register16_n_39,
      \fd_prim_array[20].rst_comp.fdre_comp\ => register16_n_20,
      \fd_prim_array[21].rst_comp.fdre_comp\ => register16_n_21,
      \fd_prim_array[22].rst_comp.fdre_comp\ => register16_n_22,
      \fd_prim_array[23].rst_comp.fdre_comp\ => register16_n_23,
      \fd_prim_array[24].rst_comp.fdre_comp\ => register16_n_24,
      \fd_prim_array[25].rst_comp.fdre_comp\ => register16_n_25,
      \fd_prim_array[26].rst_comp.fdre_comp\ => register16_n_26,
      \fd_prim_array[27].rst_comp.fdre_comp\ => register16_n_27,
      \fd_prim_array[28].rst_comp.fdre_comp\ => register16_n_28,
      \fd_prim_array[29].rst_comp.fdre_comp\ => register16_n_29,
      \fd_prim_array[2].rst_comp.fdre_comp\ => register16_n_2,
      \fd_prim_array[2].rst_comp.fdre_comp_0\ => register16_n_41,
      \fd_prim_array[30].rst_comp.fdre_comp\ => register16_n_30,
      \fd_prim_array[31].rst_comp.fdre_comp\ => register16_n_31,
      \fd_prim_array[3].rst_comp.fdre_comp\ => register16_n_3,
      \fd_prim_array[4].rst_comp.fdre_comp\ => register16_n_4,
      \fd_prim_array[5].rst_comp.fdre_comp\ => register16_n_5,
      \fd_prim_array[5].rst_comp.fdre_comp_0\ => register16_n_40,
      \fd_prim_array[6].rst_comp.fdre_comp\ => register16_n_6,
      \fd_prim_array[6].rst_comp.fdre_comp_0\(4 downto 3) => register16_q_net(6 downto 5),
      \fd_prim_array[6].rst_comp.fdre_comp_0\(2 downto 0) => register16_q_net(2 downto 0),
      \fd_prim_array[7].rst_comp.fdre_comp\ => register16_n_7,
      \fd_prim_array[7].rst_comp.fdre_comp_0\ => register16_n_37,
      \fd_prim_array[7].rst_comp.fdre_comp_1\(7 downto 0) => \fd_prim_array[7].rst_comp.fdre_comp\(7 downto 0),
      \fd_prim_array[8].rst_comp.fdre_comp\ => register16_n_8,
      \fd_prim_array[9].rst_comp.fdre_comp\ => register16_n_9,
      muxing_run_14_24_reg => mcode_n_0,
      muxing_run_join_99_9 => muxing_run_join_99_9,
      o(31 downto 0) => register8_q_net(31 downto 0),
      \op_mem_20_24_reg[0][0]\ => mcode_n_33,
      \op_mem_20_24_reg[0][10]\ => mcode_n_75,
      \op_mem_20_24_reg[0][11]\ => mcode_n_76,
      \op_mem_20_24_reg[0][12]\ => mcode_n_77,
      \op_mem_20_24_reg[0][13]\ => mcode_n_78,
      \op_mem_20_24_reg[0][14]\ => mcode_n_79,
      \op_mem_20_24_reg[0][15]\ => mcode_n_80,
      \op_mem_20_24_reg[0][16]\ => mcode_n_81,
      \op_mem_20_24_reg[0][17]\ => mcode_n_82,
      \op_mem_20_24_reg[0][18]\ => mcode_n_83,
      \op_mem_20_24_reg[0][19]\ => mcode_n_84,
      \op_mem_20_24_reg[0][1]\ => mcode_n_66,
      \op_mem_20_24_reg[0][20]\ => mcode_n_85,
      \op_mem_20_24_reg[0][21]\ => mcode_n_86,
      \op_mem_20_24_reg[0][22]\ => mcode_n_87,
      \op_mem_20_24_reg[0][23]\ => mcode_n_88,
      \op_mem_20_24_reg[0][24]\ => mcode_n_89,
      \op_mem_20_24_reg[0][25]\ => mcode_n_90,
      \op_mem_20_24_reg[0][26]\ => mcode_n_91,
      \op_mem_20_24_reg[0][27]\ => mcode_n_92,
      \op_mem_20_24_reg[0][28]\ => mcode_n_93,
      \op_mem_20_24_reg[0][29]\ => mcode_n_94,
      \op_mem_20_24_reg[0][2]\ => mcode_n_67,
      \op_mem_20_24_reg[0][30]\ => mcode_n_95,
      \op_mem_20_24_reg[0][31]\(31 downto 0) => data_vec_store_7_join_72_9(31 downto 0),
      \op_mem_20_24_reg[0][31]_0\ => mcode_n_96,
      \op_mem_20_24_reg[0][31]_1\(31 downto 0) => data_vec_store_1_15_28(31 downto 0),
      \op_mem_20_24_reg[0][31]_2\(31 downto 0) => register7_q_net(31 downto 0),
      \op_mem_20_24_reg[0][31]_3\(31 downto 0) => data_vec_store_5_15_28(31 downto 0),
      \op_mem_20_24_reg[0][31]_4\(31 downto 0) => register3_q_net(31 downto 0),
      \op_mem_20_24_reg[0][31]_5\(31 downto 0) => data4(31 downto 0),
      \op_mem_20_24_reg[0][31]_6\(31 downto 0) => data3(31 downto 0),
      \op_mem_20_24_reg[0][31]_7\(31 downto 0) => data2(31 downto 0),
      \op_mem_20_24_reg[0][3]\ => mcode_n_68,
      \op_mem_20_24_reg[0][4]\ => mcode_n_69,
      \op_mem_20_24_reg[0][5]\ => mcode_n_70,
      \op_mem_20_24_reg[0][6]\ => mcode_n_71,
      \op_mem_20_24_reg[0][7]\ => mcode_n_72,
      \op_mem_20_24_reg[0][8]\ => mcode_n_73,
      \op_mem_20_24_reg[0][9]\ => mcode_n_74,
      register13_q_net => register13_q_net
    );
register2: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_in_d(31 downto 0) => data_in_d(31 downto 0),
      \data_vec_store_3_15_28_reg[31]\(31 downto 0) => data_vec_store_3_15_28(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data3(31 downto 0)
    );
register3: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_in_f(31 downto 0) => data_in_f(31 downto 0),
      \data_vec_store_5_15_28_reg[31]\(31 downto 0) => data_vec_store_5_15_28(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data5(31 downto 0),
      o(31 downto 0) => register3_q_net(31 downto 0)
    );
register4: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8
     port map (
      CO(0) => rel_72_12,
      Q(31 downto 0) => data_vec_store_6_15_28(31 downto 0),
      clk => clk,
      data_in_g(31 downto 0) => data_in_g(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data6(31 downto 0),
      o(31 downto 0) => register4_q_net(31 downto 0)
    );
register5: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_in_e(31 downto 0) => data_in_e(31 downto 0),
      \data_vec_store_4_15_28_reg[31]\(31 downto 0) => data_vec_store_4_15_28(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data4(31 downto 0)
    );
register6: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10
     port map (
      CO(0) => rel_72_12,
      clk => clk,
      data_in_h(31 downto 0) => data_in_h(31 downto 0),
      \data_vec_store_7_15_28_reg[31]\(31 downto 0) => data_vec_store_7_15_28(31 downto 0),
      \fd_prim_array[31].rst_comp.fdre_comp\(31 downto 0) => data_vec_store_7_join_72_9(31 downto 0)
    );
register7: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11
     port map (
      clk => clk,
      data_in_a(31 downto 0) => data_in_a(31 downto 0),
      o(31 downto 0) => register7_q_net(31 downto 0)
    );
register8: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12
     port map (
      CO(0) => rel_72_12,
      D(31 downto 0) => data1(31 downto 0),
      clk => clk,
      data_in_b(31 downto 0) => data_in_b(31 downto 0),
      \data_vec_store_1_15_28_reg[31]\(31 downto 0) => data_vec_store_1_15_28(31 downto 0),
      o(31 downto 0) => register8_q_net(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg : entity is "thrtl_8ch_cfg";
end design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg is
  signal data_sel_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decim_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal frames_no_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axis_dma_tkeep\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal trigger_in : STD_LOGIC;
  signal trigger_src : STD_LOGIC;
  signal usr_rst_in : STD_LOGIC;
begin
  dma_ready_out(0) <= \^m_axis_dma_tkeep\(3);
  m_axis_dma_tkeep(3) <= \^m_axis_dma_tkeep\(3);
  m_axis_dma_tkeep(2) <= \^m_axis_dma_tkeep\(3);
  m_axis_dma_tkeep(1) <= \^m_axis_dma_tkeep\(3);
  m_axis_dma_tkeep(0) <= \^m_axis_dma_tkeep\(3);
thrtl_8ch_cfg_cfg_in_axi_lite_interface: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface
     port map (
      axi_arready_reg_0 => thrtl_8ch_cfg_cfg_in_s_axi_arready,
      axi_awready_reg_0 => thrtl_8ch_cfg_cfg_in_s_axi_awready,
      axi_wready_reg_0 => thrtl_8ch_cfg_cfg_in_s_axi_wready,
      clk => clk,
      i(31 downto 0) => frames_no_in(31 downto 0),
      \slv_reg_array_reg[4][15]_0\(15 downto 0) => decim_in(15 downto 0),
      \slv_reg_array_reg[5][7]_0\(7 downto 0) => data_sel_in(7 downto 0),
      thrtl_8ch_cfg_aresetn => thrtl_8ch_cfg_aresetn,
      thrtl_8ch_cfg_cfg_in_s_axi_araddr(4 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_araddr(4 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_arvalid => thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_awaddr(4 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(4 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_awvalid => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_bready => thrtl_8ch_cfg_cfg_in_s_axi_bready,
      thrtl_8ch_cfg_cfg_in_s_axi_bvalid => thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_rdata(31 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_rdata(31 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_rready => thrtl_8ch_cfg_cfg_in_s_axi_rready,
      thrtl_8ch_cfg_cfg_in_s_axi_rvalid => thrtl_8ch_cfg_cfg_in_s_axi_rvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_wdata(31 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_wvalid => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      trigger_in => trigger_in,
      trigger_src => trigger_src,
      usr_rst_in => usr_rst_in
    );
thrtl_8ch_cfg_struct: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct
     port map (
      clk => clk,
      data_in_a(31 downto 0) => data_in_a(31 downto 0),
      data_in_b(31 downto 0) => data_in_b(31 downto 0),
      data_in_c(31 downto 0) => data_in_c(31 downto 0),
      data_in_d(31 downto 0) => data_in_d(31 downto 0),
      data_in_e(31 downto 0) => data_in_e(31 downto 0),
      data_in_f(31 downto 0) => data_in_f(31 downto 0),
      data_in_g(31 downto 0) => data_in_g(31 downto 0),
      data_in_h(31 downto 0) => data_in_h(31 downto 0),
      \fd_prim_array[15].rst_comp.fdre_comp\(15 downto 0) => decim_in(15 downto 0),
      \fd_prim_array[7].rst_comp.fdre_comp\(7 downto 0) => data_sel_in(7 downto 0),
      i(31 downto 0) => frames_no_in(31 downto 0),
      m_axis_dma_tdata(31 downto 0) => m_axis_dma_tdata(31 downto 0),
      m_axis_dma_tkeep(0) => \^m_axis_dma_tkeep\(3),
      m_axis_dma_tlast(0) => m_axis_dma_tlast(0),
      m_axis_dma_tready(0) => m_axis_dma_tready(0),
      m_axis_dma_tvalid(0) => m_axis_dma_tvalid(0),
      trigger_in => trigger_in,
      trigger_in_hw(0) => trigger_in_hw(0),
      trigger_src => trigger_src,
      usr_rst_in => usr_rst_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_thrtl_8ch_cfg_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_thrtl_8ch_cfg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_thrtl_8ch_cfg_0_0 : entity is "design_0_thrtl_8ch_cfg_0_0,thrtl_8ch_cfg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_thrtl_8ch_cfg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_thrtl_8ch_cfg_0_0 : entity is "sysgen";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_thrtl_8ch_cfg_0_0 : entity is "thrtl_8ch_cfg,Vivado 2024.2";
end design_0_thrtl_8ch_cfg_0_0;

architecture STRUCTURE of design_0_thrtl_8ch_cfg_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF thrtl_8ch_cfg_cfg_in_s_axi:m_axis_dma:data_in_a:data_in_b:data_in_c:data_in_d:data_in_e:data_in_f:data_in_g:data_in_h, ASSOCIATED_RESET thrtl_8ch_cfg_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_aresetn : signal is "xilinx.com:signal:reset:1.0 thrtl_8ch_cfg_aresetn RST";
  attribute X_INTERFACE_MODE of thrtl_8ch_cfg_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of thrtl_8ch_cfg_aresetn : signal is "XIL_INTERFACENAME thrtl_8ch_cfg_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WREADY";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WVALID";
  attribute X_INTERFACE_INFO of data_in_a : signal is "xilinx.com:signal:data:1.0 data_in_a DATA";
  attribute X_INTERFACE_MODE of data_in_a : signal is "slave";
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
  attribute X_INTERFACE_INFO of dma_ready_out : signal is "xilinx.com:signal:data:1.0 dma_ready_out DATA";
  attribute X_INTERFACE_MODE of dma_ready_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of dma_ready_out : signal is "XIL_INTERFACENAME dma_ready_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of m_axis_dma_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TDATA";
  attribute X_INTERFACE_INFO of m_axis_dma_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP";
  attribute X_INTERFACE_INFO of m_axis_dma_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TLAST";
  attribute X_INTERFACE_INFO of m_axis_dma_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TREADY";
  attribute X_INTERFACE_MODE of m_axis_dma_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_dma_tready : signal is "XIL_INTERFACENAME m_axis_dma, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_dma_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_dma TVALID";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARADDR";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWADDR";
  attribute X_INTERFACE_MODE of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of thrtl_8ch_cfg_cfg_in_s_axi_awaddr : signal is "XIL_INTERFACENAME thrtl_8ch_cfg_cfg_in_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BRESP";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RDATA";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RRESP";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WDATA";
  attribute X_INTERFACE_INFO of thrtl_8ch_cfg_cfg_in_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WSTRB";
  attribute X_INTERFACE_INFO of trigger_in_hw : signal is "xilinx.com:signal:data:1.0 trigger_in_hw DATA";
  attribute X_INTERFACE_MODE of trigger_in_hw : signal is "slave";
  attribute X_INTERFACE_PARAMETER of trigger_in_hw : signal is "XIL_INTERFACENAME trigger_in_hw, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  thrtl_8ch_cfg_cfg_in_s_axi_bresp(1) <= \<const0>\;
  thrtl_8ch_cfg_cfg_in_s_axi_bresp(0) <= \<const0>\;
  thrtl_8ch_cfg_cfg_in_s_axi_rresp(1) <= \<const0>\;
  thrtl_8ch_cfg_cfg_in_s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg
     port map (
      clk => clk,
      data_in_a(31 downto 0) => data_in_a(31 downto 0),
      data_in_b(31 downto 0) => data_in_b(31 downto 0),
      data_in_c(31 downto 0) => data_in_c(31 downto 0),
      data_in_d(31 downto 0) => data_in_d(31 downto 0),
      data_in_e(31 downto 0) => data_in_e(31 downto 0),
      data_in_f(31 downto 0) => data_in_f(31 downto 0),
      data_in_g(31 downto 0) => data_in_g(31 downto 0),
      data_in_h(31 downto 0) => data_in_h(31 downto 0),
      dma_ready_out(0) => dma_ready_out(0),
      m_axis_dma_tdata(31 downto 0) => m_axis_dma_tdata(31 downto 0),
      m_axis_dma_tkeep(3 downto 0) => m_axis_dma_tkeep(3 downto 0),
      m_axis_dma_tlast(0) => m_axis_dma_tlast(0),
      m_axis_dma_tready(0) => m_axis_dma_tready(0),
      m_axis_dma_tvalid(0) => m_axis_dma_tvalid(0),
      thrtl_8ch_cfg_aresetn => thrtl_8ch_cfg_aresetn,
      thrtl_8ch_cfg_cfg_in_s_axi_araddr(4 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_araddr(4 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_arready => thrtl_8ch_cfg_cfg_in_s_axi_arready,
      thrtl_8ch_cfg_cfg_in_s_axi_arvalid => thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_awaddr(4 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_awaddr(4 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_awready => thrtl_8ch_cfg_cfg_in_s_axi_awready,
      thrtl_8ch_cfg_cfg_in_s_axi_awvalid => thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_bready => thrtl_8ch_cfg_cfg_in_s_axi_bready,
      thrtl_8ch_cfg_cfg_in_s_axi_bresp(1 downto 0) => NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_bresp_UNCONNECTED(1 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_bvalid => thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_rdata(31 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_rdata(31 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_rready => thrtl_8ch_cfg_cfg_in_s_axi_rready,
      thrtl_8ch_cfg_cfg_in_s_axi_rresp(1 downto 0) => NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_rresp_UNCONNECTED(1 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_rvalid => thrtl_8ch_cfg_cfg_in_s_axi_rvalid,
      thrtl_8ch_cfg_cfg_in_s_axi_wdata(31 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_wdata(31 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_wready => thrtl_8ch_cfg_cfg_in_s_axi_wready,
      thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3 downto 0) => thrtl_8ch_cfg_cfg_in_s_axi_wstrb(3 downto 0),
      thrtl_8ch_cfg_cfg_in_s_axi_wvalid => thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
      trigger_in_hw(0) => trigger_in_hw(0)
    );
end STRUCTURE;
