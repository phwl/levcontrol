-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Jan 12 18:11:58 2026
-- Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_cfg_load_controller_0_0/design_0_cfg_load_controller_0_0_sim_netlist.vhdl
-- Design      : design_0_cfg_load_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_cfg_load_controller_0_0_axil_reg_if_rd is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    read_state_reg : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 30 downto 0 );
    s_axil_arvalid_reg_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    read_state : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    reg_rd_ack : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    \s_axil_rdata_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_cfg_load_controller_0_0_axil_reg_if_rd : entity is "axil_reg_if_rd";
end design_0_cfg_load_controller_0_0_axil_reg_if_rd;

architecture STRUCTURE of design_0_cfg_load_controller_0_0_axil_reg_if_rd is
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal reg_rd_en : STD_LOGIC;
  signal reg_rd_en_next : STD_LOGIC;
  signal reg_rd_en_reg_i_2_n_0 : STD_LOGIC;
  signal s_axil_arvalid_next1 : STD_LOGIC;
  signal s_axil_arvalid_next1_in : STD_LOGIC;
  signal s_axil_arvalid_reg : STD_LOGIC;
  signal s_axil_rvalid_next : STD_LOGIC;
  signal timeout_count_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \timeout_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_count_reg[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of read_state_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of reg_rd_en_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of reg_rd_en_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timeout_count_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \timeout_count_reg[1]_i_1\ : label is "soft_lutpair1";
begin
  S_AXI_RVALID <= \^s_axi_rvalid\;
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axil_arvalid_reg,
      O => S_AXI_ARREADY
    );
read_state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => read_state,
      I1 => reg_rd_en,
      O => read_state_reg
    );
reg_rd_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C800FA00"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => S_AXI_RREADY,
      I2 => s_axil_arvalid_reg,
      I3 => reg_rd_en_reg_i_2_n_0,
      I4 => \^s_axi_rvalid\,
      O => reg_rd_en_next
    );
reg_rd_en_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => reg_rd_ack,
      I1 => timeout_count_reg(1),
      I2 => timeout_count_reg(0),
      I3 => reg_rd_en,
      O => reg_rd_en_reg_i_2_n_0
    );
reg_rd_en_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => reg_rd_en_next,
      Q => reg_rd_en,
      R => s_axil_arvalid_reg_reg_0
    );
s_axil_arvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333FFF3AAAAAAAA"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => reg_rd_en,
      I2 => timeout_count_reg(0),
      I3 => timeout_count_reg(1),
      I4 => reg_rd_ack,
      I5 => s_axil_arvalid_reg,
      O => s_axil_arvalid_next1_in
    );
s_axil_arvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axil_arvalid_next1_in,
      Q => s_axil_arvalid_reg,
      R => s_axil_arvalid_reg_reg_0
    );
\s_axil_rdata_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => reg_rd_ack,
      I1 => timeout_count_reg(0),
      I2 => timeout_count_reg(1),
      I3 => reg_rd_en,
      O => s_axil_arvalid_next1
    );
\s_axil_rdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(0),
      Q => S_AXI_RDATA(0),
      R => '0'
    );
\s_axil_rdata_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(9),
      Q => S_AXI_RDATA(9),
      R => '0'
    );
\s_axil_rdata_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(10),
      Q => S_AXI_RDATA(10),
      R => '0'
    );
\s_axil_rdata_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(11),
      Q => S_AXI_RDATA(11),
      R => '0'
    );
\s_axil_rdata_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(12),
      Q => S_AXI_RDATA(12),
      R => '0'
    );
\s_axil_rdata_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(13),
      Q => S_AXI_RDATA(13),
      R => '0'
    );
\s_axil_rdata_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(14),
      Q => S_AXI_RDATA(14),
      R => '0'
    );
\s_axil_rdata_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(15),
      Q => S_AXI_RDATA(15),
      R => '0'
    );
\s_axil_rdata_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(16),
      Q => S_AXI_RDATA(16),
      R => '0'
    );
\s_axil_rdata_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(17),
      Q => S_AXI_RDATA(17),
      R => '0'
    );
\s_axil_rdata_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(18),
      Q => S_AXI_RDATA(18),
      R => '0'
    );
\s_axil_rdata_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(19),
      Q => S_AXI_RDATA(19),
      R => '0'
    );
\s_axil_rdata_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(20),
      Q => S_AXI_RDATA(20),
      R => '0'
    );
\s_axil_rdata_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(21),
      Q => S_AXI_RDATA(21),
      R => '0'
    );
\s_axil_rdata_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(22),
      Q => S_AXI_RDATA(22),
      R => '0'
    );
\s_axil_rdata_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(23),
      Q => S_AXI_RDATA(23),
      R => '0'
    );
