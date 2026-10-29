// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:33:03 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0/ip/design_0_axis_red_pitaya_adc_1_0/design_0_axis_red_pitaya_adc_1_0_sim_netlist.v
// Design      : design_0_axis_red_pitaya_adc_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_axis_red_pitaya_adc_1_0,axis_red_pitaya_adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_red_pitaya_adc,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_axis_red_pitaya_adc_1_0
   (adc_clk,
    adc_csn,
    adc_clk_p,
    adc_clk_n,
    adc_dat_a,
    adc_dat_b,
    offset_a,
    offset_b,
    bypass,
    m_axis_tvalid,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0" *) output adc_clk;
  output adc_csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_a, INSERT_VIP 0" *) input adc_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_b, INSERT_VIP 0" *) input adc_clk_n;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  input [13:0]offset_a;
  input [13:0]offset_b;
  input bypass;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;

  wire \<const1> ;
  wire adc_clk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p;
  wire [13:0]adc_dat_a;
  wire [13:0]adc_dat_b;
  wire bypass;
  wire [31:0]\^m_axis_tdata ;
  wire [13:0]offset_a;
  wire [13:0]offset_b;

  assign adc_csn = \<const1> ;
  assign m_axis_tdata[31] = \^m_axis_tdata [31];
  assign m_axis_tdata[30] = \^m_axis_tdata [31];
  assign m_axis_tdata[29] = \^m_axis_tdata [31];
  assign m_axis_tdata[28:15] = \^m_axis_tdata [28:15];
  assign m_axis_tdata[14] = \^m_axis_tdata [15];
  assign m_axis_tdata[13] = \^m_axis_tdata [15];
  assign m_axis_tdata[12:0] = \^m_axis_tdata [12:0];
  assign m_axis_tvalid = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_0_axis_red_pitaya_adc_1_0_axis_red_pitaya_adc inst
       (.adc_clk(adc_clk),
        .adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .adc_dat_a(adc_dat_a),
        .adc_dat_b(adc_dat_b),
        .bypass(bypass),
        .m_axis_tdata({\^m_axis_tdata [31],\^m_axis_tdata [28:15],\^m_axis_tdata [12:0]}),
        .offset_a(offset_a),
        .offset_b(offset_b));
endmodule

