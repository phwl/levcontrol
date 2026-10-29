-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Apr 27 18:10:12 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_axis_red_pitaya_adc_0_0/design_0_axis_red_pitaya_adc_0_0_sim_netlist.vhdl
-- Design      : design_0_axis_red_pitaya_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc is
  port (
    adc_clk : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 27 downto 0 );
    offset_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    offset_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    bypass : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc : entity is "axis_red_pitaya_adc";
end design_0_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc;

architecture STRUCTURE of design_0_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc is
  signal \^adc_clk\ : STD_LOGIC;
  signal int_clk0 : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_dat_a_reg_calib_reg_n_0_[9]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal int_dat_a_reg_sum : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal int_dat_a_reg_sum0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \int_dat_a_reg_sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_n_1\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_n_2\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__0_n_3\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_n_1\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_n_2\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__1_n_3\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__2_n_2\ : STD_LOGIC;
  signal \int_dat_a_reg_sum0_carry__2_n_3\ : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_i_1_n_0 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_i_2_n_0 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_i_3_n_0 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_i_4_n_0 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_n_0 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_n_1 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_n_2 : STD_LOGIC;
  signal int_dat_a_reg_sum0_carry_n_3 : STD_LOGIC;
  signal int_dat_b_reg_calib : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \int_dat_b_reg_calib[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_calib[9]_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal int_dat_b_reg_sum : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal int_dat_b_reg_sum0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \int_dat_b_reg_sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_n_1\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_n_2\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__0_n_3\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_n_1\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_n_2\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__1_n_3\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__2_n_2\ : STD_LOGIC;
  signal \int_dat_b_reg_sum0_carry__2_n_3\ : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_i_1_n_0 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_i_2_n_0 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_i_3_n_0 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_i_4_n_0 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_n_0 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_n_1 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_n_2 : STD_LOGIC;
  signal int_dat_b_reg_sum0_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in0 : STD_LOGIC;
  signal \NLW_int_dat_a_reg_sum0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_int_dat_a_reg_sum0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_int_dat_b_reg_sum0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_int_dat_b_reg_sum0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of adc_clk_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of adc_clk_inst0 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of adc_clk_inst0 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of adc_clk_inst0 : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of adc_clk_inst0 : label is "IBUFGDS";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_dat_a_reg_calib[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_dat_b_reg_calib[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair16";
begin
  adc_clk <= \^adc_clk\;
adc_clk_inst: unisim.vcomponents.BUFG
     port map (
      I => int_clk0,
      O => \^adc_clk\
    );
adc_clk_inst0: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p,
      IB => adc_clk_n,
      O => int_clk0
    );
\int_dat_a_reg_calib[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(0),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(0)
    );
\int_dat_a_reg_calib[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(10),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(10)
    );
\int_dat_a_reg_calib[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(11),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(11)
    );
\int_dat_a_reg_calib[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(12),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(12)
    );
\int_dat_a_reg_calib[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(1),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(1)
    );
\int_dat_a_reg_calib[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(2),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(2)
    );
\int_dat_a_reg_calib[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(3),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(3)
    );
\int_dat_a_reg_calib[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(4),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(4)
    );
\int_dat_a_reg_calib[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(5),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(5)
    );
\int_dat_a_reg_calib[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(6),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(6)
    );
\int_dat_a_reg_calib[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(7),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(7)
    );
\int_dat_a_reg_calib[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(8),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(8)
    );
\int_dat_a_reg_calib[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_a_reg_sum(9),
      I1 => int_dat_a_reg_sum(14),
      I2 => int_dat_a_reg_sum(13),
      O => p_0_in(9)
    );
\int_dat_a_reg_calib_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(0),
      Q => \int_dat_a_reg_calib_reg_n_0_[0]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(10),
      Q => \int_dat_a_reg_calib_reg_n_0_[10]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(11),
      Q => \int_dat_a_reg_calib_reg_n_0_[11]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(12),
      Q => \int_dat_a_reg_calib_reg_n_0_[12]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum(14),
      Q => p_0_in0,
      R => '0'
    );
\int_dat_a_reg_calib_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(1),
      Q => \int_dat_a_reg_calib_reg_n_0_[1]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(2),
      Q => \int_dat_a_reg_calib_reg_n_0_[2]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(3),
      Q => \int_dat_a_reg_calib_reg_n_0_[3]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(4),
      Q => \int_dat_a_reg_calib_reg_n_0_[4]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(5),
      Q => \int_dat_a_reg_calib_reg_n_0_[5]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(6),
      Q => \int_dat_a_reg_calib_reg_n_0_[6]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(7),
      Q => \int_dat_a_reg_calib_reg_n_0_[7]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(8),
      Q => \int_dat_a_reg_calib_reg_n_0_[8]\,
      R => '0'
    );