\s_axil_rdata_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(24),
      Q => S_AXI_RDATA(24),
      R => '0'
    );
\s_axil_rdata_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(25),
      Q => S_AXI_RDATA(25),
      R => '0'
    );
\s_axil_rdata_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(26),
      Q => S_AXI_RDATA(26),
      R => '0'
    );
\s_axil_rdata_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(27),
      Q => S_AXI_RDATA(27),
      R => '0'
    );
\s_axil_rdata_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(28),
      Q => S_AXI_RDATA(28),
      R => '0'
    );
\s_axil_rdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(1),
      Q => S_AXI_RDATA(1),
      R => '0'
    );
\s_axil_rdata_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(29),
      Q => S_AXI_RDATA(29),
      R => '0'
    );
\s_axil_rdata_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(30),
      Q => S_AXI_RDATA(30),
      R => '0'
    );
\s_axil_rdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(2),
      Q => S_AXI_RDATA(2),
      R => '0'
    );
\s_axil_rdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(3),
      Q => S_AXI_RDATA(3),
      R => '0'
    );
\s_axil_rdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(4),
      Q => S_AXI_RDATA(4),
      R => '0'
    );
\s_axil_rdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(5),
      Q => S_AXI_RDATA(5),
      R => '0'
    );
\s_axil_rdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(6),
      Q => S_AXI_RDATA(6),
      R => '0'
    );
\s_axil_rdata_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(7),
      Q => S_AXI_RDATA(7),
      R => '0'
    );
\s_axil_rdata_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axil_arvalid_next1,
      D => \s_axil_rdata_reg_reg[31]_0\(8),
      Q => S_AXI_RDATA(8),
      R => '0'
    );
s_axil_rvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD555DCCCC000C"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => reg_rd_en,
      I2 => timeout_count_reg(1),
      I3 => timeout_count_reg(0),
      I4 => reg_rd_ack,
      I5 => \^s_axi_rvalid\,
      O => s_axil_rvalid_next
    );
s_axil_rvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axil_rvalid_next,
      Q => \^s_axi_rvalid\,
      R => s_axil_arvalid_reg_reg_0
    );
\timeout_count_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DF5"
    )
        port map (
      I0 => s_axil_arvalid_reg,
      I1 => timeout_count_reg(1),
      I2 => timeout_count_reg(0),
      I3 => reg_rd_en,
      O => \timeout_count_reg[0]_i_1_n_0\
    );
\timeout_count_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C1DD"
    )
        port map (
      I0 => s_axil_arvalid_reg,
      I1 => timeout_count_reg(1),
      I2 => timeout_count_reg(0),
      I3 => reg_rd_en,
      O => \timeout_count_reg[1]_i_1_n_0\
    );
\timeout_count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \timeout_count_reg[0]_i_1_n_0\,
      Q => timeout_count_reg(0),
      R => '0'
    );
