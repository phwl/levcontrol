-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed May 28 18:34:53 2025
-- Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_0_xpm_cdc_gen_0_3 -prefix
--               design_0_xpm_cdc_gen_0_3_ design_0_xpm_cdc_gen_0_3_sim_netlist.vhdl
-- Design      : design_0_xpm_cdc_gen_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 1;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is 14;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single;

architecture STRUCTURE of design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][9]\ : label is "ARRAY_SINGLE";
begin
  dest_out(13 downto 0) <= \syncstages_ff[3]\(13 downto 0);
\src_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(0),
      Q => async_path_bit(0),
      R => '0'
    );
\src_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(10),
      Q => async_path_bit(10),
      R => '0'
    );
\src_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(11),
      Q => async_path_bit(11),
      R => '0'
    );
\src_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(12),
      Q => async_path_bit(12),
      R => '0'
    );
\src_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(13),
      Q => async_path_bit(13),
      R => '0'
    );
\src_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(1),
      Q => async_path_bit(1),
      R => '0'
    );
\src_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(2),
      Q => async_path_bit(2),
      R => '0'
    );
\src_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(3),
      Q => async_path_bit(3),
      R => '0'
    );
\src_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(4),
      Q => async_path_bit(4),
      R => '0'
    );
\src_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(5),
      Q => async_path_bit(5),
      R => '0'
    );
\src_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(6),
      Q => async_path_bit(6),
      R => '0'
    );
\src_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(7),
      Q => async_path_bit(7),
      R => '0'
    );
\src_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(8),
      Q => async_path_bit(8),
      R => '0'
    );
\src_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(9),
      Q => async_path_bit(9),
      R => '0'
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(10),
      Q => \syncstages_ff[2]\(10),
      R => '0'
    );
\syncstages_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(11),
      Q => \syncstages_ff[2]\(11),
      R => '0'
    );
\syncstages_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(12),
      Q => \syncstages_ff[2]\(12),
      R => '0'
    );
\syncstages_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(13),
      Q => \syncstages_ff[2]\(13),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(4),
      Q => \syncstages_ff[2]\(4),
      R => '0'
    );
\syncstages_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(5),
      Q => \syncstages_ff[2]\(5),
      R => '0'
    );
\syncstages_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(6),
      Q => \syncstages_ff[2]\(6),
      R => '0'
    );
\syncstages_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(7),
      Q => \syncstages_ff[2]\(7),
      R => '0'
    );
\syncstages_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(8),
      Q => \syncstages_ff[2]\(8),
      R => '0'
    );
\syncstages_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(9),
      Q => \syncstages_ff[2]\(9),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(10),
      Q => \syncstages_ff[3]\(10),
      R => '0'
    );
\syncstages_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(11),
      Q => \syncstages_ff[3]\(11),
      R => '0'
    );
\syncstages_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(12),
      Q => \syncstages_ff[3]\(12),
      R => '0'
    );
\syncstages_ff_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(13),
      Q => \syncstages_ff[3]\(13),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(3),
      Q => \syncstages_ff[3]\(3),
      R => '0'
    );
\syncstages_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(4),
      Q => \syncstages_ff[3]\(4),
      R => '0'
    );
\syncstages_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(5),
      Q => \syncstages_ff[3]\(5),
      R => '0'
    );
\syncstages_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(6),
      Q => \syncstages_ff[3]\(6),
      R => '0'
    );
\syncstages_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(7),
      Q => \syncstages_ff[3]\(7),
      R => '0'
    );
\syncstages_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(8),
      Q => \syncstages_ff[3]\(8),
      R => '0'
    );
\syncstages_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(9),
      Q => \syncstages_ff[3]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 13 downto 0 );
    src_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    src_send : in STD_LOGIC;
    dest_ack : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst_in : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dest_out_bin : out STD_LOGIC_VECTOR ( 13 downto 0 );
    src_rcv : out STD_LOGIC;
    dest_req : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    dest_rst_out : out STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 4;
  attribute INIT : string;
  attribute INIT of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute RST_USED : integer;
  attribute RST_USED of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 : entity is 14;
end design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4;

architecture STRUCTURE of design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4 is
  signal \<const0>\ : STD_LOGIC;
  attribute DEST_SYNC_FF of xarray : label is 4;
  attribute INIT_SYNC_FF of xarray : label is 1;
  attribute SIM_ASSERT_CHK of xarray : label is 1;
  attribute SRC_INPUT_REG of xarray : label is 1;
  attribute VERSION of xarray : label is 0;
  attribute WIDTH of xarray : label is 14;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xarray : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xarray : label is "TRUE";
begin
  dest_arst <= \<const0>\;
  dest_out_bin(13) <= \<const0>\;
  dest_out_bin(12) <= \<const0>\;
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
  dest_pulse <= \<const0>\;
  dest_req <= \<const0>\;
  dest_rst_out <= \<const0>\;
  src_rcv <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xarray: entity work.design_0_xpm_cdc_gen_0_3_xpm_cdc_array_single
     port map (
      dest_clk => dest_clk,
      dest_out(13 downto 0) => dest_out(13 downto 0),
      src_clk => src_clk,
      src_in(13 downto 0) => src_in(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_0_xpm_cdc_gen_0_3 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dest_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_0_xpm_cdc_gen_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_0_xpm_cdc_gen_0_3 : entity is "design_0_xpm_cdc_gen_0_3,xpm_cdc_gen_v1_0_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_0_xpm_cdc_gen_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_0_xpm_cdc_gen_0_3 : entity is "xpm_cdc_gen_v1_0_4,Vivado 2024.2";
end design_0_xpm_cdc_gen_0_3;

architecture STRUCTURE of design_0_xpm_cdc_gen_0_3 is
  signal NLW_inst_dest_arst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_pulse_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_rst_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_src_rcv_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_out_bin_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of inst : label is 1;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of inst : label is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst : label is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst : label is 4;
  attribute INIT : string;
  attribute INIT of inst : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of inst : label is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of inst : label is 0;
  attribute RST_USED : integer;
  attribute RST_USED of inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst : label is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of inst : label is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of inst : label is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst : label is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 14;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dest_clk : signal is "xilinx.com:signal:clock:1.0 dest_signal_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of dest_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dest_clk : signal is "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of src_clk : signal is "xilinx.com:signal:clock:1.0 src_signal_clock CLK";
  attribute X_INTERFACE_MODE of src_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of src_clk : signal is "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_adc_0_0_adc_clk, INSERT_VIP 0";
begin
inst: entity work.design_0_xpm_cdc_gen_0_3_xpm_cdc_gen_v1_0_4
     port map (
      dest_ack => '1',
      dest_arst => NLW_inst_dest_arst_UNCONNECTED,
      dest_clk => dest_clk,
      dest_out(13 downto 0) => dest_out(13 downto 0),
      dest_out_bin(13 downto 0) => NLW_inst_dest_out_bin_UNCONNECTED(13 downto 0),
      dest_pulse => NLW_inst_dest_pulse_UNCONNECTED,
      dest_req => NLW_inst_dest_req_UNCONNECTED,
      dest_rst_in => '1',
      dest_rst_out => NLW_inst_dest_rst_out_UNCONNECTED,
      src_arst => '1',
      src_clk => src_clk,
      src_in(13 downto 0) => src_in(13 downto 0),
      src_in_bin(13 downto 0) => B"00000000000001",
      src_pulse => '1',
      src_rcv => NLW_inst_src_rcv_UNCONNECTED,
      src_rst => '1',
      src_send => '1'
    );
end STRUCTURE;