(* ORIG_REF_NAME = "axis_red_pitaya_adc" *) 
module design_0_axis_red_pitaya_adc_1_0_axis_red_pitaya_adc
   (adc_clk,
    m_axis_tdata,
    offset_a,
    offset_b,
    adc_clk_p,
    adc_clk_n,
    adc_dat_a,
    adc_dat_b,
    bypass);
  output adc_clk;
  output [27:0]m_axis_tdata;
  input [13:0]offset_a;
  input [13:0]offset_b;
  input adc_clk_p;
  input adc_clk_n;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  input bypass;

  wire adc_clk;
  wire adc_clk_n;
  wire adc_clk_p;
  wire [13:0]adc_dat_a;
  wire [13:0]adc_dat_b;
  wire bypass;
  wire int_clk0;
  wire \int_dat_a_reg_calib_reg_n_0_[0] ;
  wire \int_dat_a_reg_calib_reg_n_0_[10] ;
  wire \int_dat_a_reg_calib_reg_n_0_[11] ;
  wire \int_dat_a_reg_calib_reg_n_0_[12] ;
  wire \int_dat_a_reg_calib_reg_n_0_[1] ;
  wire \int_dat_a_reg_calib_reg_n_0_[2] ;
  wire \int_dat_a_reg_calib_reg_n_0_[3] ;
  wire \int_dat_a_reg_calib_reg_n_0_[4] ;
  wire \int_dat_a_reg_calib_reg_n_0_[5] ;
  wire \int_dat_a_reg_calib_reg_n_0_[6] ;
  wire \int_dat_a_reg_calib_reg_n_0_[7] ;
  wire \int_dat_a_reg_calib_reg_n_0_[8] ;
  wire \int_dat_a_reg_calib_reg_n_0_[9] ;
  wire \int_dat_a_reg_reg_n_0_[0] ;
  wire \int_dat_a_reg_reg_n_0_[10] ;
  wire \int_dat_a_reg_reg_n_0_[11] ;
  wire \int_dat_a_reg_reg_n_0_[12] ;
  wire \int_dat_a_reg_reg_n_0_[1] ;
  wire \int_dat_a_reg_reg_n_0_[2] ;
  wire \int_dat_a_reg_reg_n_0_[3] ;
  wire \int_dat_a_reg_reg_n_0_[4] ;
  wire \int_dat_a_reg_reg_n_0_[5] ;
  wire \int_dat_a_reg_reg_n_0_[6] ;
  wire \int_dat_a_reg_reg_n_0_[7] ;
  wire \int_dat_a_reg_reg_n_0_[8] ;
  wire \int_dat_a_reg_reg_n_0_[9] ;
  wire [14:0]int_dat_a_reg_sum;
  wire [14:0]int_dat_a_reg_sum0;
  wire int_dat_a_reg_sum0_carry__0_i_1_n_0;
  wire int_dat_a_reg_sum0_carry__0_i_2_n_0;
  wire int_dat_a_reg_sum0_carry__0_i_3_n_0;
  wire int_dat_a_reg_sum0_carry__0_i_4_n_0;
  wire int_dat_a_reg_sum0_carry__0_n_0;
  wire int_dat_a_reg_sum0_carry__0_n_1;
  wire int_dat_a_reg_sum0_carry__0_n_2;
  wire int_dat_a_reg_sum0_carry__0_n_3;
  wire int_dat_a_reg_sum0_carry__1_i_1_n_0;
  wire int_dat_a_reg_sum0_carry__1_i_2_n_0;
  wire int_dat_a_reg_sum0_carry__1_i_3_n_0;
  wire int_dat_a_reg_sum0_carry__1_i_4_n_0;
  wire int_dat_a_reg_sum0_carry__1_n_0;
  wire int_dat_a_reg_sum0_carry__1_n_1;
  wire int_dat_a_reg_sum0_carry__1_n_2;
  wire int_dat_a_reg_sum0_carry__1_n_3;
  wire int_dat_a_reg_sum0_carry__2_i_1_n_0;
  wire int_dat_a_reg_sum0_carry__2_i_2_n_0;
  wire int_dat_a_reg_sum0_carry__2_i_3_n_0;
  wire int_dat_a_reg_sum0_carry__2_n_2;
  wire int_dat_a_reg_sum0_carry__2_n_3;
  wire int_dat_a_reg_sum0_carry_i_1_n_0;
  wire int_dat_a_reg_sum0_carry_i_2_n_0;
  wire int_dat_a_reg_sum0_carry_i_3_n_0;
  wire int_dat_a_reg_sum0_carry_i_4_n_0;
  wire int_dat_a_reg_sum0_carry_n_0;
  wire int_dat_a_reg_sum0_carry_n_1;
  wire int_dat_a_reg_sum0_carry_n_2;
  wire int_dat_a_reg_sum0_carry_n_3;
  wire [13:0]int_dat_b_reg_calib;
  wire \int_dat_b_reg_calib[0]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[10]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[11]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[12]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[1]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[2]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[3]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[4]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[5]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[6]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[7]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[8]_i_1_n_0 ;
  wire \int_dat_b_reg_calib[9]_i_1_n_0 ;
  wire \int_dat_b_reg_reg_n_0_[0] ;
  wire \int_dat_b_reg_reg_n_0_[10] ;
  wire \int_dat_b_reg_reg_n_0_[11] ;
  wire \int_dat_b_reg_reg_n_0_[12] ;
  wire \int_dat_b_reg_reg_n_0_[13] ;
  wire \int_dat_b_reg_reg_n_0_[1] ;
  wire \int_dat_b_reg_reg_n_0_[2] ;
  wire \int_dat_b_reg_reg_n_0_[3] ;
  wire \int_dat_b_reg_reg_n_0_[4] ;
  wire \int_dat_b_reg_reg_n_0_[5] ;
  wire \int_dat_b_reg_reg_n_0_[6] ;
  wire \int_dat_b_reg_reg_n_0_[7] ;
  wire \int_dat_b_reg_reg_n_0_[8] ;
  wire \int_dat_b_reg_reg_n_0_[9] ;
  wire [14:0]int_dat_b_reg_sum;
  wire [14:0]int_dat_b_reg_sum0;
  wire int_dat_b_reg_sum0_carry__0_i_1_n_0;
  wire int_dat_b_reg_sum0_carry__0_i_2_n_0;
  wire int_dat_b_reg_sum0_carry__0_i_3_n_0;
  wire int_dat_b_reg_sum0_carry__0_i_4_n_0;
  wire int_dat_b_reg_sum0_carry__0_n_0;
  wire int_dat_b_reg_sum0_carry__0_n_1;
  wire int_dat_b_reg_sum0_carry__0_n_2;
  wire int_dat_b_reg_sum0_carry__0_n_3;
  wire int_dat_b_reg_sum0_carry__1_i_1_n_0;
  wire int_dat_b_reg_sum0_carry__1_i_2_n_0;
  wire int_dat_b_reg_sum0_carry__1_i_3_n_0;
  wire int_dat_b_reg_sum0_carry__1_i_4_n_0;
  wire int_dat_b_reg_sum0_carry__1_n_0;
  wire int_dat_b_reg_sum0_carry__1_n_1;
  wire int_dat_b_reg_sum0_carry__1_n_2;
  wire int_dat_b_reg_sum0_carry__1_n_3;
  wire int_dat_b_reg_sum0_carry__2_i_1_n_0;
  wire int_dat_b_reg_sum0_carry__2_i_2_n_0;
  wire int_dat_b_reg_sum0_carry__2_i_3_n_0;
  wire int_dat_b_reg_sum0_carry__2_n_2;
  wire int_dat_b_reg_sum0_carry__2_n_3;
  wire int_dat_b_reg_sum0_carry_i_1_n_0;
  wire int_dat_b_reg_sum0_carry_i_2_n_0;
  wire int_dat_b_reg_sum0_carry_i_3_n_0;
  wire int_dat_b_reg_sum0_carry_i_4_n_0;
  wire int_dat_b_reg_sum0_carry_n_0;
  wire int_dat_b_reg_sum0_carry_n_1;
  wire int_dat_b_reg_sum0_carry_n_2;
  wire int_dat_b_reg_sum0_carry_n_3;
  wire [27:0]m_axis_tdata;
  wire [13:0]offset_a;
  wire [13:0]offset_b;
  wire [12:0]p_0_in;
  wire p_0_in0;
  wire p_1_in0;
  wire [3:2]NLW_int_dat_a_reg_sum0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_int_dat_a_reg_sum0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_int_dat_b_reg_sum0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_int_dat_b_reg_sum0_carry__2_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG adc_clk_inst
       (.I(int_clk0),
        .O(adc_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_clk_inst0
       (.I(adc_clk_p),
        .IB(adc_clk_n),
        .O(int_clk0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[0]_i_1 
       (.I0(int_dat_a_reg_sum[0]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[10]_i_1 
       (.I0(int_dat_a_reg_sum[10]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[11]_i_1 
       (.I0(int_dat_a_reg_sum[11]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[12]_i_1 
       (.I0(int_dat_a_reg_sum[12]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[1]_i_1 
       (.I0(int_dat_a_reg_sum[1]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[2]_i_1 
       (.I0(int_dat_a_reg_sum[2]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[3]_i_1 
       (.I0(int_dat_a_reg_sum[3]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[4]_i_1 
       (.I0(int_dat_a_reg_sum[4]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[5]_i_1 
       (.I0(int_dat_a_reg_sum[5]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[6]_i_1 
       (.I0(int_dat_a_reg_sum[6]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[7]_i_1 
       (.I0(int_dat_a_reg_sum[7]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[8]_i_1 
       (.I0(int_dat_a_reg_sum[8]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_a_reg_calib[9]_i_1 
       (.I0(int_dat_a_reg_sum[9]),
        .I1(int_dat_a_reg_sum[14]),
        .I2(int_dat_a_reg_sum[13]),
        .O(p_0_in[9]));
  FDRE \int_dat_a_reg_calib_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum[14]),
        .Q(p_0_in0),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_calib_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\int_dat_a_reg_calib_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[0]),
        .Q(\int_dat_a_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[10]),
        .Q(\int_dat_a_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[11]),
        .Q(\int_dat_a_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[12]),
        .Q(\int_dat_a_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[13]),
        .Q(p_1_in0),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[1]),
        .Q(\int_dat_a_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[2]),
        .Q(\int_dat_a_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[3]),
        .Q(\int_dat_a_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[4]),
        .Q(\int_dat_a_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[5]),
        .Q(\int_dat_a_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[6]),
        .Q(\int_dat_a_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[7]),
        .Q(\int_dat_a_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[8]),
        .Q(\int_dat_a_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[9]),
        .Q(\int_dat_a_reg_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 int_dat_a_reg_sum0_carry
       (.CI(1'b0),
        .CO({int_dat_a_reg_sum0_carry_n_0,int_dat_a_reg_sum0_carry_n_1,int_dat_a_reg_sum0_carry_n_2,int_dat_a_reg_sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(offset_a[3:0]),
        .O(int_dat_a_reg_sum0[3:0]),
        .S({int_dat_a_reg_sum0_carry_i_1_n_0,int_dat_a_reg_sum0_carry_i_2_n_0,int_dat_a_reg_sum0_carry_i_3_n_0,int_dat_a_reg_sum0_carry_i_4_n_0}));
  CARRY4 int_dat_a_reg_sum0_carry__0
       (.CI(int_dat_a_reg_sum0_carry_n_0),
        .CO({int_dat_a_reg_sum0_carry__0_n_0,int_dat_a_reg_sum0_carry__0_n_1,int_dat_a_reg_sum0_carry__0_n_2,int_dat_a_reg_sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(offset_a[7:4]),
        .O(int_dat_a_reg_sum0[7:4]),
        .S({int_dat_a_reg_sum0_carry__0_i_1_n_0,int_dat_a_reg_sum0_carry__0_i_2_n_0,int_dat_a_reg_sum0_carry__0_i_3_n_0,int_dat_a_reg_sum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__0_i_1
       (.I0(offset_a[7]),
        .I1(\int_dat_a_reg_reg_n_0_[7] ),
        .O(int_dat_a_reg_sum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__0_i_2
       (.I0(offset_a[6]),
        .I1(\int_dat_a_reg_reg_n_0_[6] ),
        .O(int_dat_a_reg_sum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__0_i_3
       (.I0(offset_a[5]),
        .I1(\int_dat_a_reg_reg_n_0_[5] ),
        .O(int_dat_a_reg_sum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__0_i_4
       (.I0(offset_a[4]),
        .I1(\int_dat_a_reg_reg_n_0_[4] ),
        .O(int_dat_a_reg_sum0_carry__0_i_4_n_0));
  CARRY4 int_dat_a_reg_sum0_carry__1
       (.CI(int_dat_a_reg_sum0_carry__0_n_0),
        .CO({int_dat_a_reg_sum0_carry__1_n_0,int_dat_a_reg_sum0_carry__1_n_1,int_dat_a_reg_sum0_carry__1_n_2,int_dat_a_reg_sum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(offset_a[11:8]),
        .O(int_dat_a_reg_sum0[11:8]),
        .S({int_dat_a_reg_sum0_carry__1_i_1_n_0,int_dat_a_reg_sum0_carry__1_i_2_n_0,int_dat_a_reg_sum0_carry__1_i_3_n_0,int_dat_a_reg_sum0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__1_i_1
       (.I0(offset_a[11]),
        .I1(\int_dat_a_reg_reg_n_0_[11] ),
        .O(int_dat_a_reg_sum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__1_i_2
       (.I0(offset_a[10]),
        .I1(\int_dat_a_reg_reg_n_0_[10] ),
        .O(int_dat_a_reg_sum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__1_i_3
       (.I0(offset_a[9]),
        .I1(\int_dat_a_reg_reg_n_0_[9] ),
        .O(int_dat_a_reg_sum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__1_i_4
       (.I0(offset_a[8]),
        .I1(\int_dat_a_reg_reg_n_0_[8] ),
        .O(int_dat_a_reg_sum0_carry__1_i_4_n_0));
  CARRY4 int_dat_a_reg_sum0_carry__2
       (.CI(int_dat_a_reg_sum0_carry__1_n_0),
        .CO({NLW_int_dat_a_reg_sum0_carry__2_CO_UNCONNECTED[3:2],int_dat_a_reg_sum0_carry__2_n_2,int_dat_a_reg_sum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,int_dat_a_reg_sum0_carry__2_i_1_n_0,offset_a[12]}),
        .O({NLW_int_dat_a_reg_sum0_carry__2_O_UNCONNECTED[3],int_dat_a_reg_sum0[14:12]}),
        .S({1'b0,1'b1,int_dat_a_reg_sum0_carry__2_i_2_n_0,int_dat_a_reg_sum0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    int_dat_a_reg_sum0_carry__2_i_1
       (.I0(offset_a[13]),
        .O(int_dat_a_reg_sum0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    int_dat_a_reg_sum0_carry__2_i_2
       (.I0(offset_a[13]),
        .I1(p_1_in0),
        .O(int_dat_a_reg_sum0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry__2_i_3
       (.I0(offset_a[12]),
        .I1(\int_dat_a_reg_reg_n_0_[12] ),
        .O(int_dat_a_reg_sum0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry_i_1
       (.I0(offset_a[3]),
        .I1(\int_dat_a_reg_reg_n_0_[3] ),
        .O(int_dat_a_reg_sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry_i_2
       (.I0(offset_a[2]),
        .I1(\int_dat_a_reg_reg_n_0_[2] ),
        .O(int_dat_a_reg_sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry_i_3
       (.I0(offset_a[1]),
        .I1(\int_dat_a_reg_reg_n_0_[1] ),
        .O(int_dat_a_reg_sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_a_reg_sum0_carry_i_4
       (.I0(offset_a[0]),
        .I1(\int_dat_a_reg_reg_n_0_[0] ),
        .O(int_dat_a_reg_sum0_carry_i_4_n_0));
  FDRE \int_dat_a_reg_sum_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[0]),
        .Q(int_dat_a_reg_sum[0]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[10]),
        .Q(int_dat_a_reg_sum[10]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[11]),
        .Q(int_dat_a_reg_sum[11]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[12]),
        .Q(int_dat_a_reg_sum[12]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[13]),
        .Q(int_dat_a_reg_sum[13]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[14] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[14]),
        .Q(int_dat_a_reg_sum[14]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[1]),
        .Q(int_dat_a_reg_sum[1]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[2]),
        .Q(int_dat_a_reg_sum[2]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[3]),
        .Q(int_dat_a_reg_sum[3]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[4]),
        .Q(int_dat_a_reg_sum[4]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[5]),
        .Q(int_dat_a_reg_sum[5]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[6]),
        .Q(int_dat_a_reg_sum[6]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[7]),
        .Q(int_dat_a_reg_sum[7]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[8]),
        .Q(int_dat_a_reg_sum[8]),
        .R(1'b0));
  FDRE \int_dat_a_reg_sum_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_a_reg_sum0[9]),
        .Q(int_dat_a_reg_sum[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[0]_i_1 
       (.I0(int_dat_b_reg_sum[0]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[10]_i_1 
       (.I0(int_dat_b_reg_sum[10]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[11]_i_1 
       (.I0(int_dat_b_reg_sum[11]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[12]_i_1 
       (.I0(int_dat_b_reg_sum[12]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[1]_i_1 
       (.I0(int_dat_b_reg_sum[1]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[2]_i_1 
       (.I0(int_dat_b_reg_sum[2]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[3]_i_1 
       (.I0(int_dat_b_reg_sum[3]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[4]_i_1 
       (.I0(int_dat_b_reg_sum[4]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[5]_i_1 
       (.I0(int_dat_b_reg_sum[5]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[6]_i_1 
       (.I0(int_dat_b_reg_sum[6]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[7]_i_1 
       (.I0(int_dat_b_reg_sum[7]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[8]_i_1 
       (.I0(int_dat_b_reg_sum[8]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \int_dat_b_reg_calib[9]_i_1 
       (.I0(int_dat_b_reg_sum[9]),
        .I1(int_dat_b_reg_sum[14]),
        .I2(int_dat_b_reg_sum[13]),
        .O(\int_dat_b_reg_calib[9]_i_1_n_0 ));
  FDRE \int_dat_b_reg_calib_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[0]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[0]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[10]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[10]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[11]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[11]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[12]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[12]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum[14]),
        .Q(int_dat_b_reg_calib[13]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[1]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[1]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[2]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[2]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[3]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[3]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[4]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[4]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[5]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[5]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[6]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[6]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[7]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[7]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[8]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[8]),
        .R(1'b0));
  FDRE \int_dat_b_reg_calib_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\int_dat_b_reg_calib[9]_i_1_n_0 ),
        .Q(int_dat_b_reg_calib[9]),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[0]),
        .Q(\int_dat_b_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[10]),
        .Q(\int_dat_b_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[11]),
        .Q(\int_dat_b_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[12]),
        .Q(\int_dat_b_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[13]),
        .Q(\int_dat_b_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[1]),
        .Q(\int_dat_b_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[2]),
        .Q(\int_dat_b_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[3]),
        .Q(\int_dat_b_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[4]),
        .Q(\int_dat_b_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[5]),
        .Q(\int_dat_b_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[6]),
        .Q(\int_dat_b_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[7]),
        .Q(\int_dat_b_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[8]),
        .Q(\int_dat_b_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b[9]),
        .Q(\int_dat_b_reg_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 int_dat_b_reg_sum0_carry
       (.CI(1'b0),
        .CO({int_dat_b_reg_sum0_carry_n_0,int_dat_b_reg_sum0_carry_n_1,int_dat_b_reg_sum0_carry_n_2,int_dat_b_reg_sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(offset_b[3:0]),
        .O(int_dat_b_reg_sum0[3:0]),
        .S({int_dat_b_reg_sum0_carry_i_1_n_0,int_dat_b_reg_sum0_carry_i_2_n_0,int_dat_b_reg_sum0_carry_i_3_n_0,int_dat_b_reg_sum0_carry_i_4_n_0}));
  CARRY4 int_dat_b_reg_sum0_carry__0
       (.CI(int_dat_b_reg_sum0_carry_n_0),
        .CO({int_dat_b_reg_sum0_carry__0_n_0,int_dat_b_reg_sum0_carry__0_n_1,int_dat_b_reg_sum0_carry__0_n_2,int_dat_b_reg_sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(offset_b[7:4]),
        .O(int_dat_b_reg_sum0[7:4]),
        .S({int_dat_b_reg_sum0_carry__0_i_1_n_0,int_dat_b_reg_sum0_carry__0_i_2_n_0,int_dat_b_reg_sum0_carry__0_i_3_n_0,int_dat_b_reg_sum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__0_i_1
       (.I0(offset_b[7]),
        .I1(\int_dat_b_reg_reg_n_0_[7] ),
        .O(int_dat_b_reg_sum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__0_i_2
       (.I0(offset_b[6]),
        .I1(\int_dat_b_reg_reg_n_0_[6] ),
        .O(int_dat_b_reg_sum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__0_i_3
       (.I0(offset_b[5]),
        .I1(\int_dat_b_reg_reg_n_0_[5] ),
        .O(int_dat_b_reg_sum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__0_i_4
       (.I0(offset_b[4]),
        .I1(\int_dat_b_reg_reg_n_0_[4] ),
        .O(int_dat_b_reg_sum0_carry__0_i_4_n_0));
  CARRY4 int_dat_b_reg_sum0_carry__1
       (.CI(int_dat_b_reg_sum0_carry__0_n_0),
        .CO({int_dat_b_reg_sum0_carry__1_n_0,int_dat_b_reg_sum0_carry__1_n_1,int_dat_b_reg_sum0_carry__1_n_2,int_dat_b_reg_sum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(offset_b[11:8]),
        .O(int_dat_b_reg_sum0[11:8]),
        .S({int_dat_b_reg_sum0_carry__1_i_1_n_0,int_dat_b_reg_sum0_carry__1_i_2_n_0,int_dat_b_reg_sum0_carry__1_i_3_n_0,int_dat_b_reg_sum0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__1_i_1
       (.I0(offset_b[11]),
        .I1(\int_dat_b_reg_reg_n_0_[11] ),
        .O(int_dat_b_reg_sum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__1_i_2
       (.I0(offset_b[10]),
        .I1(\int_dat_b_reg_reg_n_0_[10] ),
        .O(int_dat_b_reg_sum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__1_i_3
       (.I0(offset_b[9]),
        .I1(\int_dat_b_reg_reg_n_0_[9] ),
        .O(int_dat_b_reg_sum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__1_i_4
       (.I0(offset_b[8]),
        .I1(\int_dat_b_reg_reg_n_0_[8] ),
        .O(int_dat_b_reg_sum0_carry__1_i_4_n_0));
  CARRY4 int_dat_b_reg_sum0_carry__2
       (.CI(int_dat_b_reg_sum0_carry__1_n_0),
        .CO({NLW_int_dat_b_reg_sum0_carry__2_CO_UNCONNECTED[3:2],int_dat_b_reg_sum0_carry__2_n_2,int_dat_b_reg_sum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,int_dat_b_reg_sum0_carry__2_i_1_n_0,offset_b[12]}),
        .O({NLW_int_dat_b_reg_sum0_carry__2_O_UNCONNECTED[3],int_dat_b_reg_sum0[14:12]}),
        .S({1'b0,1'b1,int_dat_b_reg_sum0_carry__2_i_2_n_0,int_dat_b_reg_sum0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    int_dat_b_reg_sum0_carry__2_i_1
       (.I0(offset_b[13]),
        .O(int_dat_b_reg_sum0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    int_dat_b_reg_sum0_carry__2_i_2
       (.I0(offset_b[13]),
        .I1(\int_dat_b_reg_reg_n_0_[13] ),
        .O(int_dat_b_reg_sum0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry__2_i_3
       (.I0(offset_b[12]),
        .I1(\int_dat_b_reg_reg_n_0_[12] ),
        .O(int_dat_b_reg_sum0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry_i_1
       (.I0(offset_b[3]),
        .I1(\int_dat_b_reg_reg_n_0_[3] ),
        .O(int_dat_b_reg_sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry_i_2
       (.I0(offset_b[2]),
        .I1(\int_dat_b_reg_reg_n_0_[2] ),
        .O(int_dat_b_reg_sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry_i_3
       (.I0(offset_b[1]),
        .I1(\int_dat_b_reg_reg_n_0_[1] ),
        .O(int_dat_b_reg_sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    int_dat_b_reg_sum0_carry_i_4
       (.I0(offset_b[0]),
        .I1(\int_dat_b_reg_reg_n_0_[0] ),
        .O(int_dat_b_reg_sum0_carry_i_4_n_0));
  FDRE \int_dat_b_reg_sum_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[0]),
        .Q(int_dat_b_reg_sum[0]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[10]),
        .Q(int_dat_b_reg_sum[10]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[11]),
        .Q(int_dat_b_reg_sum[11]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[12]),
        .Q(int_dat_b_reg_sum[12]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[13]),
        .Q(int_dat_b_reg_sum[13]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[14] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[14]),
        .Q(int_dat_b_reg_sum[14]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[1]),
        .Q(int_dat_b_reg_sum[1]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[2]),
        .Q(int_dat_b_reg_sum[2]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[3]),
        .Q(int_dat_b_reg_sum[3]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[4]),
        .Q(int_dat_b_reg_sum[4]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[5]),
        .Q(int_dat_b_reg_sum[5]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[6]),
        .Q(int_dat_b_reg_sum[6]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[7]),
        .Q(int_dat_b_reg_sum[7]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[8]),
        .Q(int_dat_b_reg_sum[8]),
        .R(1'b0));
  FDRE \int_dat_b_reg_sum_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(int_dat_b_reg_sum0[9]),
        .Q(int_dat_b_reg_sum[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[0] ),
        .I1(\int_dat_a_reg_reg_n_0_[0] ),
        .I2(bypass),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[10] ),
        .I1(\int_dat_a_reg_reg_n_0_[10] ),
        .I2(bypass),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[11] ),
        .I1(\int_dat_a_reg_reg_n_0_[11] ),
        .I2(bypass),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[12] ),
        .I1(\int_dat_a_reg_reg_n_0_[12] ),
        .I2(bypass),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(p_0_in0),
        .I1(p_1_in0),
        .I2(bypass),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(int_dat_b_reg_calib[0]),
        .I1(\int_dat_b_reg_reg_n_0_[0] ),
        .I2(bypass),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(int_dat_b_reg_calib[1]),
        .I1(\int_dat_b_reg_reg_n_0_[1] ),
        .I2(bypass),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(int_dat_b_reg_calib[2]),
        .I1(\int_dat_b_reg_reg_n_0_[2] ),
        .I2(bypass),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(int_dat_b_reg_calib[3]),
        .I1(\int_dat_b_reg_reg_n_0_[3] ),
        .I2(bypass),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[1] ),
        .I1(\int_dat_a_reg_reg_n_0_[1] ),
        .I2(bypass),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(int_dat_b_reg_calib[4]),
        .I1(\int_dat_b_reg_reg_n_0_[4] ),
        .I2(bypass),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(int_dat_b_reg_calib[5]),
        .I1(\int_dat_b_reg_reg_n_0_[5] ),
        .I2(bypass),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(int_dat_b_reg_calib[6]),
        .I1(\int_dat_b_reg_reg_n_0_[6] ),
        .I2(bypass),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(int_dat_b_reg_calib[7]),
        .I1(\int_dat_b_reg_reg_n_0_[7] ),
        .I2(bypass),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(int_dat_b_reg_calib[8]),
        .I1(\int_dat_b_reg_reg_n_0_[8] ),
        .I2(bypass),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(int_dat_b_reg_calib[9]),
        .I1(\int_dat_b_reg_reg_n_0_[9] ),
        .I2(bypass),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(int_dat_b_reg_calib[10]),
        .I1(\int_dat_b_reg_reg_n_0_[10] ),
        .I2(bypass),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(int_dat_b_reg_calib[11]),
        .I1(\int_dat_b_reg_reg_n_0_[11] ),
        .I2(bypass),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(int_dat_b_reg_calib[12]),
        .I1(\int_dat_b_reg_reg_n_0_[12] ),
        .I2(bypass),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(int_dat_b_reg_calib[13]),
        .I1(\int_dat_b_reg_reg_n_0_[13] ),
        .I2(bypass),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[2] ),
        .I1(\int_dat_a_reg_reg_n_0_[2] ),
        .I2(bypass),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[3] ),
        .I1(\int_dat_a_reg_reg_n_0_[3] ),
        .I2(bypass),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[4] ),
        .I1(\int_dat_a_reg_reg_n_0_[4] ),
        .I2(bypass),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[5] ),
        .I1(\int_dat_a_reg_reg_n_0_[5] ),
        .I2(bypass),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[6] ),
        .I1(\int_dat_a_reg_reg_n_0_[6] ),
        .I2(bypass),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[7] ),
        .I1(\int_dat_a_reg_reg_n_0_[7] ),
        .I2(bypass),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[8] ),
        .I1(\int_dat_a_reg_reg_n_0_[8] ),
        .I2(bypass),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\int_dat_a_reg_calib_reg_n_0_[9] ),
        .I1(\int_dat_a_reg_reg_n_0_[9] ),
        .I2(bypass),
        .O(m_axis_tdata[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