\timeout_count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \timeout_count_reg[1]_i_1_n_0\,
      Q => timeout_count_reg(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_cfg_load_controller_0_0_axil_reg_if_wr is
  port (
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_ARESETN_0 : out STD_LOGIC;
    reg_wr_en_reg_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_wr_ack_reg : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    reg_wr_en_reg_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axil_wdata_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    s_axil_wvalid_reg_reg_inv_0 : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_cfg_load_controller_0_0_axil_reg_if_wr : entity is "axil_reg_if_wr";
end design_0_cfg_load_controller_0_0_axil_reg_if_wr;

architecture STRUCTURE of design_0_cfg_load_controller_0_0_axil_reg_if_wr is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal r_LOAD_CTRL1 : STD_LOGIC;
  signal reg_wr_en_next : STD_LOGIC;
  signal reg_wr_en_reg_i_2_n_0 : STD_LOGIC;
  signal \^reg_wr_en_reg_reg_0\ : STD_LOGIC;
  signal s_axil_awvalid_next2_in : STD_LOGIC;
  signal s_axil_awvalid_reg : STD_LOGIC;
  signal s_axil_bvalid_next : STD_LOGIC;
  signal \s_axil_wstrb_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_axil_wstrb_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal s_axil_wvalid_next1_in : STD_LOGIC;
  signal timeout_count_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \timeout_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_count_reg[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_LOAD_CTRL[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_LOAD_CTRL[23]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_LOAD_CTRL[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of reg_wr_ack_i_1 : label is "soft_lutpair4";
  attribute inverted : string;
  attribute inverted of s_axil_wvalid_reg_reg_inv : label is "yes";
  attribute SOFT_HLUTNM of \timeout_count_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timeout_count_reg[1]_i_1\ : label is "soft_lutpair3";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  S_AXI_ARESETN_0 <= \^s_axi_aresetn_0\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  reg_wr_en_reg_reg_0 <= \^reg_wr_en_reg_reg_0\;
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axil_awvalid_reg,
      O => S_AXI_AWREADY
    );
\r_LOAD_CTRL[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_wr_en_reg_reg_0\,
      I1 => r_LOAD_CTRL1,
      O => reg_wr_en_reg_reg_1(1)
    );
\r_LOAD_CTRL[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_wr_en_reg_reg_0\,
      I1 => \s_axil_wstrb_reg_reg_n_0_[2]\,
      O => reg_wr_en_reg_reg_1(2)
    );
\r_LOAD_CTRL[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_wr_en_reg_reg_0\,
      I1 => \s_axil_wstrb_reg_reg_n_0_[3]\,
      O => reg_wr_en_reg_reg_1(3)
    );
\r_LOAD_CTRL[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_wr_en_reg_reg_0\,
      I1 => \^q\(0),
      O => reg_wr_en_reg_reg_1(0)
    );
reg_wr_ack_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => s_axil_wvalid_reg_reg_inv_0,
      I1 => \^reg_wr_en_reg_reg_0\,
      O => reg_wr_ack_reg
    );
reg_wr_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80A0C0F0"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => reg_wr_en_reg_i_2_n_0,
      I3 => \^e\(0),
      I4 => \^s_axi_bvalid\,
      O => reg_wr_en_next
    );
reg_wr_en_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333FFF32222AAA2"
    )
        port map (
      I0 => s_axil_awvalid_reg,
      I1 => \^reg_wr_en_reg_reg_0\,
      I2 => timeout_count_reg(1),
      I3 => timeout_count_reg(0),
      I4 => s_axil_wvalid_reg_reg_inv_0,
      I5 => S_AXI_AWVALID,
      O => reg_wr_en_reg_i_2_n_0
    );
reg_wr_en_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => reg_wr_en_next,
      Q => \^reg_wr_en_reg_reg_0\,
      R => \^s_axi_aresetn_0\
    );
s_axil_awvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54FFFFFF54FF0000"
    )
        port map (
      I0 => s_axil_wvalid_reg_reg_inv_0,
      I1 => timeout_count_reg(0),
      I2 => timeout_count_reg(1),
      I3 => \^reg_wr_en_reg_reg_0\,
      I4 => s_axil_awvalid_reg,
      I5 => S_AXI_AWVALID,
      O => s_axil_awvalid_next2_in
    );
s_axil_awvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axil_awvalid_next2_in,
      Q => s_axil_awvalid_reg,
      R => \^s_axi_aresetn_0\
    );
s_axil_bvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD555DCCCC000C"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^reg_wr_en_reg_reg_0\,
      I2 => timeout_count_reg(0),
      I3 => timeout_count_reg(1),
      I4 => s_axil_wvalid_reg_reg_inv_0,
      I5 => \^s_axi_bvalid\,
      O => s_axil_bvalid_next
    );
s_axil_bvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axil_bvalid_next,
      Q => \^s_axi_bvalid\,
      R => \^s_axi_aresetn_0\
    );
\s_axil_wdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(0),
      Q => \s_axil_wdata_reg_reg[31]_0\(0),
      R => '0'
    );
\s_axil_wdata_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(10),
      Q => \s_axil_wdata_reg_reg[31]_0\(10),
      R => '0'
    );
\s_axil_wdata_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(11),
      Q => \s_axil_wdata_reg_reg[31]_0\(11),
      R => '0'
    );
\s_axil_wdata_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(12),
      Q => \s_axil_wdata_reg_reg[31]_0\(12),
      R => '0'
    );
\s_axil_wdata_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(13),
      Q => \s_axil_wdata_reg_reg[31]_0\(13),
      R => '0'
    );
\s_axil_wdata_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(14),
      Q => \s_axil_wdata_reg_reg[31]_0\(14),
      R => '0'
    );
\s_axil_wdata_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(15),
      Q => \s_axil_wdata_reg_reg[31]_0\(15),
      R => '0'
    );
\s_axil_wdata_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(16),
      Q => \s_axil_wdata_reg_reg[31]_0\(16),
      R => '0'
    );
\s_axil_wdata_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(17),
      Q => \s_axil_wdata_reg_reg[31]_0\(17),
      R => '0'
    );
\s_axil_wdata_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(18),
      Q => \s_axil_wdata_reg_reg[31]_0\(18),
      R => '0'
    );
\s_axil_wdata_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(19),
      Q => \s_axil_wdata_reg_reg[31]_0\(19),
      R => '0'
    );
\s_axil_wdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(1),
      Q => \s_axil_wdata_reg_reg[31]_0\(1),
      R => '0'
    );
