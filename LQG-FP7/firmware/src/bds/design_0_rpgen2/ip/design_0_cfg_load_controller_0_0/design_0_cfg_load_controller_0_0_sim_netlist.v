// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:48 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_cfg_load_controller_0_0/design_0_cfg_load_controller_0_0_sim_netlist.v
// Design      : design_0_cfg_load_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_cfg_load_controller_0_0,cfg_load_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cfg_load_controller,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_cfg_load_controller_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    cfg_load,
    cfg_load_done,
    cfg_apply);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, FREQ_HZ 125000000, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_QOS 0, HAS_REGION 0, DATA_WIDTH 32, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_PROT 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  output cfg_load;
  input cfg_load_done;
  output cfg_apply;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire cfg_apply;
  wire cfg_load;
  wire cfg_load_done;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31:2] = \^S_AXI_RDATA [31:2];
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \^S_AXI_RDATA [0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_0_cfg_load_controller_0_0_cfg_load_controller inst
       (.E(S_AXI_WREADY),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA({\^S_AXI_RDATA [31:2],\^S_AXI_RDATA [0]}),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .cfg_apply(cfg_apply),
        .cfg_load_done(cfg_load_done),
        .cfg_load_reg_0(cfg_load));
endmodule

(* ORIG_REF_NAME = "axil_reg_if" *) 
module design_0_cfg_load_controller_0_0_axil_reg_if
   (S_AXI_BVALID,
    SR,
    reg_wr_en,
    S_AXI_RVALID,
    E,
    read_state_reg,
    reg_wr_ack_reg,
    Q,
    \s_axil_wdata_reg_reg[31] ,
    S_AXI_RDATA,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    reg_wr_en_reg_reg,
    S_AXI_ACLK,
    read_state,
    s_axil_wvalid_reg_reg_inv,
    S_AXI_WSTRB,
    S_AXI_WDATA,
    \s_axil_rdata_reg_reg[31] ,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_RREADY,
    reg_rd_ack,
    S_AXI_ARVALID,
    S_AXI_ARESETN);
  output S_AXI_BVALID;
  output [0:0]SR;
  output reg_wr_en;
  output S_AXI_RVALID;
  output [0:0]E;
  output read_state_reg;
  output reg_wr_ack_reg;
  output [0:0]Q;
  output [31:0]\s_axil_wdata_reg_reg[31] ;
  output [30:0]S_AXI_RDATA;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [3:0]reg_wr_en_reg_reg;
  input S_AXI_ACLK;
  input read_state;
  input s_axil_wvalid_reg_reg_inv;
  input [3:0]S_AXI_WSTRB;
  input [31:0]S_AXI_WDATA;
  input [30:0]\s_axil_rdata_reg_reg[31] ;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input reg_rd_ack;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [30:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire read_state;
  wire read_state_reg;
  wire reg_rd_ack;
  wire reg_wr_ack_reg;
  wire reg_wr_en;
  wire [3:0]reg_wr_en_reg_reg;
  wire [30:0]\s_axil_rdata_reg_reg[31] ;
  wire [31:0]\s_axil_wdata_reg_reg[31] ;
  wire s_axil_wvalid_reg_reg_inv;

  design_0_cfg_load_controller_0_0_axil_reg_if_rd axil_reg_if_rd_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .read_state(read_state),
        .read_state_reg(read_state_reg),
        .reg_rd_ack(reg_rd_ack),
        .s_axil_arvalid_reg_reg_0(SR),
        .\s_axil_rdata_reg_reg[31]_0 (\s_axil_rdata_reg_reg[31] ));
  design_0_cfg_load_controller_0_0_axil_reg_if_wr axil_reg_if_wr_inst
       (.E(E),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(SR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .reg_wr_ack_reg(reg_wr_ack_reg),
        .reg_wr_en_reg_reg_0(reg_wr_en),
        .reg_wr_en_reg_reg_1(reg_wr_en_reg_reg),
        .\s_axil_wdata_reg_reg[31]_0 (\s_axil_wdata_reg_reg[31] ),
        .s_axil_wvalid_reg_reg_inv_0(s_axil_wvalid_reg_reg_inv));
endmodule

(* ORIG_REF_NAME = "axil_reg_if_rd" *) 
module design_0_cfg_load_controller_0_0_axil_reg_if_rd
   (S_AXI_RVALID,
    read_state_reg,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    s_axil_arvalid_reg_reg_0,
    S_AXI_ACLK,
    read_state,
    S_AXI_RREADY,
    reg_rd_ack,
    S_AXI_ARVALID,
    \s_axil_rdata_reg_reg[31]_0 );
  output S_AXI_RVALID;
  output read_state_reg;
  output S_AXI_ARREADY;
  output [30:0]S_AXI_RDATA;
  input s_axil_arvalid_reg_reg_0;
  input S_AXI_ACLK;
  input read_state;
  input S_AXI_RREADY;
  input reg_rd_ack;
  input S_AXI_ARVALID;
  input [30:0]\s_axil_rdata_reg_reg[31]_0 ;

  wire S_AXI_ACLK;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [30:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire read_state;
  wire read_state_reg;
  wire reg_rd_ack;
  wire reg_rd_en;
  wire reg_rd_en_next;
  wire reg_rd_en_reg_i_2_n_0;
  wire s_axil_arvalid_next1;
  wire s_axil_arvalid_next1_in;
  wire s_axil_arvalid_reg;
  wire s_axil_arvalid_reg_reg_0;
  wire [30:0]\s_axil_rdata_reg_reg[31]_0 ;
  wire s_axil_rvalid_next;
  wire [1:0]timeout_count_reg;
  wire \timeout_count_reg[0]_i_1_n_0 ;
  wire \timeout_count_reg[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(s_axil_arvalid_reg),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h4)) 
    read_state_i_1
       (.I0(read_state),
        .I1(reg_rd_en),
        .O(read_state_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC800FA00)) 
    reg_rd_en_reg_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RREADY),
        .I2(s_axil_arvalid_reg),
        .I3(reg_rd_en_reg_i_2_n_0),
        .I4(S_AXI_RVALID),
        .O(reg_rd_en_next));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h54FF)) 
    reg_rd_en_reg_i_2
       (.I0(reg_rd_ack),
        .I1(timeout_count_reg[1]),
        .I2(timeout_count_reg[0]),
        .I3(reg_rd_en),
        .O(reg_rd_en_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_rd_en_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(reg_rd_en_next),
        .Q(reg_rd_en),
        .R(s_axil_arvalid_reg_reg_0));
  LUT6 #(
    .INIT(64'h3333FFF3AAAAAAAA)) 
    s_axil_arvalid_reg_i_1
       (.I0(S_AXI_ARVALID),
        .I1(reg_rd_en),
        .I2(timeout_count_reg[0]),
        .I3(timeout_count_reg[1]),
        .I4(reg_rd_ack),
        .I5(s_axil_arvalid_reg),
        .O(s_axil_arvalid_next1_in));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_arvalid_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axil_arvalid_next1_in),
        .Q(s_axil_arvalid_reg),
        .R(s_axil_arvalid_reg_reg_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    \s_axil_rdata_reg[31]_i_1 
       (.I0(reg_rd_ack),
        .I1(timeout_count_reg[0]),
        .I2(timeout_count_reg[1]),
        .I3(reg_rd_en),
        .O(s_axil_arvalid_next1));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [0]),
        .Q(S_AXI_RDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [9]),
        .Q(S_AXI_RDATA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [10]),
        .Q(S_AXI_RDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [11]),
        .Q(S_AXI_RDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [12]),
        .Q(S_AXI_RDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [13]),
        .Q(S_AXI_RDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [14]),
        .Q(S_AXI_RDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [15]),
        .Q(S_AXI_RDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [16]),
        .Q(S_AXI_RDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [17]),
        .Q(S_AXI_RDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [18]),
        .Q(S_AXI_RDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [19]),
        .Q(S_AXI_RDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [20]),
        .Q(S_AXI_RDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [21]),
        .Q(S_AXI_RDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [22]),
        .Q(S_AXI_RDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [23]),
        .Q(S_AXI_RDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [24]),
        .Q(S_AXI_RDATA[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [25]),
        .Q(S_AXI_RDATA[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [26]),
        .Q(S_AXI_RDATA[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [27]),
        .Q(S_AXI_RDATA[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [28]),
        .Q(S_AXI_RDATA[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [1]),
        .Q(S_AXI_RDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [29]),
        .Q(S_AXI_RDATA[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [30]),
        .Q(S_AXI_RDATA[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [2]),
        .Q(S_AXI_RDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [3]),
        .Q(S_AXI_RDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [4]),
        .Q(S_AXI_RDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [5]),
        .Q(S_AXI_RDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [6]),
        .Q(S_AXI_RDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [7]),
        .Q(S_AXI_RDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axil_arvalid_next1),
        .D(\s_axil_rdata_reg_reg[31]_0 [8]),
        .Q(S_AXI_RDATA[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDD555DCCCC000C)) 
    s_axil_rvalid_reg_i_1
       (.I0(S_AXI_RREADY),
        .I1(reg_rd_en),
        .I2(timeout_count_reg[1]),
        .I3(timeout_count_reg[0]),
        .I4(reg_rd_ack),
        .I5(S_AXI_RVALID),
        .O(s_axil_rvalid_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_rvalid_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axil_rvalid_next),
        .Q(S_AXI_RVALID),
        .R(s_axil_arvalid_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0DF5)) 
    \timeout_count_reg[0]_i_1 
       (.I0(s_axil_arvalid_reg),
        .I1(timeout_count_reg[1]),
        .I2(timeout_count_reg[0]),
        .I3(reg_rd_en),
        .O(\timeout_count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC1DD)) 
    \timeout_count_reg[1]_i_1 
       (.I0(s_axil_arvalid_reg),
        .I1(timeout_count_reg[1]),
        .I2(timeout_count_reg[0]),
        .I3(reg_rd_en),
        .O(\timeout_count_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_count_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\timeout_count_reg[0]_i_1_n_0 ),
        .Q(timeout_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_count_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\timeout_count_reg[1]_i_1_n_0 ),
        .Q(timeout_count_reg[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axil_reg_if_wr" *) 
module design_0_cfg_load_controller_0_0_axil_reg_if_wr
   (S_AXI_BVALID,
    S_AXI_ARESETN_0,
    reg_wr_en_reg_reg_0,
    E,
    reg_wr_ack_reg,
    S_AXI_AWREADY,
    reg_wr_en_reg_reg_1,
    Q,
    \s_axil_wdata_reg_reg[31]_0 ,
    S_AXI_ACLK,
    s_axil_wvalid_reg_reg_inv_0,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_WSTRB,
    S_AXI_WDATA);
  output S_AXI_BVALID;
  output S_AXI_ARESETN_0;
  output reg_wr_en_reg_reg_0;
  output [0:0]E;
  output reg_wr_ack_reg;
  output S_AXI_AWREADY;
  output [3:0]reg_wr_en_reg_reg_1;
  output [0:0]Q;
  output [31:0]\s_axil_wdata_reg_reg[31]_0 ;
  input S_AXI_ACLK;
  input s_axil_wvalid_reg_reg_inv_0;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_WSTRB;
  input [31:0]S_AXI_WDATA;

  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire r_LOAD_CTRL1;
  wire reg_wr_ack_reg;
  wire reg_wr_en_next;
  wire reg_wr_en_reg_i_2_n_0;
  wire reg_wr_en_reg_reg_0;
  wire [3:0]reg_wr_en_reg_reg_1;
  wire s_axil_awvalid_next2_in;
  wire s_axil_awvalid_reg;
  wire s_axil_bvalid_next;
  wire [31:0]\s_axil_wdata_reg_reg[31]_0 ;
  wire \s_axil_wstrb_reg_reg_n_0_[2] ;
  wire \s_axil_wstrb_reg_reg_n_0_[3] ;
  wire s_axil_wvalid_next1_in;
  wire s_axil_wvalid_reg_reg_inv_0;
  wire [1:0]timeout_count_reg;
  wire \timeout_count_reg[0]_i_1_n_0 ;
  wire \timeout_count_reg[1]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(s_axil_awvalid_reg),
        .O(S_AXI_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_LOAD_CTRL[15]_i_1 
       (.I0(reg_wr_en_reg_reg_0),
        .I1(r_LOAD_CTRL1),
        .O(reg_wr_en_reg_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_LOAD_CTRL[23]_i_1 
       (.I0(reg_wr_en_reg_reg_0),
        .I1(\s_axil_wstrb_reg_reg_n_0_[2] ),
        .O(reg_wr_en_reg_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_LOAD_CTRL[31]_i_1 
       (.I0(reg_wr_en_reg_reg_0),
        .I1(\s_axil_wstrb_reg_reg_n_0_[3] ),
        .O(reg_wr_en_reg_reg_1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_LOAD_CTRL[7]_i_1 
       (.I0(reg_wr_en_reg_reg_0),
        .I1(Q),
        .O(reg_wr_en_reg_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    reg_wr_ack_i_1
       (.I0(s_axil_wvalid_reg_reg_inv_0),
        .I1(reg_wr_en_reg_reg_0),
        .O(reg_wr_ack_reg));
  LUT5 #(
    .INIT(32'h80A0C0F0)) 
    reg_wr_en_reg_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(reg_wr_en_reg_i_2_n_0),
        .I3(E),
        .I4(S_AXI_BVALID),
        .O(reg_wr_en_next));
  LUT6 #(
    .INIT(64'h3333FFF32222AAA2)) 
    reg_wr_en_reg_i_2
       (.I0(s_axil_awvalid_reg),
        .I1(reg_wr_en_reg_reg_0),
        .I2(timeout_count_reg[1]),
        .I3(timeout_count_reg[0]),
        .I4(s_axil_wvalid_reg_reg_inv_0),
        .I5(S_AXI_AWVALID),
        .O(reg_wr_en_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_wr_en_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(reg_wr_en_next),
        .Q(reg_wr_en_reg_reg_0),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h54FFFFFF54FF0000)) 
    s_axil_awvalid_reg_i_1
       (.I0(s_axil_wvalid_reg_reg_inv_0),
        .I1(timeout_count_reg[0]),
        .I2(timeout_count_reg[1]),
        .I3(reg_wr_en_reg_reg_0),
        .I4(s_axil_awvalid_reg),
        .I5(S_AXI_AWVALID),
        .O(s_axil_awvalid_next2_in));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_awvalid_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axil_awvalid_next2_in),
        .Q(s_axil_awvalid_reg),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'hDDDD555DCCCC000C)) 
    s_axil_bvalid_reg_i_1
       (.I0(S_AXI_BREADY),
        .I1(reg_wr_en_reg_reg_0),
        .I2(timeout_count_reg[0]),
        .I3(timeout_count_reg[1]),
        .I4(s_axil_wvalid_reg_reg_inv_0),
        .I5(S_AXI_BVALID),
        .O(s_axil_bvalid_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_bvalid_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axil_bvalid_next),
        .Q(S_AXI_BVALID),
        .R(S_AXI_ARESETN_0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[0]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[10]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[11]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[12]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[13]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[14]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[15]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[16]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[17]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[18]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[19]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[1]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[20]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[21]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[22]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[23]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[24]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[25]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[26]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[27]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[28]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[29]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[2]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[30]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[31]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[3]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[4]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[5]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[6]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[7]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[8]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wdata_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WDATA[9]),
        .Q(\s_axil_wdata_reg_reg[31]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wstrb_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WSTRB[0]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wstrb_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WSTRB[1]),
        .Q(r_LOAD_CTRL1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wstrb_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WSTRB[2]),
        .Q(\s_axil_wstrb_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_wstrb_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_WSTRB[3]),
        .Q(\s_axil_wstrb_reg_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axil_wvalid_reg_inv_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000AB00FFFFAB00)) 
    s_axil_wvalid_reg_inv_i_2
       (.I0(s_axil_wvalid_reg_reg_inv_0),
        .I1(timeout_count_reg[0]),
        .I2(timeout_count_reg[1]),
        .I3(reg_wr_en_reg_reg_0),
        .I4(E),
        .I5(S_AXI_WVALID),
        .O(s_axil_wvalid_next1_in));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    s_axil_wvalid_reg_reg_inv
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axil_wvalid_next1_in),
        .Q(E),
        .S(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h31DD)) 
    \timeout_count_reg[0]_i_1 
       (.I0(s_axil_awvalid_reg),
        .I1(timeout_count_reg[0]),
        .I2(timeout_count_reg[1]),
        .I3(reg_wr_en_reg_reg_0),
        .O(\timeout_count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC1F5)) 
    \timeout_count_reg[1]_i_1 
       (.I0(s_axil_awvalid_reg),
        .I1(timeout_count_reg[0]),
        .I2(timeout_count_reg[1]),
        .I3(reg_wr_en_reg_reg_0),
        .O(\timeout_count_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_count_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\timeout_count_reg[0]_i_1_n_0 ),
        .Q(timeout_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_count_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\timeout_count_reg[1]_i_1_n_0 ),
        .Q(timeout_count_reg[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cfg_load_controller" *) 
module design_0_cfg_load_controller_0_0_cfg_load_controller
   (cfg_load_reg_0,
    S_AXI_BVALID,
    S_AXI_RVALID,
    E,
    S_AXI_RDATA,
    cfg_apply,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    cfg_load_done,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    S_AXI_WSTRB,
    S_AXI_WDATA,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID);
  output cfg_load_reg_0;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [0:0]E;
  output [30:0]S_AXI_RDATA;
  output cfg_apply;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  input cfg_load_done;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [3:0]S_AXI_WSTRB;
  input [31:0]S_AXI_WDATA;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;

  wire [0:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [30:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axil_reg_if_inst_n_5;
  wire axil_reg_if_inst_n_6;
  wire axil_reg_if_inst_n_7;
  wire axil_reg_if_inst_n_73;
  wire axil_reg_if_inst_n_74;
  wire axil_reg_if_inst_n_75;
  wire axil_reg_if_inst_n_76;
  wire cfg_apply;
  wire cfg_apply_i_1_n_0;
  wire cfg_apply_trigger;
  wire cfg_load_busy;
  wire cfg_load_done;
  wire cfg_load_i_1_n_0;
  wire cfg_load_reg_0;
  wire \r_LOAD_CTRL[0]_i_1_n_0 ;
  wire \r_LOAD_CTRL[1]_i_1_n_0 ;
  wire \r_LOAD_CTRL_reg_n_0_[0] ;
  wire \r_LOAD_CTRL_reg_n_0_[10] ;
  wire \r_LOAD_CTRL_reg_n_0_[11] ;
  wire \r_LOAD_CTRL_reg_n_0_[12] ;
  wire \r_LOAD_CTRL_reg_n_0_[13] ;
  wire \r_LOAD_CTRL_reg_n_0_[14] ;
  wire \r_LOAD_CTRL_reg_n_0_[15] ;
  wire \r_LOAD_CTRL_reg_n_0_[16] ;
  wire \r_LOAD_CTRL_reg_n_0_[17] ;
  wire \r_LOAD_CTRL_reg_n_0_[18] ;
  wire \r_LOAD_CTRL_reg_n_0_[19] ;
  wire \r_LOAD_CTRL_reg_n_0_[20] ;
  wire \r_LOAD_CTRL_reg_n_0_[21] ;
  wire \r_LOAD_CTRL_reg_n_0_[22] ;
  wire \r_LOAD_CTRL_reg_n_0_[23] ;
  wire \r_LOAD_CTRL_reg_n_0_[24] ;
  wire \r_LOAD_CTRL_reg_n_0_[25] ;
  wire \r_LOAD_CTRL_reg_n_0_[26] ;
  wire \r_LOAD_CTRL_reg_n_0_[27] ;
  wire \r_LOAD_CTRL_reg_n_0_[28] ;
  wire \r_LOAD_CTRL_reg_n_0_[29] ;
  wire \r_LOAD_CTRL_reg_n_0_[2] ;
  wire \r_LOAD_CTRL_reg_n_0_[30] ;
  wire \r_LOAD_CTRL_reg_n_0_[31] ;
  wire \r_LOAD_CTRL_reg_n_0_[3] ;
  wire \r_LOAD_CTRL_reg_n_0_[4] ;
  wire \r_LOAD_CTRL_reg_n_0_[5] ;
  wire \r_LOAD_CTRL_reg_n_0_[6] ;
  wire \r_LOAD_CTRL_reg_n_0_[7] ;
  wire \r_LOAD_CTRL_reg_n_0_[8] ;
  wire \r_LOAD_CTRL_reg_n_0_[9] ;
  wire read_state;
  wire reg_rd_ack;
  wire \reg_rd_data[31]_i_1_n_0 ;
  wire \reg_rd_data_reg_n_0_[0] ;
  wire \reg_rd_data_reg_n_0_[10] ;
  wire \reg_rd_data_reg_n_0_[11] ;
  wire \reg_rd_data_reg_n_0_[12] ;
  wire \reg_rd_data_reg_n_0_[13] ;
  wire \reg_rd_data_reg_n_0_[14] ;
  wire \reg_rd_data_reg_n_0_[15] ;
  wire \reg_rd_data_reg_n_0_[16] ;
  wire \reg_rd_data_reg_n_0_[17] ;
  wire \reg_rd_data_reg_n_0_[18] ;
  wire \reg_rd_data_reg_n_0_[19] ;
  wire \reg_rd_data_reg_n_0_[20] ;
  wire \reg_rd_data_reg_n_0_[21] ;
  wire \reg_rd_data_reg_n_0_[22] ;
  wire \reg_rd_data_reg_n_0_[23] ;
  wire \reg_rd_data_reg_n_0_[24] ;
  wire \reg_rd_data_reg_n_0_[25] ;
  wire \reg_rd_data_reg_n_0_[26] ;
  wire \reg_rd_data_reg_n_0_[27] ;
  wire \reg_rd_data_reg_n_0_[28] ;
  wire \reg_rd_data_reg_n_0_[29] ;
  wire \reg_rd_data_reg_n_0_[2] ;
  wire \reg_rd_data_reg_n_0_[30] ;
  wire \reg_rd_data_reg_n_0_[31] ;
  wire \reg_rd_data_reg_n_0_[3] ;
  wire \reg_rd_data_reg_n_0_[4] ;
  wire \reg_rd_data_reg_n_0_[5] ;
  wire \reg_rd_data_reg_n_0_[6] ;
  wire \reg_rd_data_reg_n_0_[7] ;
  wire \reg_rd_data_reg_n_0_[8] ;
  wire \reg_rd_data_reg_n_0_[9] ;
  wire reg_wr_ack_reg_n_0;
  wire reg_wr_en;
  wire rst;
  wire [31:0]s_axil_wdata_reg;

  design_0_cfg_load_controller_0_0_axil_reg_if axil_reg_if_inst
       (.E(E),
        .Q(axil_reg_if_inst_n_7),
        .SR(rst),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .read_state(read_state),
        .read_state_reg(axil_reg_if_inst_n_5),
        .reg_rd_ack(reg_rd_ack),
        .reg_wr_ack_reg(axil_reg_if_inst_n_6),
        .reg_wr_en(reg_wr_en),
        .reg_wr_en_reg_reg({axil_reg_if_inst_n_73,axil_reg_if_inst_n_74,axil_reg_if_inst_n_75,axil_reg_if_inst_n_76}),
        .\s_axil_rdata_reg_reg[31] ({\reg_rd_data_reg_n_0_[31] ,\reg_rd_data_reg_n_0_[30] ,\reg_rd_data_reg_n_0_[29] ,\reg_rd_data_reg_n_0_[28] ,\reg_rd_data_reg_n_0_[27] ,\reg_rd_data_reg_n_0_[26] ,\reg_rd_data_reg_n_0_[25] ,\reg_rd_data_reg_n_0_[24] ,\reg_rd_data_reg_n_0_[23] ,\reg_rd_data_reg_n_0_[22] ,\reg_rd_data_reg_n_0_[21] ,\reg_rd_data_reg_n_0_[20] ,\reg_rd_data_reg_n_0_[19] ,\reg_rd_data_reg_n_0_[18] ,\reg_rd_data_reg_n_0_[17] ,\reg_rd_data_reg_n_0_[16] ,\reg_rd_data_reg_n_0_[15] ,\reg_rd_data_reg_n_0_[14] ,\reg_rd_data_reg_n_0_[13] ,\reg_rd_data_reg_n_0_[12] ,\reg_rd_data_reg_n_0_[11] ,\reg_rd_data_reg_n_0_[10] ,\reg_rd_data_reg_n_0_[9] ,\reg_rd_data_reg_n_0_[8] ,\reg_rd_data_reg_n_0_[7] ,\reg_rd_data_reg_n_0_[6] ,\reg_rd_data_reg_n_0_[5] ,\reg_rd_data_reg_n_0_[4] ,\reg_rd_data_reg_n_0_[3] ,\reg_rd_data_reg_n_0_[2] ,\reg_rd_data_reg_n_0_[0] }),
        .\s_axil_wdata_reg_reg[31] (s_axil_wdata_reg),
        .s_axil_wvalid_reg_reg_inv(reg_wr_ack_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    cfg_apply_i_1
       (.I0(cfg_apply_trigger),
        .I1(cfg_load_done),
        .I2(cfg_load_reg_0),
        .O(cfg_apply_i_1_n_0));
  FDRE cfg_apply_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cfg_apply_i_1_n_0),
        .Q(cfg_apply),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    cfg_load_i_1
       (.I0(cfg_load_reg_0),
        .I1(\r_LOAD_CTRL_reg_n_0_[0] ),
        .I2(cfg_load_done),
        .O(cfg_load_i_1_n_0));
  FDRE cfg_load_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cfg_load_i_1_n_0),
        .Q(cfg_load_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_LOAD_CTRL[0]_i_1 
       (.I0(\r_LOAD_CTRL_reg_n_0_[0] ),
        .I1(axil_reg_if_inst_n_7),
        .I2(s_axil_wdata_reg[0]),
        .I3(reg_wr_en),
        .I4(S_AXI_ARESETN),
        .O(\r_LOAD_CTRL[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_LOAD_CTRL[1]_i_1 
       (.I0(cfg_apply_trigger),
        .I1(axil_reg_if_inst_n_7),
        .I2(s_axil_wdata_reg[1]),
        .I3(reg_wr_en),
        .I4(S_AXI_ARESETN),
        .O(\r_LOAD_CTRL[1]_i_1_n_0 ));
  FDRE \r_LOAD_CTRL_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL[0]_i_1_n_0 ),
        .Q(\r_LOAD_CTRL_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r_LOAD_CTRL_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[10]),
        .Q(\r_LOAD_CTRL_reg_n_0_[10] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[11]),
        .Q(\r_LOAD_CTRL_reg_n_0_[11] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[12]),
        .Q(\r_LOAD_CTRL_reg_n_0_[12] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[13]),
        .Q(\r_LOAD_CTRL_reg_n_0_[13] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[14]),
        .Q(\r_LOAD_CTRL_reg_n_0_[14] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[15]),
        .Q(\r_LOAD_CTRL_reg_n_0_[15] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[16]),
        .Q(\r_LOAD_CTRL_reg_n_0_[16] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[17]),
        .Q(\r_LOAD_CTRL_reg_n_0_[17] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[18]),
        .Q(\r_LOAD_CTRL_reg_n_0_[18] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[19]),
        .Q(\r_LOAD_CTRL_reg_n_0_[19] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL[1]_i_1_n_0 ),
        .Q(cfg_apply_trigger),
        .R(1'b0));
  FDRE \r_LOAD_CTRL_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[20]),
        .Q(\r_LOAD_CTRL_reg_n_0_[20] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[21]),
        .Q(\r_LOAD_CTRL_reg_n_0_[21] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[22]),
        .Q(\r_LOAD_CTRL_reg_n_0_[22] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_74),
        .D(s_axil_wdata_reg[23]),
        .Q(\r_LOAD_CTRL_reg_n_0_[23] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[24]),
        .Q(\r_LOAD_CTRL_reg_n_0_[24] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[25]),
        .Q(\r_LOAD_CTRL_reg_n_0_[25] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[26]),
        .Q(\r_LOAD_CTRL_reg_n_0_[26] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[27]),
        .Q(\r_LOAD_CTRL_reg_n_0_[27] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[28]),
        .Q(\r_LOAD_CTRL_reg_n_0_[28] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[29]),
        .Q(\r_LOAD_CTRL_reg_n_0_[29] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[2]),
        .Q(\r_LOAD_CTRL_reg_n_0_[2] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[30]),
        .Q(\r_LOAD_CTRL_reg_n_0_[30] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_73),
        .D(s_axil_wdata_reg[31]),
        .Q(\r_LOAD_CTRL_reg_n_0_[31] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[3]),
        .Q(\r_LOAD_CTRL_reg_n_0_[3] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[4]),
        .Q(\r_LOAD_CTRL_reg_n_0_[4] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[5]),
        .Q(\r_LOAD_CTRL_reg_n_0_[5] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[6]),
        .Q(\r_LOAD_CTRL_reg_n_0_[6] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_76),
        .D(s_axil_wdata_reg[7]),
        .Q(\r_LOAD_CTRL_reg_n_0_[7] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[8]),
        .Q(\r_LOAD_CTRL_reg_n_0_[8] ),
        .R(rst));
  FDRE \r_LOAD_CTRL_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axil_reg_if_inst_n_75),
        .D(s_axil_wdata_reg[9]),
        .Q(\r_LOAD_CTRL_reg_n_0_[9] ),
        .R(rst));
  FDRE read_state_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axil_reg_if_inst_n_5),
        .Q(read_state),
        .R(1'b0));
  FDRE reg_rd_ack_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_state),
        .Q(reg_rd_ack),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_rd_data[0]_i_1 
       (.I0(cfg_load_reg_0),
        .I1(cfg_load_done),
        .O(cfg_load_busy));
  LUT2 #(
    .INIT(4'h7)) 
    \reg_rd_data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(read_state),
        .O(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cfg_load_busy),
        .Q(\reg_rd_data_reg_n_0_[0] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[10] ),
        .Q(\reg_rd_data_reg_n_0_[10] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[11] ),
        .Q(\reg_rd_data_reg_n_0_[11] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[12] ),
        .Q(\reg_rd_data_reg_n_0_[12] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[13] ),
        .Q(\reg_rd_data_reg_n_0_[13] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[14] ),
        .Q(\reg_rd_data_reg_n_0_[14] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[15] ),
        .Q(\reg_rd_data_reg_n_0_[15] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[16] ),
        .Q(\reg_rd_data_reg_n_0_[16] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[17] ),
        .Q(\reg_rd_data_reg_n_0_[17] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[18] ),
        .Q(\reg_rd_data_reg_n_0_[18] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[19] ),
        .Q(\reg_rd_data_reg_n_0_[19] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[20] ),
        .Q(\reg_rd_data_reg_n_0_[20] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[21] ),
        .Q(\reg_rd_data_reg_n_0_[21] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[22] ),
        .Q(\reg_rd_data_reg_n_0_[22] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[23] ),
        .Q(\reg_rd_data_reg_n_0_[23] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[24] ),
        .Q(\reg_rd_data_reg_n_0_[24] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[25] ),
        .Q(\reg_rd_data_reg_n_0_[25] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[26] ),
        .Q(\reg_rd_data_reg_n_0_[26] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[27] ),
        .Q(\reg_rd_data_reg_n_0_[27] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[28] ),
        .Q(\reg_rd_data_reg_n_0_[28] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[29] ),
        .Q(\reg_rd_data_reg_n_0_[29] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[2] ),
        .Q(\reg_rd_data_reg_n_0_[2] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[30] ),
        .Q(\reg_rd_data_reg_n_0_[30] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[31] ),
        .Q(\reg_rd_data_reg_n_0_[31] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[3] ),
        .Q(\reg_rd_data_reg_n_0_[3] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[4] ),
        .Q(\reg_rd_data_reg_n_0_[4] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[5] ),
        .Q(\reg_rd_data_reg_n_0_[5] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[6] ),
        .Q(\reg_rd_data_reg_n_0_[6] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[7] ),
        .Q(\reg_rd_data_reg_n_0_[7] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[8] ),
        .Q(\reg_rd_data_reg_n_0_[8] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE \reg_rd_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_LOAD_CTRL_reg_n_0_[9] ),
        .Q(\reg_rd_data_reg_n_0_[9] ),
        .R(\reg_rd_data[31]_i_1_n_0 ));
  FDRE reg_wr_ack_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axil_reg_if_inst_n_6),
        .Q(reg_wr_ack_reg_n_0),
        .R(rst));
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