\int_dat_a_reg_calib_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_in(9),
      Q => \int_dat_a_reg_calib_reg_n_0_[9]\,
      R => '0'
    );
\int_dat_a_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(0),
      Q => \int_dat_a_reg_reg_n_0_[0]\,
      R => '0'
    );
\int_dat_a_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(10),
      Q => \int_dat_a_reg_reg_n_0_[10]\,
      R => '0'
    );
\int_dat_a_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(11),
      Q => \int_dat_a_reg_reg_n_0_[11]\,
      R => '0'
    );
\int_dat_a_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(12),
      Q => \int_dat_a_reg_reg_n_0_[12]\,
      R => '0'
    );
\int_dat_a_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(13),
      Q => p_1_in0,
      R => '0'
    );
\int_dat_a_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(1),
      Q => \int_dat_a_reg_reg_n_0_[1]\,
      R => '0'
    );
\int_dat_a_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(2),
      Q => \int_dat_a_reg_reg_n_0_[2]\,
      R => '0'
    );
\int_dat_a_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(3),
      Q => \int_dat_a_reg_reg_n_0_[3]\,
      R => '0'
    );
\int_dat_a_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(4),
      Q => \int_dat_a_reg_reg_n_0_[4]\,
      R => '0'
    );
\int_dat_a_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(5),
      Q => \int_dat_a_reg_reg_n_0_[5]\,
      R => '0'
    );
\int_dat_a_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(6),
      Q => \int_dat_a_reg_reg_n_0_[6]\,
      R => '0'
    );
\int_dat_a_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(7),
      Q => \int_dat_a_reg_reg_n_0_[7]\,
      R => '0'
    );
\int_dat_a_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(8),
      Q => \int_dat_a_reg_reg_n_0_[8]\,
      R => '0'
    );
\int_dat_a_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(9),
      Q => \int_dat_a_reg_reg_n_0_[9]\,
      R => '0'
    );
int_dat_a_reg_sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => int_dat_a_reg_sum0_carry_n_0,
      CO(2) => int_dat_a_reg_sum0_carry_n_1,
      CO(1) => int_dat_a_reg_sum0_carry_n_2,
      CO(0) => int_dat_a_reg_sum0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => offset_a(3 downto 0),
      O(3 downto 0) => int_dat_a_reg_sum0(3 downto 0),
      S(3) => int_dat_a_reg_sum0_carry_i_1_n_0,
      S(2) => int_dat_a_reg_sum0_carry_i_2_n_0,
      S(1) => int_dat_a_reg_sum0_carry_i_3_n_0,
      S(0) => int_dat_a_reg_sum0_carry_i_4_n_0
    );
\int_dat_a_reg_sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => int_dat_a_reg_sum0_carry_n_0,
      CO(3) => \int_dat_a_reg_sum0_carry__0_n_0\,
      CO(2) => \int_dat_a_reg_sum0_carry__0_n_1\,
      CO(1) => \int_dat_a_reg_sum0_carry__0_n_2\,
      CO(0) => \int_dat_a_reg_sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => offset_a(7 downto 4),
      O(3 downto 0) => int_dat_a_reg_sum0(7 downto 4),
      S(3) => \int_dat_a_reg_sum0_carry__0_i_1_n_0\,
      S(2) => \int_dat_a_reg_sum0_carry__0_i_2_n_0\,
      S(1) => \int_dat_a_reg_sum0_carry__0_i_3_n_0\,
      S(0) => \int_dat_a_reg_sum0_carry__0_i_4_n_0\
    );
