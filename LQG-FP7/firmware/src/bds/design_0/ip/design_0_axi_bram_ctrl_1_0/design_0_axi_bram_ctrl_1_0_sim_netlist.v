// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 12 18:11:54 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_axi_bram_ctrl_1_0/design_0_axi_bram_ctrl_1_0_sim_netlist.v
// Design      : design_0_axi_bram_ctrl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_axi_bram_ctrl_1_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_axi_bram_ctrl_1_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_mode = "slave CLKIF" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_mode = "slave RSTIF" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_mode = "master BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [12:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;

  wire \<const0> ;
  wire [12:2]\^bram_addr_a ;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [12:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign bram_addr_a[12:2] = \^bram_addr_a [12:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "11" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "2048" *) 
  (* C_RD_CMD_OPTIMIZATION = "1" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_0_axi_bram_ctrl_1_0_axi_bram_ctrl U0
       (.bram_addr_a({\^bram_addr_a ,NLW_U0_bram_addr_a_UNCONNECTED[1:0]}),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[12:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[12:2],1'b0,1'b0}),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[12:2],1'b0,1'b0}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_BRAM_ADDR_WIDTH = "11" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "2048" *) (* C_RD_CMD_OPTIMIZATION = "1" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "13" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_0_axi_bram_ctrl_1_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [12:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[12:2] = \^bram_addr_a [12:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rdata[31:0] = bram_rddata_a;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_0_axi_bram_ctrl_1_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_RVALID(s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bram_rst_a),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module design_0_axi_bram_ctrl_1_0_axi_bram_ctrl_top
   (S_AXI_RVALID,
    S_AXI_ARREADY,
    s_axi_aresetn_0,
    s_axi_awready,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    bram_en_a,
    bram_addr_a,
    s_axi_rlast,
    bram_we_a,
    s_axi_wready,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_araddr,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_arburst,
    s_axi_awlen,
    s_axi_awburst);
  output S_AXI_RVALID;
  output S_AXI_ARREADY;
  output s_axi_aresetn_0;
  output s_axi_awready;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output bram_en_a;
  output [10:0]bram_addr_a;
  output s_axi_rlast;
  output [3:0]bram_we_a;
  output s_axi_wready;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wlast;
  input [10:0]s_axi_araddr;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_arlen;
  input [10:0]s_axi_awaddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;

  wire S_AXI_ARREADY;
  wire S_AXI_RVALID;
  wire axi_bvalid_int_reg;
  wire [10:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_0_axi_bram_ctrl_1_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.SR(s_axi_aresetn_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module design_0_axi_bram_ctrl_1_0_full_axi
   (S_AXI_RVALID,
    S_AXI_ARREADY,
    SR,
    s_axi_awready,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    bram_en_a,
    bram_addr_a,
    s_axi_rlast,
    bram_we_a,
    s_axi_wready,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_araddr,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_arburst,
    s_axi_awlen,
    s_axi_awburst);
  output S_AXI_RVALID;
  output S_AXI_ARREADY;
  output [0:0]SR;
  output s_axi_awready;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output bram_en_a;
  output [10:0]bram_addr_a;
  output s_axi_rlast;
  output [3:0]bram_we_a;
  output s_axi_wready;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wlast;
  input [10:0]s_axi_araddr;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_arlen;
  input [10:0]s_axi_awaddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire [3:0]BRAM_WE_A_i;
  wire \GEN_ARB.I_SNG_PORT_n_10 ;
  wire \GEN_ARB.I_SNG_PORT_n_11 ;
  wire \GEN_ARB.I_SNG_PORT_n_12 ;
  wire \GEN_ARB.I_SNG_PORT_n_14 ;
  wire \GEN_ARB.I_SNG_PORT_n_21 ;
  wire \GEN_ARB.I_SNG_PORT_n_22 ;
  wire \GEN_ARB.I_SNG_PORT_n_5 ;
  wire \GEN_ARB.I_SNG_PORT_n_6 ;
  wire \GEN_ARB.I_SNG_PORT_n_7 ;
  wire [1:1]\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg ;
  wire I_RD_CHNL_n_12;
  wire I_RD_CHNL_n_13;
  wire I_RD_CHNL_n_14;
  wire I_RD_CHNL_n_15;
  wire I_RD_CHNL_n_19;
  wire I_RD_CHNL_n_20;
  wire I_RD_CHNL_n_21;
  wire I_RD_CHNL_n_35;
  wire I_RD_CHNL_n_4;
  wire I_RD_CHNL_n_5;
  wire I_RD_CHNL_n_6;
  wire I_RD_CHNL_n_7;
  wire I_RD_CHNL_n_8;
  wire I_WR_CHNL_n_37;
  wire I_WR_CHNL_n_38;
  wire I_WR_CHNL_n_40;
  wire I_WR_CHNL_n_41;
  wire I_WR_CHNL_n_42;
  wire I_WR_CHNL_n_43;
  wire I_WR_CHNL_n_44;
  wire I_WR_CHNL_n_45;
  wire I_WR_CHNL_n_46;
  wire I_WR_CHNL_n_47;
  wire I_WR_CHNL_n_49;
  wire I_WR_CHNL_n_50;
  wire I_WR_CHNL_n_51;
  wire I_WR_CHNL_n_52;
  wire I_WR_CHNL_n_53;
  wire I_WR_CHNL_n_54;
  wire [0:0]SR;
  wire S_AXI_ARREADY;
  wire S_AXI_RVALID;
  wire [1:0]arb_sm_cs;
  wire [3:3]arlen_reg;
  wire [3:3]arlen_temp;
  wire [1:1]arsize_reg;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_bvalid_int_reg;
  wire [10:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire curr_fixed_burst_reg;
  wire [0:0]p_0_in;
  wire p_0_in_0;
  wire [0:0]p_0_in__0;
  wire [0:0]p_0_in__1;
  wire [9:9]p_1_in;
  wire [10:10]p_2_in;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wrap_addr_assign;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .I2(I_WR_CHNL_n_53),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(p_0_in_0),
        .I1(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I2(p_1_in),
        .I3(Arb2AR_Active),
        .I4(p_2_in),
        .I5(I_WR_CHNL_n_37),
        .O(\ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .I2(I_WR_CHNL_n_53),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_RD_CHNL_n_12),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_42),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_47),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_46),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_45),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_44),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_RD_CHNL_n_15),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_WR_CHNL_n_43),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_RD_CHNL_n_14),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(I_RD_CHNL_n_13),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ),
        .R(I_WR_CHNL_n_37));
  design_0_axi_bram_ctrl_1_0_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_RD_CHNL_n_20),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (I_RD_CHNL_n_19),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_RD_CHNL_n_4),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (I_RD_CHNL_n_7),
        .AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .D(p_0_in__0),
        .E(aw_active_re),
        .\FSM_sequential_arb_sm_cs_reg[0]_0 (I_RD_CHNL_n_5),
        .\FSM_sequential_arb_sm_cs_reg[0]_1 (I_WR_CHNL_n_54),
        .\GEN_RD_CMD_OPT.arlen_reg_reg[3] (arlen_reg),
        .\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] (\GEN_RD_CMD_OPT.brst_cnt_addr_reg ),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg ),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .ar_active_reg_0(\GEN_ARB.I_SNG_PORT_n_5 ),
        .ar_active_reg_1(\GEN_ARB.I_SNG_PORT_n_6 ),
        .ar_active_reg_2(\GEN_ARB.I_SNG_PORT_n_7 ),
        .ar_active_reg_3(\GEN_ARB.I_SNG_PORT_n_10 ),
        .ar_active_reg_4(SR),
        .arb_sm_cs(arb_sm_cs),
        .arsize_reg(arsize_reg),
        .aw_active_d1(aw_active_d1),
        .aw_active_reg_0(I_WR_CHNL_n_41),
        .axi_arready_int_reg_0(\GEN_ARB.I_SNG_PORT_n_14 ),
        .axi_arready_int_reg_1(I_RD_CHNL_n_6),
        .bram_we_a(bram_we_a),
        .\bram_we_a[3] (BRAM_WE_A_i),
        .last_arb_won_reg_0(I_RD_CHNL_n_35),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[0]),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .\s_axi_arlen[0] (p_0_in__1),
        .\s_axi_arlen[3] (arlen_temp),
        .s_axi_arlen_1_sp_1(\GEN_ARB.I_SNG_PORT_n_22 ),
        .s_axi_arlen_2_sp_1(\GEN_ARB.I_SNG_PORT_n_21 ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(\GEN_ARB.I_SNG_PORT_n_11 ),
        .s_axi_arvalid_1(\GEN_ARB.I_SNG_PORT_n_12 ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .wrap_addr_assign(wrap_addr_assign),
        .\wrap_burst_total_reg_reg[1] (\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ));
  design_0_axi_bram_ctrl_1_0_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] ({I_RD_CHNL_n_12,I_RD_CHNL_n_13,I_RD_CHNL_n_14,I_RD_CHNL_n_15}),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (I_WR_CHNL_n_49),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 (\ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (I_WR_CHNL_n_38),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 (I_WR_CHNL_n_52),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_1 (I_WR_CHNL_n_53),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_2 (I_WR_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (I_WR_CHNL_n_51),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8]_0 (\ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (I_WR_CHNL_n_50),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9]_0 (\ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ),
        .\ADDR_SNG_PORT.sng_bram_addr_ld_en (\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .Arb2AR_Active(Arb2AR_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .D(p_2_in),
        .E(p_0_in),
        .\FSM_sequential_arb_sm_cs_reg[0] (I_RD_CHNL_n_5),
        .\FSM_sequential_arb_sm_cs_reg[1] (I_RD_CHNL_n_35),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 (I_RD_CHNL_n_21),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 (I_RD_CHNL_n_20),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]_0 (I_RD_CHNL_n_8),
        .\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 (arlen_reg),
        .\GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 (arlen_temp),
        .\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 (S_AXI_RVALID),
        .\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 (\GEN_RD_CMD_OPT.brst_cnt_addr_reg ),
        .\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1 (p_0_in__1),
        .\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 (\GEN_RD_CMD_OPT.brst_cnt_data_reg ),
        .\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1 (p_0_in__0),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 (\GEN_ARB.I_SNG_PORT_n_12 ),
        .Q({\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] }),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .arb_sm_cs(arb_sm_cs),
        .arsize_reg(arsize_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .last_arb_won_reg(I_WR_CHNL_n_41),
        .p_0_in_0(p_0_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(I_RD_CHNL_n_6),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg_reg[3] (I_RD_CHNL_n_19),
        .\save_init_bram_addr_ld_reg_reg[3]_0 (\GEN_ARB.I_SNG_PORT_n_11 ),
        .\save_init_bram_addr_ld_reg_reg[4] (I_RD_CHNL_n_4),
        .\save_init_bram_addr_ld_reg_reg[5] (I_RD_CHNL_n_7),
        .wrap_addr_assign(wrap_addr_assign),
        .\wrap_burst_total_reg_reg[1] (\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ),
        .\wrap_burst_total_reg_reg[1]_0 (\GEN_ARB.I_SNG_PORT_n_22 ),
        .\wrap_burst_total_reg_reg[2] (\GEN_ARB.I_SNG_PORT_n_14 ),
        .\wrap_burst_total_reg_reg[2]_0 (\GEN_ARB.I_SNG_PORT_n_21 ));
  design_0_axi_bram_ctrl_1_0_wr_chnl I_WR_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_RD_CHNL_n_21),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\GEN_ARB.I_SNG_PORT_n_10 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\GEN_ARB.I_SNG_PORT_n_7 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\GEN_ARB.I_SNG_PORT_n_6 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (I_WR_CHNL_n_53),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (\GEN_ARB.I_SNG_PORT_n_5 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7]_0 (I_RD_CHNL_n_8),
        .\ADDR_SNG_PORT.sng_bram_addr_ld_en (\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .D({I_WR_CHNL_n_42,I_WR_CHNL_n_43,I_WR_CHNL_n_44,I_WR_CHNL_n_45,I_WR_CHNL_n_46,I_WR_CHNL_n_47}),
        .E(aw_active_re),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 (I_WR_CHNL_n_38),
        .\FSM_sequential_arb_sm_cs_reg[0] (I_WR_CHNL_n_41),
        .\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 (BRAM_WE_A_i),
        .Q({\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] }),
        .ar_active_reg(I_WR_CHNL_n_40),
        .arb_sm_cs(arb_sm_cs[0]),
        .aw_active_d1(aw_active_d1),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_wrdata_a(bram_wrdata_a),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg_0(I_WR_CHNL_n_37),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[12] (p_1_in),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(I_WR_CHNL_n_54),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[10] (I_WR_CHNL_n_49),
        .\save_init_bram_addr_ld_reg[3] (SR),
        .\save_init_bram_addr_ld_reg[6] (I_WR_CHNL_n_52),
        .\save_init_bram_addr_ld_reg[8] (I_WR_CHNL_n_51),
        .\save_init_bram_addr_ld_reg[9] (I_WR_CHNL_n_50));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module design_0_axi_bram_ctrl_1_0_rd_chnl
   (\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    s_axi_aresetn_0,
    arsize_reg,
    wrap_addr_assign,
    \save_init_bram_addr_ld_reg_reg[4] ,
    \FSM_sequential_arb_sm_cs_reg[0] ,
    s_axi_rready_0,
    \save_init_bram_addr_ld_reg_reg[5] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]_0 ,
    D,
    E,
    \ADDR_SNG_PORT.sng_bram_addr_ld_en ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ,
    bram_en_a,
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ,
    \save_init_bram_addr_ld_reg_reg[3] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ,
    bram_addr_a,
    \wrap_burst_total_reg_reg[1] ,
    \GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ,
    \FSM_sequential_arb_sm_cs_reg[1] ,
    s_axi_rlast,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_rready,
    s_axi_arvalid,
    S_AXI_ARREADY,
    arb_sm_cs,
    \wrap_burst_total_reg_reg[2] ,
    Arb2AR_Active,
    curr_fixed_burst_reg,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ,
    BRAM_En_A_i,
    s_axi_arburst,
    s_axi_araddr,
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1 ,
    s_axi_arlen,
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ,
    \wrap_burst_total_reg_reg[1]_0 ,
    \GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 ,
    \wrap_burst_total_reg_reg[2]_0 ,
    p_0_in_0,
    last_arb_won_reg,
    \save_init_bram_addr_ld_reg_reg[3]_0 );
  output \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output s_axi_aresetn_0;
  output [0:0]arsize_reg;
  output wrap_addr_assign;
  output \save_init_bram_addr_ld_reg_reg[4] ;
  output \FSM_sequential_arb_sm_cs_reg[0] ;
  output s_axi_rready_0;
  output \save_init_bram_addr_ld_reg_reg[5] ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]_0 ;
  output [0:0]D;
  output [0:0]E;
  output \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  output [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  output [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ;
  output bram_en_a;
  output [0:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ;
  output \save_init_bram_addr_ld_reg_reg[3] ;
  output [0:0]\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ;
  output [10:0]bram_addr_a;
  output [0:0]\wrap_burst_total_reg_reg[1] ;
  output [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ;
  output \FSM_sequential_arb_sm_cs_reg[1] ;
  output s_axi_rlast;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_rready;
  input s_axi_arvalid;
  input S_AXI_ARREADY;
  input [1:0]arb_sm_cs;
  input \wrap_burst_total_reg_reg[2] ;
  input Arb2AR_Active;
  input curr_fixed_burst_reg;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  input [9:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ;
  input BRAM_En_A_i;
  input [1:0]s_axi_arburst;
  input [10:0]s_axi_araddr;
  input [0:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1 ;
  input [7:0]s_axi_arlen;
  input [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  input \wrap_burst_total_reg_reg[1]_0 ;
  input [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 ;
  input \wrap_burst_total_reg_reg[2]_0 ;
  input p_0_in_0;
  input last_arb_won_reg;
  input \save_init_bram_addr_ld_reg_reg[3]_0 ;

  wire [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire Arb2AR_Active;
  wire BRAM_En_A_i;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0] ;
  wire \FSM_sequential_arb_sm_cs_reg[1] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ;
  wire [0:0]\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9] ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_33 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ;
  wire \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ;
  wire [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ;
  wire [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 ;
  wire \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ;
  wire [7:1]\GEN_RD_CMD_OPT.brst_cnt_addr_reg ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ;
  wire [7:1]\GEN_RD_CMD_OPT.brst_cnt_data_reg ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1 ;
  wire \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_4_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  wire [9:0]Q;
  wire S_AXI_ARREADY;
  wire [1:0]arb_sm_cs;
  wire [1:0]arburst_reg;
  wire [7:0]arlen_reg;
  wire [2:0]arlen_temp;
  wire [0:0]arsize_reg;
  wire axi_aresetn_d3;
  wire axi_rlast_cmb_reg;
  wire axi_rvalid_cmb;
  wire [10:0]bram_addr_a;
  wire \bram_addr_a[3]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[4]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[5]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[5]_INST_0_i_3_n_0 ;
  wire bram_en_a;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire last_arb_won_reg;
  wire p_0_in_0;
  wire [7:1]p_0_in__0;
  wire [7:1]p_0_in__1;
  wire [9:0]p_2_in;
  wire rd_addr_sm_cs;
  wire [1:0]rd_data_sm_cs;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld_reg_reg[3] ;
  wire \save_init_bram_addr_ld_reg_reg[3]_0 ;
  wire \save_init_bram_addr_ld_reg_reg[4] ;
  wire \save_init_bram_addr_ld_reg_reg[5] ;
  wire wrap_addr_assign;
  wire [0:0]\wrap_burst_total_reg_reg[1] ;
  wire \wrap_burst_total_reg_reg[1]_0 ;
  wire \wrap_burst_total_reg_reg[2] ;
  wire \wrap_burst_total_reg_reg[2]_0 ;

  LUT6 #(
    .INIT(64'h4444766600000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ),
        .I1(rd_addr_sm_cs),
        .I2(s_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2 
       (.I0(\GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ),
        .I1(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "next_addr:1,idle:0" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55030300000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I1(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I2(\wrap_burst_total_reg_reg[2] ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I1(s_axi_arlen[1]),
        .I2(\wrap_burst_total_reg_reg[2] ),
        .I3(arlen_reg[1]),
        .I4(arlen_temp[0]),
        .I5(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(arlen_reg[4]),
        .I1(arlen_reg[5]),
        .I2(arlen_reg[6]),
        .I3(arlen_reg[7]),
        .I4(\wrap_burst_total_reg_reg[2] ),
        .I5(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0003030355030303)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4 
       (.I0(s_axi_arlen[2]),
        .I1(arlen_reg[2]),
        .I2(\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ),
        .I3(s_axi_arvalid),
        .I4(S_AXI_ARREADY),
        .I5(s_axi_arlen[3]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_5 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[7]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCD0C000000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\wrap_burst_total_reg_reg[2] ),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ),
        .Q(rd_data_sm_cs[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(rd_data_sm_cs[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444004000000000)) 
    \FSM_sequential_arb_sm_cs[0]_i_2 
       (.I0(arb_sm_cs[0]),
        .I1(arb_sm_cs[1]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(axi_rlast_cmb_reg),
        .I5(s_axi_rready),
        .O(\FSM_sequential_arb_sm_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h00440347FFFFFFFF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1 
       (.I0(arburst_reg[1]),
        .I1(\wrap_burst_total_reg_reg[2] ),
        .I2(s_axi_arburst[1]),
        .I3(arburst_reg[0]),
        .I4(s_axi_arburst[0]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_2_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77F077FF77FF77FF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I3(rd_addr_sm_cs),
        .I4(s_axi_arvalid),
        .I5(S_AXI_ARREADY),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9A9AAAA59A95)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_2_n_0 ),
        .I1(arburst_reg[1]),
        .I2(\wrap_burst_total_reg_reg[2] ),
        .I3(s_axi_arburst[1]),
        .I4(arburst_reg[0]),
        .I5(s_axi_arburst[0]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'h0BBBFBBB)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_2 
       (.I0(wrap_addr_assign),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[0]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0500000005333333)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_2 
       (.I0(s_axi_arburst[0]),
        .I1(arburst_reg[0]),
        .I2(s_axi_arburst[1]),
        .I3(s_axi_arvalid),
        .I4(S_AXI_ARREADY),
        .I5(arburst_reg[1]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(D),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9] ),
        .R(s_axi_aresetn_0));
  design_0_axi_bram_ctrl_1_0_wrap_brst_rd \GEN_RD_CMD_OPT.I_WRAP_BRST 
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[12]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_2 (\ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_3 (\ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ),
        .Arb2AR_Active(Arb2AR_Active),
        .D({D,p_2_in[9:6],\GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ,p_2_in[3],\GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ,p_2_in[1]}),
        .E(E),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] ({\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[12] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[10] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[9] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[8] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[7] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[6] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 }),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 (wrap_addr_assign),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] (\bram_addr_a[5]_INST_0_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 (\bram_addr_a[5]_INST_0_i_3_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1 (\bram_addr_a[4]_INST_0_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7]_0 ),
        .\GEN_RD_CMD_OPT.arlen_reg_reg[2] (arlen_temp[2]),
        .\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg (\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg (\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_4_n_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ),
        .Q(Q[9:1]),
        .SR(s_axi_aresetn_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .bram_addr_a(bram_addr_a[10:1]),
        .bram_addr_a_3_sp_1(\bram_addr_a[3]_INST_0_i_2_n_0 ),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .p_0_in_0(p_0_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst[1]),
        .\s_axi_arburst[1] (\GEN_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg_reg[3]_0 (\save_init_bram_addr_ld_reg_reg[3] ),
        .\save_init_bram_addr_ld_reg_reg[3]_1 (\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .\save_init_bram_addr_ld_reg_reg[4]_0 (\save_init_bram_addr_ld_reg_reg[4] ),
        .\save_init_bram_addr_ld_reg_reg[5]_0 (\save_init_bram_addr_ld_reg_reg[5] ),
        .\wrap_burst_total_reg_reg[0]_0 (\GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 ),
        .\wrap_burst_total_reg_reg[1]_0 (\wrap_burst_total_reg_reg[1] ),
        .\wrap_burst_total_reg_reg[1]_1 (\wrap_burst_total_reg_reg[1]_0 ),
        .\wrap_burst_total_reg_reg[2]_0 (\wrap_burst_total_reg_reg[2] ),
        .\wrap_burst_total_reg_reg[2]_1 (arsize_reg),
        .\wrap_burst_total_reg_reg[2]_2 ({\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ,arlen_reg[2]}),
        .\wrap_burst_total_reg_reg[2]_3 (\wrap_burst_total_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arburst_reg[0]_i_1 
       (.I0(arburst_reg[0]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_arburst[0]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arburst_reg[1]_i_1 
       (.I0(arburst_reg[1]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_arburst[1]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ),
        .Q(arburst_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ),
        .Q(arburst_reg[1]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arlen_reg[0]_i_1 
       (.I0(arlen_reg[0]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[0]),
        .O(arlen_temp[0]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arlen_reg[1]_i_1 
       (.I0(arlen_reg[1]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[1]),
        .O(arlen_temp[1]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[0]),
        .Q(arlen_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[1]),
        .Q(arlen_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[2]),
        .Q(arlen_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arlen_reg_reg[3]_1 ),
        .Q(\GEN_RD_CMD_OPT.arlen_reg_reg[3]_0 ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_arlen[4]),
        .Q(arlen_reg[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_arlen[5]),
        .Q(arlen_reg[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_arlen[6]),
        .Q(arlen_reg[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_arlen[7]),
        .Q(arlen_reg[7]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \GEN_RD_CMD_OPT.arsize_reg[1]_i_1 
       (.I0(arsize_reg),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .O(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arsize_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ),
        .Q(arsize_reg),
        .R(s_axi_aresetn_0));
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(s_axi_aresetn),
        .Q(\GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFFFEEEE00002222)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(\wrap_burst_total_reg_reg[2] ),
        .I5(axi_rlast_cmb_reg),
        .O(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ),
        .Q(axi_rlast_cmb_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0F0F0F0F88FF8888)) 
    \GEN_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(rd_data_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rvalid_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_cmb),
        .Q(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hBF8080BF)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .O(p_0_in__1[1]));
  LUT6 #(
    .INIT(64'hFFA9A9A900A9A9A9)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(S_AXI_ARREADY),
        .I4(s_axi_arvalid),
        .I5(s_axi_arlen[2]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .I4(\wrap_burst_total_reg_reg[2] ),
        .I5(s_axi_arlen[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hA9AAFFFFA9AA0000)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ),
        .I4(\wrap_burst_total_reg_reg[2] ),
        .I5(s_axi_arlen[4]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_arlen[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_arlen[6]),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1 
       (.I0(rd_addr_sm_cs),
        .I1(s_axi_rready),
        .I2(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_arvalid),
        .I4(S_AXI_ARREADY),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9A9A9A009A9A9A)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I3(S_AXI_ARREADY),
        .I4(s_axi_arvalid),
        .I5(s_axi_arlen[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_1 ),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]_0 ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hBF8080BF)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hFFA9A9A900A9A9A9)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(S_AXI_ARREADY),
        .I4(s_axi_arvalid),
        .I5(s_axi_arlen[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[3]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I4(\wrap_burst_total_reg_reg[2] ),
        .I5(s_axi_arlen[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_arlen[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_arlen[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[6]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_arlen[6]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(s_axi_rready),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_arvalid),
        .I5(S_AXI_ARREADY),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8080BFBF80BF80)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_1 ),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]_0 ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(arburst_reg[0]),
        .I1(\wrap_burst_total_reg_reg[2] ),
        .I2(s_axi_arburst[0]),
        .I3(arburst_reg[1]),
        .I4(s_axi_arburst[1]),
        .I5(axi_aresetn_d3),
        .O(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_3 
       (.I0(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rd_addr_sm_cs),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0000000ACCCCCC)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_4 
       (.I0(s_axi_arburst[1]),
        .I1(arburst_reg[1]),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arvalid),
        .I4(S_AXI_ARREADY),
        .I5(arburst_reg[0]),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h8888F000)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_5 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(rd_addr_sm_cs),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .Q(wrap_addr_assign),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7577FFFF)) 
    axi_arready_int_i_3
       (.I0(s_axi_rready),
        .I1(axi_rlast_cmb_reg),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(arb_sm_cs[1]),
        .O(s_axi_rready_0));
  LUT6 #(
    .INIT(64'hAAAA22A222222222)) 
    axi_awready_int_i_2
       (.I0(last_arb_won_reg),
        .I1(arb_sm_cs[1]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(axi_rlast_cmb_reg),
        .I5(s_axi_rready),
        .O(\FSM_sequential_arb_sm_cs_reg[1] ));
  LUT6 #(
    .INIT(64'h30FF3000AAAAAAAA)) 
    \bram_addr_a[2]_INST_0 
       (.I0(Q[0]),
        .I1(wrap_addr_assign),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2]_0 ),
        .I3(\wrap_burst_total_reg_reg[2] ),
        .I4(s_axi_araddr[0]),
        .I5(Arb2AR_Active),
        .O(bram_addr_a[0]));
  LUT5 #(
    .INIT(32'hF4440444)) 
    \bram_addr_a[3]_INST_0_i_2 
       (.I0(wrap_addr_assign),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[1]),
        .O(\bram_addr_a[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4440444)) 
    \bram_addr_a[4]_INST_0_i_2 
       (.I0(wrap_addr_assign),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[2]),
        .O(\bram_addr_a[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \bram_addr_a[5]_INST_0_i_2 
       (.I0(wrap_addr_assign),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .O(\bram_addr_a[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80BF8080)) 
    \bram_addr_a[5]_INST_0_i_3 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(wrap_addr_assign),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ),
        .O(\bram_addr_a[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEBAAABAAABAAA)) 
    bram_en_a_INST_0
       (.I0(BRAM_En_A_i),
        .I1(rd_addr_sm_cs),
        .I2(s_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_rready),
        .O(bram_en_a));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    s_axi_rlast_INST_0
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(axi_rlast_cmb_reg),
        .O(s_axi_rlast));
endmodule

(* ORIG_REF_NAME = "sng_port_arb" *) 
module design_0_axi_bram_ctrl_1_0_sng_port_arb
   (s_axi_awready,
    S_AXI_ARREADY,
    Arb2AW_Active,
    Arb2AR_Active,
    E,
    ar_active_reg_0,
    ar_active_reg_1,
    ar_active_reg_2,
    D,
    \s_axi_arlen[0] ,
    ar_active_reg_3,
    s_axi_arvalid_0,
    s_axi_arvalid_1,
    \s_axi_arlen[3] ,
    axi_arready_int_reg_0,
    arb_sm_cs,
    bram_we_a,
    s_axi_arlen_2_sp_1,
    s_axi_arlen_1_sp_1,
    ar_active_reg_4,
    s_axi_aclk,
    aw_active_d1,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    s_axi_arlen,
    s_axi_arvalid,
    Q,
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] ,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    wrap_addr_assign,
    arsize_reg,
    \GEN_RD_CMD_OPT.arlen_reg_reg[3] ,
    \FSM_sequential_arb_sm_cs_reg[0]_0 ,
    \FSM_sequential_arb_sm_cs_reg[0]_1 ,
    AW2Arb_Active_Clr,
    axi_arready_int_reg_1,
    s_axi_awvalid,
    last_arb_won_reg_0,
    \bram_we_a[3] ,
    \wrap_burst_total_reg_reg[1] ,
    aw_active_reg_0);
  output s_axi_awready;
  output S_AXI_ARREADY;
  output Arb2AW_Active;
  output Arb2AR_Active;
  output [0:0]E;
  output ar_active_reg_0;
  output ar_active_reg_1;
  output ar_active_reg_2;
  output [0:0]D;
  output [0:0]\s_axi_arlen[0] ;
  output ar_active_reg_3;
  output s_axi_arvalid_0;
  output s_axi_arvalid_1;
  output [0:0]\s_axi_arlen[3] ;
  output axi_arready_int_reg_0;
  output [1:0]arb_sm_cs;
  output [3:0]bram_we_a;
  output s_axi_arlen_2_sp_1;
  output s_axi_arlen_1_sp_1;
  input ar_active_reg_4;
  input s_axi_aclk;
  input aw_active_d1;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input [3:0]s_axi_arlen;
  input s_axi_arvalid;
  input [0:0]Q;
  input [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] ;
  input [0:0]s_axi_araddr;
  input [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input wrap_addr_assign;
  input [0:0]arsize_reg;
  input [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3] ;
  input \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  input \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  input AW2Arb_Active_Clr;
  input axi_arready_int_reg_1;
  input s_axi_awvalid;
  input last_arb_won_reg_0;
  input [3:0]\bram_we_a[3] ;
  input [0:0]\wrap_burst_total_reg_reg[1] ;
  input aw_active_reg_0;

  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_arb_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  wire [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[3] ;
  wire [0:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] ;
  wire [0:0]Q;
  wire S_AXI_ARREADY;
  wire ar_active_i_1_n_0;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire ar_active_reg_2;
  wire ar_active_reg_3;
  wire ar_active_reg_4;
  wire [1:0]arb_sm_cs;
  wire [0:0]arsize_reg;
  wire aw_active_d1;
  wire aw_active_i_1_n_0;
  wire aw_active_reg_0;
  wire axi_arready_cmb;
  wire axi_arready_int_i_2_n_0;
  wire axi_arready_int_reg_0;
  wire axi_arready_int_reg_1;
  wire axi_awready_cmb;
  wire [3:0]bram_we_a;
  wire [3:0]\bram_we_a[3] ;
  wire last_arb_won;
  wire last_arb_won_cmb;
  wire last_arb_won_i_1_n_0;
  wire last_arb_won_reg_0;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire [3:0]s_axi_arlen;
  wire [0:0]\s_axi_arlen[0] ;
  wire [0:0]\s_axi_arlen[3] ;
  wire s_axi_arlen_1_sn_1;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire s_axi_arvalid_1;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire wrap_addr_assign;
  wire [0:0]\wrap_burst_total_reg_reg[1] ;

  assign s_axi_arlen_1_sp_1 = s_axi_arlen_1_sn_1;
  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  LUT6 #(
    .INIT(64'h800080008AAA8000)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(Arb2AR_Active),
        .I1(s_axi_araddr),
        .I2(s_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I5(wrap_addr_assign),
        .O(ar_active_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(Arb2AR_Active),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .O(ar_active_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(Arb2AR_Active),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .O(ar_active_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(Arb2AR_Active),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .O(ar_active_reg_0));
  LUT6 #(
    .INIT(64'h502B5000552B5500)) 
    \FSM_sequential_arb_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I2(arb_sm_cs[1]),
        .I3(arb_sm_cs[0]),
        .I4(\FSM_sequential_arb_sm_cs[0]_i_4_n_0 ),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \FSM_sequential_arb_sm_cs[0]_i_4 
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_arvalid),
        .O(\FSM_sequential_arb_sm_cs[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0300FFFFDF000000)) 
    \FSM_sequential_arb_sm_cs[1]_i_1 
       (.I0(last_arb_won),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFABAFFFAAABAAFF)) 
    \FSM_sequential_arb_sm_cs[1]_i_2 
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I2(arb_sm_cs[1]),
        .I3(arb_sm_cs[0]),
        .I4(\FSM_sequential_arb_sm_cs[0]_i_4_n_0 ),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ),
        .Q(arb_sm_cs[0]),
        .R(ar_active_reg_4));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ),
        .Q(arb_sm_cs[1]),
        .R(ar_active_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \GEN_RD_CMD_OPT.arlen_reg[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\GEN_RD_CMD_OPT.arlen_reg_reg[3] ),
        .O(\s_axi_arlen[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] ),
        .O(\s_axi_arlen[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(Q),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_8 
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(arsize_reg),
        .O(s_axi_arvalid_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    ar_active_i_1
       (.I0(last_arb_won_cmb),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(axi_arready_int_i_2_n_0),
        .I3(Arb2AR_Active),
        .O(ar_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_i_1_n_0),
        .Q(Arb2AR_Active),
        .R(ar_active_reg_4));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    aw_active_i_1
       (.I0(aw_active_reg_0),
        .I1(AW2Arb_Active_Clr),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(axi_awready_cmb),
        .I5(Arb2AW_Active),
        .O(aw_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_i_1_n_0),
        .Q(Arb2AW_Active),
        .R(ar_active_reg_4));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    axi_arready_int_i_1
       (.I0(axi_arready_int_i_2_n_0),
        .I1(axi_arready_int_reg_1),
        .I2(arb_sm_cs[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awvalid),
        .O(axi_arready_cmb));
  LUT6 #(
    .INIT(64'h4000510051005100)) 
    axi_arready_int_i_2
       (.I0(arb_sm_cs[1]),
        .I1(arb_sm_cs[0]),
        .I2(AW2Arb_Active_Clr),
        .I3(s_axi_arvalid),
        .I4(s_axi_awvalid),
        .I5(last_arb_won),
        .O(axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(S_AXI_ARREADY),
        .R(ar_active_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFDDD0000)) 
    axi_awready_int_i_1
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[1]),
        .I2(s_axi_awvalid),
        .I3(last_arb_won),
        .I4(last_arb_won_reg_0),
        .O(axi_awready_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(ar_active_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr_a[2]_INST_0_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .O(axi_arready_int_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[0]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [0]),
        .O(bram_we_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[1]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [1]),
        .O(bram_we_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[2]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [2]),
        .O(bram_we_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[3]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [3]),
        .O(bram_we_a[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    last_arb_won_i_1
       (.I0(last_arb_won_cmb),
        .I1(last_arb_won_reg_0),
        .I2(axi_arready_cmb),
        .I3(last_arb_won),
        .O(last_arb_won_i_1_n_0));
  LUT5 #(
    .INIT(32'h0D3F0000)) 
    last_arb_won_i_2
       (.I0(last_arb_won),
        .I1(arb_sm_cs[0]),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_awvalid),
        .I4(s_axi_arvalid),
        .O(last_arb_won_cmb));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_i_1_n_0),
        .Q(last_arb_won),
        .R(ar_active_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(Arb2AW_Active),
        .I1(aw_active_d1),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \save_init_bram_addr_ld_reg[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(s_axi_arvalid_0));
  LUT5 #(
    .INIT(32'hFF080008)) 
    \wrap_burst_total_reg[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(\s_axi_arlen[3] ),
        .I3(axi_arready_int_reg_0),
        .I4(\wrap_burst_total_reg_reg[1] ),
        .O(s_axi_arlen_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total_reg[2]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .I4(s_axi_arlen[1]),
        .O(s_axi_arlen_2_sn_1));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module design_0_axi_bram_ctrl_1_0_wr_chnl
   (aw_active_d1,
    BRAM_En_A_i,
    bram_wrdata_a,
    s_axi_wready,
    axi_bvalid_int_reg_0,
    curr_fixed_burst_reg,
    curr_fixed_burst_reg_reg_0,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ,
    AW2Arb_Active_Clr,
    ar_active_reg,
    \FSM_sequential_arb_sm_cs_reg[0] ,
    D,
    \s_axi_awaddr[12] ,
    \save_init_bram_addr_ld_reg[10] ,
    \save_init_bram_addr_ld_reg[9] ,
    \save_init_bram_addr_ld_reg[8] ,
    \save_init_bram_addr_ld_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    s_axi_awvalid_0,
    \GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ,
    \save_init_bram_addr_ld_reg[3] ,
    s_axi_aclk,
    Arb2AW_Active,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_wvalid,
    Arb2AR_Active,
    arb_sm_cs,
    s_axi_awvalid,
    s_axi_wlast,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.sng_bram_addr_ld_en ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    s_axi_awaddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    s_axi_bready,
    s_axi_awlen,
    s_axi_awburst,
    E,
    s_axi_wstrb);
  output aw_active_d1;
  output BRAM_En_A_i;
  output [31:0]bram_wrdata_a;
  output s_axi_wready;
  output axi_bvalid_int_reg_0;
  output curr_fixed_burst_reg;
  output curr_fixed_burst_reg_reg_0;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ;
  output AW2Arb_Active_Clr;
  output ar_active_reg;
  output \FSM_sequential_arb_sm_cs_reg[0] ;
  output [5:0]D;
  output [0:0]\s_axi_awaddr[12] ;
  output \save_init_bram_addr_ld_reg[10] ;
  output \save_init_bram_addr_ld_reg[9] ;
  output \save_init_bram_addr_ld_reg[8] ;
  output \save_init_bram_addr_ld_reg[6] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output s_axi_awvalid_0;
  output [3:0]\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ;
  input \save_init_bram_addr_ld_reg[3] ;
  input s_axi_aclk;
  input Arb2AW_Active;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input Arb2AR_Active;
  input [0:0]arb_sm_cs;
  input s_axi_awvalid;
  input s_axi_wlast;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ;
  input [3:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input [10:0]s_axi_awaddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input s_axi_bready;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]E;
  input [3:0]s_axi_wstrb;

  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire AW2Arb_Active_Clr;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ;
  wire \FSM_sequential_arb_sm_cs_reg[0] ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire [3:0]\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire [3:0]Q;
  wire ar_active_reg;
  wire [0:0]arb_sm_cs;
  wire aw_active_d1;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_i_3_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_2_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bram_en_cmb;
  wire [31:0]bram_wrdata_a;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_wrap_burst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[12] ;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld_reg[10] ;
  wire \save_init_bram_addr_ld_reg[3] ;
  wire \save_init_bram_addr_ld_reg[6] ;
  wire \save_init_bram_addr_ld_reg[8] ;
  wire \save_init_bram_addr_ld_reg[9] ;
  wire wrdata_reg_ld;

  LUT6 #(
    .INIT(64'hFFFF1555FFFF0000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I2(s_axi_wvalid),
        .I3(s_axi_wlast),
        .I4(AW2Arb_Active_Clr),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD010FFFFD0100000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(s_axi_wlast),
        .I1(axi_wdata_full_reg),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(axi_wr_burst),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I2(s_axi_wvalid),
        .I3(s_axi_wlast),
        .I4(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5F4C4C4C4)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hDF1F)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2 
       (.I0(s_axi_wlast),
        .I1(axi_wdata_full_reg),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(axi_wr_burst),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(s_axi_wvalid),
        .I2(axi_wdata_full_reg),
        .I3(Arb2AW_Active),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .S(\save_init_bram_addr_ld_reg[3] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ),
        .Q(AW2Arb_Active_Clr),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hD555)) 
    \FSM_sequential_arb_sm_cs[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .O(s_axi_awvalid_0));
  LUT6 #(
    .INIT(64'hFFFFF200F222F200)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(Arb2AW_Active),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I3(axi_wdata_full_reg),
        .I4(s_axi_wvalid),
        .I5(AW2Arb_Active_Clr),
        .O(axi_wdata_full_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hEEC0AA00)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I1(Arb2AW_Active),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .O(bram_en_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(BRAM_En_A_i),
        .R(\save_init_bram_addr_ld_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(axi_bvalid_int_i_3_n_0),
        .O(bvalid_cnt_inc));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEE0000)) 
    \GEN_WRDATA[31].bram_wrdata_int[31]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I1(AW2Arb_Active_Clr),
        .I2(axi_wdata_full_reg),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I4(s_axi_wvalid),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(wrdata_reg_ld),
        .I1(clr_bram_we),
        .I2(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  design_0_axi_bram_ctrl_1_0_wrap_brst I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int_reg[11] (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (AW2Arb_Active_Clr),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ),
        .\ADDR_SNG_PORT.sng_bram_addr_ld_en (\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .D(D),
        .E(E),
        .Q(Q),
        .ar_active_reg(ar_active_reg),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(curr_fixed_burst_reg_reg_0),
        .curr_fixed_burst_reg_reg_0(I_WRAP_BRST_n_15),
        .curr_fixed_burst_reg_reg_1(aw_active_d1),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_14),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[12] (\s_axi_awaddr[12] ),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[10]_0 (\save_init_bram_addr_ld_reg[10] ),
        .\save_init_bram_addr_ld_reg[3]_0 (\save_init_bram_addr_ld_reg[3] ),
        .\save_init_bram_addr_ld_reg[6]_0 (\save_init_bram_addr_ld_reg[6] ),
        .\save_init_bram_addr_ld_reg[8]_0 (\save_init_bram_addr_ld_reg[8] ),
        .\save_init_bram_addr_ld_reg[9]_0 (\save_init_bram_addr_ld_reg[9] ));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Arb2AW_Active),
        .Q(aw_active_d1),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h15550000)) 
    aw_active_i_2
       (.I0(arb_sm_cs),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(s_axi_awvalid),
        .O(\FSM_sequential_arb_sm_cs_reg[0] ));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(axi_bvalid_int_i_2_n_0),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .I5(axi_bvalid_int_i_3_n_0),
        .O(axi_bvalid_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_int_i_2
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .O(axi_bvalid_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h70777077F0FFFFFF)) 
    axi_bvalid_int_i_3
       (.I0(s_axi_wlast),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ),
        .I3(Arb2AW_Active),
        .I4(axi_wdata_full_reg),
        .I5(s_axi_wvalid),
        .O(axi_bvalid_int_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5557777755544444)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I2(AW2Arb_Active_Clr),
        .I3(axi_wr_burst_i_2_n_0),
        .I4(s_axi_wvalid),
        .I5(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_wr_burst_i_2
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(axi_wdata_full_reg),
        .O(axi_wr_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(\save_init_bram_addr_ld_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h777788888880777F)) 
    \bvalid_cnt[0]_i_1 
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg_0),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(axi_bvalid_int_i_3_n_0),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF058A5F0A5F0A5F0)) 
    \bvalid_cnt[1]_i_1 
       (.I0(axi_bvalid_int_i_3_n_0),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(axi_bvalid_int_reg_0),
        .I5(s_axi_bready),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC49CCC9CCC9CCC)) 
    \bvalid_cnt[2]_i_1 
       (.I0(axi_bvalid_int_i_3_n_0),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(axi_bvalid_int_reg_0),
        .I5(s_axi_bready),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_15),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_14),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module design_0_axi_bram_ctrl_1_0_wrap_brst
   (curr_fixed_burst_reg_reg,
    ar_active_reg,
    D,
    \save_init_bram_addr_ld_reg[10]_0 ,
    \save_init_bram_addr_ld_reg[9]_0 ,
    \save_init_bram_addr_ld_reg[8]_0 ,
    \save_init_bram_addr_ld_reg[6]_0 ,
    \s_axi_awaddr[12] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    curr_wrap_burst_reg_reg,
    curr_fixed_burst_reg_reg_0,
    curr_fixed_burst_reg,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    s_axi_aresetn,
    Arb2AR_Active,
    Arb2AW_Active,
    curr_fixed_burst_reg_reg_1,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    \ADDR_SNG_PORT.sng_bram_addr_ld_en ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    s_axi_awaddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    curr_wrap_burst_reg,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awburst,
    \save_init_bram_addr_ld_reg[3]_0 ,
    E,
    s_axi_aclk);
  output curr_fixed_burst_reg_reg;
  output ar_active_reg;
  output [5:0]D;
  output \save_init_bram_addr_ld_reg[10]_0 ;
  output \save_init_bram_addr_ld_reg[9]_0 ;
  output \save_init_bram_addr_ld_reg[8]_0 ;
  output \save_init_bram_addr_ld_reg[6]_0 ;
  output [0:0]\s_axi_awaddr[12] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output curr_wrap_burst_reg_reg;
  output curr_fixed_burst_reg_reg_0;
  input curr_fixed_burst_reg;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input s_axi_aresetn;
  input Arb2AR_Active;
  input Arb2AW_Active;
  input curr_fixed_burst_reg_reg_1;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ;
  input [3:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input [10:0]s_axi_awaddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input curr_wrap_burst_reg;
  input [3:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input \save_init_bram_addr_ld_reg[3]_0 ;
  input [0:0]E;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [5:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire ar_active_reg;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_fixed_burst_reg_reg_1;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire [8:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[12] ;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[12]_i_3_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_5_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_6_n_0 ;
  wire \save_init_bram_addr_ld_reg[10]_0 ;
  wire \save_init_bram_addr_ld_reg[3]_0 ;
  wire \save_init_bram_addr_ld_reg[6]_0 ;
  wire \save_init_bram_addr_ld_reg[8]_0 ;
  wire \save_init_bram_addr_ld_reg[9]_0 ;
  wire \save_init_bram_addr_ld_reg_n_0_[10] ;
  wire \save_init_bram_addr_ld_reg_n_0_[11] ;
  wire \save_init_bram_addr_ld_reg_n_0_[12] ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \save_init_bram_addr_ld_reg_n_0_[6] ;
  wire \save_init_bram_addr_ld_reg_n_0_[7] ;
  wire \save_init_bram_addr_ld_reg_n_0_[8] ;
  wire \save_init_bram_addr_ld_reg_n_0_[9] ;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(ar_active_reg),
        .I1(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I2(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I3(s_axi_awaddr[8]),
        .O(\save_init_bram_addr_ld_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hBF000000FFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(curr_fixed_burst_reg),
        .I1(s_axi_wvalid),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ),
        .I5(s_axi_aresetn),
        .O(curr_fixed_burst_reg_reg));
  LUT6 #(
    .INIT(64'hFFF888F888F888F8)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(p_1_in[8]),
        .I1(ar_active_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .I3(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB0BBBBBB)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(curr_fixed_burst_reg_reg_1),
        .I1(Arb2AW_Active),
        .I2(\save_init_bram_addr_ld[12]_i_4_n_0 ),
        .I3(s_axi_wvalid),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040004055550040)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(Arb2AR_Active),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I2(s_axi_wvalid),
        .I3(\save_init_bram_addr_ld[12]_i_4_n_0 ),
        .I4(Arb2AW_Active),
        .I5(curr_fixed_burst_reg_reg_1),
        .O(ar_active_reg));
  LUT6 #(
    .INIT(64'hFFFF80FF808080FF)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(ar_active_reg),
        .I3(Q[0]),
        .I4(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF8FF888888FF8)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(p_1_in[0]),
        .I1(ar_active_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF8FF888888FF8)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(p_1_in[1]),
        .I1(ar_active_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I3(Q[2]),
        .I4(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF8FF888888FF8)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(p_1_in[2]),
        .I1(ar_active_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(ar_active_reg),
        .I1(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I2(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I3(s_axi_awaddr[4]),
        .O(\save_init_bram_addr_ld_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[5] ));
  LUT6 #(
    .INIT(64'hFFF888F888F888F8)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(p_1_in[4]),
        .I1(ar_active_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I3(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[7]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(ar_active_reg),
        .I1(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I2(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I3(s_axi_awaddr[6]),
        .O(\save_init_bram_addr_ld_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(ar_active_reg),
        .I1(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I2(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I3(s_axi_awaddr[7]),
        .O(\save_init_bram_addr_ld_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
    curr_fixed_burst_reg_i_1
       (.I0(curr_fixed_burst_reg),
        .I1(curr_fixed_burst_reg_reg_1),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(curr_fixed_burst_reg_reg),
        .O(curr_fixed_burst_reg_reg_0));
  LUT6 #(
    .INIT(64'h000000008ABA8A8A)) 
    curr_wrap_burst_reg_i_1
       (.I0(curr_wrap_burst_reg),
        .I1(curr_fixed_burst_reg_reg_1),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(curr_fixed_burst_reg_reg),
        .O(curr_wrap_burst_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .O(p_1_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_2 
       (.I0(s_axi_awaddr[10]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .O(\s_axi_awaddr[12] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \save_init_bram_addr_ld[12]_i_3 
       (.I0(curr_fixed_burst_reg_reg_1),
        .I1(Arb2AW_Active),
        .I2(\save_init_bram_addr_ld[12]_i_4_n_0 ),
        .O(\save_init_bram_addr_ld[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFFF7577)) 
    \save_init_bram_addr_ld[12]_i_4 
       (.I0(curr_wrap_burst_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(Q[0]),
        .I4(\save_init_bram_addr_ld[12]_i_5_n_0 ),
        .I5(\save_init_bram_addr_ld[12]_i_6_n_0 ),
        .O(\save_init_bram_addr_ld[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \save_init_bram_addr_ld[12]_i_5 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .O(\save_init_bram_addr_ld[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000F8000000080)) 
    \save_init_bram_addr_ld[12]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\wrap_burst_total_reg_n_0_[2] ),
        .I4(\wrap_burst_total_reg_n_0_[0] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .O(\save_init_bram_addr_ld[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB88B8888888BB88)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .I4(\wrap_burst_total_reg_n_0_[1] ),
        .I5(\wrap_burst_total_reg_n_0_[2] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hB8B8B88888B8B8B8)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .I4(\wrap_burst_total_reg_n_0_[0] ),
        .I5(\wrap_burst_total_reg_n_0_[2] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B888B8B8)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I3(\wrap_burst_total_reg_n_0_[0] ),
        .I4(\wrap_burst_total_reg_n_0_[2] ),
        .I5(\wrap_burst_total_reg_n_0_[1] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[8]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\s_axi_awaddr[12] ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h40000040)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[2]),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \wrap_burst_total[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[3]),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst_rd" *) 
module design_0_axi_bram_ctrl_1_0_wrap_brst_rd
   (D,
    \save_init_bram_addr_ld_reg_reg[4]_0 ,
    \save_init_bram_addr_ld_reg_reg[5]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ,
    E,
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \save_init_bram_addr_ld_reg_reg[3]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ,
    bram_addr_a,
    \GEN_RD_CMD_OPT.arlen_reg_reg[2] ,
    SR,
    \s_axi_arburst[1] ,
    \wrap_burst_total_reg_reg[1]_0 ,
    Arb2AR_Active,
    curr_fixed_burst_reg,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ,
    curr_wrap_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_3 ,
    \wrap_burst_total_reg_reg[2]_0 ,
    s_axi_araddr,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ,
    \wrap_burst_total_reg_reg[1]_1 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1 ,
    bram_addr_a_3_sp_1,
    s_axi_arlen,
    \wrap_burst_total_reg_reg[0]_0 ,
    \wrap_burst_total_reg_reg[2]_1 ,
    S_AXI_ARREADY,
    s_axi_arvalid,
    \wrap_burst_total_reg_reg[2]_2 ,
    \wrap_burst_total_reg_reg[2]_3 ,
    p_0_in_0,
    s_axi_aresetn,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ,
    s_axi_arburst,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ,
    s_axi_aclk,
    \save_init_bram_addr_ld_reg_reg[3]_1 );
  output [9:0]D;
  output \save_init_bram_addr_ld_reg_reg[4]_0 ;
  output \save_init_bram_addr_ld_reg_reg[5]_0 ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ;
  output [0:0]E;
  output \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  output [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  output \save_init_bram_addr_ld_reg_reg[3]_0 ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ;
  output [9:0]bram_addr_a;
  output [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[2] ;
  output [0:0]SR;
  output \s_axi_arburst[1] ;
  output [0:0]\wrap_burst_total_reg_reg[1]_0 ;
  input Arb2AR_Active;
  input curr_fixed_burst_reg;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  input [8:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ;
  input curr_wrap_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_3 ;
  input \wrap_burst_total_reg_reg[2]_0 ;
  input [10:0]s_axi_araddr;
  input [7:0]\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ;
  input \wrap_burst_total_reg_reg[1]_1 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1 ;
  input bram_addr_a_3_sp_1;
  input [3:0]s_axi_arlen;
  input [0:0]\wrap_burst_total_reg_reg[0]_0 ;
  input \wrap_burst_total_reg_reg[2]_1 ;
  input S_AXI_ARREADY;
  input s_axi_arvalid;
  input [1:0]\wrap_burst_total_reg_reg[2]_2 ;
  input \wrap_burst_total_reg_reg[2]_3 ;
  input p_0_in_0;
  input s_axi_aresetn;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  input [0:0]s_axi_arburst;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ;
  input s_axi_aclk;
  input \save_init_bram_addr_ld_reg_reg[3]_1 ;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ;
  wire [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_3 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ;
  wire Arb2AR_Active;
  wire [9:0]D;
  wire [0:0]E;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ;
  wire [7:0]\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ;
  wire [0:0]\GEN_RD_CMD_OPT.arlen_reg_reg[2] ;
  wire \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire S_AXI_ARREADY;
  wire [9:0]bram_addr_a;
  wire \bram_addr_a[10]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[6]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[8]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[9]_INST_0_i_1_n_0 ;
  wire bram_addr_a_3_sn_1;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire p_0_in_0;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [0:0]s_axi_arburst;
  wire \s_axi_arburst[1] ;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire s_axi_wvalid;
  wire [12:6]save_init_bram_addr_ld;
  wire [12:3]save_init_bram_addr_ld_reg;
  wire \save_init_bram_addr_ld_reg_reg[3]_0 ;
  wire \save_init_bram_addr_ld_reg_reg[3]_1 ;
  wire \save_init_bram_addr_ld_reg_reg[4]_0 ;
  wire \save_init_bram_addr_ld_reg_reg[5]_0 ;
  wire [2:0]wrap_burst_total_reg;
  wire \wrap_burst_total_reg[0]_i_1_n_0 ;
  wire \wrap_burst_total_reg[2]_i_1_n_0 ;
  wire [0:0]\wrap_burst_total_reg_reg[0]_0 ;
  wire [0:0]\wrap_burst_total_reg_reg[1]_0 ;
  wire \wrap_burst_total_reg_reg[1]_1 ;
  wire \wrap_burst_total_reg_reg[2]_0 ;
  wire \wrap_burst_total_reg_reg[2]_1 ;
  wire [1:0]\wrap_burst_total_reg_reg[2]_2 ;
  wire \wrap_burst_total_reg_reg[2]_3 ;

  assign bram_addr_a_3_sn_1 = bram_addr_a_3_sp_1;
  LUT6 #(
    .INIT(64'hFFBEAABEAABEAABE)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ),
        .I2(Q[7]),
        .I3(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I4(Arb2AR_Active),
        .I5(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[10] [3]));
  LUT4 #(
    .INIT(16'hFF15)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_10 
       (.I0(\wrap_burst_total_reg_reg[2]_1 ),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAEFEEEEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I1(Arb2AR_Active),
        .I2(curr_fixed_burst_reg),
        .I3(s_axi_wvalid),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFA8FF00FFFFFF00)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(curr_wrap_burst_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[6]_3 ),
        .I4(Arb2AR_Active),
        .I5(\wrap_burst_total_reg_reg[2]_0 ),
        .O(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ));
  LUT6 #(
    .INIT(64'h000000000026002E)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_8 
       (.I0(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .I1(\wrap_burst_total_reg_reg[1]_1 ),
        .I2(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I3(\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ),
        .I4(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_9 
       (.I0(\GEN_RD_CMD_OPT.wrap_addr_assign_reg ),
        .I1(\GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .I3(\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ),
        .I4(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I5(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEAABEAABEAABE)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[6]_1 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[6]_2 ),
        .I2(Q[3]),
        .I3(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I4(Arb2AR_Active),
        .I5(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[10] [0]));
  LUT6 #(
    .INIT(64'hFFBEAABEAABEAABE)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[8]_0 ),
        .I2(Q[5]),
        .I3(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I4(Arb2AR_Active),
        .I5(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[10] [1]));
  LUT6 #(
    .INIT(64'hFFBEAABEAABEAABE)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[9]_0 ),
        .I2(Q[6]),
        .I3(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I4(Arb2AR_Active),
        .I5(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_1 
       (.I0(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ),
        .I3(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ),
        .I1(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ),
        .I3(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .I4(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .I1(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .I2(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFEEEEFEFFFFFF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [0]),
        .I4(\wrap_burst_total_reg_reg[2]_0 ),
        .I5(s_axi_araddr[0]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555555555959A959)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I1(s_axi_araddr[0]),
        .I2(\wrap_burst_total_reg_reg[2]_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [0]),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ),
        .I2(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF0B4)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ),
        .I2(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I3(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF0F0B4F0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ),
        .I3(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000010551000)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [0]),
        .I3(\wrap_burst_total_reg_reg[2]_0 ),
        .I4(s_axi_araddr[0]),
        .I5(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30553F55CFAAC0AA)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(save_init_bram_addr_ld_reg[8]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I3(\wrap_burst_total_reg_reg[2]_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [3]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_1 
       (.I0(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2_n_0 ),
        .I2(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arlen_reg[2]_i_1 
       (.I0(\wrap_burst_total_reg_reg[2]_2 [0]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[2]),
        .O(\GEN_RD_CMD_OPT.arlen_reg_reg[2] ));
  LUT6 #(
    .INIT(64'hA800FFFFA8000000)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_1 
       (.I0(\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0 ),
        .I1(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ),
        .I2(s_axi_arburst),
        .I3(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ),
        .I4(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .O(\s_axi_arburst[1] ));
  LUT6 #(
    .INIT(64'h000000004444444F)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_2 
       (.I0(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .I3(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .I4(\GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ),
        .I5(\GEN_RD_CMD_OPT.wrap_addr_assign_reg ),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01330300)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_6 
       (.I0(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I1(\GEN_RD_CMD_OPT.wrap_addr_assign_i_2_0 ),
        .I2(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I3(\wrap_burst_total_reg_reg[1]_1 ),
        .I4(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_7 
       (.I0(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .I1(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .I2(\wrap_burst_total_reg_reg[1]_1 ),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[10]_INST_0 
       (.I0(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(Q[7]),
        .O(bram_addr_a[7]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[10]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [5]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[10]),
        .I5(s_axi_araddr[8]),
        .O(\bram_addr_a[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[11]_INST_0 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ),
        .I1(Arb2AR_Active),
        .I2(Q[8]),
        .O(bram_addr_a[8]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[11]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [6]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[11]),
        .I5(s_axi_araddr[9]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[12]_INST_0 
       (.I0(D[9]),
        .I1(Arb2AR_Active),
        .I2(p_0_in_0),
        .O(bram_addr_a[9]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[12]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [7]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[12]),
        .I5(s_axi_araddr[10]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \bram_addr_a[3]_INST_0 
       (.I0(Q[0]),
        .I1(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .I2(Arb2AR_Active),
        .O(bram_addr_a[0]));
  LUT6 #(
    .INIT(64'h00000000FF34FFFF)) 
    \bram_addr_a[3]_INST_0_i_1 
       (.I0(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .I1(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .I2(\wrap_burst_total_reg_reg[1]_1 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I4(save_init_bram_addr_ld_reg[3]),
        .I5(bram_addr_a_3_sn_1),
        .O(\save_init_bram_addr_ld_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \bram_addr_a[4]_INST_0 
       (.I0(Q[1]),
        .I1(\save_init_bram_addr_ld_reg_reg[4]_0 ),
        .I2(Arb2AR_Active),
        .O(bram_addr_a[1]));
  LUT6 #(
    .INIT(64'h00000000FF24FFFF)) 
    \bram_addr_a[4]_INST_0_i_1 
       (.I0(\wrap_burst_total_reg_reg[1]_1 ),
        .I1(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .I2(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I4(save_init_bram_addr_ld_reg[4]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_1 ),
        .O(\save_init_bram_addr_ld_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \bram_addr_a[5]_INST_0 
       (.I0(Q[2]),
        .I1(\save_init_bram_addr_ld_reg_reg[5]_0 ),
        .I2(Arb2AR_Active),
        .O(bram_addr_a[2]));
  LUT6 #(
    .INIT(64'h00000000BBBBBFBB)) 
    \bram_addr_a[5]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I1(save_init_bram_addr_ld_reg[5]),
        .I2(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .I3(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .I4(\wrap_burst_total_reg_reg[1]_1 ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ),
        .O(\save_init_bram_addr_ld_reg_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[6]_INST_0 
       (.I0(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(Q[3]),
        .O(bram_addr_a[3]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[6]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[6]),
        .I5(s_axi_araddr[4]),
        .O(\bram_addr_a[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[7]_INST_0 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ),
        .I1(Arb2AR_Active),
        .I2(Q[4]),
        .O(bram_addr_a[4]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[7]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [2]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[7]),
        .I5(s_axi_araddr[5]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[8]_INST_0 
       (.I0(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(Q[5]),
        .O(bram_addr_a[5]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[8]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [3]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[8]),
        .I5(s_axi_araddr[6]),
        .O(\bram_addr_a[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[9]_INST_0 
       (.I0(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(Q[6]),
        .O(bram_addr_a[6]));
  LUT6 #(
    .INIT(64'hFFEAC0EA3F2A002A)) 
    \bram_addr_a[9]_INST_0_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12] [4]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[12]_0 ),
        .I4(save_init_bram_addr_ld_reg[9]),
        .I5(s_axi_araddr[7]),
        .O(\bram_addr_a[9]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[10]_i_1 
       (.I0(save_init_bram_addr_ld_reg[10]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[8]),
        .O(save_init_bram_addr_ld[10]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[11]_i_1 
       (.I0(save_init_bram_addr_ld_reg[11]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[9]),
        .O(save_init_bram_addr_ld[11]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[12]_i_1 
       (.I0(save_init_bram_addr_ld_reg[12]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[10]),
        .O(save_init_bram_addr_ld[12]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[6]_i_1 
       (.I0(save_init_bram_addr_ld_reg[6]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[4]),
        .O(save_init_bram_addr_ld[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[7]_i_1 
       (.I0(save_init_bram_addr_ld_reg[7]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[5]),
        .O(save_init_bram_addr_ld[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[8]_i_1 
       (.I0(save_init_bram_addr_ld_reg[8]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[6]),
        .O(save_init_bram_addr_ld[8]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \save_init_bram_addr_ld_reg[9]_i_1 
       (.I0(save_init_bram_addr_ld_reg[9]),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[7]),
        .O(save_init_bram_addr_ld[9]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[10]),
        .Q(save_init_bram_addr_ld_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[11]),
        .Q(save_init_bram_addr_ld_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[12]),
        .Q(save_init_bram_addr_ld_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_1 ),
        .D(s_axi_araddr[1]),
        .Q(save_init_bram_addr_ld_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_1 ),
        .D(s_axi_araddr[2]),
        .Q(save_init_bram_addr_ld_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_1 ),
        .D(s_axi_araddr[3]),
        .Q(save_init_bram_addr_ld_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[6]),
        .Q(save_init_bram_addr_ld_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[7]),
        .Q(save_init_bram_addr_ld_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[8]),
        .Q(save_init_bram_addr_ld_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(save_init_bram_addr_ld[9]),
        .Q(save_init_bram_addr_ld_reg[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA00AA00AAC0AA30)) 
    \wrap_burst_total_reg[0]_i_1 
       (.I0(wrap_burst_total_reg[0]),
        .I1(\GEN_RD_CMD_OPT.arlen_reg_reg[2] ),
        .I2(s_axi_arlen[0]),
        .I3(\wrap_burst_total_reg_reg[2]_0 ),
        .I4(s_axi_arlen[1]),
        .I5(\wrap_burst_total_reg_reg[0]_0 ),
        .O(\wrap_burst_total_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0008800F000)) 
    \wrap_burst_total_reg[2]_i_1 
       (.I0(\wrap_burst_total_reg_reg[2]_1 ),
        .I1(\wrap_burst_total_reg_reg[2]_2 [1]),
        .I2(s_axi_arlen[3]),
        .I3(\wrap_burst_total_reg_reg[2]_3 ),
        .I4(\wrap_burst_total_reg_reg[2]_0 ),
        .I5(wrap_burst_total_reg[2]),
        .O(\wrap_burst_total_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .Q(wrap_burst_total_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg_reg[1]_1 ),
        .Q(\wrap_burst_total_reg_reg[1]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg[2]_i_1_n_0 ),
        .Q(wrap_burst_total_reg[2]),
        .R(SR));
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