\s_axil_wdata_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(20),
      Q => \s_axil_wdata_reg_reg[31]_0\(20),
      R => '0'
    );
\s_axil_wdata_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(21),
      Q => \s_axil_wdata_reg_reg[31]_0\(21),
      R => '0'
    );
\s_axil_wdata_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(22),
      Q => \s_axil_wdata_reg_reg[31]_0\(22),
      R => '0'
    );
\s_axil_wdata_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(23),
      Q => \s_axil_wdata_reg_reg[31]_0\(23),
      R => '0'
    );
\s_axil_wdata_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(24),
      Q => \s_axil_wdata_reg_reg[31]_0\(24),
      R => '0'
    );
\s_axil_wdata_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(25),
      Q => \s_axil_wdata_reg_reg[31]_0\(25),
      R => '0'
    );
\s_axil_wdata_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(26),
      Q => \s_axil_wdata_reg_reg[31]_0\(26),
      R => '0'
    );
\s_axil_wdata_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(27),
      Q => \s_axil_wdata_reg_reg[31]_0\(27),
      R => '0'
    );
\s_axil_wdata_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(28),
      Q => \s_axil_wdata_reg_reg[31]_0\(28),
      R => '0'
    );
\s_axil_wdata_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(29),
      Q => \s_axil_wdata_reg_reg[31]_0\(29),
      R => '0'
    );
\s_axil_wdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(2),
      Q => \s_axil_wdata_reg_reg[31]_0\(2),
      R => '0'
    );
\s_axil_wdata_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(30),
      Q => \s_axil_wdata_reg_reg[31]_0\(30),
      R => '0'
    );
\s_axil_wdata_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(31),
      Q => \s_axil_wdata_reg_reg[31]_0\(31),
      R => '0'
    );
\s_axil_wdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(3),
      Q => \s_axil_wdata_reg_reg[31]_0\(3),
      R => '0'
    );
\s_axil_wdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(4),
      Q => \s_axil_wdata_reg_reg[31]_0\(4),
      R => '0'
    );
\s_axil_wdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(5),
      Q => \s_axil_wdata_reg_reg[31]_0\(5),
      R => '0'
    );
\s_axil_wdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(6),
      Q => \s_axil_wdata_reg_reg[31]_0\(6),
      R => '0'
    );
\s_axil_wdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(7),
      Q => \s_axil_wdata_reg_reg[31]_0\(7),
      R => '0'
    );
\s_axil_wdata_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(8),
      Q => \s_axil_wdata_reg_reg[31]_0\(8),
      R => '0'
    );
\s_axil_wdata_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WDATA(9),
      Q => \s_axil_wdata_reg_reg[31]_0\(9),
      R => '0'
    );
\s_axil_wstrb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WSTRB(0),
      Q => \^q\(0),
      R => '0'
    );
\s_axil_wstrb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WSTRB(1),
      Q => r_LOAD_CTRL1,
      R => '0'
    );
\s_axil_wstrb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WSTRB(2),
      Q => \s_axil_wstrb_reg_reg_n_0_[2]\,
      R => '0'
    );
\s_axil_wstrb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => S_AXI_WSTRB(3),
      Q => \s_axil_wstrb_reg_reg_n_0_[3]\,
      R => '0'
    );
s_axil_wvalid_reg_inv_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^s_axi_aresetn_0\
    );
s_axil_wvalid_reg_inv_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AB00FFFFAB00"
    )
        port map (
      I0 => s_axil_wvalid_reg_reg_inv_0,
      I1 => timeout_count_reg(0),
      I2 => timeout_count_reg(1),
      I3 => \^reg_wr_en_reg_reg_0\,
      I4 => \^e\(0),
      I5 => S_AXI_WVALID,
      O => s_axil_wvalid_next1_in
    );
s_axil_wvalid_reg_reg_inv: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axil_wvalid_next1_in,
      Q => \^e\(0),
      S => \^s_axi_aresetn_0\
    );
\timeout_count_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"31DD"
    )
        port map (
      I0 => s_axil_awvalid_reg,
      I1 => timeout_count_reg(0),
      I2 => timeout_count_reg(1),
      I3 => \^reg_wr_en_reg_reg_0\,
      O => \timeout_count_reg[0]_i_1_n_0\
    );
\timeout_count_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C1F5"
    )
        port map (
      I0 => s_axil_awvalid_reg,
      I1 => timeout_count_reg(0),
      I2 => timeout_count_reg(1),
      I3 => \^reg_wr_en_reg_reg_0\,
      O => \timeout_count_reg[1]_i_1_n_0\
    );