\int_dat_a_reg_sum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(7),
      I1 => \int_dat_a_reg_reg_n_0_[7]\,
      O => \int_dat_a_reg_sum0_carry__0_i_1_n_0\
    );
\int_dat_a_reg_sum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(6),
      I1 => \int_dat_a_reg_reg_n_0_[6]\,
      O => \int_dat_a_reg_sum0_carry__0_i_2_n_0\
    );
\int_dat_a_reg_sum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(5),
      I1 => \int_dat_a_reg_reg_n_0_[5]\,
      O => \int_dat_a_reg_sum0_carry__0_i_3_n_0\
    );
\int_dat_a_reg_sum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(4),
      I1 => \int_dat_a_reg_reg_n_0_[4]\,
      O => \int_dat_a_reg_sum0_carry__0_i_4_n_0\
    );
\int_dat_a_reg_sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_dat_a_reg_sum0_carry__0_n_0\,
      CO(3) => \int_dat_a_reg_sum0_carry__1_n_0\,
      CO(2) => \int_dat_a_reg_sum0_carry__1_n_1\,
      CO(1) => \int_dat_a_reg_sum0_carry__1_n_2\,
      CO(0) => \int_dat_a_reg_sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => offset_a(11 downto 8),
      O(3 downto 0) => int_dat_a_reg_sum0(11 downto 8),
      S(3) => \int_dat_a_reg_sum0_carry__1_i_1_n_0\,
      S(2) => \int_dat_a_reg_sum0_carry__1_i_2_n_0\,
      S(1) => \int_dat_a_reg_sum0_carry__1_i_3_n_0\,
      S(0) => \int_dat_a_reg_sum0_carry__1_i_4_n_0\
    );
\int_dat_a_reg_sum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(11),
      I1 => \int_dat_a_reg_reg_n_0_[11]\,
      O => \int_dat_a_reg_sum0_carry__1_i_1_n_0\
    );
\int_dat_a_reg_sum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(10),
      I1 => \int_dat_a_reg_reg_n_0_[10]\,
      O => \int_dat_a_reg_sum0_carry__1_i_2_n_0\
    );
\int_dat_a_reg_sum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(9),
      I1 => \int_dat_a_reg_reg_n_0_[9]\,
      O => \int_dat_a_reg_sum0_carry__1_i_3_n_0\
    );
\int_dat_a_reg_sum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(8),
      I1 => \int_dat_a_reg_reg_n_0_[8]\,
      O => \int_dat_a_reg_sum0_carry__1_i_4_n_0\
    );
\int_dat_a_reg_sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_dat_a_reg_sum0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_int_dat_a_reg_sum0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_dat_a_reg_sum0_carry__2_n_2\,
      CO(0) => \int_dat_a_reg_sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \int_dat_a_reg_sum0_carry__2_i_1_n_0\,
      DI(0) => offset_a(12),
      O(3) => \NLW_int_dat_a_reg_sum0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => int_dat_a_reg_sum0(14 downto 12),
      S(3 downto 2) => B"01",
      S(1) => \int_dat_a_reg_sum0_carry__2_i_2_n_0\,
      S(0) => \int_dat_a_reg_sum0_carry__2_i_3_n_0\
    );
\int_dat_a_reg_sum0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => offset_a(13),
      O => \int_dat_a_reg_sum0_carry__2_i_1_n_0\
    );
\int_dat_a_reg_sum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_a(13),
      I1 => p_1_in0,
      O => \int_dat_a_reg_sum0_carry__2_i_2_n_0\
    );
\int_dat_a_reg_sum0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(12),
      I1 => \int_dat_a_reg_reg_n_0_[12]\,
      O => \int_dat_a_reg_sum0_carry__2_i_3_n_0\
    );
int_dat_a_reg_sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(3),
      I1 => \int_dat_a_reg_reg_n_0_[3]\,
      O => int_dat_a_reg_sum0_carry_i_1_n_0
    );
int_dat_a_reg_sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(2),
      I1 => \int_dat_a_reg_reg_n_0_[2]\,
      O => int_dat_a_reg_sum0_carry_i_2_n_0
    );
int_dat_a_reg_sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(1),
      I1 => \int_dat_a_reg_reg_n_0_[1]\,
      O => int_dat_a_reg_sum0_carry_i_3_n_0
    );
int_dat_a_reg_sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_a(0),
      I1 => \int_dat_a_reg_reg_n_0_[0]\,
      O => int_dat_a_reg_sum0_carry_i_4_n_0
    );
\int_dat_a_reg_sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(0),
      Q => int_dat_a_reg_sum(0),
      R => '0'
    );
\int_dat_a_reg_sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(10),
      Q => int_dat_a_reg_sum(10),
      R => '0'
    );
\int_dat_a_reg_sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(11),
      Q => int_dat_a_reg_sum(11),
      R => '0'
    );
\int_dat_a_reg_sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(12),
      Q => int_dat_a_reg_sum(12),
      R => '0'
    );
\int_dat_a_reg_sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(13),
      Q => int_dat_a_reg_sum(13),
      R => '0'
    );
\int_dat_a_reg_sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(14),
      Q => int_dat_a_reg_sum(14),
      R => '0'
    );
\int_dat_a_reg_sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(1),
      Q => int_dat_a_reg_sum(1),
      R => '0'
    );
\int_dat_a_reg_sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(2),
      Q => int_dat_a_reg_sum(2),
      R => '0'
    );
\int_dat_a_reg_sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(3),
      Q => int_dat_a_reg_sum(3),
      R => '0'
    );
\int_dat_a_reg_sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(4),
      Q => int_dat_a_reg_sum(4),
      R => '0'
    );
\int_dat_a_reg_sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(5),
      Q => int_dat_a_reg_sum(5),
      R => '0'
    );
\int_dat_a_reg_sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(6),
      Q => int_dat_a_reg_sum(6),
      R => '0'
    );
\int_dat_a_reg_sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(7),
      Q => int_dat_a_reg_sum(7),
      R => '0'
    );
\int_dat_a_reg_sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(8),
      Q => int_dat_a_reg_sum(8),
      R => '0'
    );
\int_dat_a_reg_sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_a_reg_sum0(9),
      Q => int_dat_a_reg_sum(9),
      R => '0'
    );
\int_dat_b_reg_calib[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(0),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[0]_i_1_n_0\
    );
\int_dat_b_reg_calib[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(10),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[10]_i_1_n_0\
    );
\int_dat_b_reg_calib[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(11),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[11]_i_1_n_0\
    );
\int_dat_b_reg_calib[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(12),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[12]_i_1_n_0\
    );
\int_dat_b_reg_calib[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(1),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[1]_i_1_n_0\
    );
\int_dat_b_reg_calib[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(2),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[2]_i_1_n_0\
    );
\int_dat_b_reg_calib[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(3),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[3]_i_1_n_0\
    );
\int_dat_b_reg_calib[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(4),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[4]_i_1_n_0\
    );
\int_dat_b_reg_calib[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(5),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[5]_i_1_n_0\
    );
\int_dat_b_reg_calib[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(6),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[6]_i_1_n_0\
    );
\int_dat_b_reg_calib[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(7),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[7]_i_1_n_0\
    );
\int_dat_b_reg_calib[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(8),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[8]_i_1_n_0\
    );
\int_dat_b_reg_calib[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => int_dat_b_reg_sum(9),
      I1 => int_dat_b_reg_sum(14),
      I2 => int_dat_b_reg_sum(13),
      O => \int_dat_b_reg_calib[9]_i_1_n_0\
    );
\int_dat_b_reg_calib_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[0]_i_1_n_0\,
      Q => int_dat_b_reg_calib(0),
      R => '0'
    );
\int_dat_b_reg_calib_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[10]_i_1_n_0\,
      Q => int_dat_b_reg_calib(10),
      R => '0'
    );
\int_dat_b_reg_calib_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[11]_i_1_n_0\,
      Q => int_dat_b_reg_calib(11),
      R => '0'
    );
\int_dat_b_reg_calib_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[12]_i_1_n_0\,
      Q => int_dat_b_reg_calib(12),
      R => '0'
    );
\int_dat_b_reg_calib_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum(14),
      Q => int_dat_b_reg_calib(13),
      R => '0'
    );