\timeout_count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \timeout_count_reg[0]_i_1_n_0\,
      Q => timeout_count_reg(0),
      R => '0'
    );
\timeout_count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \timeout_count_reg[1]_i_1_n_0\,
      Q => timeout_count_reg(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_cfg_load_controller_0_0_axil_reg_if is
  port (
    S_AXI_BVALID : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_wr_en : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_state_reg : out STD_LOGIC;
    reg_wr_ack_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axil_wdata_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 30 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    reg_wr_en_reg_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    read_state : in STD_LOGIC;
    s_axil_wvalid_reg_reg_inv : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axil_rdata_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    reg_rd_ack : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_cfg_load_controller_0_0_axil_reg_if : entity is "axil_reg_if";
end design_0_cfg_load_controller_0_0_axil_reg_if;

architecture STRUCTURE of design_0_cfg_load_controller_0_0_axil_reg_if is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
axil_reg_if_rd_inst: entity work.design_0_cfg_load_controller_0_0_axil_reg_if_rd
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RDATA(30 downto 0) => S_AXI_RDATA(30 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      read_state => read_state,
      read_state_reg => read_state_reg,
      reg_rd_ack => reg_rd_ack,
      s_axil_arvalid_reg_reg_0 => \^sr\(0),
      \s_axil_rdata_reg_reg[31]_0\(30 downto 0) => \s_axil_rdata_reg_reg[31]\(30 downto 0)
    );
axil_reg_if_wr_inst: entity work.design_0_cfg_load_controller_0_0_axil_reg_if_wr
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => \^sr\(0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      reg_wr_ack_reg => reg_wr_ack_reg,
      reg_wr_en_reg_reg_0 => reg_wr_en,
      reg_wr_en_reg_reg_1(3 downto 0) => reg_wr_en_reg_reg(3 downto 0),
      \s_axil_wdata_reg_reg[31]_0\(31 downto 0) => \s_axil_wdata_reg_reg[31]\(31 downto 0),
      s_axil_wvalid_reg_reg_inv_0 => s_axil_wvalid_reg_reg_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_cfg_load_controller_0_0_cfg_load_controller is
  port (
    cfg_load_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 30 downto 0 );
    cfg_apply : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    cfg_load_done : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_0_cfg_load_controller_0_0_cfg_load_controller : entity is "cfg_load_controller";
end design_0_cfg_load_controller_0_0_cfg_load_controller;

architecture STRUCTURE of design_0_cfg_load_controller_0_0_cfg_load_controller is
  signal axil_reg_if_inst_n_5 : STD_LOGIC;
  signal axil_reg_if_inst_n_6 : STD_LOGIC;
  signal axil_reg_if_inst_n_7 : STD_LOGIC;
  signal axil_reg_if_inst_n_73 : STD_LOGIC;
  signal axil_reg_if_inst_n_74 : STD_LOGIC;
  signal axil_reg_if_inst_n_75 : STD_LOGIC;
  signal axil_reg_if_inst_n_76 : STD_LOGIC;
  signal cfg_apply_i_1_n_0 : STD_LOGIC;
  signal cfg_apply_trigger : STD_LOGIC;
  signal cfg_load_busy : STD_LOGIC;
  signal cfg_load_i_1_n_0 : STD_LOGIC;
  signal \^cfg_load_reg_0\ : STD_LOGIC;
  signal \r_LOAD_CTRL[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_LOAD_CTRL[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_LOAD_CTRL_reg_n_0_[9]\ : STD_LOGIC;
  signal read_state : STD_LOGIC;
  signal reg_rd_ack : STD_LOGIC;
  signal \reg_rd_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_rd_data_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_wr_ack_reg_n_0 : STD_LOGIC;
  signal reg_wr_en : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal s_axil_wdata_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cfg_apply_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of cfg_load_i_1 : label is "soft_lutpair6";
begin
  cfg_load_reg_0 <= \^cfg_load_reg_0\;
axil_reg_if_inst: entity work.design_0_cfg_load_controller_0_0_axil_reg_if
     port map (
      E(0) => E(0),
      Q(0) => axil_reg_if_inst_n_7,
      SR(0) => rst,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(30 downto 0) => S_AXI_RDATA(30 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      read_state => read_state,
      read_state_reg => axil_reg_if_inst_n_5,
      reg_rd_ack => reg_rd_ack,
      reg_wr_ack_reg => axil_reg_if_inst_n_6,
      reg_wr_en => reg_wr_en,
      reg_wr_en_reg_reg(3) => axil_reg_if_inst_n_73,
      reg_wr_en_reg_reg(2) => axil_reg_if_inst_n_74,
      reg_wr_en_reg_reg(1) => axil_reg_if_inst_n_75,
      reg_wr_en_reg_reg(0) => axil_reg_if_inst_n_76,
      \s_axil_rdata_reg_reg[31]\(30) => \reg_rd_data_reg_n_0_[31]\,
      \s_axil_rdata_reg_reg[31]\(29) => \reg_rd_data_reg_n_0_[30]\,
      \s_axil_rdata_reg_reg[31]\(28) => \reg_rd_data_reg_n_0_[29]\,
      \s_axil_rdata_reg_reg[31]\(27) => \reg_rd_data_reg_n_0_[28]\,
      \s_axil_rdata_reg_reg[31]\(26) => \reg_rd_data_reg_n_0_[27]\,
      \s_axil_rdata_reg_reg[31]\(25) => \reg_rd_data_reg_n_0_[26]\,
      \s_axil_rdata_reg_reg[31]\(24) => \reg_rd_data_reg_n_0_[25]\,
      \s_axil_rdata_reg_reg[31]\(23) => \reg_rd_data_reg_n_0_[24]\,
      \s_axil_rdata_reg_reg[31]\(22) => \reg_rd_data_reg_n_0_[23]\,
      \s_axil_rdata_reg_reg[31]\(21) => \reg_rd_data_reg_n_0_[22]\,
      \s_axil_rdata_reg_reg[31]\(20) => \reg_rd_data_reg_n_0_[21]\,
      \s_axil_rdata_reg_reg[31]\(19) => \reg_rd_data_reg_n_0_[20]\,
      \s_axil_rdata_reg_reg[31]\(18) => \reg_rd_data_reg_n_0_[19]\,
      \s_axil_rdata_reg_reg[31]\(17) => \reg_rd_data_reg_n_0_[18]\,
      \s_axil_rdata_reg_reg[31]\(16) => \reg_rd_data_reg_n_0_[17]\,
      \s_axil_rdata_reg_reg[31]\(15) => \reg_rd_data_reg_n_0_[16]\,
      \s_axil_rdata_reg_reg[31]\(14) => \reg_rd_data_reg_n_0_[15]\,
      \s_axil_rdata_reg_reg[31]\(13) => \reg_rd_data_reg_n_0_[14]\,
      \s_axil_rdata_reg_reg[31]\(12) => \reg_rd_data_reg_n_0_[13]\,
      \s_axil_rdata_reg_reg[31]\(11) => \reg_rd_data_reg_n_0_[12]\,
      \s_axil_rdata_reg_reg[31]\(10) => \reg_rd_data_reg_n_0_[11]\,
      \s_axil_rdata_reg_reg[31]\(9) => \reg_rd_data_reg_n_0_[10]\,
      \s_axil_rdata_reg_reg[31]\(8) => \reg_rd_data_reg_n_0_[9]\,
      \s_axil_rdata_reg_reg[31]\(7) => \reg_rd_data_reg_n_0_[8]\,
      \s_axil_rdata_reg_reg[31]\(6) => \reg_rd_data_reg_n_0_[7]\,
      \s_axil_rdata_reg_reg[31]\(5) => \reg_rd_data_reg_n_0_[6]\,
      \s_axil_rdata_reg_reg[31]\(4) => \reg_rd_data_reg_n_0_[5]\,
      \s_axil_rdata_reg_reg[31]\(3) => \reg_rd_data_reg_n_0_[4]\,
      \s_axil_rdata_reg_reg[31]\(2) => \reg_rd_data_reg_n_0_[3]\,
      \s_axil_rdata_reg_reg[31]\(1) => \reg_rd_data_reg_n_0_[2]\,
      \s_axil_rdata_reg_reg[31]\(0) => \reg_rd_data_reg_n_0_[0]\,
      \s_axil_wdata_reg_reg[31]\(31 downto 0) => s_axil_wdata_reg(31 downto 0),
      s_axil_wvalid_reg_reg_inv => reg_wr_ack_reg_n_0
    );
cfg_apply_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cfg_apply_trigger,
      I1 => cfg_load_done,
      I2 => \^cfg_load_reg_0\,
      O => cfg_apply_i_1_n_0
    );
cfg_apply_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cfg_apply_i_1_n_0,
      Q => cfg_apply,
      R => rst
    );
cfg_load_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^cfg_load_reg_0\,
      I1 => \r_LOAD_CTRL_reg_n_0_[0]\,
      I2 => cfg_load_done,
      O => cfg_load_i_1_n_0
    );
cfg_load_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cfg_load_i_1_n_0,
      Q => \^cfg_load_reg_0\,
      R => rst
    );
\r_LOAD_CTRL[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \r_LOAD_CTRL_reg_n_0_[0]\,
      I1 => axil_reg_if_inst_n_7,
      I2 => s_axil_wdata_reg(0),
      I3 => reg_wr_en,
      I4 => S_AXI_ARESETN,
      O => \r_LOAD_CTRL[0]_i_1_n_0\
    );
\r_LOAD_CTRL[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => cfg_apply_trigger,
      I1 => axil_reg_if_inst_n_7,
      I2 => s_axil_wdata_reg(1),
      I3 => reg_wr_en,
      I4 => S_AXI_ARESETN,
      O => \r_LOAD_CTRL[1]_i_1_n_0\
    );
\r_LOAD_CTRL_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL[0]_i_1_n_0\,
      Q => \r_LOAD_CTRL_reg_n_0_[0]\,
      R => '0'
    );
\r_LOAD_CTRL_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(10),
      Q => \r_LOAD_CTRL_reg_n_0_[10]\,
      R => rst
    );