\int_dat_b_reg_calib_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[1]_i_1_n_0\,
      Q => int_dat_b_reg_calib(1),
      R => '0'
    );
\int_dat_b_reg_calib_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[2]_i_1_n_0\,
      Q => int_dat_b_reg_calib(2),
      R => '0'
    );
\int_dat_b_reg_calib_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[3]_i_1_n_0\,
      Q => int_dat_b_reg_calib(3),
      R => '0'
    );
\int_dat_b_reg_calib_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[4]_i_1_n_0\,
      Q => int_dat_b_reg_calib(4),
      R => '0'
    );
\int_dat_b_reg_calib_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[5]_i_1_n_0\,
      Q => int_dat_b_reg_calib(5),
      R => '0'
    );
\int_dat_b_reg_calib_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[6]_i_1_n_0\,
      Q => int_dat_b_reg_calib(6),
      R => '0'
    );
\int_dat_b_reg_calib_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[7]_i_1_n_0\,
      Q => int_dat_b_reg_calib(7),
      R => '0'
    );
\int_dat_b_reg_calib_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[8]_i_1_n_0\,
      Q => int_dat_b_reg_calib(8),
      R => '0'
    );
\int_dat_b_reg_calib_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \int_dat_b_reg_calib[9]_i_1_n_0\,
      Q => int_dat_b_reg_calib(9),
      R => '0'
    );
\int_dat_b_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(0),
      Q => \int_dat_b_reg_reg_n_0_[0]\,
      R => '0'
    );
\int_dat_b_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(10),
      Q => \int_dat_b_reg_reg_n_0_[10]\,
      R => '0'
    );
\int_dat_b_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(11),
      Q => \int_dat_b_reg_reg_n_0_[11]\,
      R => '0'
    );
\int_dat_b_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(12),
      Q => \int_dat_b_reg_reg_n_0_[12]\,
      R => '0'
    );
\int_dat_b_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(13),
      Q => \int_dat_b_reg_reg_n_0_[13]\,
      R => '0'
    );
\int_dat_b_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(1),
      Q => \int_dat_b_reg_reg_n_0_[1]\,
      R => '0'
    );
\int_dat_b_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(2),
      Q => \int_dat_b_reg_reg_n_0_[2]\,
      R => '0'
    );
\int_dat_b_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(3),
      Q => \int_dat_b_reg_reg_n_0_[3]\,
      R => '0'
    );
\int_dat_b_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(4),
      Q => \int_dat_b_reg_reg_n_0_[4]\,
      R => '0'
    );
\int_dat_b_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(5),
      Q => \int_dat_b_reg_reg_n_0_[5]\,
      R => '0'
    );
\int_dat_b_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(6),
      Q => \int_dat_b_reg_reg_n_0_[6]\,
      R => '0'
    );
\int_dat_b_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(7),
      Q => \int_dat_b_reg_reg_n_0_[7]\,
      R => '0'
    );
\int_dat_b_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(8),
      Q => \int_dat_b_reg_reg_n_0_[8]\,
      R => '0'
    );
\int_dat_b_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b(9),
      Q => \int_dat_b_reg_reg_n_0_[9]\,
      R => '0'
    );
int_dat_b_reg_sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => int_dat_b_reg_sum0_carry_n_0,
      CO(2) => int_dat_b_reg_sum0_carry_n_1,
      CO(1) => int_dat_b_reg_sum0_carry_n_2,
      CO(0) => int_dat_b_reg_sum0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => offset_b(3 downto 0),
      O(3 downto 0) => int_dat_b_reg_sum0(3 downto 0),
      S(3) => int_dat_b_reg_sum0_carry_i_1_n_0,
      S(2) => int_dat_b_reg_sum0_carry_i_2_n_0,
      S(1) => int_dat_b_reg_sum0_carry_i_3_n_0,
      S(0) => int_dat_b_reg_sum0_carry_i_4_n_0
    );
\int_dat_b_reg_sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => int_dat_b_reg_sum0_carry_n_0,
      CO(3) => \int_dat_b_reg_sum0_carry__0_n_0\,
      CO(2) => \int_dat_b_reg_sum0_carry__0_n_1\,
      CO(1) => \int_dat_b_reg_sum0_carry__0_n_2\,
      CO(0) => \int_dat_b_reg_sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => offset_b(7 downto 4),
      O(3 downto 0) => int_dat_b_reg_sum0(7 downto 4),
      S(3) => \int_dat_b_reg_sum0_carry__0_i_1_n_0\,
      S(2) => \int_dat_b_reg_sum0_carry__0_i_2_n_0\,
      S(1) => \int_dat_b_reg_sum0_carry__0_i_3_n_0\,
      S(0) => \int_dat_b_reg_sum0_carry__0_i_4_n_0\
    );
\int_dat_b_reg_sum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(7),
      I1 => \int_dat_b_reg_reg_n_0_[7]\,
      O => \int_dat_b_reg_sum0_carry__0_i_1_n_0\
    );
\int_dat_b_reg_sum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(6),
      I1 => \int_dat_b_reg_reg_n_0_[6]\,
      O => \int_dat_b_reg_sum0_carry__0_i_2_n_0\
    );
\int_dat_b_reg_sum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(5),
      I1 => \int_dat_b_reg_reg_n_0_[5]\,
      O => \int_dat_b_reg_sum0_carry__0_i_3_n_0\
    );
\int_dat_b_reg_sum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(4),
      I1 => \int_dat_b_reg_reg_n_0_[4]\,
      O => \int_dat_b_reg_sum0_carry__0_i_4_n_0\
    );
\int_dat_b_reg_sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_dat_b_reg_sum0_carry__0_n_0\,
      CO(3) => \int_dat_b_reg_sum0_carry__1_n_0\,
      CO(2) => \int_dat_b_reg_sum0_carry__1_n_1\,
      CO(1) => \int_dat_b_reg_sum0_carry__1_n_2\,
      CO(0) => \int_dat_b_reg_sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => offset_b(11 downto 8),
      O(3 downto 0) => int_dat_b_reg_sum0(11 downto 8),
      S(3) => \int_dat_b_reg_sum0_carry__1_i_1_n_0\,
      S(2) => \int_dat_b_reg_sum0_carry__1_i_2_n_0\,
      S(1) => \int_dat_b_reg_sum0_carry__1_i_3_n_0\,
      S(0) => \int_dat_b_reg_sum0_carry__1_i_4_n_0\
    );
\int_dat_b_reg_sum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(11),
      I1 => \int_dat_b_reg_reg_n_0_[11]\,
      O => \int_dat_b_reg_sum0_carry__1_i_1_n_0\
    );
\int_dat_b_reg_sum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(10),
      I1 => \int_dat_b_reg_reg_n_0_[10]\,
      O => \int_dat_b_reg_sum0_carry__1_i_2_n_0\
    );
\int_dat_b_reg_sum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(9),
      I1 => \int_dat_b_reg_reg_n_0_[9]\,
      O => \int_dat_b_reg_sum0_carry__1_i_3_n_0\
    );
\int_dat_b_reg_sum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(8),
      I1 => \int_dat_b_reg_reg_n_0_[8]\,
      O => \int_dat_b_reg_sum0_carry__1_i_4_n_0\
    );
\int_dat_b_reg_sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_dat_b_reg_sum0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_int_dat_b_reg_sum0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_dat_b_reg_sum0_carry__2_n_2\,
      CO(0) => \int_dat_b_reg_sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \int_dat_b_reg_sum0_carry__2_i_1_n_0\,
      DI(0) => offset_b(12),
      O(3) => \NLW_int_dat_b_reg_sum0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => int_dat_b_reg_sum0(14 downto 12),
      S(3 downto 2) => B"01",
      S(1) => \int_dat_b_reg_sum0_carry__2_i_2_n_0\,
      S(0) => \int_dat_b_reg_sum0_carry__2_i_3_n_0\
    );
\int_dat_b_reg_sum0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => offset_b(13),
      O => \int_dat_b_reg_sum0_carry__2_i_1_n_0\
    );
\int_dat_b_reg_sum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => offset_b(13),
      I1 => \int_dat_b_reg_reg_n_0_[13]\,
      O => \int_dat_b_reg_sum0_carry__2_i_2_n_0\
    );