\r_LOAD_CTRL_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(11),
      Q => \r_LOAD_CTRL_reg_n_0_[11]\,
      R => rst
    );
\r_LOAD_CTRL_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(12),
      Q => \r_LOAD_CTRL_reg_n_0_[12]\,
      R => rst
    );
\r_LOAD_CTRL_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(13),
      Q => \r_LOAD_CTRL_reg_n_0_[13]\,
      R => rst
    );
\r_LOAD_CTRL_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(14),
      Q => \r_LOAD_CTRL_reg_n_0_[14]\,
      R => rst
    );
\r_LOAD_CTRL_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(15),
      Q => \r_LOAD_CTRL_reg_n_0_[15]\,
      R => rst
    );
\r_LOAD_CTRL_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(16),
      Q => \r_LOAD_CTRL_reg_n_0_[16]\,
      R => rst
    );
\r_LOAD_CTRL_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(17),
      Q => \r_LOAD_CTRL_reg_n_0_[17]\,
      R => rst
    );
\r_LOAD_CTRL_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(18),
      Q => \r_LOAD_CTRL_reg_n_0_[18]\,
      R => rst
    );
\r_LOAD_CTRL_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(19),
      Q => \r_LOAD_CTRL_reg_n_0_[19]\,
      R => rst
    );