\int_dat_b_reg_sum0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(12),
      I1 => \int_dat_b_reg_reg_n_0_[12]\,
      O => \int_dat_b_reg_sum0_carry__2_i_3_n_0\
    );
int_dat_b_reg_sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(3),
      I1 => \int_dat_b_reg_reg_n_0_[3]\,
      O => int_dat_b_reg_sum0_carry_i_1_n_0
    );
int_dat_b_reg_sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(2),
      I1 => \int_dat_b_reg_reg_n_0_[2]\,
      O => int_dat_b_reg_sum0_carry_i_2_n_0
    );
int_dat_b_reg_sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(1),
      I1 => \int_dat_b_reg_reg_n_0_[1]\,
      O => int_dat_b_reg_sum0_carry_i_3_n_0
    );
int_dat_b_reg_sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_b(0),
      I1 => \int_dat_b_reg_reg_n_0_[0]\,
      O => int_dat_b_reg_sum0_carry_i_4_n_0
    );
\int_dat_b_reg_sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(0),
      Q => int_dat_b_reg_sum(0),
      R => '0'
    );
\int_dat_b_reg_sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(10),
      Q => int_dat_b_reg_sum(10),
      R => '0'
    );
\int_dat_b_reg_sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(11),
      Q => int_dat_b_reg_sum(11),
      R => '0'
    );
\int_dat_b_reg_sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(12),
      Q => int_dat_b_reg_sum(12),
      R => '0'
    );
\int_dat_b_reg_sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(13),
      Q => int_dat_b_reg_sum(13),
      R => '0'
    );
\int_dat_b_reg_sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(14),
      Q => int_dat_b_reg_sum(14),
      R => '0'
    );
\int_dat_b_reg_sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(1),
      Q => int_dat_b_reg_sum(1),
      R => '0'
    );
\int_dat_b_reg_sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(2),
      Q => int_dat_b_reg_sum(2),
      R => '0'
    );
\int_dat_b_reg_sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(3),
      Q => int_dat_b_reg_sum(3),
      R => '0'
    );
\int_dat_b_reg_sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(4),
      Q => int_dat_b_reg_sum(4),
      R => '0'
    );
\int_dat_b_reg_sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(5),
      Q => int_dat_b_reg_sum(5),
      R => '0'
    );
\int_dat_b_reg_sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(6),
      Q => int_dat_b_reg_sum(6),
      R => '0'
    );
\int_dat_b_reg_sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(7),
      Q => int_dat_b_reg_sum(7),
      R => '0'
    );
\int_dat_b_reg_sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(8),
      Q => int_dat_b_reg_sum(8),
      R => '0'
    );
\int_dat_b_reg_sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => int_dat_b_reg_sum0(9),
      Q => int_dat_b_reg_sum(9),
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[0]\,
      I1 => \int_dat_a_reg_reg_n_0_[0]\,
      I2 => bypass,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[10]\,
      I1 => \int_dat_a_reg_reg_n_0_[10]\,
      I2 => bypass,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[11]\,
      I1 => \int_dat_a_reg_reg_n_0_[11]\,
      I2 => bypass,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[12]\,
      I1 => \int_dat_a_reg_reg_n_0_[12]\,
      I2 => bypass,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => p_0_in0,
      I1 => p_1_in0,
      I2 => bypass,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(0),
      I1 => \int_dat_b_reg_reg_n_0_[0]\,
      I2 => bypass,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(1),
      I1 => \int_dat_b_reg_reg_n_0_[1]\,
      I2 => bypass,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(2),
      I1 => \int_dat_b_reg_reg_n_0_[2]\,
      I2 => bypass,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(3),
      I1 => \int_dat_b_reg_reg_n_0_[3]\,
      I2 => bypass,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[1]\,
      I1 => \int_dat_a_reg_reg_n_0_[1]\,
      I2 => bypass,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(4),
      I1 => \int_dat_b_reg_reg_n_0_[4]\,
      I2 => bypass,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(5),
      I1 => \int_dat_b_reg_reg_n_0_[5]\,
      I2 => bypass,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(6),
      I1 => \int_dat_b_reg_reg_n_0_[6]\,
      I2 => bypass,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(7),
      I1 => \int_dat_b_reg_reg_n_0_[7]\,
      I2 => bypass,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(8),
      I1 => \int_dat_b_reg_reg_n_0_[8]\,
      I2 => bypass,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(9),
      I1 => \int_dat_b_reg_reg_n_0_[9]\,
      I2 => bypass,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(10),
      I1 => \int_dat_b_reg_reg_n_0_[10]\,
      I2 => bypass,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(11),
      I1 => \int_dat_b_reg_reg_n_0_[11]\,
      I2 => bypass,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => int_dat_b_reg_calib(12),
      I1 => \int_dat_b_reg_reg_n_0_[12]\,
      I2 => bypass,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => int_dat_b_reg_calib(13),
      I1 => \int_dat_b_reg_reg_n_0_[13]\,
      I2 => bypass,
      O => m_axis_tdata(27)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[2]\,
      I1 => \int_dat_a_reg_reg_n_0_[2]\,
      I2 => bypass,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[3]\,
      I1 => \int_dat_a_reg_reg_n_0_[3]\,
      I2 => bypass,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[4]\,
      I1 => \int_dat_a_reg_reg_n_0_[4]\,
      I2 => bypass,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[5]\,
      I1 => \int_dat_a_reg_reg_n_0_[5]\,
      I2 => bypass,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[6]\,
      I1 => \int_dat_a_reg_reg_n_0_[6]\,
      I2 => bypass,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[7]\,
      I1 => \int_dat_a_reg_reg_n_0_[7]\,
      I2 => bypass,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[8]\,
      I1 => \int_dat_a_reg_reg_n_0_[8]\,
      I2 => bypass,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \int_dat_a_reg_calib_reg_n_0_[9]\,
      I1 => \int_dat_a_reg_reg_n_0_[9]\,
      I2 => bypass,
      O => m_axis_tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_axis_red_pitaya_adc_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_axis_red_pitaya_adc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_axis_red_pitaya_adc_0_0 : entity is "design_0_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_axis_red_pitaya_adc_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_axis_red_pitaya_adc_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_axis_red_pitaya_adc_0_0 : entity is "axis_red_pitaya_adc,Vivado 2024.2";
end design_0_axis_red_pitaya_adc_0_0;

architecture STRUCTURE of design_0_axis_red_pitaya_adc_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of adc_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_adc_0_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_n : signal is "xilinx.com:signal:clock:1.0 adc_clk_n CLK";
  attribute X_INTERFACE_MODE of adc_clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_clk_n : signal is "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_b, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_p : signal is "xilinx.com:signal:clock:1.0 adc_clk_p CLK";
  attribute X_INTERFACE_MODE of adc_clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc_clk_p : signal is "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_a, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  adc_csn <= \<const1>\;
  m_axis_tdata(31) <= \^m_axis_tdata\(31);
  m_axis_tdata(30) <= \^m_axis_tdata\(31);
  m_axis_tdata(29) <= \^m_axis_tdata\(31);
  m_axis_tdata(28 downto 15) <= \^m_axis_tdata\(28 downto 15);
  m_axis_tdata(14) <= \^m_axis_tdata\(15);
  m_axis_tdata(13) <= \^m_axis_tdata\(15);
  m_axis_tdata(12 downto 0) <= \^m_axis_tdata\(12 downto 0);
  m_axis_tvalid <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_0_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc
     port map (
      adc_clk => adc_clk,
      adc_clk_n => adc_clk_n,
      adc_clk_p => adc_clk_p,
      adc_dat_a(13 downto 0) => adc_dat_a(13 downto 0),
      adc_dat_b(13 downto 0) => adc_dat_b(13 downto 0),
      bypass => bypass,
      m_axis_tdata(27) => \^m_axis_tdata\(31),
      m_axis_tdata(26 downto 13) => \^m_axis_tdata\(28 downto 15),
      m_axis_tdata(12 downto 0) => \^m_axis_tdata\(12 downto 0),
      offset_a(13 downto 0) => offset_a(13 downto 0),
      offset_b(13 downto 0) => offset_b(13 downto 0)
    );
end STRUCTURE;