\r_LOAD_CTRL_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL[1]_i_1_n_0\,
      Q => cfg_apply_trigger,
      R => '0'
    );
\r_LOAD_CTRL_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(20),
      Q => \r_LOAD_CTRL_reg_n_0_[20]\,
      R => rst
    );
\r_LOAD_CTRL_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(21),
      Q => \r_LOAD_CTRL_reg_n_0_[21]\,
      R => rst
    );
\r_LOAD_CTRL_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(22),
      Q => \r_LOAD_CTRL_reg_n_0_[22]\,
      R => rst
    );
\r_LOAD_CTRL_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_74,
      D => s_axil_wdata_reg(23),
      Q => \r_LOAD_CTRL_reg_n_0_[23]\,
      R => rst
    );
\r_LOAD_CTRL_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(24),
      Q => \r_LOAD_CTRL_reg_n_0_[24]\,
      R => rst
    );
\r_LOAD_CTRL_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(25),
      Q => \r_LOAD_CTRL_reg_n_0_[25]\,
      R => rst
    );
\r_LOAD_CTRL_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(26),
      Q => \r_LOAD_CTRL_reg_n_0_[26]\,
      R => rst
    );
\r_LOAD_CTRL_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(27),
      Q => \r_LOAD_CTRL_reg_n_0_[27]\,
      R => rst
    );
\r_LOAD_CTRL_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(28),
      Q => \r_LOAD_CTRL_reg_n_0_[28]\,
      R => rst
    );
\r_LOAD_CTRL_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(29),
      Q => \r_LOAD_CTRL_reg_n_0_[29]\,
      R => rst
    );
\r_LOAD_CTRL_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(2),
      Q => \r_LOAD_CTRL_reg_n_0_[2]\,
      R => rst
    );
\r_LOAD_CTRL_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(30),
      Q => \r_LOAD_CTRL_reg_n_0_[30]\,
      R => rst
    );
\r_LOAD_CTRL_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_73,
      D => s_axil_wdata_reg(31),
      Q => \r_LOAD_CTRL_reg_n_0_[31]\,
      R => rst
    );
\r_LOAD_CTRL_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(3),
      Q => \r_LOAD_CTRL_reg_n_0_[3]\,
      R => rst
    );
\r_LOAD_CTRL_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(4),
      Q => \r_LOAD_CTRL_reg_n_0_[4]\,
      R => rst
    );
\r_LOAD_CTRL_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(5),
      Q => \r_LOAD_CTRL_reg_n_0_[5]\,
      R => rst
    );
\r_LOAD_CTRL_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(6),
      Q => \r_LOAD_CTRL_reg_n_0_[6]\,
      R => rst
    );
\r_LOAD_CTRL_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_76,
      D => s_axil_wdata_reg(7),
      Q => \r_LOAD_CTRL_reg_n_0_[7]\,
      R => rst
    );
\r_LOAD_CTRL_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(8),
      Q => \r_LOAD_CTRL_reg_n_0_[8]\,
      R => rst
    );
\r_LOAD_CTRL_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axil_reg_if_inst_n_75,
      D => s_axil_wdata_reg(9),
      Q => \r_LOAD_CTRL_reg_n_0_[9]\,
      R => rst
    );
read_state_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axil_reg_if_inst_n_5,
      Q => read_state,
      R => '0'
    );
reg_rd_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_state,
      Q => reg_rd_ack,
      R => rst
    );
\reg_rd_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^cfg_load_reg_0\,
      I1 => cfg_load_done,
      O => cfg_load_busy
    );
\reg_rd_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => read_state,
      O => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cfg_load_busy,
      Q => \reg_rd_data_reg_n_0_[0]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[10]\,
      Q => \reg_rd_data_reg_n_0_[10]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[11]\,
      Q => \reg_rd_data_reg_n_0_[11]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[12]\,
      Q => \reg_rd_data_reg_n_0_[12]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[13]\,
      Q => \reg_rd_data_reg_n_0_[13]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[14]\,
      Q => \reg_rd_data_reg_n_0_[14]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[15]\,
      Q => \reg_rd_data_reg_n_0_[15]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[16]\,
      Q => \reg_rd_data_reg_n_0_[16]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[17]\,
      Q => \reg_rd_data_reg_n_0_[17]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[18]\,
      Q => \reg_rd_data_reg_n_0_[18]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[19]\,
      Q => \reg_rd_data_reg_n_0_[19]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[20]\,
      Q => \reg_rd_data_reg_n_0_[20]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[21]\,
      Q => \reg_rd_data_reg_n_0_[21]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[22]\,
      Q => \reg_rd_data_reg_n_0_[22]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[23]\,
      Q => \reg_rd_data_reg_n_0_[23]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[24]\,
      Q => \reg_rd_data_reg_n_0_[24]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[25]\,
      Q => \reg_rd_data_reg_n_0_[25]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[26]\,
      Q => \reg_rd_data_reg_n_0_[26]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[27]\,
      Q => \reg_rd_data_reg_n_0_[27]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[28]\,
      Q => \reg_rd_data_reg_n_0_[28]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[29]\,
      Q => \reg_rd_data_reg_n_0_[29]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[2]\,
      Q => \reg_rd_data_reg_n_0_[2]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[30]\,
      Q => \reg_rd_data_reg_n_0_[30]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[31]\,
      Q => \reg_rd_data_reg_n_0_[31]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[3]\,
      Q => \reg_rd_data_reg_n_0_[3]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[4]\,
      Q => \reg_rd_data_reg_n_0_[4]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[5]\,
      Q => \reg_rd_data_reg_n_0_[5]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[6]\,
      Q => \reg_rd_data_reg_n_0_[6]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[7]\,
      Q => \reg_rd_data_reg_n_0_[7]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[8]\,
      Q => \reg_rd_data_reg_n_0_[8]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
\reg_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_LOAD_CTRL_reg_n_0_[9]\,
      Q => \reg_rd_data_reg_n_0_[9]\,
      R => \reg_rd_data[31]_i_1_n_0\
    );
reg_wr_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axil_reg_if_inst_n_6,
      Q => reg_wr_ack_reg_n_0,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_cfg_load_controller_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    cfg_load : out STD_LOGIC;
    cfg_load_done : in STD_LOGIC;
    cfg_apply : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_cfg_load_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_cfg_load_controller_0_0 : entity is "design_0_cfg_load_controller_0_0,cfg_load_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_cfg_load_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_0_cfg_load_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_cfg_load_controller_0_0 : entity is "cfg_load_controller,Vivado 2024.2";
end design_0_cfg_load_controller_0_0;

architecture STRUCTURE of design_0_cfg_load_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of S_AXI_ARESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, FREQ_HZ 125000000, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_QOS 0, HAS_REGION 0, DATA_WIDTH 32, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_PROT 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31 downto 2) <= \^s_axi_rdata\(31 downto 2);
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_0_cfg_load_controller_0_0_cfg_load_controller
     port map (
      E(0) => S_AXI_WREADY,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(30 downto 1) => \^s_axi_rdata\(31 downto 2),
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      cfg_apply => cfg_apply,
      cfg_load_done => cfg_load_done,
      cfg_load_reg_0 => cfg_load
    );
end STRUCTURE;
