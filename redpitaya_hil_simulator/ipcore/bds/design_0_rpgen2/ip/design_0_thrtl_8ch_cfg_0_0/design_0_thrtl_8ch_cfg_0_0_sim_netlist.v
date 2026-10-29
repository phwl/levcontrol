// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:18:19 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_thrtl_8ch_cfg_0_0/design_0_thrtl_8ch_cfg_0_0_sim_netlist.v
// Design      : design_0_thrtl_8ch_cfg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_thrtl_8ch_cfg_0_0,thrtl_8ch_cfg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "sysgen" *) 
(* X_CORE_INFO = "thrtl_8ch_cfg,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_thrtl_8ch_cfg_0_0
   (data_in_a,
    data_in_b,
    data_in_c,
    data_in_d,
    data_in_e,
    data_in_f,
    data_in_g,
    data_in_h,
    m_axis_dma_tready,
    trigger_in_hw,
    clk,
    thrtl_8ch_cfg_aresetn,
    thrtl_8ch_cfg_cfg_in_s_axi_awaddr,
    thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_wdata,
    thrtl_8ch_cfg_cfg_in_s_axi_wstrb,
    thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_bready,
    thrtl_8ch_cfg_cfg_in_s_axi_araddr,
    thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_rready,
    dma_ready_out,
    m_axis_dma_tdata,
    m_axis_dma_tkeep,
    m_axis_dma_tlast,
    m_axis_dma_tvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_awready,
    thrtl_8ch_cfg_cfg_in_s_axi_wready,
    thrtl_8ch_cfg_cfg_in_s_axi_bresp,
    thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_arready,
    thrtl_8ch_cfg_cfg_in_s_axi_rdata,
    thrtl_8ch_cfg_cfg_in_s_axi_rresp,
    thrtl_8ch_cfg_cfg_in_s_axi_rvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_a DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_a, LAYERED_METADATA undef" *) input [31:0]data_in_a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_b DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_b, LAYERED_METADATA undef" *) input [31:0]data_in_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_c DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_c, LAYERED_METADATA undef" *) input [31:0]data_in_c;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_d DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_d, LAYERED_METADATA undef" *) input [31:0]data_in_d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_e DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_e, LAYERED_METADATA undef" *) input [31:0]data_in_e;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_f DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_f, LAYERED_METADATA undef" *) input [31:0]data_in_f;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_g DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_g, LAYERED_METADATA undef" *) input [31:0]data_in_g;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in_h DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_h, LAYERED_METADATA undef" *) input [31:0]data_in_h;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dma, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]m_axis_dma_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 trigger_in_hw DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trigger_in_hw, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) input [0:0]trigger_in_hw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF thrtl_8ch_cfg_cfg_in_s_axi:m_axis_dma:data_in_a:data_in_b:data_in_c:data_in_d:data_in_e:data_in_f:data_in_g:data_in_h, ASSOCIATED_RESET thrtl_8ch_cfg_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 thrtl_8ch_cfg_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME thrtl_8ch_cfg_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input thrtl_8ch_cfg_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME thrtl_8ch_cfg_cfg_in_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWVALID" *) input thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WDATA" *) input [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WSTRB" *) input [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WVALID" *) input thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BREADY" *) input thrtl_8ch_cfg_cfg_in_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARADDR" *) input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARVALID" *) input thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RREADY" *) input thrtl_8ch_cfg_cfg_in_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dma_ready_out DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_ready_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]dma_ready_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TDATA" *) output [31:0]m_axis_dma_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP" *) output [3:0]m_axis_dma_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TLAST" *) output [0:0]m_axis_dma_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TVALID" *) output [0:0]m_axis_dma_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi AWREADY" *) output thrtl_8ch_cfg_cfg_in_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi WREADY" *) output thrtl_8ch_cfg_cfg_in_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BRESP" *) output [1:0]thrtl_8ch_cfg_cfg_in_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi BVALID" *) output thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi ARREADY" *) output thrtl_8ch_cfg_cfg_in_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RDATA" *) output [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RRESP" *) output [1:0]thrtl_8ch_cfg_cfg_in_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 thrtl_8ch_cfg_cfg_in_s_axi RVALID" *) output thrtl_8ch_cfg_cfg_in_s_axi_rvalid;

  wire \<const0> ;
  wire clk;
  wire [31:0]data_in_a;
  wire [31:0]data_in_b;
  wire [31:0]data_in_c;
  wire [31:0]data_in_d;
  wire [31:0]data_in_e;
  wire [31:0]data_in_f;
  wire [31:0]data_in_g;
  wire [31:0]data_in_h;
  wire [0:0]dma_ready_out;
  wire [31:0]m_axis_dma_tdata;
  wire [3:0]m_axis_dma_tkeep;
  wire [0:0]m_axis_dma_tlast;
  wire [0:0]m_axis_dma_tready;
  wire [0:0]m_axis_dma_tvalid;
  wire thrtl_8ch_cfg_aresetn;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_arready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_awready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  wire thrtl_8ch_cfg_cfg_in_s_axi_wready;
  wire [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  wire thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  wire [0:0]trigger_in_hw;
  wire [1:0]NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_rresp_UNCONNECTED;

  assign thrtl_8ch_cfg_cfg_in_s_axi_bresp[1] = \<const0> ;
  assign thrtl_8ch_cfg_cfg_in_s_axi_bresp[0] = \<const0> ;
  assign thrtl_8ch_cfg_cfg_in_s_axi_rresp[1] = \<const0> ;
  assign thrtl_8ch_cfg_cfg_in_s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg inst
       (.clk(clk),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .data_in_c(data_in_c),
        .data_in_d(data_in_d),
        .data_in_e(data_in_e),
        .data_in_f(data_in_f),
        .data_in_g(data_in_g),
        .data_in_h(data_in_h),
        .dma_ready_out(dma_ready_out),
        .m_axis_dma_tdata(m_axis_dma_tdata),
        .m_axis_dma_tkeep(m_axis_dma_tkeep),
        .m_axis_dma_tlast(m_axis_dma_tlast),
        .m_axis_dma_tready(m_axis_dma_tready),
        .m_axis_dma_tvalid(m_axis_dma_tvalid),
        .thrtl_8ch_cfg_aresetn(thrtl_8ch_cfg_aresetn),
        .thrtl_8ch_cfg_cfg_in_s_axi_araddr(thrtl_8ch_cfg_cfg_in_s_axi_araddr),
        .thrtl_8ch_cfg_cfg_in_s_axi_arready(thrtl_8ch_cfg_cfg_in_s_axi_arready),
        .thrtl_8ch_cfg_cfg_in_s_axi_arvalid(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_awaddr(thrtl_8ch_cfg_cfg_in_s_axi_awaddr),
        .thrtl_8ch_cfg_cfg_in_s_axi_awready(thrtl_8ch_cfg_cfg_in_s_axi_awready),
        .thrtl_8ch_cfg_cfg_in_s_axi_awvalid(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_bready(thrtl_8ch_cfg_cfg_in_s_axi_bready),
        .thrtl_8ch_cfg_cfg_in_s_axi_bresp(NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_bresp_UNCONNECTED[1:0]),
        .thrtl_8ch_cfg_cfg_in_s_axi_bvalid(thrtl_8ch_cfg_cfg_in_s_axi_bvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_rdata(thrtl_8ch_cfg_cfg_in_s_axi_rdata),
        .thrtl_8ch_cfg_cfg_in_s_axi_rready(thrtl_8ch_cfg_cfg_in_s_axi_rready),
        .thrtl_8ch_cfg_cfg_in_s_axi_rresp(NLW_inst_thrtl_8ch_cfg_cfg_in_s_axi_rresp_UNCONNECTED[1:0]),
        .thrtl_8ch_cfg_cfg_in_s_axi_rvalid(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_wdata(thrtl_8ch_cfg_cfg_in_s_axi_wdata),
        .thrtl_8ch_cfg_cfg_in_s_axi_wready(thrtl_8ch_cfg_cfg_in_s_axi_wready),
        .thrtl_8ch_cfg_cfg_in_s_axi_wstrb(thrtl_8ch_cfg_cfg_in_s_axi_wstrb),
        .thrtl_8ch_cfg_cfg_in_s_axi_wvalid(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .trigger_in_hw(trigger_in_hw));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init
   (unregy_join_6_1,
    trigger_in_hw,
    clk,
    trigger_src,
    register12_q_net);
  output unregy_join_6_1;
  input [0:0]trigger_in_hw;
  input clk;
  input trigger_src;
  input register12_q_net;

  wire clk;
  wire register12_q_net;
  wire register15_q_net;
  wire [0:0]trigger_in_hw;
  wire trigger_src;
  wire unregy_join_6_1;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(trigger_in_hw),
        .Q(register15_q_net),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_16_22[0]_i_1 
       (.I0(register15_q_net),
        .I1(trigger_src),
        .I2(register12_q_net),
        .O(unregy_join_6_1));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26
   (register14_q_net,
    m_axis_dma_tready,
    clk);
  output register14_q_net;
  input [0:0]m_axis_dma_tready;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tready;
  wire register14_q_net;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_dma_tready),
        .Q(register14_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28
   (register13_q_net,
    usr_rst_in,
    clk);
  output register13_q_net;
  input usr_rst_in;
  input clk;

  wire clk;
  wire register13_q_net;
  wire usr_rst_in;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(usr_rst_in),
        .Q(register13_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30
   (register12_q_net,
    trigger_in,
    clk);
  output register12_q_net;
  input trigger_in;
  input clk;

  wire clk;
  wire register12_q_net;
  wire trigger_in;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(trigger_in),
        .Q(register12_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0
   (D,
    o,
    CO,
    \data_vec_store_1_15_28_reg[31] ,
    data_in_b,
    clk);
  output [31:0]D;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_1_15_28_reg[31] ;
  input [31:0]data_in_b;
  input clk;

  wire [0:0]CO;
  wire [31:0]D;
  wire clk;
  wire [31:0]data_in_b;
  wire [31:0]\data_vec_store_1_15_28_reg[31] ;
  wire [31:0]o;

  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[0]_i_1 
       (.I0(o[0]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[10]_i_1 
       (.I0(o[10]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[11]_i_1 
       (.I0(o[11]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[12]_i_1 
       (.I0(o[12]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[13]_i_1 
       (.I0(o[13]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[14]_i_1 
       (.I0(o[14]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[15]_i_1 
       (.I0(o[15]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[16]_i_1 
       (.I0(o[16]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[17]_i_1 
       (.I0(o[17]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[18]_i_1 
       (.I0(o[18]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[19]_i_1 
       (.I0(o[19]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[1]_i_1 
       (.I0(o[1]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[20]_i_1 
       (.I0(o[20]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[21]_i_1 
       (.I0(o[21]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[22]_i_1 
       (.I0(o[22]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[23]_i_1 
       (.I0(o[23]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[24]_i_1 
       (.I0(o[24]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[25]_i_1 
       (.I0(o[25]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[26]_i_1 
       (.I0(o[26]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[27]_i_1 
       (.I0(o[27]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[28]_i_1 
       (.I0(o[28]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[29]_i_1 
       (.I0(o[29]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[2]_i_1 
       (.I0(o[2]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[30]_i_1 
       (.I0(o[30]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[31]_i_1 
       (.I0(o[31]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[3]_i_1 
       (.I0(o[3]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[4]_i_1 
       (.I0(o[4]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[5]_i_1 
       (.I0(o[5]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[6]_i_1 
       (.I0(o[6]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[7]_i_1 
       (.I0(o[7]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[8]_i_1 
       (.I0(o[8]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_1_15_28[9]_i_1 
       (.I0(o[9]),
        .I1(CO),
        .I2(\data_vec_store_1_15_28_reg[31] [9]),
        .O(D[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[0]),
        .Q(o[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[10]),
        .Q(o[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[11]),
        .Q(o[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[12]),
        .Q(o[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[13]),
        .Q(o[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[14]),
        .Q(o[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[15]),
        .Q(o[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[16]),
        .Q(o[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[17]),
        .Q(o[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[18]),
        .Q(o[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[19]),
        .Q(o[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[1]),
        .Q(o[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[20]),
        .Q(o[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[21]),
        .Q(o[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[22]),
        .Q(o[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[23]),
        .Q(o[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[24]),
        .Q(o[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[25]),
        .Q(o[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[26]),
        .Q(o[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[27]),
        .Q(o[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[28]),
        .Q(o[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[29]),
        .Q(o[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[2]),
        .Q(o[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[30]),
        .Q(o[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[31]),
        .Q(o[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[3]),
        .Q(o[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[4]),
        .Q(o[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[5]),
        .Q(o[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[6]),
        .Q(o[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[7]),
        .Q(o[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[8]),
        .Q(o[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_b[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14
   (o,
    data_in_a,
    clk);
  output [31:0]o;
  input [31:0]data_in_a;
  input clk;

  wire clk;
  wire [31:0]data_in_a;
  wire [31:0]o;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[0]),
        .Q(o[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[10]),
        .Q(o[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[11]),
        .Q(o[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[12]),
        .Q(o[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[13]),
        .Q(o[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[14]),
        .Q(o[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[15]),
        .Q(o[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[16]),
        .Q(o[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[17]),
        .Q(o[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[18]),
        .Q(o[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[19]),
        .Q(o[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[1]),
        .Q(o[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[20]),
        .Q(o[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[21]),
        .Q(o[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[22]),
        .Q(o[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[23]),
        .Q(o[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[24]),
        .Q(o[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[25]),
        .Q(o[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[26]),
        .Q(o[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[27]),
        .Q(o[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[28]),
        .Q(o[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[29]),
        .Q(o[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[2]),
        .Q(o[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[30]),
        .Q(o[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[31]),
        .Q(o[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[3]),
        .Q(o[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[4]),
        .Q(o[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[5]),
        .Q(o[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[6]),
        .Q(o[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[7]),
        .Q(o[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[8]),
        .Q(o[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_a[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    CO,
    \data_vec_store_7_15_28_reg[31] ,
    data_in_h,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  input [0:0]CO;
  input [31:0]\data_vec_store_7_15_28_reg[31] ;
  input [31:0]data_in_h;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_h;
  wire [31:0]\data_vec_store_7_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]register6_q_net;

  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[0]_i_1 
       (.I0(register6_q_net[0]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[10]_i_1 
       (.I0(register6_q_net[10]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[11]_i_1 
       (.I0(register6_q_net[11]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[12]_i_1 
       (.I0(register6_q_net[12]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[13]_i_1 
       (.I0(register6_q_net[13]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[14]_i_1 
       (.I0(register6_q_net[14]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[15]_i_1 
       (.I0(register6_q_net[15]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[16]_i_1 
       (.I0(register6_q_net[16]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[17]_i_1 
       (.I0(register6_q_net[17]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[18]_i_1 
       (.I0(register6_q_net[18]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[19]_i_1 
       (.I0(register6_q_net[19]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[1]_i_1 
       (.I0(register6_q_net[1]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[20]_i_1 
       (.I0(register6_q_net[20]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[21]_i_1 
       (.I0(register6_q_net[21]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[22]_i_1 
       (.I0(register6_q_net[22]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[23]_i_1 
       (.I0(register6_q_net[23]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[24]_i_1 
       (.I0(register6_q_net[24]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[25]_i_1 
       (.I0(register6_q_net[25]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[26]_i_1 
       (.I0(register6_q_net[26]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[27]_i_1 
       (.I0(register6_q_net[27]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[28]_i_1 
       (.I0(register6_q_net[28]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[29]_i_1 
       (.I0(register6_q_net[29]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[2]_i_1 
       (.I0(register6_q_net[2]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[30]_i_1 
       (.I0(register6_q_net[30]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[31]_i_1 
       (.I0(register6_q_net[31]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[3]_i_1 
       (.I0(register6_q_net[3]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[4]_i_1 
       (.I0(register6_q_net[4]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[5]_i_1 
       (.I0(register6_q_net[5]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[6]_i_1 
       (.I0(register6_q_net[6]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[7]_i_1 
       (.I0(register6_q_net[7]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[8]_i_1 
       (.I0(register6_q_net[8]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_7_15_28[9]_i_1 
       (.I0(register6_q_net[9]),
        .I1(CO),
        .I2(\data_vec_store_7_15_28_reg[31] [9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[0]),
        .Q(register6_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[10]),
        .Q(register6_q_net[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[11]),
        .Q(register6_q_net[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[12]),
        .Q(register6_q_net[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[13]),
        .Q(register6_q_net[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[14]),
        .Q(register6_q_net[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[15]),
        .Q(register6_q_net[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[16]),
        .Q(register6_q_net[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[17]),
        .Q(register6_q_net[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[18]),
        .Q(register6_q_net[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[19]),
        .Q(register6_q_net[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[1]),
        .Q(register6_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[20]),
        .Q(register6_q_net[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[21]),
        .Q(register6_q_net[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[22]),
        .Q(register6_q_net[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[23]),
        .Q(register6_q_net[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[24]),
        .Q(register6_q_net[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[25]),
        .Q(register6_q_net[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[26]),
        .Q(register6_q_net[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[27]),
        .Q(register6_q_net[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[28]),
        .Q(register6_q_net[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[29]),
        .Q(register6_q_net[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[2]),
        .Q(register6_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[30]),
        .Q(register6_q_net[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[31]),
        .Q(register6_q_net[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[3]),
        .Q(register6_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[4]),
        .Q(register6_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[5]),
        .Q(register6_q_net[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[6]),
        .Q(register6_q_net[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[7]),
        .Q(register6_q_net[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[8]),
        .Q(register6_q_net[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_h[9]),
        .Q(register6_q_net[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    CO,
    \data_vec_store_4_15_28_reg[31] ,
    data_in_e,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  input [0:0]CO;
  input [31:0]\data_vec_store_4_15_28_reg[31] ;
  input [31:0]data_in_e;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_e;
  wire [31:0]\data_vec_store_4_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]register5_q_net;

  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[0]_i_1 
       (.I0(register5_q_net[0]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[10]_i_1 
       (.I0(register5_q_net[10]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[11]_i_1 
       (.I0(register5_q_net[11]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[12]_i_1 
       (.I0(register5_q_net[12]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[13]_i_1 
       (.I0(register5_q_net[13]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[14]_i_1 
       (.I0(register5_q_net[14]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[15]_i_1 
       (.I0(register5_q_net[15]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[16]_i_1 
       (.I0(register5_q_net[16]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[17]_i_1 
       (.I0(register5_q_net[17]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[18]_i_1 
       (.I0(register5_q_net[18]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[19]_i_1 
       (.I0(register5_q_net[19]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[1]_i_1 
       (.I0(register5_q_net[1]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[20]_i_1 
       (.I0(register5_q_net[20]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[21]_i_1 
       (.I0(register5_q_net[21]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[22]_i_1 
       (.I0(register5_q_net[22]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[23]_i_1 
       (.I0(register5_q_net[23]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[24]_i_1 
       (.I0(register5_q_net[24]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[25]_i_1 
       (.I0(register5_q_net[25]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[26]_i_1 
       (.I0(register5_q_net[26]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[27]_i_1 
       (.I0(register5_q_net[27]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[28]_i_1 
       (.I0(register5_q_net[28]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[29]_i_1 
       (.I0(register5_q_net[29]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[2]_i_1 
       (.I0(register5_q_net[2]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[30]_i_1 
       (.I0(register5_q_net[30]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[31]_i_1 
       (.I0(register5_q_net[31]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[3]_i_1 
       (.I0(register5_q_net[3]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[4]_i_1 
       (.I0(register5_q_net[4]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[5]_i_1 
       (.I0(register5_q_net[5]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[6]_i_1 
       (.I0(register5_q_net[6]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[7]_i_1 
       (.I0(register5_q_net[7]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[8]_i_1 
       (.I0(register5_q_net[8]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_4_15_28[9]_i_1 
       (.I0(register5_q_net[9]),
        .I1(CO),
        .I2(\data_vec_store_4_15_28_reg[31] [9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[0]),
        .Q(register5_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[10]),
        .Q(register5_q_net[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[11]),
        .Q(register5_q_net[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[12]),
        .Q(register5_q_net[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[13]),
        .Q(register5_q_net[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[14]),
        .Q(register5_q_net[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[15]),
        .Q(register5_q_net[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[16]),
        .Q(register5_q_net[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[17]),
        .Q(register5_q_net[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[18]),
        .Q(register5_q_net[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[19]),
        .Q(register5_q_net[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[1]),
        .Q(register5_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[20]),
        .Q(register5_q_net[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[21]),
        .Q(register5_q_net[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[22]),
        .Q(register5_q_net[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[23]),
        .Q(register5_q_net[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[24]),
        .Q(register5_q_net[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[25]),
        .Q(register5_q_net[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[26]),
        .Q(register5_q_net[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[27]),
        .Q(register5_q_net[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[28]),
        .Q(register5_q_net[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[29]),
        .Q(register5_q_net[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[2]),
        .Q(register5_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[30]),
        .Q(register5_q_net[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[31]),
        .Q(register5_q_net[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[3]),
        .Q(register5_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[4]),
        .Q(register5_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[5]),
        .Q(register5_q_net[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[6]),
        .Q(register5_q_net[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[7]),
        .Q(register5_q_net[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[8]),
        .Q(register5_q_net[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_e[9]),
        .Q(register5_q_net[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    o,
    CO,
    Q,
    data_in_g,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]Q;
  input [31:0]data_in_g;
  input clk;

  wire [0:0]CO;
  wire [31:0]Q;
  wire clk;
  wire [31:0]data_in_g;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]o;

  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[0]_i_1 
       (.I0(o[0]),
        .I1(CO),
        .I2(Q[0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[10]_i_1 
       (.I0(o[10]),
        .I1(CO),
        .I2(Q[10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[11]_i_1 
       (.I0(o[11]),
        .I1(CO),
        .I2(Q[11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[12]_i_1 
       (.I0(o[12]),
        .I1(CO),
        .I2(Q[12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[13]_i_1 
       (.I0(o[13]),
        .I1(CO),
        .I2(Q[13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[14]_i_1 
       (.I0(o[14]),
        .I1(CO),
        .I2(Q[14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[15]_i_1 
       (.I0(o[15]),
        .I1(CO),
        .I2(Q[15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[16]_i_1 
       (.I0(o[16]),
        .I1(CO),
        .I2(Q[16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[17]_i_1 
       (.I0(o[17]),
        .I1(CO),
        .I2(Q[17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[18]_i_1 
       (.I0(o[18]),
        .I1(CO),
        .I2(Q[18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[19]_i_1 
       (.I0(o[19]),
        .I1(CO),
        .I2(Q[19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[1]_i_1 
       (.I0(o[1]),
        .I1(CO),
        .I2(Q[1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[20]_i_1 
       (.I0(o[20]),
        .I1(CO),
        .I2(Q[20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[21]_i_1 
       (.I0(o[21]),
        .I1(CO),
        .I2(Q[21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[22]_i_1 
       (.I0(o[22]),
        .I1(CO),
        .I2(Q[22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[23]_i_1 
       (.I0(o[23]),
        .I1(CO),
        .I2(Q[23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[24]_i_1 
       (.I0(o[24]),
        .I1(CO),
        .I2(Q[24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[25]_i_1 
       (.I0(o[25]),
        .I1(CO),
        .I2(Q[25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[26]_i_1 
       (.I0(o[26]),
        .I1(CO),
        .I2(Q[26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[27]_i_1 
       (.I0(o[27]),
        .I1(CO),
        .I2(Q[27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[28]_i_1 
       (.I0(o[28]),
        .I1(CO),
        .I2(Q[28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[29]_i_1 
       (.I0(o[29]),
        .I1(CO),
        .I2(Q[29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[2]_i_1 
       (.I0(o[2]),
        .I1(CO),
        .I2(Q[2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[30]_i_1 
       (.I0(o[30]),
        .I1(CO),
        .I2(Q[30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[31]_i_1 
       (.I0(o[31]),
        .I1(CO),
        .I2(Q[31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[3]_i_1 
       (.I0(o[3]),
        .I1(CO),
        .I2(Q[3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[4]_i_1 
       (.I0(o[4]),
        .I1(CO),
        .I2(Q[4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[5]_i_1 
       (.I0(o[5]),
        .I1(CO),
        .I2(Q[5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[6]_i_1 
       (.I0(o[6]),
        .I1(CO),
        .I2(Q[6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[7]_i_1 
       (.I0(o[7]),
        .I1(CO),
        .I2(Q[7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[8]_i_1 
       (.I0(o[8]),
        .I1(CO),
        .I2(Q[8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_6_15_28[9]_i_1 
       (.I0(o[9]),
        .I1(CO),
        .I2(Q[9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[0]),
        .Q(o[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[10]),
        .Q(o[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[11]),
        .Q(o[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[12]),
        .Q(o[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[13]),
        .Q(o[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[14]),
        .Q(o[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[15]),
        .Q(o[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[16]),
        .Q(o[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[17]),
        .Q(o[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[18]),
        .Q(o[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[19]),
        .Q(o[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[1]),
        .Q(o[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[20]),
        .Q(o[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[21]),
        .Q(o[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[22]),
        .Q(o[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[23]),
        .Q(o[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[24]),
        .Q(o[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[25]),
        .Q(o[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[26]),
        .Q(o[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[27]),
        .Q(o[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[28]),
        .Q(o[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[29]),
        .Q(o[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[2]),
        .Q(o[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[30]),
        .Q(o[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[31]),
        .Q(o[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[3]),
        .Q(o[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[4]),
        .Q(o[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[5]),
        .Q(o[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[6]),
        .Q(o[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[7]),
        .Q(o[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[8]),
        .Q(o[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_g[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    o,
    CO,
    \data_vec_store_5_15_28_reg[31] ,
    data_in_f,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_5_15_28_reg[31] ;
  input [31:0]data_in_f;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_f;
  wire [31:0]\data_vec_store_5_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]o;

  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[0]_i_1 
       (.I0(o[0]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[10]_i_1 
       (.I0(o[10]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[11]_i_1 
       (.I0(o[11]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[12]_i_1 
       (.I0(o[12]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[13]_i_1 
       (.I0(o[13]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[14]_i_1 
       (.I0(o[14]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[15]_i_1 
       (.I0(o[15]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[16]_i_1 
       (.I0(o[16]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[17]_i_1 
       (.I0(o[17]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[18]_i_1 
       (.I0(o[18]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[19]_i_1 
       (.I0(o[19]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[1]_i_1 
       (.I0(o[1]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[20]_i_1 
       (.I0(o[20]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[21]_i_1 
       (.I0(o[21]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[22]_i_1 
       (.I0(o[22]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[23]_i_1 
       (.I0(o[23]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[24]_i_1 
       (.I0(o[24]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[25]_i_1 
       (.I0(o[25]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[26]_i_1 
       (.I0(o[26]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[27]_i_1 
       (.I0(o[27]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[28]_i_1 
       (.I0(o[28]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[29]_i_1 
       (.I0(o[29]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[2]_i_1 
       (.I0(o[2]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[30]_i_1 
       (.I0(o[30]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[31]_i_1 
       (.I0(o[31]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[3]_i_1 
       (.I0(o[3]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[4]_i_1 
       (.I0(o[4]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[5]_i_1 
       (.I0(o[5]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[6]_i_1 
       (.I0(o[6]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[7]_i_1 
       (.I0(o[7]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[8]_i_1 
       (.I0(o[8]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_5_15_28[9]_i_1 
       (.I0(o[9]),
        .I1(CO),
        .I2(\data_vec_store_5_15_28_reg[31] [9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[0]),
        .Q(o[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[10]),
        .Q(o[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[11]),
        .Q(o[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[12]),
        .Q(o[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[13]),
        .Q(o[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[14]),
        .Q(o[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[15]),
        .Q(o[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[16]),
        .Q(o[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[17]),
        .Q(o[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[18]),
        .Q(o[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[19]),
        .Q(o[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[1]),
        .Q(o[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[20]),
        .Q(o[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[21]),
        .Q(o[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[22]),
        .Q(o[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[23]),
        .Q(o[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[24]),
        .Q(o[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[25]),
        .Q(o[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[26]),
        .Q(o[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[27]),
        .Q(o[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[28]),
        .Q(o[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[29]),
        .Q(o[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[2]),
        .Q(o[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[30]),
        .Q(o[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[31]),
        .Q(o[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[3]),
        .Q(o[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[4]),
        .Q(o[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[5]),
        .Q(o[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[6]),
        .Q(o[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[7]),
        .Q(o[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[8]),
        .Q(o[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_f[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    CO,
    \data_vec_store_3_15_28_reg[31] ,
    data_in_d,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  input [0:0]CO;
  input [31:0]\data_vec_store_3_15_28_reg[31] ;
  input [31:0]data_in_d;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_d;
  wire [31:0]\data_vec_store_3_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]register2_q_net;

  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[0]_i_1 
       (.I0(register2_q_net[0]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[10]_i_1 
       (.I0(register2_q_net[10]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[11]_i_1 
       (.I0(register2_q_net[11]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[12]_i_1 
       (.I0(register2_q_net[12]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[13]_i_1 
       (.I0(register2_q_net[13]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[14]_i_1 
       (.I0(register2_q_net[14]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[15]_i_1 
       (.I0(register2_q_net[15]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[16]_i_1 
       (.I0(register2_q_net[16]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[17]_i_1 
       (.I0(register2_q_net[17]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[18]_i_1 
       (.I0(register2_q_net[18]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[19]_i_1 
       (.I0(register2_q_net[19]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[1]_i_1 
       (.I0(register2_q_net[1]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[20]_i_1 
       (.I0(register2_q_net[20]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[21]_i_1 
       (.I0(register2_q_net[21]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[22]_i_1 
       (.I0(register2_q_net[22]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[23]_i_1 
       (.I0(register2_q_net[23]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[24]_i_1 
       (.I0(register2_q_net[24]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[25]_i_1 
       (.I0(register2_q_net[25]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[26]_i_1 
       (.I0(register2_q_net[26]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[27]_i_1 
       (.I0(register2_q_net[27]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[28]_i_1 
       (.I0(register2_q_net[28]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[29]_i_1 
       (.I0(register2_q_net[29]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[2]_i_1 
       (.I0(register2_q_net[2]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[30]_i_1 
       (.I0(register2_q_net[30]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[31]_i_1 
       (.I0(register2_q_net[31]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[3]_i_1 
       (.I0(register2_q_net[3]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[4]_i_1 
       (.I0(register2_q_net[4]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[5]_i_1 
       (.I0(register2_q_net[5]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[6]_i_1 
       (.I0(register2_q_net[6]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[7]_i_1 
       (.I0(register2_q_net[7]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[8]_i_1 
       (.I0(register2_q_net[8]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_3_15_28[9]_i_1 
       (.I0(register2_q_net[9]),
        .I1(CO),
        .I2(\data_vec_store_3_15_28_reg[31] [9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[0]),
        .Q(register2_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[10]),
        .Q(register2_q_net[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[11]),
        .Q(register2_q_net[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[12]),
        .Q(register2_q_net[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[13]),
        .Q(register2_q_net[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[14]),
        .Q(register2_q_net[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[15]),
        .Q(register2_q_net[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[16]),
        .Q(register2_q_net[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[17]),
        .Q(register2_q_net[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[18]),
        .Q(register2_q_net[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[19]),
        .Q(register2_q_net[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[1]),
        .Q(register2_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[20]),
        .Q(register2_q_net[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[21]),
        .Q(register2_q_net[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[22]),
        .Q(register2_q_net[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[23]),
        .Q(register2_q_net[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[24]),
        .Q(register2_q_net[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[25]),
        .Q(register2_q_net[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[26]),
        .Q(register2_q_net[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[27]),
        .Q(register2_q_net[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[28]),
        .Q(register2_q_net[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[29]),
        .Q(register2_q_net[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[2]),
        .Q(register2_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[30]),
        .Q(register2_q_net[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[31]),
        .Q(register2_q_net[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[3]),
        .Q(register2_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[4]),
        .Q(register2_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[5]),
        .Q(register2_q_net[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[6]),
        .Q(register2_q_net[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[7]),
        .Q(register2_q_net[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[8]),
        .Q(register2_q_net[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_d[9]),
        .Q(register2_q_net[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32
   (\fd_prim_array[0].rst_comp.fdre_comp_0 ,
    o,
    rel_85_16_carry,
    O,
    i,
    clk);
  output [0:0]\fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output [28:0]o;
  input [0:0]rel_85_16_carry;
  input [1:0]O;
  input [31:0]i;
  input clk;

  wire [1:0]O;
  wire clk;
  wire [0:0]\fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire [31:0]i;
  wire [28:0]o;
  wire [2:0]register10_q_net;
  wire [0:0]rel_85_16_carry;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[0]),
        .Q(register10_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[10]),
        .Q(o[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[11]),
        .Q(o[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[12]),
        .Q(o[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[13]),
        .Q(o[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[14]),
        .Q(o[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[15]),
        .Q(o[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[16]),
        .Q(o[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[17]),
        .Q(o[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[18]),
        .Q(o[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[19]),
        .Q(o[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[1]),
        .Q(register10_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[20]),
        .Q(o[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[21]),
        .Q(o[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[22]),
        .Q(o[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[23]),
        .Q(o[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[24]),
        .Q(o[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[25]),
        .Q(o[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[26]),
        .Q(o[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[27]),
        .Q(o[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[28]),
        .Q(o[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[29]),
        .Q(o[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[2]),
        .Q(register10_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[30]),
        .Q(o[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[31]),
        .Q(o[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[3]),
        .Q(o[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[4]),
        .Q(o[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[5]),
        .Q(o[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[6]),
        .Q(o[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[7]),
        .Q(o[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[8]),
        .Q(o[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[9]),
        .Q(o[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    rel_85_16_carry_i_4
       (.I0(register10_q_net[0]),
        .I1(rel_85_16_carry),
        .I2(O[1]),
        .I3(register10_q_net[2]),
        .I4(O[0]),
        .I5(register10_q_net[1]),
        .O(\fd_prim_array[0].rst_comp.fdre_comp_0 ));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34
   (\fd_prim_array[31].rst_comp.fdre_comp_0 ,
    CO,
    \data_vec_store_2_15_28_reg[31] ,
    data_in_c,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  input [0:0]CO;
  input [31:0]\data_vec_store_2_15_28_reg[31] ;
  input [31:0]data_in_c;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_c;
  wire [31:0]\data_vec_store_2_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp_0 ;
  wire [31:0]register1_q_net;

  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[0]_i_1 
       (.I0(register1_q_net[0]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [0]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[10]_i_1 
       (.I0(register1_q_net[10]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [10]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[11]_i_1 
       (.I0(register1_q_net[11]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [11]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[12]_i_1 
       (.I0(register1_q_net[12]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [12]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[13]_i_1 
       (.I0(register1_q_net[13]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [13]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[14]_i_1 
       (.I0(register1_q_net[14]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [14]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[15]_i_1 
       (.I0(register1_q_net[15]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [15]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[16]_i_1 
       (.I0(register1_q_net[16]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [16]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[17]_i_1 
       (.I0(register1_q_net[17]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [17]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[18]_i_1 
       (.I0(register1_q_net[18]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [18]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[19]_i_1 
       (.I0(register1_q_net[19]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [19]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[1]_i_1 
       (.I0(register1_q_net[1]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [1]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[20]_i_1 
       (.I0(register1_q_net[20]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [20]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[21]_i_1 
       (.I0(register1_q_net[21]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [21]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[22]_i_1 
       (.I0(register1_q_net[22]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [22]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[23]_i_1 
       (.I0(register1_q_net[23]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [23]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[24]_i_1 
       (.I0(register1_q_net[24]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [24]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[25]_i_1 
       (.I0(register1_q_net[25]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [25]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[26]_i_1 
       (.I0(register1_q_net[26]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [26]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[27]_i_1 
       (.I0(register1_q_net[27]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [27]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[28]_i_1 
       (.I0(register1_q_net[28]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [28]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[29]_i_1 
       (.I0(register1_q_net[29]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [29]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[2]_i_1 
       (.I0(register1_q_net[2]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [2]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[30]_i_1 
       (.I0(register1_q_net[30]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [30]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[31]_i_1 
       (.I0(register1_q_net[31]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [31]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[3]_i_1 
       (.I0(register1_q_net[3]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [3]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[4]_i_1 
       (.I0(register1_q_net[4]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [4]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[5]_i_1 
       (.I0(register1_q_net[5]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [5]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[6]_i_1 
       (.I0(register1_q_net[6]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [6]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[7]_i_1 
       (.I0(register1_q_net[7]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [7]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[8]_i_1 
       (.I0(register1_q_net[8]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [8]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_vec_store_2_15_28[9]_i_1 
       (.I0(register1_q_net[9]),
        .I1(CO),
        .I2(\data_vec_store_2_15_28_reg[31] [9]),
        .O(\fd_prim_array[31].rst_comp.fdre_comp_0 [9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[0]),
        .Q(register1_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[10]),
        .Q(register1_q_net[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[11]),
        .Q(register1_q_net[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[12]),
        .Q(register1_q_net[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[13]),
        .Q(register1_q_net[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[14]),
        .Q(register1_q_net[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[15]),
        .Q(register1_q_net[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[16].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[16]),
        .Q(register1_q_net[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[17].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[17]),
        .Q(register1_q_net[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[18].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[18]),
        .Q(register1_q_net[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[19].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[19]),
        .Q(register1_q_net[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[1]),
        .Q(register1_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[20].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[20]),
        .Q(register1_q_net[20]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[21].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[21]),
        .Q(register1_q_net[21]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[22].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[22]),
        .Q(register1_q_net[22]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[23].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[23]),
        .Q(register1_q_net[23]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[24].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[24]),
        .Q(register1_q_net[24]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[25].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[25]),
        .Q(register1_q_net[25]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[26].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[26]),
        .Q(register1_q_net[26]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[27].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[27]),
        .Q(register1_q_net[27]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[28].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[28]),
        .Q(register1_q_net[28]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[29].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[29]),
        .Q(register1_q_net[29]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[2]),
        .Q(register1_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[30].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[30]),
        .Q(register1_q_net[30]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[31].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[31]),
        .Q(register1_q_net[31]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[3]),
        .Q(register1_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[4]),
        .Q(register1_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[5]),
        .Q(register1_q_net[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[6]),
        .Q(register1_q_net[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[7]),
        .Q(register1_q_net[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[8]),
        .Q(register1_q_net[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(data_in_c[9]),
        .Q(register1_q_net[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1
   (\fd_prim_array[15].rst_comp.fdre_comp_0 ,
    \fd_prim_array[0].rst_comp.fdre_comp_0 ,
    S,
    \decim_count_11_25_reg[0] ,
    decim_count_11_25,
    CO,
    o,
    \fd_prim_array[15].rst_comp.fdre_comp_1 ,
    clk);
  output [1:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output [3:0]S;
  output \decim_count_11_25_reg[0] ;
  input [15:0]decim_count_11_25;
  input [0:0]CO;
  input [0:0]o;
  input [15:0]\fd_prim_array[15].rst_comp.fdre_comp_1 ;
  input clk;

  wire [0:0]CO;
  wire [3:0]S;
  wire clk;
  wire [15:0]decim_count_11_25;
  wire \decim_count_11_25_reg[0] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire [1:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  wire [15:0]\fd_prim_array[15].rst_comp.fdre_comp_1 ;
  wire [0:0]o;
  wire [15:0]register11_q_net;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sel_store_16_28[4]_i_3 
       (.I0(CO),
        .I1(o),
        .O(\fd_prim_array[0].rst_comp.fdre_comp_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \decim_count_11_25[0]_i_1 
       (.I0(CO),
        .I1(decim_count_11_25[0]),
        .O(\decim_count_11_25_reg[0] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [0]),
        .Q(register11_q_net[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[10].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [10]),
        .Q(register11_q_net[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[11].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [11]),
        .Q(register11_q_net[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[12].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [12]),
        .Q(register11_q_net[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[13].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [13]),
        .Q(register11_q_net[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[14].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [14]),
        .Q(register11_q_net[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[15].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [15]),
        .Q(register11_q_net[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [1]),
        .Q(register11_q_net[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [2]),
        .Q(register11_q_net[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [3]),
        .Q(register11_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [4]),
        .Q(register11_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [5]),
        .Q(register11_q_net[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [6]),
        .Q(register11_q_net[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [7]),
        .Q(register11_q_net[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[8].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [8]),
        .Q(register11_q_net[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[9].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[15].rst_comp.fdre_comp_1 [9]),
        .Q(register11_q_net[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    rel_72_12_carry__0_i_1
       (.I0(register11_q_net[15]),
        .I1(decim_count_11_25[15]),
        .O(\fd_prim_array[15].rst_comp.fdre_comp_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_72_12_carry__0_i_2
       (.I0(register11_q_net[14]),
        .I1(decim_count_11_25[14]),
        .I2(decim_count_11_25[12]),
        .I3(register11_q_net[12]),
        .I4(decim_count_11_25[13]),
        .I5(register11_q_net[13]),
        .O(\fd_prim_array[15].rst_comp.fdre_comp_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_72_12_carry_i_1
       (.I0(register11_q_net[11]),
        .I1(decim_count_11_25[11]),
        .I2(decim_count_11_25[9]),
        .I3(register11_q_net[9]),
        .I4(decim_count_11_25[10]),
        .I5(register11_q_net[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_72_12_carry_i_2
       (.I0(register11_q_net[8]),
        .I1(decim_count_11_25[8]),
        .I2(decim_count_11_25[7]),
        .I3(register11_q_net[7]),
        .I4(decim_count_11_25[6]),
        .I5(register11_q_net[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_72_12_carry_i_3
       (.I0(register11_q_net[5]),
        .I1(decim_count_11_25[5]),
        .I2(decim_count_11_25[3]),
        .I3(register11_q_net[3]),
        .I4(decim_count_11_25[4]),
        .I5(register11_q_net[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_72_12_carry_i_4
       (.I0(register11_q_net[2]),
        .I1(decim_count_11_25[2]),
        .I2(decim_count_11_25[0]),
        .I3(register11_q_net[0]),
        .I4(decim_count_11_25[1]),
        .I5(register11_q_net[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3
   (\fd_prim_array[0].rst_comp.fdre_comp_0 ,
    \fd_prim_array[1].rst_comp.fdre_comp_0 ,
    \fd_prim_array[2].rst_comp.fdre_comp_0 ,
    \fd_prim_array[3].rst_comp.fdre_comp_0 ,
    \fd_prim_array[4].rst_comp.fdre_comp_0 ,
    \fd_prim_array[5].rst_comp.fdre_comp_0 ,
    \fd_prim_array[6].rst_comp.fdre_comp_0 ,
    \fd_prim_array[7].rst_comp.fdre_comp_0 ,
    \fd_prim_array[8].rst_comp.fdre_comp ,
    \fd_prim_array[9].rst_comp.fdre_comp ,
    \fd_prim_array[10].rst_comp.fdre_comp ,
    \fd_prim_array[11].rst_comp.fdre_comp ,
    \fd_prim_array[12].rst_comp.fdre_comp ,
    \fd_prim_array[13].rst_comp.fdre_comp ,
    \fd_prim_array[14].rst_comp.fdre_comp ,
    \fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[16].rst_comp.fdre_comp ,
    \fd_prim_array[17].rst_comp.fdre_comp ,
    \fd_prim_array[18].rst_comp.fdre_comp ,
    \fd_prim_array[19].rst_comp.fdre_comp ,
    \fd_prim_array[20].rst_comp.fdre_comp ,
    \fd_prim_array[21].rst_comp.fdre_comp ,
    \fd_prim_array[22].rst_comp.fdre_comp ,
    \fd_prim_array[23].rst_comp.fdre_comp ,
    \fd_prim_array[24].rst_comp.fdre_comp ,
    \fd_prim_array[25].rst_comp.fdre_comp ,
    \fd_prim_array[26].rst_comp.fdre_comp ,
    \fd_prim_array[27].rst_comp.fdre_comp ,
    \fd_prim_array[28].rst_comp.fdre_comp ,
    \fd_prim_array[29].rst_comp.fdre_comp ,
    \fd_prim_array[30].rst_comp.fdre_comp ,
    \fd_prim_array[31].rst_comp.fdre_comp ,
    \fd_prim_array[6].rst_comp.fdre_comp_1 ,
    \fd_prim_array[7].rst_comp.fdre_comp_1 ,
    muxing_run_join_99_9,
    \fd_prim_array[1].rst_comp.fdre_comp_1 ,
    \fd_prim_array[5].rst_comp.fdre_comp_1 ,
    \fd_prim_array[2].rst_comp.fdre_comp_1 ,
    \data_sel_store_16_28_reg[1] ,
    \fd_prim_array[0].rst_comp.fdre_comp_1 ,
    \data_sel_store_16_28_reg[1]_0 ,
    \op_mem_20_24_reg[0][31] ,
    \op_mem_20_24_reg[0][0] ,
    \op_mem_20_24_reg[0][1] ,
    \op_mem_20_24_reg[0][2] ,
    \op_mem_20_24_reg[0][3] ,
    \op_mem_20_24_reg[0][4] ,
    \op_mem_20_24_reg[0][5] ,
    \op_mem_20_24_reg[0][6] ,
    \op_mem_20_24_reg[0][7] ,
    \op_mem_20_24_reg[0][8] ,
    \op_mem_20_24_reg[0][9] ,
    \op_mem_20_24_reg[0][10] ,
    \op_mem_20_24_reg[0][11] ,
    \op_mem_20_24_reg[0][12] ,
    \op_mem_20_24_reg[0][13] ,
    \op_mem_20_24_reg[0][14] ,
    \op_mem_20_24_reg[0][15] ,
    \op_mem_20_24_reg[0][16] ,
    \op_mem_20_24_reg[0][17] ,
    \op_mem_20_24_reg[0][18] ,
    \op_mem_20_24_reg[0][19] ,
    \op_mem_20_24_reg[0][20] ,
    \op_mem_20_24_reg[0][21] ,
    \op_mem_20_24_reg[0][22] ,
    \op_mem_20_24_reg[0][23] ,
    \op_mem_20_24_reg[0][24] ,
    \op_mem_20_24_reg[0][25] ,
    \op_mem_20_24_reg[0][26] ,
    \op_mem_20_24_reg[0][27] ,
    \op_mem_20_24_reg[0][28] ,
    \op_mem_20_24_reg[0][29] ,
    \op_mem_20_24_reg[0][30] ,
    \op_mem_20_24_reg[0][31]_0 ,
    o,
    CO,
    \op_mem_20_24_reg[0][31]_1 ,
    \op_mem_20_24_reg[0][31]_2 ,
    register13_q_net,
    \data_sel_store_16_28_reg[7] ,
    data_sel_store_16_28,
    muxing_run_14_24_reg,
    \op_mem_20_24_reg[0][31]_3 ,
    \op_mem_20_24_reg[0][31]_4 ,
    \op_mem_20_24_reg[0][31]_5 ,
    \op_mem_20_24_reg[0][31]_6 ,
    \op_mem_20_24_reg[0][31]_7 ,
    \data_sel_store_16_28_reg[4] ,
    \fd_prim_array[7].rst_comp.fdre_comp_2 ,
    clk);
  output \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[3].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[4].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[6].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[8].rst_comp.fdre_comp ;
  output \fd_prim_array[9].rst_comp.fdre_comp ;
  output \fd_prim_array[10].rst_comp.fdre_comp ;
  output \fd_prim_array[11].rst_comp.fdre_comp ;
  output \fd_prim_array[12].rst_comp.fdre_comp ;
  output \fd_prim_array[13].rst_comp.fdre_comp ;
  output \fd_prim_array[14].rst_comp.fdre_comp ;
  output \fd_prim_array[15].rst_comp.fdre_comp ;
  output \fd_prim_array[16].rst_comp.fdre_comp ;
  output \fd_prim_array[17].rst_comp.fdre_comp ;
  output \fd_prim_array[18].rst_comp.fdre_comp ;
  output \fd_prim_array[19].rst_comp.fdre_comp ;
  output \fd_prim_array[20].rst_comp.fdre_comp ;
  output \fd_prim_array[21].rst_comp.fdre_comp ;
  output \fd_prim_array[22].rst_comp.fdre_comp ;
  output \fd_prim_array[23].rst_comp.fdre_comp ;
  output \fd_prim_array[24].rst_comp.fdre_comp ;
  output \fd_prim_array[25].rst_comp.fdre_comp ;
  output \fd_prim_array[26].rst_comp.fdre_comp ;
  output \fd_prim_array[27].rst_comp.fdre_comp ;
  output \fd_prim_array[28].rst_comp.fdre_comp ;
  output \fd_prim_array[29].rst_comp.fdre_comp ;
  output \fd_prim_array[30].rst_comp.fdre_comp ;
  output \fd_prim_array[31].rst_comp.fdre_comp ;
  output [4:0]\fd_prim_array[6].rst_comp.fdre_comp_1 ;
  output \fd_prim_array[7].rst_comp.fdre_comp_1 ;
  output muxing_run_join_99_9;
  output \fd_prim_array[1].rst_comp.fdre_comp_1 ;
  output \fd_prim_array[5].rst_comp.fdre_comp_1 ;
  output \fd_prim_array[2].rst_comp.fdre_comp_1 ;
  output \data_sel_store_16_28_reg[1] ;
  output \fd_prim_array[0].rst_comp.fdre_comp_1 ;
  output \data_sel_store_16_28_reg[1]_0 ;
  input [31:0]\op_mem_20_24_reg[0][31] ;
  input \op_mem_20_24_reg[0][0] ;
  input \op_mem_20_24_reg[0][1] ;
  input \op_mem_20_24_reg[0][2] ;
  input \op_mem_20_24_reg[0][3] ;
  input \op_mem_20_24_reg[0][4] ;
  input \op_mem_20_24_reg[0][5] ;
  input \op_mem_20_24_reg[0][6] ;
  input \op_mem_20_24_reg[0][7] ;
  input \op_mem_20_24_reg[0][8] ;
  input \op_mem_20_24_reg[0][9] ;
  input \op_mem_20_24_reg[0][10] ;
  input \op_mem_20_24_reg[0][11] ;
  input \op_mem_20_24_reg[0][12] ;
  input \op_mem_20_24_reg[0][13] ;
  input \op_mem_20_24_reg[0][14] ;
  input \op_mem_20_24_reg[0][15] ;
  input \op_mem_20_24_reg[0][16] ;
  input \op_mem_20_24_reg[0][17] ;
  input \op_mem_20_24_reg[0][18] ;
  input \op_mem_20_24_reg[0][19] ;
  input \op_mem_20_24_reg[0][20] ;
  input \op_mem_20_24_reg[0][21] ;
  input \op_mem_20_24_reg[0][22] ;
  input \op_mem_20_24_reg[0][23] ;
  input \op_mem_20_24_reg[0][24] ;
  input \op_mem_20_24_reg[0][25] ;
  input \op_mem_20_24_reg[0][26] ;
  input \op_mem_20_24_reg[0][27] ;
  input \op_mem_20_24_reg[0][28] ;
  input \op_mem_20_24_reg[0][29] ;
  input \op_mem_20_24_reg[0][30] ;
  input \op_mem_20_24_reg[0][31]_0 ;
  input [31:0]o;
  input [0:0]CO;
  input [31:0]\op_mem_20_24_reg[0][31]_1 ;
  input [31:0]\op_mem_20_24_reg[0][31]_2 ;
  input register13_q_net;
  input \data_sel_store_16_28_reg[7] ;
  input [6:0]data_sel_store_16_28;
  input muxing_run_14_24_reg;
  input [31:0]\op_mem_20_24_reg[0][31]_3 ;
  input [31:0]\op_mem_20_24_reg[0][31]_4 ;
  input [31:0]\op_mem_20_24_reg[0][31]_5 ;
  input [31:0]\op_mem_20_24_reg[0][31]_6 ;
  input [31:0]\op_mem_20_24_reg[0][31]_7 ;
  input \data_sel_store_16_28_reg[4] ;
  input [7:0]\fd_prim_array[7].rst_comp.fdre_comp_2 ;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [6:0]data_sel_store_16_28;
  wire \data_sel_store_16_28[5]_i_3_n_0 ;
  wire \data_sel_store_16_28[5]_i_4_n_0 ;
  wire \data_sel_store_16_28[5]_i_5_n_0 ;
  wire \data_sel_store_16_28[5]_i_6_n_0 ;
  wire \data_sel_store_16_28[6]_i_3_n_0 ;
  wire \data_sel_store_16_28_reg[1] ;
  wire \data_sel_store_16_28_reg[1]_0 ;
  wire \data_sel_store_16_28_reg[4] ;
  wire \data_sel_store_16_28_reg[7] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[10].rst_comp.fdre_comp ;
  wire \fd_prim_array[11].rst_comp.fdre_comp ;
  wire \fd_prim_array[12].rst_comp.fdre_comp ;
  wire \fd_prim_array[13].rst_comp.fdre_comp ;
  wire \fd_prim_array[14].rst_comp.fdre_comp ;
  wire \fd_prim_array[15].rst_comp.fdre_comp ;
  wire \fd_prim_array[16].rst_comp.fdre_comp ;
  wire \fd_prim_array[17].rst_comp.fdre_comp ;
  wire \fd_prim_array[18].rst_comp.fdre_comp ;
  wire \fd_prim_array[19].rst_comp.fdre_comp ;
  wire \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[1].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[20].rst_comp.fdre_comp ;
  wire \fd_prim_array[21].rst_comp.fdre_comp ;
  wire \fd_prim_array[22].rst_comp.fdre_comp ;
  wire \fd_prim_array[23].rst_comp.fdre_comp ;
  wire \fd_prim_array[24].rst_comp.fdre_comp ;
  wire \fd_prim_array[25].rst_comp.fdre_comp ;
  wire \fd_prim_array[26].rst_comp.fdre_comp ;
  wire \fd_prim_array[27].rst_comp.fdre_comp ;
  wire \fd_prim_array[28].rst_comp.fdre_comp ;
  wire \fd_prim_array[29].rst_comp.fdre_comp ;
  wire \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[2].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[30].rst_comp.fdre_comp ;
  wire \fd_prim_array[31].rst_comp.fdre_comp ;
  wire \fd_prim_array[3].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[4].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[5].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[6].rst_comp.fdre_comp_0 ;
  wire [4:0]\fd_prim_array[6].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[7].rst_comp.fdre_comp_1 ;
  wire [7:0]\fd_prim_array[7].rst_comp.fdre_comp_2 ;
  wire \fd_prim_array[8].rst_comp.fdre_comp ;
  wire \fd_prim_array[9].rst_comp.fdre_comp ;
  wire muxing_run_14_24_reg;
  wire muxing_run_join_99_9;
  wire [31:0]o;
  wire \op_mem_20_24[0][0]_i_2__1_n_0 ;
  wire \op_mem_20_24[0][0]_i_3__0_n_0 ;
  wire \op_mem_20_24[0][0]_i_4__0_n_0 ;
  wire \op_mem_20_24[0][0]_i_4_n_0 ;
  wire \op_mem_20_24[0][0]_i_5__0_n_0 ;
  wire \op_mem_20_24[0][0]_i_6_n_0 ;
  wire \op_mem_20_24[0][0]_i_7_n_0 ;
  wire \op_mem_20_24[0][0]_i_8_n_0 ;
  wire \op_mem_20_24[0][0]_i_9_n_0 ;
  wire \op_mem_20_24[0][10]_i_2_n_0 ;
  wire \op_mem_20_24[0][10]_i_3_n_0 ;
  wire \op_mem_20_24[0][10]_i_4_n_0 ;
  wire \op_mem_20_24[0][11]_i_2_n_0 ;
  wire \op_mem_20_24[0][11]_i_3_n_0 ;
  wire \op_mem_20_24[0][11]_i_4_n_0 ;
  wire \op_mem_20_24[0][12]_i_2_n_0 ;
  wire \op_mem_20_24[0][12]_i_3_n_0 ;
  wire \op_mem_20_24[0][12]_i_4_n_0 ;
  wire \op_mem_20_24[0][13]_i_2_n_0 ;
  wire \op_mem_20_24[0][13]_i_3_n_0 ;
  wire \op_mem_20_24[0][13]_i_4_n_0 ;
  wire \op_mem_20_24[0][14]_i_2_n_0 ;
  wire \op_mem_20_24[0][14]_i_3_n_0 ;
  wire \op_mem_20_24[0][14]_i_4_n_0 ;
  wire \op_mem_20_24[0][15]_i_2_n_0 ;
  wire \op_mem_20_24[0][15]_i_3_n_0 ;
  wire \op_mem_20_24[0][15]_i_4_n_0 ;
  wire \op_mem_20_24[0][16]_i_2_n_0 ;
  wire \op_mem_20_24[0][16]_i_3_n_0 ;
  wire \op_mem_20_24[0][16]_i_4_n_0 ;
  wire \op_mem_20_24[0][17]_i_2_n_0 ;
  wire \op_mem_20_24[0][17]_i_3_n_0 ;
  wire \op_mem_20_24[0][17]_i_4_n_0 ;
  wire \op_mem_20_24[0][18]_i_2_n_0 ;
  wire \op_mem_20_24[0][18]_i_3_n_0 ;
  wire \op_mem_20_24[0][18]_i_4_n_0 ;
  wire \op_mem_20_24[0][19]_i_2_n_0 ;
  wire \op_mem_20_24[0][19]_i_3_n_0 ;
  wire \op_mem_20_24[0][19]_i_4_n_0 ;
  wire \op_mem_20_24[0][1]_i_2_n_0 ;
  wire \op_mem_20_24[0][1]_i_3_n_0 ;
  wire \op_mem_20_24[0][1]_i_4_n_0 ;
  wire \op_mem_20_24[0][20]_i_2_n_0 ;
  wire \op_mem_20_24[0][20]_i_3_n_0 ;
  wire \op_mem_20_24[0][20]_i_4_n_0 ;
  wire \op_mem_20_24[0][21]_i_2_n_0 ;
  wire \op_mem_20_24[0][21]_i_3_n_0 ;
  wire \op_mem_20_24[0][21]_i_4_n_0 ;
  wire \op_mem_20_24[0][22]_i_2_n_0 ;
  wire \op_mem_20_24[0][22]_i_3_n_0 ;
  wire \op_mem_20_24[0][22]_i_4_n_0 ;
  wire \op_mem_20_24[0][23]_i_2_n_0 ;
  wire \op_mem_20_24[0][23]_i_3_n_0 ;
  wire \op_mem_20_24[0][23]_i_4_n_0 ;
  wire \op_mem_20_24[0][24]_i_2_n_0 ;
  wire \op_mem_20_24[0][24]_i_3_n_0 ;
  wire \op_mem_20_24[0][24]_i_4_n_0 ;
  wire \op_mem_20_24[0][25]_i_2_n_0 ;
  wire \op_mem_20_24[0][25]_i_3_n_0 ;
  wire \op_mem_20_24[0][25]_i_4_n_0 ;
  wire \op_mem_20_24[0][26]_i_2_n_0 ;
  wire \op_mem_20_24[0][26]_i_3_n_0 ;
  wire \op_mem_20_24[0][26]_i_4_n_0 ;
  wire \op_mem_20_24[0][27]_i_2_n_0 ;
  wire \op_mem_20_24[0][27]_i_3_n_0 ;
  wire \op_mem_20_24[0][27]_i_4_n_0 ;
  wire \op_mem_20_24[0][28]_i_2_n_0 ;
  wire \op_mem_20_24[0][28]_i_3_n_0 ;
  wire \op_mem_20_24[0][28]_i_4_n_0 ;
  wire \op_mem_20_24[0][29]_i_2_n_0 ;
  wire \op_mem_20_24[0][29]_i_3_n_0 ;
  wire \op_mem_20_24[0][29]_i_4_n_0 ;
  wire \op_mem_20_24[0][2]_i_2_n_0 ;
  wire \op_mem_20_24[0][2]_i_3_n_0 ;
  wire \op_mem_20_24[0][2]_i_4_n_0 ;
  wire \op_mem_20_24[0][30]_i_2_n_0 ;
  wire \op_mem_20_24[0][30]_i_3_n_0 ;
  wire \op_mem_20_24[0][30]_i_4_n_0 ;
  wire \op_mem_20_24[0][31]_i_10_n_0 ;
  wire \op_mem_20_24[0][31]_i_11_n_0 ;
  wire \op_mem_20_24[0][31]_i_3_n_0 ;
  wire \op_mem_20_24[0][31]_i_4_n_0 ;
  wire \op_mem_20_24[0][31]_i_5_n_0 ;
  wire \op_mem_20_24[0][31]_i_6_n_0 ;
  wire \op_mem_20_24[0][31]_i_8_n_0 ;
  wire \op_mem_20_24[0][31]_i_9_n_0 ;
  wire \op_mem_20_24[0][3]_i_2_n_0 ;
  wire \op_mem_20_24[0][3]_i_3_n_0 ;
  wire \op_mem_20_24[0][3]_i_4_n_0 ;
  wire \op_mem_20_24[0][4]_i_2_n_0 ;
  wire \op_mem_20_24[0][4]_i_3_n_0 ;
  wire \op_mem_20_24[0][4]_i_4_n_0 ;
  wire \op_mem_20_24[0][5]_i_2_n_0 ;
  wire \op_mem_20_24[0][5]_i_3_n_0 ;
  wire \op_mem_20_24[0][5]_i_4_n_0 ;
  wire \op_mem_20_24[0][6]_i_2_n_0 ;
  wire \op_mem_20_24[0][6]_i_3_n_0 ;
  wire \op_mem_20_24[0][6]_i_4_n_0 ;
  wire \op_mem_20_24[0][7]_i_2_n_0 ;
  wire \op_mem_20_24[0][7]_i_3_n_0 ;
  wire \op_mem_20_24[0][7]_i_4_n_0 ;
  wire \op_mem_20_24[0][8]_i_2_n_0 ;
  wire \op_mem_20_24[0][8]_i_3_n_0 ;
  wire \op_mem_20_24[0][8]_i_4_n_0 ;
  wire \op_mem_20_24[0][9]_i_2_n_0 ;
  wire \op_mem_20_24[0][9]_i_3_n_0 ;
  wire \op_mem_20_24[0][9]_i_4_n_0 ;
  wire \op_mem_20_24_reg[0][0] ;
  wire \op_mem_20_24_reg[0][10] ;
  wire \op_mem_20_24_reg[0][11] ;
  wire \op_mem_20_24_reg[0][12] ;
  wire \op_mem_20_24_reg[0][13] ;
  wire \op_mem_20_24_reg[0][14] ;
  wire \op_mem_20_24_reg[0][15] ;
  wire \op_mem_20_24_reg[0][16] ;
  wire \op_mem_20_24_reg[0][17] ;
  wire \op_mem_20_24_reg[0][18] ;
  wire \op_mem_20_24_reg[0][19] ;
  wire \op_mem_20_24_reg[0][1] ;
  wire \op_mem_20_24_reg[0][20] ;
  wire \op_mem_20_24_reg[0][21] ;
  wire \op_mem_20_24_reg[0][22] ;
  wire \op_mem_20_24_reg[0][23] ;
  wire \op_mem_20_24_reg[0][24] ;
  wire \op_mem_20_24_reg[0][25] ;
  wire \op_mem_20_24_reg[0][26] ;
  wire \op_mem_20_24_reg[0][27] ;
  wire \op_mem_20_24_reg[0][28] ;
  wire \op_mem_20_24_reg[0][29] ;
  wire \op_mem_20_24_reg[0][2] ;
  wire \op_mem_20_24_reg[0][30] ;
  wire [31:0]\op_mem_20_24_reg[0][31] ;
  wire \op_mem_20_24_reg[0][31]_0 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_1 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_2 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_3 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_4 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_5 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_6 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_7 ;
  wire \op_mem_20_24_reg[0][3] ;
  wire \op_mem_20_24_reg[0][4] ;
  wire \op_mem_20_24_reg[0][5] ;
  wire \op_mem_20_24_reg[0][6] ;
  wire \op_mem_20_24_reg[0][7] ;
  wire \op_mem_20_24_reg[0][8] ;
  wire \op_mem_20_24_reg[0][9] ;
  wire register13_q_net;
  wire [7:3]register16_q_net;

  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0355)) 
    \data_sel_store_16_28[2]_i_2 
       (.I0(data_sel_store_16_28[0]),
        .I1(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .I2(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I3(CO),
        .O(\data_sel_store_16_28_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \data_sel_store_16_28[3]_i_2 
       (.I0(\data_sel_store_16_28_reg[1] ),
        .I1(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I2(\data_sel_store_16_28[5]_i_3_n_0 ),
        .O(\data_sel_store_16_28_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFDDFDDD00000000)) 
    \data_sel_store_16_28[4]_i_2 
       (.I0(\op_mem_20_24[0][31]_i_8_n_0 ),
        .I1(\data_sel_store_16_28_reg[4] ),
        .I2(\data_sel_store_16_28[5]_i_3_n_0 ),
        .I3(\data_sel_store_16_28_reg[1] ),
        .I4(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I5(\data_sel_store_16_28[5]_i_6_n_0 ),
        .O(\fd_prim_array[0].rst_comp.fdre_comp_1 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \data_sel_store_16_28[5]_i_2 
       (.I0(\data_sel_store_16_28[5]_i_3_n_0 ),
        .I1(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I2(\data_sel_store_16_28_reg[1] ),
        .I3(\data_sel_store_16_28[5]_i_5_n_0 ),
        .I4(\data_sel_store_16_28[5]_i_6_n_0 ),
        .O(\fd_prim_array[2].rst_comp.fdre_comp_1 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sel_store_16_28[5]_i_3 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .I1(CO),
        .I2(data_sel_store_16_28[1]),
        .O(\data_sel_store_16_28[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sel_store_16_28[5]_i_4 
       (.I0(register16_q_net[3]),
        .I1(CO),
        .I2(data_sel_store_16_28[2]),
        .O(\data_sel_store_16_28[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sel_store_16_28[5]_i_5 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [3]),
        .I1(CO),
        .I2(data_sel_store_16_28[4]),
        .O(\data_sel_store_16_28[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sel_store_16_28[5]_i_6 
       (.I0(register16_q_net[4]),
        .I1(CO),
        .I2(data_sel_store_16_28[3]),
        .O(\data_sel_store_16_28[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEEEFFFFFFFF)) 
    \data_sel_store_16_28[6]_i_2 
       (.I0(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I1(\data_sel_store_16_28[5]_i_6_n_0 ),
        .I2(\fd_prim_array[6].rst_comp.fdre_comp_1 [3]),
        .I3(CO),
        .I4(data_sel_store_16_28[4]),
        .I5(\data_sel_store_16_28[6]_i_3_n_0 ),
        .O(\fd_prim_array[5].rst_comp.fdre_comp_1 ));
  LUT6 #(
    .INIT(64'h0000000F1111000F)) 
    \data_sel_store_16_28[6]_i_3 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I1(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .I2(data_sel_store_16_28[0]),
        .I3(data_sel_store_16_28[1]),
        .I4(CO),
        .I5(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .O(\data_sel_store_16_28[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00D000FF00800000)) 
    \data_sel_store_16_28[7]_i_1 
       (.I0(CO),
        .I1(register16_q_net[7]),
        .I2(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I3(register13_q_net),
        .I4(\data_sel_store_16_28_reg[7] ),
        .I5(data_sel_store_16_28[6]),
        .O(\fd_prim_array[7].rst_comp.fdre_comp_1 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[0].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [0]),
        .Q(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[1].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [1]),
        .Q(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[2].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [2]),
        .Q(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[3].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [3]),
        .Q(register16_q_net[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[4].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [4]),
        .Q(register16_q_net[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[5].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [5]),
        .Q(\fd_prim_array[6].rst_comp.fdre_comp_1 [3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[6].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [6]),
        .Q(\fd_prim_array[6].rst_comp.fdre_comp_1 [4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \fd_prim_array[7].rst_comp.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(\fd_prim_array[7].rst_comp.fdre_comp_2 [7]),
        .Q(register16_q_net[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    muxing_run_14_24_i_1
       (.I0(\fd_prim_array[1].rst_comp.fdre_comp_1 ),
        .I1(CO),
        .I2(muxing_run_14_24_reg),
        .O(muxing_run_join_99_9));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][0]_i_1__2 
       (.I0(\op_mem_20_24[0][0]_i_2__1_n_0 ),
        .I1(\op_mem_20_24[0][0]_i_3__0_n_0 ),
        .I2(\op_mem_20_24[0][0]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [0]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][0] ),
        .O(\fd_prim_array[0].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEEE)) 
    \op_mem_20_24[0][0]_i_2__0 
       (.I0(\op_mem_20_24[0][0]_i_4__0_n_0 ),
        .I1(\op_mem_20_24[0][0]_i_5__0_n_0 ),
        .I2(\op_mem_20_24[0][0]_i_6_n_0 ),
        .I3(\op_mem_20_24[0][0]_i_7_n_0 ),
        .I4(\fd_prim_array[5].rst_comp.fdre_comp_1 ),
        .I5(\op_mem_20_24[0][0]_i_8_n_0 ),
        .O(\fd_prim_array[1].rst_comp.fdre_comp_1 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][0]_i_2__1 
       (.I0(o[0]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [0]),
        .I3(\op_mem_20_24_reg[0][31]_2 [0]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \op_mem_20_24[0][0]_i_3__0 
       (.I0(\op_mem_20_24_reg[0][31]_5 [0]),
        .I1(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I2(\op_mem_20_24_reg[0][31]_6 [0]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_7 [0]),
        .O(\op_mem_20_24[0][0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][0]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [0]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [0]),
        .O(\op_mem_20_24[0][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \op_mem_20_24[0][0]_i_4__0 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .I1(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I2(CO),
        .O(\op_mem_20_24[0][0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEE8)) 
    \op_mem_20_24[0][0]_i_5__0 
       (.I0(\data_sel_store_16_28[5]_i_6_n_0 ),
        .I1(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I2(\data_sel_store_16_28_reg[4] ),
        .I3(\op_mem_20_24[0][0]_i_9_n_0 ),
        .I4(\data_sel_store_16_28[5]_i_3_n_0 ),
        .O(\op_mem_20_24[0][0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \op_mem_20_24[0][0]_i_6 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [4]),
        .I1(CO),
        .I2(data_sel_store_16_28[5]),
        .O(\op_mem_20_24[0][0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \op_mem_20_24[0][0]_i_7 
       (.I0(register16_q_net[7]),
        .I1(CO),
        .I2(data_sel_store_16_28[6]),
        .O(\op_mem_20_24[0][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hCCFFC8CC)) 
    \op_mem_20_24[0][0]_i_8 
       (.I0(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I1(\data_sel_store_16_28[5]_i_5_n_0 ),
        .I2(\data_sel_store_16_28[5]_i_6_n_0 ),
        .I3(\data_sel_store_16_28_reg[1] ),
        .I4(\data_sel_store_16_28[5]_i_3_n_0 ),
        .O(\op_mem_20_24[0][0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \op_mem_20_24[0][0]_i_9 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .I1(CO),
        .I2(data_sel_store_16_28[0]),
        .O(\op_mem_20_24[0][0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][10]_i_1 
       (.I0(\op_mem_20_24[0][10]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][10]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][10]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [10]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][10] ),
        .O(\fd_prim_array[10].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][10]_i_2 
       (.I0(o[10]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [10]),
        .I3(\op_mem_20_24_reg[0][31]_2 [10]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][10]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [10]),
        .I2(\op_mem_20_24_reg[0][31]_6 [10]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [10]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][10]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [10]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [10]),
        .O(\op_mem_20_24[0][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][11]_i_1 
       (.I0(\op_mem_20_24[0][11]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][11]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][11]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [11]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][11] ),
        .O(\fd_prim_array[11].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][11]_i_2 
       (.I0(o[11]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [11]),
        .I3(\op_mem_20_24_reg[0][31]_2 [11]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][11]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [11]),
        .I2(\op_mem_20_24_reg[0][31]_6 [11]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [11]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][11]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [11]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [11]),
        .O(\op_mem_20_24[0][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][12]_i_1 
       (.I0(\op_mem_20_24[0][12]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][12]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][12]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [12]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][12] ),
        .O(\fd_prim_array[12].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][12]_i_2 
       (.I0(o[12]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [12]),
        .I3(\op_mem_20_24_reg[0][31]_2 [12]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][12]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [12]),
        .I2(\op_mem_20_24_reg[0][31]_5 [12]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [12]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][12]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [12]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [12]),
        .O(\op_mem_20_24[0][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][13]_i_1 
       (.I0(\op_mem_20_24[0][13]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][13]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][13]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [13]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][13] ),
        .O(\fd_prim_array[13].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][13]_i_2 
       (.I0(o[13]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [13]),
        .I3(\op_mem_20_24_reg[0][31]_2 [13]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][13]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [13]),
        .I2(\op_mem_20_24_reg[0][31]_6 [13]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [13]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][13]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [13]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [13]),
        .O(\op_mem_20_24[0][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][14]_i_1 
       (.I0(\op_mem_20_24[0][14]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][14]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][14]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [14]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][14] ),
        .O(\fd_prim_array[14].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][14]_i_2 
       (.I0(o[14]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [14]),
        .I3(\op_mem_20_24_reg[0][31]_2 [14]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][14]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [14]),
        .I2(\op_mem_20_24_reg[0][31]_5 [14]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [14]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][14]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [14]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [14]),
        .O(\op_mem_20_24[0][14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][15]_i_1 
       (.I0(\op_mem_20_24[0][15]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][15]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][15]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [15]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][15] ),
        .O(\fd_prim_array[15].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][15]_i_2 
       (.I0(o[15]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [15]),
        .I3(\op_mem_20_24_reg[0][31]_2 [15]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][15]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [15]),
        .I2(\op_mem_20_24_reg[0][31]_6 [15]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [15]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][15]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [15]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [15]),
        .O(\op_mem_20_24[0][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][16]_i_1 
       (.I0(\op_mem_20_24[0][16]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][16]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][16]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [16]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][16] ),
        .O(\fd_prim_array[16].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][16]_i_2 
       (.I0(o[16]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [16]),
        .I3(\op_mem_20_24_reg[0][31]_2 [16]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][16]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [16]),
        .I2(\op_mem_20_24_reg[0][31]_5 [16]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [16]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][16]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [16]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [16]),
        .O(\op_mem_20_24[0][16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][17]_i_1 
       (.I0(\op_mem_20_24[0][17]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][17]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][17]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [17]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][17] ),
        .O(\fd_prim_array[17].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][17]_i_2 
       (.I0(o[17]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [17]),
        .I3(\op_mem_20_24_reg[0][31]_2 [17]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][17]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [17]),
        .I2(\op_mem_20_24_reg[0][31]_5 [17]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [17]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][17]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [17]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [17]),
        .O(\op_mem_20_24[0][17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][18]_i_1 
       (.I0(\op_mem_20_24[0][18]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][18]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][18]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [18]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][18] ),
        .O(\fd_prim_array[18].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][18]_i_2 
       (.I0(o[18]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [18]),
        .I3(\op_mem_20_24_reg[0][31]_2 [18]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][18]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [18]),
        .I2(\op_mem_20_24_reg[0][31]_6 [18]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [18]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][18]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [18]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [18]),
        .O(\op_mem_20_24[0][18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][19]_i_1 
       (.I0(\op_mem_20_24[0][19]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][19]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][19]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [19]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][19] ),
        .O(\fd_prim_array[19].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][19]_i_2 
       (.I0(o[19]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [19]),
        .I3(\op_mem_20_24_reg[0][31]_2 [19]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][19]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [19]),
        .I2(\op_mem_20_24_reg[0][31]_5 [19]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [19]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][19]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [19]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [19]),
        .O(\op_mem_20_24[0][19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][1]_i_1 
       (.I0(\op_mem_20_24[0][1]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][1]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][1]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [1]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][1] ),
        .O(\fd_prim_array[1].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][1]_i_2 
       (.I0(o[1]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [1]),
        .I3(\op_mem_20_24_reg[0][31]_2 [1]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][1]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [1]),
        .I2(\op_mem_20_24_reg[0][31]_5 [1]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [1]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][1]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [1]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [1]),
        .O(\op_mem_20_24[0][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][20]_i_1 
       (.I0(\op_mem_20_24[0][20]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][20]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][20]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [20]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][20] ),
        .O(\fd_prim_array[20].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][20]_i_2 
       (.I0(o[20]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [20]),
        .I3(\op_mem_20_24_reg[0][31]_2 [20]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][20]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [20]),
        .I2(\op_mem_20_24_reg[0][31]_6 [20]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [20]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][20]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [20]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [20]),
        .O(\op_mem_20_24[0][20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][21]_i_1 
       (.I0(\op_mem_20_24[0][21]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][21]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][21]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [21]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][21] ),
        .O(\fd_prim_array[21].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][21]_i_2 
       (.I0(o[21]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [21]),
        .I3(\op_mem_20_24_reg[0][31]_2 [21]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][21]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [21]),
        .I2(\op_mem_20_24_reg[0][31]_6 [21]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [21]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][21]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [21]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [21]),
        .O(\op_mem_20_24[0][21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][22]_i_1 
       (.I0(\op_mem_20_24[0][22]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][22]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][22]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [22]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][22] ),
        .O(\fd_prim_array[22].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][22]_i_2 
       (.I0(o[22]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [22]),
        .I3(\op_mem_20_24_reg[0][31]_2 [22]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][22]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [22]),
        .I2(\op_mem_20_24_reg[0][31]_6 [22]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [22]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][22]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [22]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [22]),
        .O(\op_mem_20_24[0][22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][23]_i_1 
       (.I0(\op_mem_20_24[0][23]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][23]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][23]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [23]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][23] ),
        .O(\fd_prim_array[23].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][23]_i_2 
       (.I0(o[23]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [23]),
        .I3(\op_mem_20_24_reg[0][31]_2 [23]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][23]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [23]),
        .I2(\op_mem_20_24_reg[0][31]_6 [23]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [23]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][23]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [23]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [23]),
        .O(\op_mem_20_24[0][23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][24]_i_1 
       (.I0(\op_mem_20_24[0][24]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][24]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][24]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [24]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][24] ),
        .O(\fd_prim_array[24].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][24]_i_2 
       (.I0(o[24]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [24]),
        .I3(\op_mem_20_24_reg[0][31]_2 [24]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][24]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [24]),
        .I2(\op_mem_20_24_reg[0][31]_6 [24]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [24]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][24]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [24]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [24]),
        .O(\op_mem_20_24[0][24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][25]_i_1 
       (.I0(\op_mem_20_24[0][25]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][25]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][25]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [25]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][25] ),
        .O(\fd_prim_array[25].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][25]_i_2 
       (.I0(o[25]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [25]),
        .I3(\op_mem_20_24_reg[0][31]_2 [25]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \op_mem_20_24[0][25]_i_3 
       (.I0(\op_mem_20_24_reg[0][31]_6 [25]),
        .I1(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I2(\op_mem_20_24_reg[0][31]_5 [25]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_7 [25]),
        .O(\op_mem_20_24[0][25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][25]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [25]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [25]),
        .O(\op_mem_20_24[0][25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][26]_i_1 
       (.I0(\op_mem_20_24[0][26]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][26]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][26]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [26]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][26] ),
        .O(\fd_prim_array[26].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][26]_i_2 
       (.I0(o[26]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [26]),
        .I3(\op_mem_20_24_reg[0][31]_2 [26]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][26]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [26]),
        .I2(\op_mem_20_24_reg[0][31]_6 [26]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [26]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][26]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [26]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [26]),
        .O(\op_mem_20_24[0][26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][27]_i_1 
       (.I0(\op_mem_20_24[0][27]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][27]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][27]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [27]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][27] ),
        .O(\fd_prim_array[27].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][27]_i_2 
       (.I0(o[27]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [27]),
        .I3(\op_mem_20_24_reg[0][31]_2 [27]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][27]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [27]),
        .I2(\op_mem_20_24_reg[0][31]_6 [27]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [27]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][27]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [27]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [27]),
        .O(\op_mem_20_24[0][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][28]_i_1 
       (.I0(\op_mem_20_24[0][28]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][28]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][28]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [28]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][28] ),
        .O(\fd_prim_array[28].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][28]_i_2 
       (.I0(o[28]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [28]),
        .I3(\op_mem_20_24_reg[0][31]_2 [28]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][28]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [28]),
        .I2(\op_mem_20_24_reg[0][31]_5 [28]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [28]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][28]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [28]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [28]),
        .O(\op_mem_20_24[0][28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][29]_i_1 
       (.I0(\op_mem_20_24[0][29]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][29]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][29]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [29]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][29] ),
        .O(\fd_prim_array[29].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][29]_i_2 
       (.I0(o[29]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [29]),
        .I3(\op_mem_20_24_reg[0][31]_2 [29]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][29]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [29]),
        .I2(\op_mem_20_24_reg[0][31]_6 [29]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [29]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][29]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [29]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [29]),
        .O(\op_mem_20_24[0][29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][2]_i_1 
       (.I0(\op_mem_20_24[0][2]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][2]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][2]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [2]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][2] ),
        .O(\fd_prim_array[2].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][2]_i_2 
       (.I0(o[2]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [2]),
        .I3(\op_mem_20_24_reg[0][31]_2 [2]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \op_mem_20_24[0][2]_i_3 
       (.I0(\op_mem_20_24_reg[0][31]_6 [2]),
        .I1(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I2(\op_mem_20_24_reg[0][31]_5 [2]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_7 [2]),
        .O(\op_mem_20_24[0][2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][2]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [2]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [2]),
        .O(\op_mem_20_24[0][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][30]_i_1 
       (.I0(\op_mem_20_24[0][30]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][30]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][30]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [30]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][30] ),
        .O(\fd_prim_array[30].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][30]_i_2 
       (.I0(o[30]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [30]),
        .I3(\op_mem_20_24_reg[0][31]_2 [30]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][30]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [30]),
        .I2(\op_mem_20_24_reg[0][31]_5 [30]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [30]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][30]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [30]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [30]),
        .O(\op_mem_20_24[0][30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFE2FFFFFFFFFFFF)) 
    \op_mem_20_24[0][31]_i_10 
       (.I0(data_sel_store_16_28[1]),
        .I1(CO),
        .I2(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .I3(\data_sel_store_16_28[5]_i_4_n_0 ),
        .I4(\data_sel_store_16_28_reg[1] ),
        .I5(\data_sel_store_16_28[5]_i_6_n_0 ),
        .O(\op_mem_20_24[0][31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFFFFFFFCFFF)) 
    \op_mem_20_24[0][31]_i_11 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .I1(data_sel_store_16_28[1]),
        .I2(\data_sel_store_16_28_reg[1] ),
        .I3(data_sel_store_16_28[2]),
        .I4(CO),
        .I5(register16_q_net[3]),
        .O(\op_mem_20_24[0][31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][31]_i_2 
       (.I0(\op_mem_20_24[0][31]_i_3_n_0 ),
        .I1(\op_mem_20_24[0][31]_i_4_n_0 ),
        .I2(\op_mem_20_24[0][31]_i_5_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [31]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_0 ),
        .O(\fd_prim_array[31].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][31]_i_3 
       (.I0(o[31]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [31]),
        .I3(\op_mem_20_24_reg[0][31]_2 [31]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][31]_i_4 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [31]),
        .I2(\op_mem_20_24_reg[0][31]_5 [31]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [31]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][31]_i_5 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [31]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [31]),
        .O(\op_mem_20_24[0][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFBFFAFFBABF)) 
    \op_mem_20_24[0][31]_i_6 
       (.I0(\fd_prim_array[5].rst_comp.fdre_comp_1 ),
        .I1(register16_q_net[7]),
        .I2(CO),
        .I3(data_sel_store_16_28[6]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [4]),
        .I5(data_sel_store_16_28[5]),
        .O(\op_mem_20_24[0][31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA3F3)) 
    \op_mem_20_24[0][31]_i_8 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I1(data_sel_store_16_28[0]),
        .I2(CO),
        .I3(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .O(\op_mem_20_24[0][31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEF0FFFFFFF0FF)) 
    \op_mem_20_24[0][31]_i_9 
       (.I0(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I1(\fd_prim_array[6].rst_comp.fdre_comp_1 [1]),
        .I2(data_sel_store_16_28[0]),
        .I3(data_sel_store_16_28[1]),
        .I4(CO),
        .I5(\fd_prim_array[6].rst_comp.fdre_comp_1 [2]),
        .O(\op_mem_20_24[0][31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][3]_i_1 
       (.I0(\op_mem_20_24[0][3]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][3]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][3]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [3]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][3] ),
        .O(\fd_prim_array[3].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][3]_i_2 
       (.I0(o[3]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [3]),
        .I3(\op_mem_20_24_reg[0][31]_2 [3]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][3]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [3]),
        .I2(\op_mem_20_24_reg[0][31]_5 [3]),
        .I3(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_6 [3]),
        .I5(\op_mem_20_24[0][31]_i_11_n_0 ),
        .O(\op_mem_20_24[0][3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][3]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [3]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [3]),
        .O(\op_mem_20_24[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][4]_i_1 
       (.I0(\op_mem_20_24[0][4]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][4]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][4]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [4]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][4] ),
        .O(\fd_prim_array[4].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][4]_i_2 
       (.I0(o[4]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [4]),
        .I3(\op_mem_20_24_reg[0][31]_2 [4]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][4]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [4]),
        .I2(\op_mem_20_24_reg[0][31]_6 [4]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [4]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][4]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [4]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [4]),
        .O(\op_mem_20_24[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][5]_i_1 
       (.I0(\op_mem_20_24[0][5]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][5]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][5]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [5]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][5] ),
        .O(\fd_prim_array[5].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][5]_i_2 
       (.I0(o[5]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [5]),
        .I3(\op_mem_20_24_reg[0][31]_2 [5]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][5]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [5]),
        .I2(\op_mem_20_24_reg[0][31]_6 [5]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [5]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][5]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [5]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [5]),
        .O(\op_mem_20_24[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][6]_i_1 
       (.I0(\op_mem_20_24[0][6]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][6]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][6]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [6]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][6] ),
        .O(\fd_prim_array[6].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][6]_i_2 
       (.I0(o[6]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [6]),
        .I3(\op_mem_20_24_reg[0][31]_2 [6]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \op_mem_20_24[0][6]_i_3 
       (.I0(\op_mem_20_24_reg[0][31]_5 [6]),
        .I1(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I2(\op_mem_20_24_reg[0][31]_6 [6]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_7 [6]),
        .O(\op_mem_20_24[0][6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][6]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [6]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [6]),
        .O(\op_mem_20_24[0][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][7]_i_1 
       (.I0(\op_mem_20_24[0][7]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][7]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][7]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [7]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][7] ),
        .O(\fd_prim_array[7].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][7]_i_2 
       (.I0(o[7]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [7]),
        .I3(\op_mem_20_24_reg[0][31]_2 [7]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][7]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [7]),
        .I2(\op_mem_20_24_reg[0][31]_6 [7]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [7]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][7]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [7]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [7]),
        .O(\op_mem_20_24[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][8]_i_1 
       (.I0(\op_mem_20_24[0][8]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][8]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][8]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [8]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][8] ),
        .O(\fd_prim_array[8].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][8]_i_2 
       (.I0(o[8]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [8]),
        .I3(\op_mem_20_24_reg[0][31]_2 [8]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \op_mem_20_24[0][8]_i_3 
       (.I0(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I1(\op_mem_20_24_reg[0][31]_7 [8]),
        .I2(\op_mem_20_24_reg[0][31]_6 [8]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24_reg[0][31]_5 [8]),
        .I5(\op_mem_20_24[0][31]_i_10_n_0 ),
        .O(\op_mem_20_24[0][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][8]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [8]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [8]),
        .O(\op_mem_20_24[0][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFFFEF)) 
    \op_mem_20_24[0][9]_i_1 
       (.I0(\op_mem_20_24[0][9]_i_2_n_0 ),
        .I1(\op_mem_20_24[0][9]_i_3_n_0 ),
        .I2(\op_mem_20_24[0][9]_i_4_n_0 ),
        .I3(\op_mem_20_24_reg[0][31] [9]),
        .I4(\op_mem_20_24[0][31]_i_6_n_0 ),
        .I5(\op_mem_20_24_reg[0][9] ),
        .O(\fd_prim_array[9].rst_comp.fdre_comp ));
  LUT6 #(
    .INIT(64'hCC000000FCB8B8B8)) 
    \op_mem_20_24[0][9]_i_2 
       (.I0(o[9]),
        .I1(CO),
        .I2(\op_mem_20_24_reg[0][31]_1 [9]),
        .I3(\op_mem_20_24_reg[0][31]_2 [9]),
        .I4(\fd_prim_array[6].rst_comp.fdre_comp_1 [0]),
        .I5(\op_mem_20_24[0][31]_i_8_n_0 ),
        .O(\op_mem_20_24[0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \op_mem_20_24[0][9]_i_3 
       (.I0(\op_mem_20_24_reg[0][31]_5 [9]),
        .I1(\op_mem_20_24[0][31]_i_10_n_0 ),
        .I2(\op_mem_20_24_reg[0][31]_6 [9]),
        .I3(\op_mem_20_24[0][31]_i_11_n_0 ),
        .I4(\op_mem_20_24[0][31]_i_9_n_0 ),
        .I5(\op_mem_20_24_reg[0][31]_7 [9]),
        .O(\op_mem_20_24[0][9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \op_mem_20_24[0][9]_i_4 
       (.I0(\fd_prim_array[2].rst_comp.fdre_comp_1 ),
        .I1(\op_mem_20_24_reg[0][31]_3 [9]),
        .I2(CO),
        .I3(\op_mem_20_24_reg[0][31]_4 [9]),
        .O(\op_mem_20_24[0][9]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init
   (unregy_join_6_1,
    trigger_in_hw,
    clk,
    trigger_src,
    register12_q_net);
  output unregy_join_6_1;
  input [0:0]trigger_in_hw;
  input clk;
  input trigger_src;
  input register12_q_net;

  wire clk;
  wire register12_q_net;
  wire [0:0]trigger_in_hw;
  wire trigger_src;
  wire unregy_join_6_1;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init \has_latency.fd_array[1].reg_comp_1 
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in_hw(trigger_in_hw),
        .trigger_src(trigger_src),
        .unregy_join_6_1(unregy_join_6_1));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25
   (register14_q_net,
    m_axis_dma_tready,
    clk);
  output register14_q_net;
  input [0:0]m_axis_dma_tready;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tready;
  wire register14_q_net;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_26 \has_latency.fd_array[1].reg_comp_1 
       (.clk(clk),
        .m_axis_dma_tready(m_axis_dma_tready),
        .register14_q_net(register14_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27
   (register13_q_net,
    usr_rst_in,
    clk);
  output register13_q_net;
  input usr_rst_in;
  input clk;

  wire clk;
  wire register13_q_net;
  wire usr_rst_in;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_28 \has_latency.fd_array[1].reg_comp_1 
       (.clk(clk),
        .register13_q_net(register13_q_net),
        .usr_rst_in(usr_rst_in));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29
   (register12_q_net,
    trigger_in,
    clk);
  output register12_q_net;
  input trigger_in;
  input clk;

  wire clk;
  wire register12_q_net;
  wire trigger_in;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init_30 \has_latency.fd_array[1].reg_comp_1 
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in(trigger_in));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0
   (D,
    o,
    CO,
    \data_vec_store_1_15_28_reg[31] ,
    data_in_b,
    clk);
  output [31:0]D;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_1_15_28_reg[31] ;
  input [31:0]data_in_b;
  input clk;

  wire [0:0]CO;
  wire [31:0]D;
  wire clk;
  wire [31:0]data_in_b;
  wire [31:0]\data_vec_store_1_15_28_reg[31] ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .D(D),
        .clk(clk),
        .data_in_b(data_in_b),
        .\data_vec_store_1_15_28_reg[31] (\data_vec_store_1_15_28_reg[31] ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13
   (o,
    data_in_a,
    clk);
  output [31:0]o;
  input [31:0]data_in_a;
  input clk;

  wire clk;
  wire [31:0]data_in_a;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_14 \has_latency.fd_array[1].reg_comp_1 
       (.clk(clk),
        .data_in_a(data_in_a),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_7_15_28_reg[31] ,
    data_in_h,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_7_15_28_reg[31] ;
  input [31:0]data_in_h;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_h;
  wire [31:0]\data_vec_store_7_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_16 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_in_h(data_in_h),
        .\data_vec_store_7_15_28_reg[31] (\data_vec_store_7_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_4_15_28_reg[31] ,
    data_in_e,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_4_15_28_reg[31] ;
  input [31:0]data_in_e;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_e;
  wire [31:0]\data_vec_store_4_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_18 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_in_e(data_in_e),
        .\data_vec_store_4_15_28_reg[31] (\data_vec_store_4_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    o,
    CO,
    Q,
    data_in_g,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]Q;
  input [31:0]data_in_g;
  input clk;

  wire [0:0]CO;
  wire [31:0]Q;
  wire clk;
  wire [31:0]data_in_g;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_20 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .Q(Q),
        .clk(clk),
        .data_in_g(data_in_g),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    o,
    CO,
    \data_vec_store_5_15_28_reg[31] ,
    data_in_f,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_5_15_28_reg[31] ;
  input [31:0]data_in_f;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_f;
  wire [31:0]\data_vec_store_5_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_22 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_in_f(data_in_f),
        .\data_vec_store_5_15_28_reg[31] (\data_vec_store_5_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_3_15_28_reg[31] ,
    data_in_d,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_3_15_28_reg[31] ;
  input [31:0]data_in_d;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_d;
  wire [31:0]\data_vec_store_3_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_24 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_in_d(data_in_d),
        .\data_vec_store_3_15_28_reg[31] (\data_vec_store_3_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31
   (\fd_prim_array[0].rst_comp.fdre_comp ,
    o,
    rel_85_16_carry,
    O,
    i,
    clk);
  output [0:0]\fd_prim_array[0].rst_comp.fdre_comp ;
  output [28:0]o;
  input [0:0]rel_85_16_carry;
  input [1:0]O;
  input [31:0]i;
  input clk;

  wire [1:0]O;
  wire clk;
  wire [0:0]\fd_prim_array[0].rst_comp.fdre_comp ;
  wire [31:0]i;
  wire [28:0]o;
  wire [0:0]rel_85_16_carry;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_32 \has_latency.fd_array[1].reg_comp_1 
       (.O(O),
        .clk(clk),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (\fd_prim_array[0].rst_comp.fdre_comp ),
        .i(i),
        .o(o),
        .rel_85_16_carry(rel_85_16_carry));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_2_15_28_reg[31] ,
    data_in_c,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_2_15_28_reg[31] ;
  input [31:0]data_in_c;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_c;
  wire [31:0]\data_vec_store_2_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized0_34 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_in_c(data_in_c),
        .\data_vec_store_2_15_28_reg[31] (\data_vec_store_2_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp_0 (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1
   (\fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[0].rst_comp.fdre_comp ,
    S,
    \decim_count_11_25_reg[0] ,
    decim_count_11_25,
    CO,
    o,
    \fd_prim_array[15].rst_comp.fdre_comp_0 ,
    clk);
  output [1:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  output \fd_prim_array[0].rst_comp.fdre_comp ;
  output [3:0]S;
  output \decim_count_11_25_reg[0] ;
  input [15:0]decim_count_11_25;
  input [0:0]CO;
  input [0:0]o;
  input [15:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  input clk;

  wire [0:0]CO;
  wire [3:0]S;
  wire clk;
  wire [15:0]decim_count_11_25;
  wire \decim_count_11_25_reg[0] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp ;
  wire [1:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  wire [15:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  wire [0:0]o;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized1 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .S(S),
        .clk(clk),
        .decim_count_11_25(decim_count_11_25),
        .\decim_count_11_25_reg[0] (\decim_count_11_25_reg[0] ),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (\fd_prim_array[0].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp_0 (\fd_prim_array[15].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp_1 (\fd_prim_array[15].rst_comp.fdre_comp_0 ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3
   (\fd_prim_array[0].rst_comp.fdre_comp ,
    \fd_prim_array[1].rst_comp.fdre_comp ,
    \fd_prim_array[2].rst_comp.fdre_comp ,
    \fd_prim_array[3].rst_comp.fdre_comp ,
    \fd_prim_array[4].rst_comp.fdre_comp ,
    \fd_prim_array[5].rst_comp.fdre_comp ,
    \fd_prim_array[6].rst_comp.fdre_comp ,
    \fd_prim_array[7].rst_comp.fdre_comp ,
    \fd_prim_array[8].rst_comp.fdre_comp ,
    \fd_prim_array[9].rst_comp.fdre_comp ,
    \fd_prim_array[10].rst_comp.fdre_comp ,
    \fd_prim_array[11].rst_comp.fdre_comp ,
    \fd_prim_array[12].rst_comp.fdre_comp ,
    \fd_prim_array[13].rst_comp.fdre_comp ,
    \fd_prim_array[14].rst_comp.fdre_comp ,
    \fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[16].rst_comp.fdre_comp ,
    \fd_prim_array[17].rst_comp.fdre_comp ,
    \fd_prim_array[18].rst_comp.fdre_comp ,
    \fd_prim_array[19].rst_comp.fdre_comp ,
    \fd_prim_array[20].rst_comp.fdre_comp ,
    \fd_prim_array[21].rst_comp.fdre_comp ,
    \fd_prim_array[22].rst_comp.fdre_comp ,
    \fd_prim_array[23].rst_comp.fdre_comp ,
    \fd_prim_array[24].rst_comp.fdre_comp ,
    \fd_prim_array[25].rst_comp.fdre_comp ,
    \fd_prim_array[26].rst_comp.fdre_comp ,
    \fd_prim_array[27].rst_comp.fdre_comp ,
    \fd_prim_array[28].rst_comp.fdre_comp ,
    \fd_prim_array[29].rst_comp.fdre_comp ,
    \fd_prim_array[30].rst_comp.fdre_comp ,
    \fd_prim_array[31].rst_comp.fdre_comp ,
    \fd_prim_array[6].rst_comp.fdre_comp_0 ,
    \fd_prim_array[7].rst_comp.fdre_comp_0 ,
    muxing_run_join_99_9,
    \fd_prim_array[1].rst_comp.fdre_comp_0 ,
    \fd_prim_array[5].rst_comp.fdre_comp_0 ,
    \fd_prim_array[2].rst_comp.fdre_comp_0 ,
    \data_sel_store_16_28_reg[1] ,
    \fd_prim_array[0].rst_comp.fdre_comp_0 ,
    \data_sel_store_16_28_reg[1]_0 ,
    \op_mem_20_24_reg[0][31] ,
    \op_mem_20_24_reg[0][0] ,
    \op_mem_20_24_reg[0][1] ,
    \op_mem_20_24_reg[0][2] ,
    \op_mem_20_24_reg[0][3] ,
    \op_mem_20_24_reg[0][4] ,
    \op_mem_20_24_reg[0][5] ,
    \op_mem_20_24_reg[0][6] ,
    \op_mem_20_24_reg[0][7] ,
    \op_mem_20_24_reg[0][8] ,
    \op_mem_20_24_reg[0][9] ,
    \op_mem_20_24_reg[0][10] ,
    \op_mem_20_24_reg[0][11] ,
    \op_mem_20_24_reg[0][12] ,
    \op_mem_20_24_reg[0][13] ,
    \op_mem_20_24_reg[0][14] ,
    \op_mem_20_24_reg[0][15] ,
    \op_mem_20_24_reg[0][16] ,
    \op_mem_20_24_reg[0][17] ,
    \op_mem_20_24_reg[0][18] ,
    \op_mem_20_24_reg[0][19] ,
    \op_mem_20_24_reg[0][20] ,
    \op_mem_20_24_reg[0][21] ,
    \op_mem_20_24_reg[0][22] ,
    \op_mem_20_24_reg[0][23] ,
    \op_mem_20_24_reg[0][24] ,
    \op_mem_20_24_reg[0][25] ,
    \op_mem_20_24_reg[0][26] ,
    \op_mem_20_24_reg[0][27] ,
    \op_mem_20_24_reg[0][28] ,
    \op_mem_20_24_reg[0][29] ,
    \op_mem_20_24_reg[0][30] ,
    \op_mem_20_24_reg[0][31]_0 ,
    o,
    CO,
    \op_mem_20_24_reg[0][31]_1 ,
    \op_mem_20_24_reg[0][31]_2 ,
    register13_q_net,
    \data_sel_store_16_28_reg[7] ,
    data_sel_store_16_28,
    muxing_run_14_24_reg,
    \op_mem_20_24_reg[0][31]_3 ,
    \op_mem_20_24_reg[0][31]_4 ,
    \op_mem_20_24_reg[0][31]_5 ,
    \op_mem_20_24_reg[0][31]_6 ,
    \op_mem_20_24_reg[0][31]_7 ,
    \data_sel_store_16_28_reg[4] ,
    \fd_prim_array[7].rst_comp.fdre_comp_1 ,
    clk);
  output \fd_prim_array[0].rst_comp.fdre_comp ;
  output \fd_prim_array[1].rst_comp.fdre_comp ;
  output \fd_prim_array[2].rst_comp.fdre_comp ;
  output \fd_prim_array[3].rst_comp.fdre_comp ;
  output \fd_prim_array[4].rst_comp.fdre_comp ;
  output \fd_prim_array[5].rst_comp.fdre_comp ;
  output \fd_prim_array[6].rst_comp.fdre_comp ;
  output \fd_prim_array[7].rst_comp.fdre_comp ;
  output \fd_prim_array[8].rst_comp.fdre_comp ;
  output \fd_prim_array[9].rst_comp.fdre_comp ;
  output \fd_prim_array[10].rst_comp.fdre_comp ;
  output \fd_prim_array[11].rst_comp.fdre_comp ;
  output \fd_prim_array[12].rst_comp.fdre_comp ;
  output \fd_prim_array[13].rst_comp.fdre_comp ;
  output \fd_prim_array[14].rst_comp.fdre_comp ;
  output \fd_prim_array[15].rst_comp.fdre_comp ;
  output \fd_prim_array[16].rst_comp.fdre_comp ;
  output \fd_prim_array[17].rst_comp.fdre_comp ;
  output \fd_prim_array[18].rst_comp.fdre_comp ;
  output \fd_prim_array[19].rst_comp.fdre_comp ;
  output \fd_prim_array[20].rst_comp.fdre_comp ;
  output \fd_prim_array[21].rst_comp.fdre_comp ;
  output \fd_prim_array[22].rst_comp.fdre_comp ;
  output \fd_prim_array[23].rst_comp.fdre_comp ;
  output \fd_prim_array[24].rst_comp.fdre_comp ;
  output \fd_prim_array[25].rst_comp.fdre_comp ;
  output \fd_prim_array[26].rst_comp.fdre_comp ;
  output \fd_prim_array[27].rst_comp.fdre_comp ;
  output \fd_prim_array[28].rst_comp.fdre_comp ;
  output \fd_prim_array[29].rst_comp.fdre_comp ;
  output \fd_prim_array[30].rst_comp.fdre_comp ;
  output \fd_prim_array[31].rst_comp.fdre_comp ;
  output [4:0]\fd_prim_array[6].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  output muxing_run_join_99_9;
  output \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  output \data_sel_store_16_28_reg[1] ;
  output \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output \data_sel_store_16_28_reg[1]_0 ;
  input [31:0]\op_mem_20_24_reg[0][31] ;
  input \op_mem_20_24_reg[0][0] ;
  input \op_mem_20_24_reg[0][1] ;
  input \op_mem_20_24_reg[0][2] ;
  input \op_mem_20_24_reg[0][3] ;
  input \op_mem_20_24_reg[0][4] ;
  input \op_mem_20_24_reg[0][5] ;
  input \op_mem_20_24_reg[0][6] ;
  input \op_mem_20_24_reg[0][7] ;
  input \op_mem_20_24_reg[0][8] ;
  input \op_mem_20_24_reg[0][9] ;
  input \op_mem_20_24_reg[0][10] ;
  input \op_mem_20_24_reg[0][11] ;
  input \op_mem_20_24_reg[0][12] ;
  input \op_mem_20_24_reg[0][13] ;
  input \op_mem_20_24_reg[0][14] ;
  input \op_mem_20_24_reg[0][15] ;
  input \op_mem_20_24_reg[0][16] ;
  input \op_mem_20_24_reg[0][17] ;
  input \op_mem_20_24_reg[0][18] ;
  input \op_mem_20_24_reg[0][19] ;
  input \op_mem_20_24_reg[0][20] ;
  input \op_mem_20_24_reg[0][21] ;
  input \op_mem_20_24_reg[0][22] ;
  input \op_mem_20_24_reg[0][23] ;
  input \op_mem_20_24_reg[0][24] ;
  input \op_mem_20_24_reg[0][25] ;
  input \op_mem_20_24_reg[0][26] ;
  input \op_mem_20_24_reg[0][27] ;
  input \op_mem_20_24_reg[0][28] ;
  input \op_mem_20_24_reg[0][29] ;
  input \op_mem_20_24_reg[0][30] ;
  input \op_mem_20_24_reg[0][31]_0 ;
  input [31:0]o;
  input [0:0]CO;
  input [31:0]\op_mem_20_24_reg[0][31]_1 ;
  input [31:0]\op_mem_20_24_reg[0][31]_2 ;
  input register13_q_net;
  input \data_sel_store_16_28_reg[7] ;
  input [6:0]data_sel_store_16_28;
  input muxing_run_14_24_reg;
  input [31:0]\op_mem_20_24_reg[0][31]_3 ;
  input [31:0]\op_mem_20_24_reg[0][31]_4 ;
  input [31:0]\op_mem_20_24_reg[0][31]_5 ;
  input [31:0]\op_mem_20_24_reg[0][31]_6 ;
  input [31:0]\op_mem_20_24_reg[0][31]_7 ;
  input \data_sel_store_16_28_reg[4] ;
  input [7:0]\fd_prim_array[7].rst_comp.fdre_comp_1 ;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [6:0]data_sel_store_16_28;
  wire \data_sel_store_16_28_reg[1] ;
  wire \data_sel_store_16_28_reg[1]_0 ;
  wire \data_sel_store_16_28_reg[4] ;
  wire \data_sel_store_16_28_reg[7] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[10].rst_comp.fdre_comp ;
  wire \fd_prim_array[11].rst_comp.fdre_comp ;
  wire \fd_prim_array[12].rst_comp.fdre_comp ;
  wire \fd_prim_array[13].rst_comp.fdre_comp ;
  wire \fd_prim_array[14].rst_comp.fdre_comp ;
  wire \fd_prim_array[15].rst_comp.fdre_comp ;
  wire \fd_prim_array[16].rst_comp.fdre_comp ;
  wire \fd_prim_array[17].rst_comp.fdre_comp ;
  wire \fd_prim_array[18].rst_comp.fdre_comp ;
  wire \fd_prim_array[19].rst_comp.fdre_comp ;
  wire \fd_prim_array[1].rst_comp.fdre_comp ;
  wire \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[20].rst_comp.fdre_comp ;
  wire \fd_prim_array[21].rst_comp.fdre_comp ;
  wire \fd_prim_array[22].rst_comp.fdre_comp ;
  wire \fd_prim_array[23].rst_comp.fdre_comp ;
  wire \fd_prim_array[24].rst_comp.fdre_comp ;
  wire \fd_prim_array[25].rst_comp.fdre_comp ;
  wire \fd_prim_array[26].rst_comp.fdre_comp ;
  wire \fd_prim_array[27].rst_comp.fdre_comp ;
  wire \fd_prim_array[28].rst_comp.fdre_comp ;
  wire \fd_prim_array[29].rst_comp.fdre_comp ;
  wire \fd_prim_array[2].rst_comp.fdre_comp ;
  wire \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[30].rst_comp.fdre_comp ;
  wire \fd_prim_array[31].rst_comp.fdre_comp ;
  wire \fd_prim_array[3].rst_comp.fdre_comp ;
  wire \fd_prim_array[4].rst_comp.fdre_comp ;
  wire \fd_prim_array[5].rst_comp.fdre_comp ;
  wire \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[6].rst_comp.fdre_comp ;
  wire [4:0]\fd_prim_array[6].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[7].rst_comp.fdre_comp ;
  wire \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  wire [7:0]\fd_prim_array[7].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[8].rst_comp.fdre_comp ;
  wire \fd_prim_array[9].rst_comp.fdre_comp ;
  wire muxing_run_14_24_reg;
  wire muxing_run_join_99_9;
  wire [31:0]o;
  wire \op_mem_20_24_reg[0][0] ;
  wire \op_mem_20_24_reg[0][10] ;
  wire \op_mem_20_24_reg[0][11] ;
  wire \op_mem_20_24_reg[0][12] ;
  wire \op_mem_20_24_reg[0][13] ;
  wire \op_mem_20_24_reg[0][14] ;
  wire \op_mem_20_24_reg[0][15] ;
  wire \op_mem_20_24_reg[0][16] ;
  wire \op_mem_20_24_reg[0][17] ;
  wire \op_mem_20_24_reg[0][18] ;
  wire \op_mem_20_24_reg[0][19] ;
  wire \op_mem_20_24_reg[0][1] ;
  wire \op_mem_20_24_reg[0][20] ;
  wire \op_mem_20_24_reg[0][21] ;
  wire \op_mem_20_24_reg[0][22] ;
  wire \op_mem_20_24_reg[0][23] ;
  wire \op_mem_20_24_reg[0][24] ;
  wire \op_mem_20_24_reg[0][25] ;
  wire \op_mem_20_24_reg[0][26] ;
  wire \op_mem_20_24_reg[0][27] ;
  wire \op_mem_20_24_reg[0][28] ;
  wire \op_mem_20_24_reg[0][29] ;
  wire \op_mem_20_24_reg[0][2] ;
  wire \op_mem_20_24_reg[0][30] ;
  wire [31:0]\op_mem_20_24_reg[0][31] ;
  wire \op_mem_20_24_reg[0][31]_0 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_1 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_2 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_3 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_4 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_5 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_6 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_7 ;
  wire \op_mem_20_24_reg[0][3] ;
  wire \op_mem_20_24_reg[0][4] ;
  wire \op_mem_20_24_reg[0][5] ;
  wire \op_mem_20_24_reg[0][6] ;
  wire \op_mem_20_24_reg[0][7] ;
  wire \op_mem_20_24_reg[0][8] ;
  wire \op_mem_20_24_reg[0][9] ;
  wire register13_q_net;

  design_0_thrtl_8ch_cfg_0_0_single_reg_w_init__parameterized3 \has_latency.fd_array[1].reg_comp_1 
       (.CO(CO),
        .clk(clk),
        .data_sel_store_16_28(data_sel_store_16_28),
        .\data_sel_store_16_28_reg[1] (\data_sel_store_16_28_reg[1] ),
        .\data_sel_store_16_28_reg[1]_0 (\data_sel_store_16_28_reg[1]_0 ),
        .\data_sel_store_16_28_reg[4] (\data_sel_store_16_28_reg[4] ),
        .\data_sel_store_16_28_reg[7] (\data_sel_store_16_28_reg[7] ),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (\fd_prim_array[0].rst_comp.fdre_comp ),
        .\fd_prim_array[0].rst_comp.fdre_comp_1 (\fd_prim_array[0].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[10].rst_comp.fdre_comp (\fd_prim_array[10].rst_comp.fdre_comp ),
        .\fd_prim_array[11].rst_comp.fdre_comp (\fd_prim_array[11].rst_comp.fdre_comp ),
        .\fd_prim_array[12].rst_comp.fdre_comp (\fd_prim_array[12].rst_comp.fdre_comp ),
        .\fd_prim_array[13].rst_comp.fdre_comp (\fd_prim_array[13].rst_comp.fdre_comp ),
        .\fd_prim_array[14].rst_comp.fdre_comp (\fd_prim_array[14].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp (\fd_prim_array[15].rst_comp.fdre_comp ),
        .\fd_prim_array[16].rst_comp.fdre_comp (\fd_prim_array[16].rst_comp.fdre_comp ),
        .\fd_prim_array[17].rst_comp.fdre_comp (\fd_prim_array[17].rst_comp.fdre_comp ),
        .\fd_prim_array[18].rst_comp.fdre_comp (\fd_prim_array[18].rst_comp.fdre_comp ),
        .\fd_prim_array[19].rst_comp.fdre_comp (\fd_prim_array[19].rst_comp.fdre_comp ),
        .\fd_prim_array[1].rst_comp.fdre_comp_0 (\fd_prim_array[1].rst_comp.fdre_comp ),
        .\fd_prim_array[1].rst_comp.fdre_comp_1 (\fd_prim_array[1].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[20].rst_comp.fdre_comp (\fd_prim_array[20].rst_comp.fdre_comp ),
        .\fd_prim_array[21].rst_comp.fdre_comp (\fd_prim_array[21].rst_comp.fdre_comp ),
        .\fd_prim_array[22].rst_comp.fdre_comp (\fd_prim_array[22].rst_comp.fdre_comp ),
        .\fd_prim_array[23].rst_comp.fdre_comp (\fd_prim_array[23].rst_comp.fdre_comp ),
        .\fd_prim_array[24].rst_comp.fdre_comp (\fd_prim_array[24].rst_comp.fdre_comp ),
        .\fd_prim_array[25].rst_comp.fdre_comp (\fd_prim_array[25].rst_comp.fdre_comp ),
        .\fd_prim_array[26].rst_comp.fdre_comp (\fd_prim_array[26].rst_comp.fdre_comp ),
        .\fd_prim_array[27].rst_comp.fdre_comp (\fd_prim_array[27].rst_comp.fdre_comp ),
        .\fd_prim_array[28].rst_comp.fdre_comp (\fd_prim_array[28].rst_comp.fdre_comp ),
        .\fd_prim_array[29].rst_comp.fdre_comp (\fd_prim_array[29].rst_comp.fdre_comp ),
        .\fd_prim_array[2].rst_comp.fdre_comp_0 (\fd_prim_array[2].rst_comp.fdre_comp ),
        .\fd_prim_array[2].rst_comp.fdre_comp_1 (\fd_prim_array[2].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[30].rst_comp.fdre_comp (\fd_prim_array[30].rst_comp.fdre_comp ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ),
        .\fd_prim_array[3].rst_comp.fdre_comp_0 (\fd_prim_array[3].rst_comp.fdre_comp ),
        .\fd_prim_array[4].rst_comp.fdre_comp_0 (\fd_prim_array[4].rst_comp.fdre_comp ),
        .\fd_prim_array[5].rst_comp.fdre_comp_0 (\fd_prim_array[5].rst_comp.fdre_comp ),
        .\fd_prim_array[5].rst_comp.fdre_comp_1 (\fd_prim_array[5].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[6].rst_comp.fdre_comp_0 (\fd_prim_array[6].rst_comp.fdre_comp ),
        .\fd_prim_array[6].rst_comp.fdre_comp_1 (\fd_prim_array[6].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[7].rst_comp.fdre_comp_0 (\fd_prim_array[7].rst_comp.fdre_comp ),
        .\fd_prim_array[7].rst_comp.fdre_comp_1 (\fd_prim_array[7].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[7].rst_comp.fdre_comp_2 (\fd_prim_array[7].rst_comp.fdre_comp_1 ),
        .\fd_prim_array[8].rst_comp.fdre_comp (\fd_prim_array[8].rst_comp.fdre_comp ),
        .\fd_prim_array[9].rst_comp.fdre_comp (\fd_prim_array[9].rst_comp.fdre_comp ),
        .muxing_run_14_24_reg(muxing_run_14_24_reg),
        .muxing_run_join_99_9(muxing_run_join_99_9),
        .o(o),
        .\op_mem_20_24_reg[0][0] (\op_mem_20_24_reg[0][0] ),
        .\op_mem_20_24_reg[0][10] (\op_mem_20_24_reg[0][10] ),
        .\op_mem_20_24_reg[0][11] (\op_mem_20_24_reg[0][11] ),
        .\op_mem_20_24_reg[0][12] (\op_mem_20_24_reg[0][12] ),
        .\op_mem_20_24_reg[0][13] (\op_mem_20_24_reg[0][13] ),
        .\op_mem_20_24_reg[0][14] (\op_mem_20_24_reg[0][14] ),
        .\op_mem_20_24_reg[0][15] (\op_mem_20_24_reg[0][15] ),
        .\op_mem_20_24_reg[0][16] (\op_mem_20_24_reg[0][16] ),
        .\op_mem_20_24_reg[0][17] (\op_mem_20_24_reg[0][17] ),
        .\op_mem_20_24_reg[0][18] (\op_mem_20_24_reg[0][18] ),
        .\op_mem_20_24_reg[0][19] (\op_mem_20_24_reg[0][19] ),
        .\op_mem_20_24_reg[0][1] (\op_mem_20_24_reg[0][1] ),
        .\op_mem_20_24_reg[0][20] (\op_mem_20_24_reg[0][20] ),
        .\op_mem_20_24_reg[0][21] (\op_mem_20_24_reg[0][21] ),
        .\op_mem_20_24_reg[0][22] (\op_mem_20_24_reg[0][22] ),
        .\op_mem_20_24_reg[0][23] (\op_mem_20_24_reg[0][23] ),
        .\op_mem_20_24_reg[0][24] (\op_mem_20_24_reg[0][24] ),
        .\op_mem_20_24_reg[0][25] (\op_mem_20_24_reg[0][25] ),
        .\op_mem_20_24_reg[0][26] (\op_mem_20_24_reg[0][26] ),
        .\op_mem_20_24_reg[0][27] (\op_mem_20_24_reg[0][27] ),
        .\op_mem_20_24_reg[0][28] (\op_mem_20_24_reg[0][28] ),
        .\op_mem_20_24_reg[0][29] (\op_mem_20_24_reg[0][29] ),
        .\op_mem_20_24_reg[0][2] (\op_mem_20_24_reg[0][2] ),
        .\op_mem_20_24_reg[0][30] (\op_mem_20_24_reg[0][30] ),
        .\op_mem_20_24_reg[0][31] (\op_mem_20_24_reg[0][31] ),
        .\op_mem_20_24_reg[0][31]_0 (\op_mem_20_24_reg[0][31]_0 ),
        .\op_mem_20_24_reg[0][31]_1 (\op_mem_20_24_reg[0][31]_1 ),
        .\op_mem_20_24_reg[0][31]_2 (\op_mem_20_24_reg[0][31]_2 ),
        .\op_mem_20_24_reg[0][31]_3 (\op_mem_20_24_reg[0][31]_3 ),
        .\op_mem_20_24_reg[0][31]_4 (\op_mem_20_24_reg[0][31]_4 ),
        .\op_mem_20_24_reg[0][31]_5 (\op_mem_20_24_reg[0][31]_5 ),
        .\op_mem_20_24_reg[0][31]_6 (\op_mem_20_24_reg[0][31]_6 ),
        .\op_mem_20_24_reg[0][31]_7 (\op_mem_20_24_reg[0][31]_7 ),
        .\op_mem_20_24_reg[0][3] (\op_mem_20_24_reg[0][3] ),
        .\op_mem_20_24_reg[0][4] (\op_mem_20_24_reg[0][4] ),
        .\op_mem_20_24_reg[0][5] (\op_mem_20_24_reg[0][5] ),
        .\op_mem_20_24_reg[0][6] (\op_mem_20_24_reg[0][6] ),
        .\op_mem_20_24_reg[0][7] (\op_mem_20_24_reg[0][7] ),
        .\op_mem_20_24_reg[0][8] (\op_mem_20_24_reg[0][8] ),
        .\op_mem_20_24_reg[0][9] (\op_mem_20_24_reg[0][9] ),
        .register13_q_net(register13_q_net));
endmodule

(* ORIG_REF_NAME = "sysgen_delay_815930150c" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c
   (m_axis_dma_tdata,
    \op_mem_20_24_reg[0][31]_0 ,
    \op_mem_20_24_reg[0][31]_1 ,
    clk,
    \op_mem_20_24_reg[0][30]_0 ,
    \op_mem_20_24_reg[0][29]_0 ,
    \op_mem_20_24_reg[0][28]_0 ,
    \op_mem_20_24_reg[0][27]_0 ,
    \op_mem_20_24_reg[0][26]_0 ,
    \op_mem_20_24_reg[0][25]_0 ,
    \op_mem_20_24_reg[0][24]_0 ,
    \op_mem_20_24_reg[0][23]_0 ,
    \op_mem_20_24_reg[0][22]_0 ,
    \op_mem_20_24_reg[0][21]_0 ,
    \op_mem_20_24_reg[0][20]_0 ,
    \op_mem_20_24_reg[0][19]_0 ,
    \op_mem_20_24_reg[0][18]_0 ,
    \op_mem_20_24_reg[0][17]_0 ,
    \op_mem_20_24_reg[0][16]_0 ,
    \op_mem_20_24_reg[0][15]_0 ,
    \op_mem_20_24_reg[0][14]_0 ,
    \op_mem_20_24_reg[0][13]_0 ,
    \op_mem_20_24_reg[0][12]_0 ,
    \op_mem_20_24_reg[0][11]_0 ,
    \op_mem_20_24_reg[0][10]_0 ,
    \op_mem_20_24_reg[0][9]_0 ,
    \op_mem_20_24_reg[0][8]_0 ,
    \op_mem_20_24_reg[0][7]_0 ,
    \op_mem_20_24_reg[0][6]_0 ,
    \op_mem_20_24_reg[0][5]_0 ,
    \op_mem_20_24_reg[0][4]_0 ,
    \op_mem_20_24_reg[0][3]_0 ,
    \op_mem_20_24_reg[0][2]_0 ,
    \op_mem_20_24_reg[0][1]_0 ,
    \op_mem_20_24_reg[0][0]_0 );
  output [31:0]m_axis_dma_tdata;
  input \op_mem_20_24_reg[0][31]_0 ;
  input \op_mem_20_24_reg[0][31]_1 ;
  input clk;
  input \op_mem_20_24_reg[0][30]_0 ;
  input \op_mem_20_24_reg[0][29]_0 ;
  input \op_mem_20_24_reg[0][28]_0 ;
  input \op_mem_20_24_reg[0][27]_0 ;
  input \op_mem_20_24_reg[0][26]_0 ;
  input \op_mem_20_24_reg[0][25]_0 ;
  input \op_mem_20_24_reg[0][24]_0 ;
  input \op_mem_20_24_reg[0][23]_0 ;
  input \op_mem_20_24_reg[0][22]_0 ;
  input \op_mem_20_24_reg[0][21]_0 ;
  input \op_mem_20_24_reg[0][20]_0 ;
  input \op_mem_20_24_reg[0][19]_0 ;
  input \op_mem_20_24_reg[0][18]_0 ;
  input \op_mem_20_24_reg[0][17]_0 ;
  input \op_mem_20_24_reg[0][16]_0 ;
  input \op_mem_20_24_reg[0][15]_0 ;
  input \op_mem_20_24_reg[0][14]_0 ;
  input \op_mem_20_24_reg[0][13]_0 ;
  input \op_mem_20_24_reg[0][12]_0 ;
  input \op_mem_20_24_reg[0][11]_0 ;
  input \op_mem_20_24_reg[0][10]_0 ;
  input \op_mem_20_24_reg[0][9]_0 ;
  input \op_mem_20_24_reg[0][8]_0 ;
  input \op_mem_20_24_reg[0][7]_0 ;
  input \op_mem_20_24_reg[0][6]_0 ;
  input \op_mem_20_24_reg[0][5]_0 ;
  input \op_mem_20_24_reg[0][4]_0 ;
  input \op_mem_20_24_reg[0][3]_0 ;
  input \op_mem_20_24_reg[0][2]_0 ;
  input \op_mem_20_24_reg[0][1]_0 ;
  input \op_mem_20_24_reg[0][0]_0 ;

  wire clk;
  wire [31:0]m_axis_dma_tdata;
  wire \op_mem_20_24_reg[0][0]_0 ;
  wire \op_mem_20_24_reg[0][10]_0 ;
  wire \op_mem_20_24_reg[0][11]_0 ;
  wire \op_mem_20_24_reg[0][12]_0 ;
  wire \op_mem_20_24_reg[0][13]_0 ;
  wire \op_mem_20_24_reg[0][14]_0 ;
  wire \op_mem_20_24_reg[0][15]_0 ;
  wire \op_mem_20_24_reg[0][16]_0 ;
  wire \op_mem_20_24_reg[0][17]_0 ;
  wire \op_mem_20_24_reg[0][18]_0 ;
  wire \op_mem_20_24_reg[0][19]_0 ;
  wire \op_mem_20_24_reg[0][1]_0 ;
  wire \op_mem_20_24_reg[0][20]_0 ;
  wire \op_mem_20_24_reg[0][21]_0 ;
  wire \op_mem_20_24_reg[0][22]_0 ;
  wire \op_mem_20_24_reg[0][23]_0 ;
  wire \op_mem_20_24_reg[0][24]_0 ;
  wire \op_mem_20_24_reg[0][25]_0 ;
  wire \op_mem_20_24_reg[0][26]_0 ;
  wire \op_mem_20_24_reg[0][27]_0 ;
  wire \op_mem_20_24_reg[0][28]_0 ;
  wire \op_mem_20_24_reg[0][29]_0 ;
  wire \op_mem_20_24_reg[0][2]_0 ;
  wire \op_mem_20_24_reg[0][30]_0 ;
  wire \op_mem_20_24_reg[0][31]_0 ;
  wire \op_mem_20_24_reg[0][31]_1 ;
  wire \op_mem_20_24_reg[0][3]_0 ;
  wire \op_mem_20_24_reg[0][4]_0 ;
  wire \op_mem_20_24_reg[0][5]_0 ;
  wire \op_mem_20_24_reg[0][6]_0 ;
  wire \op_mem_20_24_reg[0][7]_0 ;
  wire \op_mem_20_24_reg[0][8]_0 ;
  wire \op_mem_20_24_reg[0][9]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][0]_0 ),
        .Q(m_axis_dma_tdata[0]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][10]_0 ),
        .Q(m_axis_dma_tdata[10]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][11]_0 ),
        .Q(m_axis_dma_tdata[11]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][12]_0 ),
        .Q(m_axis_dma_tdata[12]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][13]_0 ),
        .Q(m_axis_dma_tdata[13]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][14]_0 ),
        .Q(m_axis_dma_tdata[14]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][15]_0 ),
        .Q(m_axis_dma_tdata[15]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][16] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][16]_0 ),
        .Q(m_axis_dma_tdata[16]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][17] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][17]_0 ),
        .Q(m_axis_dma_tdata[17]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][18] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][18]_0 ),
        .Q(m_axis_dma_tdata[18]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][19] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][19]_0 ),
        .Q(m_axis_dma_tdata[19]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][1]_0 ),
        .Q(m_axis_dma_tdata[1]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][20] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][20]_0 ),
        .Q(m_axis_dma_tdata[20]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][21] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][21]_0 ),
        .Q(m_axis_dma_tdata[21]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][22] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][22]_0 ),
        .Q(m_axis_dma_tdata[22]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][23] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][23]_0 ),
        .Q(m_axis_dma_tdata[23]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][24] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][24]_0 ),
        .Q(m_axis_dma_tdata[24]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][25] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][25]_0 ),
        .Q(m_axis_dma_tdata[25]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][26] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][26]_0 ),
        .Q(m_axis_dma_tdata[26]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][27] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][27]_0 ),
        .Q(m_axis_dma_tdata[27]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][28] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][28]_0 ),
        .Q(m_axis_dma_tdata[28]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][29] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][29]_0 ),
        .Q(m_axis_dma_tdata[29]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][2]_0 ),
        .Q(m_axis_dma_tdata[2]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][30] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][30]_0 ),
        .Q(m_axis_dma_tdata[30]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][31] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][31]_1 ),
        .Q(m_axis_dma_tdata[31]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][3]_0 ),
        .Q(m_axis_dma_tdata[3]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][4]_0 ),
        .Q(m_axis_dma_tdata[4]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][5]_0 ),
        .Q(m_axis_dma_tdata[5]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][6]_0 ),
        .Q(m_axis_dma_tdata[6]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][7]_0 ),
        .Q(m_axis_dma_tdata[7]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][8]_0 ),
        .Q(m_axis_dma_tdata[8]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][9]_0 ),
        .Q(m_axis_dma_tdata[9]),
        .R(\op_mem_20_24_reg[0][31]_0 ));
endmodule

(* ORIG_REF_NAME = "sysgen_delay_f009745253" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253
   (m_axis_dma_tvalid,
    mcode_tvalid_net,
    clk);
  output [0:0]m_axis_dma_tvalid;
  input mcode_tvalid_net;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tvalid;
  wire mcode_tvalid_net;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(mcode_tvalid_net),
        .Q(m_axis_dma_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sysgen_delay_f009745253" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0
   (m_axis_dma_tlast,
    \op_mem_20_24_reg[0][0]_0 ,
    clk);
  output [0:0]m_axis_dma_tlast;
  input \op_mem_20_24_reg[0][0]_0 ;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tlast;
  wire \op_mem_20_24_reg[0][0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\op_mem_20_24_reg[0][0]_0 ),
        .Q(m_axis_dma_tlast),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sysgen_delay_f009745253" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1
   (m_axis_dma_tkeep,
    register13_q_net,
    tready_join_68_5,
    clk);
  output [0:0]m_axis_dma_tkeep;
  input register13_q_net;
  input tready_join_68_5;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tkeep;
  wire register13_q_net;
  wire tready_join_68_5;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_20_24_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(tready_join_68_5),
        .Q(m_axis_dma_tkeep),
        .R(register13_q_net));
endmodule

(* ORIG_REF_NAME = "sysgen_inverter_2f95a066e3" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3
   (inverter_op_net,
    internal_ip_12_1_bitnot,
    clk);
  output inverter_op_net;
  input internal_ip_12_1_bitnot;
  input clk;

  wire clk;
  wire internal_ip_12_1_bitnot;
  wire inverter_op_net;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_22_20_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(internal_ip_12_1_bitnot),
        .Q(inverter_op_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sysgen_mcode_block_792d208b0f" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f
   (muxing_run_14_24_reg_0,
    tready_join_68_5,
    decim_count_11_25,
    CO,
    O,
    \frame_count_12_25_reg[0]_0 ,
    \fd_prim_array[0].rst_comp.fdre_comp ,
    data_sel_store_16_28,
    muxing_run_14_24_reg_1,
    \fd_prim_array[0].rst_comp.fdre_comp_0 ,
    mcode_tvalid_net,
    \data_vec_store_6_15_28_reg[0]_0 ,
    Q,
    \data_vec_store_6_15_28_reg[1]_0 ,
    \data_vec_store_6_15_28_reg[2]_0 ,
    \data_vec_store_6_15_28_reg[3]_0 ,
    \data_vec_store_6_15_28_reg[4]_0 ,
    \data_vec_store_6_15_28_reg[5]_0 ,
    \data_vec_store_6_15_28_reg[6]_0 ,
    \data_vec_store_6_15_28_reg[7]_0 ,
    \data_vec_store_6_15_28_reg[8]_0 ,
    \data_vec_store_6_15_28_reg[9]_0 ,
    \data_vec_store_6_15_28_reg[10]_0 ,
    \data_vec_store_6_15_28_reg[11]_0 ,
    \data_vec_store_6_15_28_reg[12]_0 ,
    \data_vec_store_6_15_28_reg[13]_0 ,
    \data_vec_store_6_15_28_reg[14]_0 ,
    \data_vec_store_6_15_28_reg[15]_0 ,
    \data_vec_store_6_15_28_reg[16]_0 ,
    \data_vec_store_6_15_28_reg[17]_0 ,
    \data_vec_store_6_15_28_reg[18]_0 ,
    \data_vec_store_6_15_28_reg[19]_0 ,
    \data_vec_store_6_15_28_reg[20]_0 ,
    \data_vec_store_6_15_28_reg[21]_0 ,
    \data_vec_store_6_15_28_reg[22]_0 ,
    \data_vec_store_6_15_28_reg[23]_0 ,
    \data_vec_store_6_15_28_reg[24]_0 ,
    \data_vec_store_6_15_28_reg[25]_0 ,
    \data_vec_store_6_15_28_reg[26]_0 ,
    \data_vec_store_6_15_28_reg[27]_0 ,
    \data_vec_store_6_15_28_reg[28]_0 ,
    \data_vec_store_6_15_28_reg[29]_0 ,
    \data_vec_store_6_15_28_reg[30]_0 ,
    \data_vec_store_6_15_28_reg[31]_0 ,
    \data_vec_store_1_15_28_reg[31]_0 ,
    \data_vec_store_2_15_28_reg[31]_0 ,
    \data_vec_store_3_15_28_reg[31]_0 ,
    \data_vec_store_4_15_28_reg[31]_0 ,
    \data_vec_store_5_15_28_reg[31]_0 ,
    \data_vec_store_7_15_28_reg[31]_0 ,
    register13_q_net,
    muxing_run_join_99_9,
    clk,
    register14_q_net,
    S,
    last_frame_flag_17_29_reg_0,
    rel_85_16_carry__0_0,
    last_frame_flag_17_29_reg_1,
    inverter_op_net,
    mux2_y_net,
    o,
    \data_sel_store_16_28_reg[2]_0 ,
    \data_sel_store_16_28_reg[6]_0 ,
    \data_sel_store_16_28_reg[3]_0 ,
    \data_sel_store_16_28_reg[4]_0 ,
    \data_sel_store_16_28_reg[5]_0 ,
    \op_mem_20_24_reg[0][31] ,
    rel_85_16_carry__1_0,
    \decim_count_11_25_reg[0]_0 ,
    \data_sel_store_16_28_reg[7]_0 ,
    D,
    \data_vec_store_2_15_28_reg[31]_1 ,
    \data_vec_store_3_15_28_reg[31]_1 ,
    \data_vec_store_4_15_28_reg[31]_1 ,
    \data_vec_store_5_15_28_reg[31]_1 ,
    \data_vec_store_6_15_28_reg[31]_1 ,
    \data_vec_store_7_15_28_reg[31]_1 );
  output muxing_run_14_24_reg_0;
  output tready_join_68_5;
  output [15:0]decim_count_11_25;
  output [0:0]CO;
  output [1:0]O;
  output [0:0]\frame_count_12_25_reg[0]_0 ;
  output \fd_prim_array[0].rst_comp.fdre_comp ;
  output [6:0]data_sel_store_16_28;
  output muxing_run_14_24_reg_1;
  output \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output mcode_tvalid_net;
  output \data_vec_store_6_15_28_reg[0]_0 ;
  output [31:0]Q;
  output \data_vec_store_6_15_28_reg[1]_0 ;
  output \data_vec_store_6_15_28_reg[2]_0 ;
  output \data_vec_store_6_15_28_reg[3]_0 ;
  output \data_vec_store_6_15_28_reg[4]_0 ;
  output \data_vec_store_6_15_28_reg[5]_0 ;
  output \data_vec_store_6_15_28_reg[6]_0 ;
  output \data_vec_store_6_15_28_reg[7]_0 ;
  output \data_vec_store_6_15_28_reg[8]_0 ;
  output \data_vec_store_6_15_28_reg[9]_0 ;
  output \data_vec_store_6_15_28_reg[10]_0 ;
  output \data_vec_store_6_15_28_reg[11]_0 ;
  output \data_vec_store_6_15_28_reg[12]_0 ;
  output \data_vec_store_6_15_28_reg[13]_0 ;
  output \data_vec_store_6_15_28_reg[14]_0 ;
  output \data_vec_store_6_15_28_reg[15]_0 ;
  output \data_vec_store_6_15_28_reg[16]_0 ;
  output \data_vec_store_6_15_28_reg[17]_0 ;
  output \data_vec_store_6_15_28_reg[18]_0 ;
  output \data_vec_store_6_15_28_reg[19]_0 ;
  output \data_vec_store_6_15_28_reg[20]_0 ;
  output \data_vec_store_6_15_28_reg[21]_0 ;
  output \data_vec_store_6_15_28_reg[22]_0 ;
  output \data_vec_store_6_15_28_reg[23]_0 ;
  output \data_vec_store_6_15_28_reg[24]_0 ;
  output \data_vec_store_6_15_28_reg[25]_0 ;
  output \data_vec_store_6_15_28_reg[26]_0 ;
  output \data_vec_store_6_15_28_reg[27]_0 ;
  output \data_vec_store_6_15_28_reg[28]_0 ;
  output \data_vec_store_6_15_28_reg[29]_0 ;
  output \data_vec_store_6_15_28_reg[30]_0 ;
  output \data_vec_store_6_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_1_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_2_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_3_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_4_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_5_15_28_reg[31]_0 ;
  output [31:0]\data_vec_store_7_15_28_reg[31]_0 ;
  input register13_q_net;
  input muxing_run_join_99_9;
  input clk;
  input register14_q_net;
  input [3:0]S;
  input [1:0]last_frame_flag_17_29_reg_0;
  input [0:0]rel_85_16_carry__0_0;
  input last_frame_flag_17_29_reg_1;
  input inverter_op_net;
  input mux2_y_net;
  input [4:0]o;
  input \data_sel_store_16_28_reg[2]_0 ;
  input \data_sel_store_16_28_reg[6]_0 ;
  input \data_sel_store_16_28_reg[3]_0 ;
  input \data_sel_store_16_28_reg[4]_0 ;
  input \data_sel_store_16_28_reg[5]_0 ;
  input [31:0]\op_mem_20_24_reg[0][31] ;
  input [28:0]rel_85_16_carry__1_0;
  input \decim_count_11_25_reg[0]_0 ;
  input \data_sel_store_16_28_reg[7]_0 ;
  input [31:0]D;
  input [31:0]\data_vec_store_2_15_28_reg[31]_1 ;
  input [31:0]\data_vec_store_3_15_28_reg[31]_1 ;
  input [31:0]\data_vec_store_4_15_28_reg[31]_1 ;
  input [31:0]\data_vec_store_5_15_28_reg[31]_1 ;
  input [31:0]\data_vec_store_6_15_28_reg[31]_1 ;
  input [31:0]\data_vec_store_7_15_28_reg[31]_1 ;

  wire [0:0]CO;
  wire [31:0]D;
  wire [1:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire clk;
  wire [6:0]data_sel_store_16_28;
  wire \data_sel_store_16_28[1]_i_1_n_0 ;
  wire \data_sel_store_16_28[2]_i_1_n_0 ;
  wire \data_sel_store_16_28[3]_i_1_n_0 ;
  wire \data_sel_store_16_28[4]_i_1_n_0 ;
  wire \data_sel_store_16_28[5]_i_1_n_0 ;
  wire \data_sel_store_16_28[6]_i_1_n_0 ;
  wire \data_sel_store_16_28_reg[2]_0 ;
  wire \data_sel_store_16_28_reg[3]_0 ;
  wire \data_sel_store_16_28_reg[4]_0 ;
  wire \data_sel_store_16_28_reg[5]_0 ;
  wire \data_sel_store_16_28_reg[6]_0 ;
  wire \data_sel_store_16_28_reg[7]_0 ;
  wire [31:0]\data_vec_store_1_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_2_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_2_15_28_reg[31]_1 ;
  wire [31:0]\data_vec_store_3_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_3_15_28_reg[31]_1 ;
  wire [31:0]\data_vec_store_4_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_4_15_28_reg[31]_1 ;
  wire [31:0]\data_vec_store_5_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_5_15_28_reg[31]_1 ;
  wire \data_vec_store_6_15_28_reg[0]_0 ;
  wire \data_vec_store_6_15_28_reg[10]_0 ;
  wire \data_vec_store_6_15_28_reg[11]_0 ;
  wire \data_vec_store_6_15_28_reg[12]_0 ;
  wire \data_vec_store_6_15_28_reg[13]_0 ;
  wire \data_vec_store_6_15_28_reg[14]_0 ;
  wire \data_vec_store_6_15_28_reg[15]_0 ;
  wire \data_vec_store_6_15_28_reg[16]_0 ;
  wire \data_vec_store_6_15_28_reg[17]_0 ;
  wire \data_vec_store_6_15_28_reg[18]_0 ;
  wire \data_vec_store_6_15_28_reg[19]_0 ;
  wire \data_vec_store_6_15_28_reg[1]_0 ;
  wire \data_vec_store_6_15_28_reg[20]_0 ;
  wire \data_vec_store_6_15_28_reg[21]_0 ;
  wire \data_vec_store_6_15_28_reg[22]_0 ;
  wire \data_vec_store_6_15_28_reg[23]_0 ;
  wire \data_vec_store_6_15_28_reg[24]_0 ;
  wire \data_vec_store_6_15_28_reg[25]_0 ;
  wire \data_vec_store_6_15_28_reg[26]_0 ;
  wire \data_vec_store_6_15_28_reg[27]_0 ;
  wire \data_vec_store_6_15_28_reg[28]_0 ;
  wire \data_vec_store_6_15_28_reg[29]_0 ;
  wire \data_vec_store_6_15_28_reg[2]_0 ;
  wire \data_vec_store_6_15_28_reg[30]_0 ;
  wire \data_vec_store_6_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_6_15_28_reg[31]_1 ;
  wire \data_vec_store_6_15_28_reg[3]_0 ;
  wire \data_vec_store_6_15_28_reg[4]_0 ;
  wire \data_vec_store_6_15_28_reg[5]_0 ;
  wire \data_vec_store_6_15_28_reg[6]_0 ;
  wire \data_vec_store_6_15_28_reg[7]_0 ;
  wire \data_vec_store_6_15_28_reg[8]_0 ;
  wire \data_vec_store_6_15_28_reg[9]_0 ;
  wire [31:0]\data_vec_store_7_15_28_reg[31]_0 ;
  wire [31:0]\data_vec_store_7_15_28_reg[31]_1 ;
  wire [15:0]decim_count_11_25;
  wire \decim_count_11_25[10]_i_1_n_0 ;
  wire \decim_count_11_25[11]_i_1_n_0 ;
  wire \decim_count_11_25[12]_i_1_n_0 ;
  wire \decim_count_11_25[13]_i_1_n_0 ;
  wire \decim_count_11_25[14]_i_1_n_0 ;
  wire \decim_count_11_25[15]_i_1_n_0 ;
  wire \decim_count_11_25[1]_i_1_n_0 ;
  wire \decim_count_11_25[2]_i_1_n_0 ;
  wire \decim_count_11_25[3]_i_1_n_0 ;
  wire \decim_count_11_25[4]_i_1_n_0 ;
  wire \decim_count_11_25[5]_i_1_n_0 ;
  wire \decim_count_11_25[6]_i_1_n_0 ;
  wire \decim_count_11_25[7]_i_1_n_0 ;
  wire \decim_count_11_25[8]_i_1_n_0 ;
  wire \decim_count_11_25[9]_i_1_n_0 ;
  wire \decim_count_11_25_reg[0]_0 ;
  wire [15:1]decim_count_96_13_addsub;
  wire decim_count_96_13_addsub_carry__0_n_0;
  wire decim_count_96_13_addsub_carry__0_n_1;
  wire decim_count_96_13_addsub_carry__0_n_2;
  wire decim_count_96_13_addsub_carry__0_n_3;
  wire decim_count_96_13_addsub_carry__1_n_0;
  wire decim_count_96_13_addsub_carry__1_n_1;
  wire decim_count_96_13_addsub_carry__1_n_2;
  wire decim_count_96_13_addsub_carry__1_n_3;
  wire decim_count_96_13_addsub_carry__2_n_2;
  wire decim_count_96_13_addsub_carry__2_n_3;
  wire decim_count_96_13_addsub_carry_n_0;
  wire decim_count_96_13_addsub_carry_n_1;
  wire decim_count_96_13_addsub_carry_n_2;
  wire decim_count_96_13_addsub_carry_n_3;
  wire delayed_ready_0_23_27;
  wire delayed_ready_1_23_27;
  wire delayed_ready_2_23_27;
  wire delayed_ready_3_23_27;
  wire \fd_prim_array[0].rst_comp.fdre_comp ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire [31:1]frame_count_12_25;
  wire \frame_count_12_25[10]_i_1_n_0 ;
  wire \frame_count_12_25[11]_i_1_n_0 ;
  wire \frame_count_12_25[12]_i_1_n_0 ;
  wire \frame_count_12_25[13]_i_1_n_0 ;
  wire \frame_count_12_25[14]_i_1_n_0 ;
  wire \frame_count_12_25[15]_i_1_n_0 ;
  wire \frame_count_12_25[16]_i_1_n_0 ;
  wire \frame_count_12_25[17]_i_1_n_0 ;
  wire \frame_count_12_25[18]_i_1_n_0 ;
  wire \frame_count_12_25[19]_i_1_n_0 ;
  wire \frame_count_12_25[1]_i_1_n_0 ;
  wire \frame_count_12_25[20]_i_1_n_0 ;
  wire \frame_count_12_25[21]_i_1_n_0 ;
  wire \frame_count_12_25[22]_i_1_n_0 ;
  wire \frame_count_12_25[23]_i_1_n_0 ;
  wire \frame_count_12_25[24]_i_1_n_0 ;
  wire \frame_count_12_25[25]_i_1_n_0 ;
  wire \frame_count_12_25[26]_i_1_n_0 ;
  wire \frame_count_12_25[27]_i_1_n_0 ;
  wire \frame_count_12_25[28]_i_1_n_0 ;
  wire \frame_count_12_25[29]_i_1_n_0 ;
  wire \frame_count_12_25[2]_i_1_n_0 ;
  wire \frame_count_12_25[30]_i_1_n_0 ;
  wire \frame_count_12_25[30]_i_2_n_0 ;
  wire \frame_count_12_25[31]_i_1_n_0 ;
  wire \frame_count_12_25[3]_i_1_n_0 ;
  wire \frame_count_12_25[4]_i_1_n_0 ;
  wire \frame_count_12_25[5]_i_1_n_0 ;
  wire \frame_count_12_25[6]_i_1_n_0 ;
  wire \frame_count_12_25[7]_i_1_n_0 ;
  wire \frame_count_12_25[8]_i_1_n_0 ;
  wire \frame_count_12_25[9]_i_1_n_0 ;
  wire [0:0]\frame_count_12_25_reg[0]_0 ;
  wire [32:3]frame_count_73_13_addsub;
  wire frame_count_73_13_addsub_carry__0_n_0;
  wire frame_count_73_13_addsub_carry__0_n_1;
  wire frame_count_73_13_addsub_carry__0_n_2;
  wire frame_count_73_13_addsub_carry__0_n_3;
  wire frame_count_73_13_addsub_carry__1_n_0;
  wire frame_count_73_13_addsub_carry__1_n_1;
  wire frame_count_73_13_addsub_carry__1_n_2;
  wire frame_count_73_13_addsub_carry__1_n_3;
  wire frame_count_73_13_addsub_carry__2_n_0;
  wire frame_count_73_13_addsub_carry__2_n_1;
  wire frame_count_73_13_addsub_carry__2_n_2;
  wire frame_count_73_13_addsub_carry__2_n_3;
  wire frame_count_73_13_addsub_carry__3_n_0;
  wire frame_count_73_13_addsub_carry__3_n_1;
  wire frame_count_73_13_addsub_carry__3_n_2;
  wire frame_count_73_13_addsub_carry__3_n_3;
  wire frame_count_73_13_addsub_carry__4_n_0;
  wire frame_count_73_13_addsub_carry__4_n_1;
  wire frame_count_73_13_addsub_carry__4_n_2;
  wire frame_count_73_13_addsub_carry__4_n_3;
  wire frame_count_73_13_addsub_carry__5_n_0;
  wire frame_count_73_13_addsub_carry__5_n_1;
  wire frame_count_73_13_addsub_carry__5_n_2;
  wire frame_count_73_13_addsub_carry__5_n_3;
  wire frame_count_73_13_addsub_carry__6_n_2;
  wire frame_count_73_13_addsub_carry__6_n_3;
  wire frame_count_73_13_addsub_carry_n_0;
  wire frame_count_73_13_addsub_carry_n_1;
  wire frame_count_73_13_addsub_carry_n_2;
  wire frame_count_73_13_addsub_carry_n_3;
  wire inverter_op_net;
  wire last_frame_flag_17_29;
  wire last_frame_flag_17_29_i_1_n_0;
  wire [1:0]last_frame_flag_17_29_reg_0;
  wire last_frame_flag_17_29_reg_1;
  wire mcode_tvalid_net;
  wire mux2_y_net;
  wire muxing_run_14_24_reg_0;
  wire muxing_run_14_24_reg_1;
  wire muxing_run_join_99_9;
  wire [4:0]o;
  wire \op_mem_20_24[0][0]_i_2_n_0 ;
  wire \op_mem_20_24[0][0]_i_3_n_0 ;
  wire [31:0]\op_mem_20_24_reg[0][31] ;
  wire [0:0]p_0_in;
  wire register13_q_net;
  wire register14_q_net;
  wire rel_72_12_carry__0_n_3;
  wire rel_72_12_carry_n_0;
  wire rel_72_12_carry_n_1;
  wire rel_72_12_carry_n_2;
  wire rel_72_12_carry_n_3;
  wire rel_85_16;
  wire [0:0]rel_85_16_carry__0_0;
  wire rel_85_16_carry__0_i_1_n_0;
  wire rel_85_16_carry__0_i_2_n_0;
  wire rel_85_16_carry__0_i_3_n_0;
  wire rel_85_16_carry__0_i_4_n_0;
  wire rel_85_16_carry__0_n_0;
  wire rel_85_16_carry__0_n_1;
  wire rel_85_16_carry__0_n_2;
  wire rel_85_16_carry__0_n_3;
  wire [28:0]rel_85_16_carry__1_0;
  wire rel_85_16_carry__1_i_1_n_0;
  wire rel_85_16_carry__1_i_2_n_0;
  wire rel_85_16_carry__1_i_3_n_0;
  wire rel_85_16_carry__1_n_2;
  wire rel_85_16_carry__1_n_3;
  wire rel_85_16_carry_i_1_n_0;
  wire rel_85_16_carry_i_2_n_0;
  wire rel_85_16_carry_i_3_n_0;
  wire rel_85_16_carry_n_0;
  wire rel_85_16_carry_n_1;
  wire rel_85_16_carry_n_2;
  wire rel_85_16_carry_n_3;
  wire tready_join_68_5;
  wire triggered_10_23;
  wire triggered_10_23_i_2_n_0;
  wire triggered_join_68_5;
  wire [3:2]NLW_decim_count_96_13_addsub_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_decim_count_96_13_addsub_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_frame_count_73_13_addsub_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_frame_count_73_13_addsub_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_rel_72_12_carry_O_UNCONNECTED;
  wire [3:2]NLW_rel_72_12_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rel_72_12_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rel_85_16_carry_O_UNCONNECTED;
  wire [3:0]NLW_rel_85_16_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_rel_85_16_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_rel_85_16_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8F0F8FFF80008000)) 
    \data_sel_store_16_28[1]_i_1 
       (.I0(o[1]),
        .I1(o[0]),
        .I2(tready_join_68_5),
        .I3(CO),
        .I4(muxing_run_14_24_reg_0),
        .I5(data_sel_store_16_28[0]),
        .O(\data_sel_store_16_28[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F3F2FFF20002000)) 
    \data_sel_store_16_28[2]_i_1 
       (.I0(o[2]),
        .I1(\data_sel_store_16_28_reg[2]_0 ),
        .I2(tready_join_68_5),
        .I3(CO),
        .I4(muxing_run_14_24_reg_0),
        .I5(data_sel_store_16_28[1]),
        .O(\data_sel_store_16_28[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEAA000002AA)) 
    \data_sel_store_16_28[3]_i_1 
       (.I0(data_sel_store_16_28[2]),
        .I1(muxing_run_14_24_reg_0),
        .I2(CO),
        .I3(tready_join_68_5),
        .I4(register13_q_net),
        .I5(\data_sel_store_16_28_reg[3]_0 ),
        .O(\data_sel_store_16_28[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEAA000002AA)) 
    \data_sel_store_16_28[4]_i_1 
       (.I0(data_sel_store_16_28[3]),
        .I1(muxing_run_14_24_reg_0),
        .I2(CO),
        .I3(tready_join_68_5),
        .I4(register13_q_net),
        .I5(\data_sel_store_16_28_reg[4]_0 ),
        .O(\data_sel_store_16_28[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101032301030)) 
    \data_sel_store_16_28[5]_i_1 
       (.I0(muxing_run_14_24_reg_1),
        .I1(register13_q_net),
        .I2(data_sel_store_16_28[4]),
        .I3(CO),
        .I4(o[3]),
        .I5(\data_sel_store_16_28_reg[5]_0 ),
        .O(\data_sel_store_16_28[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FCF8FFF80008000)) 
    \data_sel_store_16_28[6]_i_1 
       (.I0(o[4]),
        .I1(\data_sel_store_16_28_reg[6]_0 ),
        .I2(tready_join_68_5),
        .I3(CO),
        .I4(muxing_run_14_24_reg_0),
        .I5(data_sel_store_16_28[5]),
        .O(\data_sel_store_16_28[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \data_sel_store_16_28[7]_i_2 
       (.I0(tready_join_68_5),
        .I1(CO),
        .I2(muxing_run_14_24_reg_0),
        .O(muxing_run_14_24_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[1]_i_1_n_0 ),
        .Q(data_sel_store_16_28[0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[2]_i_1_n_0 ),
        .Q(data_sel_store_16_28[1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[3]_i_1_n_0 ),
        .Q(data_sel_store_16_28[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[4]_i_1_n_0 ),
        .Q(data_sel_store_16_28[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[5]_i_1_n_0 ),
        .Q(data_sel_store_16_28[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28[6]_i_1_n_0 ),
        .Q(data_sel_store_16_28[5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_sel_store_16_28_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sel_store_16_28_reg[7]_0 ),
        .Q(data_sel_store_16_28[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[0]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[10]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[11]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[12]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[13]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[14]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[15]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[16]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[17]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[18]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[19]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[1]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[20]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[21]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[22]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[23]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[24]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[25]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[26]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[27]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[28]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[29]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[2]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[30]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[31]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[3]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[4]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[5]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[6]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[7]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[8]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_1_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(D[9]),
        .Q(\data_vec_store_1_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [0]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [10]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [11]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [12]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [13]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [14]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [15]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [16]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [17]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [18]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [19]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [1]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [20]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [21]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [22]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [23]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [24]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [25]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [26]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [27]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [28]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [29]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [2]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [30]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [31]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [3]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [4]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [5]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [6]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [7]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [8]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_2_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_2_15_28_reg[31]_1 [9]),
        .Q(\data_vec_store_2_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [0]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [10]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [11]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [12]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [13]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [14]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [15]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [16]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [17]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [18]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [19]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [1]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [20]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [21]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [22]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [23]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [24]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [25]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [26]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [27]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [28]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [29]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [2]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [30]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [31]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [3]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [4]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [5]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [6]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [7]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [8]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_3_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_3_15_28_reg[31]_1 [9]),
        .Q(\data_vec_store_3_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [0]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [10]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [11]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [12]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [13]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [14]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [15]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [16]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [17]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [18]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [19]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [1]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [20]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [21]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [22]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [23]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [24]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [25]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [26]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [27]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [28]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [29]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [2]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [30]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [31]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [3]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [4]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [5]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [6]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [7]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [8]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_4_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_4_15_28_reg[31]_1 [9]),
        .Q(\data_vec_store_4_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [0]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [10]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [11]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [12]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [13]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [14]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [15]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [16]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [17]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [18]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [19]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [1]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [20]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [21]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [22]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [23]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [24]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [25]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [26]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [27]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [28]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [29]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [2]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [30]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [31]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [3]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [4]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [5]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [6]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [7]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [8]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_5_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_5_15_28_reg[31]_1 [9]),
        .Q(\data_vec_store_5_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [0]),
        .Q(Q[0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [10]),
        .Q(Q[10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [11]),
        .Q(Q[11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [12]),
        .Q(Q[12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [13]),
        .Q(Q[13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [14]),
        .Q(Q[14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [15]),
        .Q(Q[15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [16]),
        .Q(Q[16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [17]),
        .Q(Q[17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [18]),
        .Q(Q[18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [19]),
        .Q(Q[19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [1]),
        .Q(Q[1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [20]),
        .Q(Q[20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [21]),
        .Q(Q[21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [22]),
        .Q(Q[22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [23]),
        .Q(Q[23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [24]),
        .Q(Q[24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [25]),
        .Q(Q[25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [26]),
        .Q(Q[26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [27]),
        .Q(Q[27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [28]),
        .Q(Q[28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [29]),
        .Q(Q[29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [2]),
        .Q(Q[2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [30]),
        .Q(Q[30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [31]),
        .Q(Q[31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [3]),
        .Q(Q[3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [4]),
        .Q(Q[4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [5]),
        .Q(Q[5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [6]),
        .Q(Q[6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [7]),
        .Q(Q[7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [8]),
        .Q(Q[8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_6_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_6_15_28_reg[31]_1 [9]),
        .Q(Q[9]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [0]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [10]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[11] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [11]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [12]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [13]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[14] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [14]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [15]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[16] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [16]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[17] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [17]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[18] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [18]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[19] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [19]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [1]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[20] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [20]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[21] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [21]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[22] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [22]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[23] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [23]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[24] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [24]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[25] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [25]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[26] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [26]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[27] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [27]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[28] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [28]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[29] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [29]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[2] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [2]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[30] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [30]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[31] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [31]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [3]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [4]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[5] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [5]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [6]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [7]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[8] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [8]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \data_vec_store_7_15_28_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\data_vec_store_7_15_28_reg[31]_1 [9]),
        .Q(\data_vec_store_7_15_28_reg[31]_0 [9]),
        .R(register13_q_net));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[10]_i_1 
       (.I0(decim_count_96_13_addsub[10]),
        .I1(CO),
        .O(\decim_count_11_25[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \decim_count_11_25[11]_i_1 
       (.I0(decim_count_11_25[11]),
        .I1(tready_join_68_5),
        .I2(decim_count_96_13_addsub[11]),
        .I3(CO),
        .O(\decim_count_11_25[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[12]_i_1 
       (.I0(decim_count_96_13_addsub[12]),
        .I1(CO),
        .O(\decim_count_11_25[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[13]_i_1 
       (.I0(decim_count_96_13_addsub[13]),
        .I1(CO),
        .O(\decim_count_11_25[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \decim_count_11_25[14]_i_1 
       (.I0(decim_count_11_25[14]),
        .I1(tready_join_68_5),
        .I2(decim_count_96_13_addsub[14]),
        .I3(CO),
        .O(\decim_count_11_25[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[15]_i_1 
       (.I0(decim_count_96_13_addsub[15]),
        .I1(CO),
        .O(\decim_count_11_25[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[1]_i_1 
       (.I0(decim_count_96_13_addsub[1]),
        .I1(CO),
        .O(\decim_count_11_25[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \decim_count_11_25[2]_i_1 
       (.I0(decim_count_11_25[2]),
        .I1(tready_join_68_5),
        .I2(decim_count_96_13_addsub[2]),
        .I3(CO),
        .O(\decim_count_11_25[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[3]_i_1 
       (.I0(decim_count_96_13_addsub[3]),
        .I1(CO),
        .O(\decim_count_11_25[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[4]_i_1 
       (.I0(decim_count_96_13_addsub[4]),
        .I1(CO),
        .O(\decim_count_11_25[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \decim_count_11_25[5]_i_1 
       (.I0(decim_count_11_25[5]),
        .I1(tready_join_68_5),
        .I2(decim_count_96_13_addsub[5]),
        .I3(CO),
        .O(\decim_count_11_25[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[6]_i_1 
       (.I0(decim_count_96_13_addsub[6]),
        .I1(CO),
        .O(\decim_count_11_25[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[7]_i_1 
       (.I0(decim_count_96_13_addsub[7]),
        .I1(CO),
        .O(\decim_count_11_25[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \decim_count_11_25[8]_i_1 
       (.I0(decim_count_11_25[8]),
        .I1(tready_join_68_5),
        .I2(decim_count_96_13_addsub[8]),
        .I3(CO),
        .O(\decim_count_11_25[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decim_count_11_25[9]_i_1 
       (.I0(decim_count_96_13_addsub[9]),
        .I1(CO),
        .O(\decim_count_11_25[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[0] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25_reg[0]_0 ),
        .Q(decim_count_11_25[0]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[10] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[10]_i_1_n_0 ),
        .Q(decim_count_11_25[10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\decim_count_11_25[11]_i_1_n_0 ),
        .Q(decim_count_11_25[11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[12] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[12]_i_1_n_0 ),
        .Q(decim_count_11_25[12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[13] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[13]_i_1_n_0 ),
        .Q(decim_count_11_25[13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\decim_count_11_25[14]_i_1_n_0 ),
        .Q(decim_count_11_25[14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[15] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[15]_i_1_n_0 ),
        .Q(decim_count_11_25[15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[1] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[1]_i_1_n_0 ),
        .Q(decim_count_11_25[1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\decim_count_11_25[2]_i_1_n_0 ),
        .Q(decim_count_11_25[2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[3] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[3]_i_1_n_0 ),
        .Q(decim_count_11_25[3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[4] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[4]_i_1_n_0 ),
        .Q(decim_count_11_25[4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\decim_count_11_25[5]_i_1_n_0 ),
        .Q(decim_count_11_25[5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[6] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[6]_i_1_n_0 ),
        .Q(decim_count_11_25[6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[7] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[7]_i_1_n_0 ),
        .Q(decim_count_11_25[7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\decim_count_11_25[8]_i_1_n_0 ),
        .Q(decim_count_11_25[8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \decim_count_11_25_reg[9] 
       (.C(clk),
        .CE(tready_join_68_5),
        .D(\decim_count_11_25[9]_i_1_n_0 ),
        .Q(decim_count_11_25[9]),
        .R(register13_q_net));
  CARRY4 decim_count_96_13_addsub_carry
       (.CI(1'b0),
        .CO({decim_count_96_13_addsub_carry_n_0,decim_count_96_13_addsub_carry_n_1,decim_count_96_13_addsub_carry_n_2,decim_count_96_13_addsub_carry_n_3}),
        .CYINIT(decim_count_11_25[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(decim_count_96_13_addsub[4:1]),
        .S(decim_count_11_25[4:1]));
  CARRY4 decim_count_96_13_addsub_carry__0
       (.CI(decim_count_96_13_addsub_carry_n_0),
        .CO({decim_count_96_13_addsub_carry__0_n_0,decim_count_96_13_addsub_carry__0_n_1,decim_count_96_13_addsub_carry__0_n_2,decim_count_96_13_addsub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(decim_count_96_13_addsub[8:5]),
        .S(decim_count_11_25[8:5]));
  CARRY4 decim_count_96_13_addsub_carry__1
       (.CI(decim_count_96_13_addsub_carry__0_n_0),
        .CO({decim_count_96_13_addsub_carry__1_n_0,decim_count_96_13_addsub_carry__1_n_1,decim_count_96_13_addsub_carry__1_n_2,decim_count_96_13_addsub_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(decim_count_96_13_addsub[12:9]),
        .S(decim_count_11_25[12:9]));
  CARRY4 decim_count_96_13_addsub_carry__2
       (.CI(decim_count_96_13_addsub_carry__1_n_0),
        .CO({NLW_decim_count_96_13_addsub_carry__2_CO_UNCONNECTED[3:2],decim_count_96_13_addsub_carry__2_n_2,decim_count_96_13_addsub_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_decim_count_96_13_addsub_carry__2_O_UNCONNECTED[3],decim_count_96_13_addsub[15:13]}),
        .S({1'b0,decim_count_11_25[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    delayed_ready_0_23_27_reg
       (.C(clk),
        .CE(1'b1),
        .D(register14_q_net),
        .Q(delayed_ready_0_23_27),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    delayed_ready_1_23_27_reg
       (.C(clk),
        .CE(1'b1),
        .D(delayed_ready_0_23_27),
        .Q(delayed_ready_1_23_27),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    delayed_ready_2_23_27_reg
       (.C(clk),
        .CE(1'b1),
        .D(delayed_ready_1_23_27),
        .Q(delayed_ready_2_23_27),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    delayed_ready_3_23_27_reg
       (.C(clk),
        .CE(1'b1),
        .D(delayed_ready_2_23_27),
        .Q(delayed_ready_3_23_27),
        .R(register13_q_net));
  LUT5 #(
    .INIT(32'h01303030)) 
    \frame_count_12_25[0]_i_1 
       (.I0(rel_85_16),
        .I1(register13_q_net),
        .I2(\frame_count_12_25_reg[0]_0 ),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[10]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[10]),
        .I2(frame_count_12_25[10]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[11]_i_1 
       (.I0(frame_count_73_13_addsub[11]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[12]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[12]),
        .I2(frame_count_12_25[12]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[13]_i_1 
       (.I0(frame_count_73_13_addsub[13]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[14]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[14]),
        .I2(frame_count_12_25[14]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[15]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[15]),
        .I2(frame_count_12_25[15]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[16]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[16]),
        .I2(frame_count_12_25[16]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[17]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[17]),
        .I2(frame_count_12_25[17]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[18]_i_1 
       (.I0(frame_count_73_13_addsub[18]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[19]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[19]),
        .I2(frame_count_12_25[19]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[1]_i_1 
       (.I0(rel_85_16),
        .I1(O[0]),
        .I2(frame_count_12_25[1]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[20]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[20]),
        .I2(frame_count_12_25[20]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[21]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[21]),
        .I2(frame_count_12_25[21]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[22]_i_1 
       (.I0(frame_count_73_13_addsub[22]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[23]_i_1 
       (.I0(frame_count_73_13_addsub[23]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[24]_i_1 
       (.I0(frame_count_73_13_addsub[24]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[25]_i_1 
       (.I0(frame_count_73_13_addsub[25]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[26]_i_1 
       (.I0(frame_count_73_13_addsub[26]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[27]_i_1 
       (.I0(frame_count_73_13_addsub[27]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[28]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[28]),
        .I2(frame_count_12_25[28]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[29]_i_1 
       (.I0(frame_count_73_13_addsub[29]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[2]_i_1 
       (.I0(O[1]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \frame_count_12_25[30]_i_1 
       (.I0(tready_join_68_5),
        .I1(CO),
        .O(\frame_count_12_25[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[30]_i_2 
       (.I0(frame_count_73_13_addsub[30]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[31]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[31]),
        .I2(frame_count_12_25[31]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[3]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[3]),
        .I2(frame_count_12_25[3]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[4]_i_1 
       (.I0(frame_count_73_13_addsub[4]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[5]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[5]),
        .I2(frame_count_12_25[5]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[6]_i_1 
       (.I0(frame_count_73_13_addsub[6]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[7]_i_1 
       (.I0(frame_count_73_13_addsub[7]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count_12_25[8]_i_1 
       (.I0(frame_count_73_13_addsub[8]),
        .I1(rel_85_16),
        .O(\frame_count_12_25[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    \frame_count_12_25[9]_i_1 
       (.I0(rel_85_16),
        .I1(frame_count_73_13_addsub[9]),
        .I2(frame_count_12_25[9]),
        .I3(CO),
        .I4(tready_join_68_5),
        .O(\frame_count_12_25[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\frame_count_12_25_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[10]_i_1_n_0 ),
        .Q(frame_count_12_25[10]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[11] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[11]_i_1_n_0 ),
        .Q(frame_count_12_25[11]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[12]_i_1_n_0 ),
        .Q(frame_count_12_25[12]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[13] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[13]_i_1_n_0 ),
        .Q(frame_count_12_25[13]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[14]_i_1_n_0 ),
        .Q(frame_count_12_25[14]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[15]_i_1_n_0 ),
        .Q(frame_count_12_25[15]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[16]_i_1_n_0 ),
        .Q(frame_count_12_25[16]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[17]_i_1_n_0 ),
        .Q(frame_count_12_25[17]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[18] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[18]_i_1_n_0 ),
        .Q(frame_count_12_25[18]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[19]_i_1_n_0 ),
        .Q(frame_count_12_25[19]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[1]_i_1_n_0 ),
        .Q(frame_count_12_25[1]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[20]_i_1_n_0 ),
        .Q(frame_count_12_25[20]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[21]_i_1_n_0 ),
        .Q(frame_count_12_25[21]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[22] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[22]_i_1_n_0 ),
        .Q(frame_count_12_25[22]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[23] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[23]_i_1_n_0 ),
        .Q(frame_count_12_25[23]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[24] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[24]_i_1_n_0 ),
        .Q(frame_count_12_25[24]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[25] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[25]_i_1_n_0 ),
        .Q(frame_count_12_25[25]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[26] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[26]_i_1_n_0 ),
        .Q(frame_count_12_25[26]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[27] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[27]_i_1_n_0 ),
        .Q(frame_count_12_25[27]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[28]_i_1_n_0 ),
        .Q(frame_count_12_25[28]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[29] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[29]_i_1_n_0 ),
        .Q(frame_count_12_25[29]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[2] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[2]_i_1_n_0 ),
        .Q(frame_count_12_25[2]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[30] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[30]_i_2_n_0 ),
        .Q(frame_count_12_25[30]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[31]_i_1_n_0 ),
        .Q(frame_count_12_25[31]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[3]_i_1_n_0 ),
        .Q(frame_count_12_25[3]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[4] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[4]_i_1_n_0 ),
        .Q(frame_count_12_25[4]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[5]_i_1_n_0 ),
        .Q(frame_count_12_25[5]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[6] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[6]_i_1_n_0 ),
        .Q(frame_count_12_25[6]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[7] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[7]_i_1_n_0 ),
        .Q(frame_count_12_25[7]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[8] 
       (.C(clk),
        .CE(\frame_count_12_25[30]_i_1_n_0 ),
        .D(\frame_count_12_25[8]_i_1_n_0 ),
        .Q(frame_count_12_25[8]),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    \frame_count_12_25_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\frame_count_12_25[9]_i_1_n_0 ),
        .Q(frame_count_12_25[9]),
        .R(register13_q_net));
  CARRY4 frame_count_73_13_addsub_carry
       (.CI(1'b0),
        .CO({frame_count_73_13_addsub_carry_n_0,frame_count_73_13_addsub_carry_n_1,frame_count_73_13_addsub_carry_n_2,frame_count_73_13_addsub_carry_n_3}),
        .CYINIT(\frame_count_12_25_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({frame_count_73_13_addsub[4:3],O}),
        .S(frame_count_12_25[4:1]));
  CARRY4 frame_count_73_13_addsub_carry__0
       (.CI(frame_count_73_13_addsub_carry_n_0),
        .CO({frame_count_73_13_addsub_carry__0_n_0,frame_count_73_13_addsub_carry__0_n_1,frame_count_73_13_addsub_carry__0_n_2,frame_count_73_13_addsub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[8:5]),
        .S(frame_count_12_25[8:5]));
  CARRY4 frame_count_73_13_addsub_carry__1
       (.CI(frame_count_73_13_addsub_carry__0_n_0),
        .CO({frame_count_73_13_addsub_carry__1_n_0,frame_count_73_13_addsub_carry__1_n_1,frame_count_73_13_addsub_carry__1_n_2,frame_count_73_13_addsub_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[12:9]),
        .S(frame_count_12_25[12:9]));
  CARRY4 frame_count_73_13_addsub_carry__2
       (.CI(frame_count_73_13_addsub_carry__1_n_0),
        .CO({frame_count_73_13_addsub_carry__2_n_0,frame_count_73_13_addsub_carry__2_n_1,frame_count_73_13_addsub_carry__2_n_2,frame_count_73_13_addsub_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[16:13]),
        .S(frame_count_12_25[16:13]));
  CARRY4 frame_count_73_13_addsub_carry__3
       (.CI(frame_count_73_13_addsub_carry__2_n_0),
        .CO({frame_count_73_13_addsub_carry__3_n_0,frame_count_73_13_addsub_carry__3_n_1,frame_count_73_13_addsub_carry__3_n_2,frame_count_73_13_addsub_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[20:17]),
        .S(frame_count_12_25[20:17]));
  CARRY4 frame_count_73_13_addsub_carry__4
       (.CI(frame_count_73_13_addsub_carry__3_n_0),
        .CO({frame_count_73_13_addsub_carry__4_n_0,frame_count_73_13_addsub_carry__4_n_1,frame_count_73_13_addsub_carry__4_n_2,frame_count_73_13_addsub_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[24:21]),
        .S(frame_count_12_25[24:21]));
  CARRY4 frame_count_73_13_addsub_carry__5
       (.CI(frame_count_73_13_addsub_carry__4_n_0),
        .CO({frame_count_73_13_addsub_carry__5_n_0,frame_count_73_13_addsub_carry__5_n_1,frame_count_73_13_addsub_carry__5_n_2,frame_count_73_13_addsub_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame_count_73_13_addsub[28:25]),
        .S(frame_count_12_25[28:25]));
  CARRY4 frame_count_73_13_addsub_carry__6
       (.CI(frame_count_73_13_addsub_carry__5_n_0),
        .CO({frame_count_73_13_addsub[32],NLW_frame_count_73_13_addsub_carry__6_CO_UNCONNECTED[2],frame_count_73_13_addsub_carry__6_n_2,frame_count_73_13_addsub_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_count_73_13_addsub_carry__6_O_UNCONNECTED[3],frame_count_73_13_addsub[31:29]}),
        .S({1'b1,frame_count_12_25[31:29]}));
  LUT6 #(
    .INIT(64'hEAAAEAAA0A0A2A2A)) 
    last_frame_flag_17_29_i_1
       (.I0(last_frame_flag_17_29),
        .I1(CO),
        .I2(tready_join_68_5),
        .I3(rel_85_16),
        .I4(muxing_run_14_24_reg_0),
        .I5(last_frame_flag_17_29_reg_1),
        .O(last_frame_flag_17_29_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_frame_flag_17_29_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_frame_flag_17_29_i_1_n_0),
        .Q(last_frame_flag_17_29),
        .R(register13_q_net));
  FDRE #(
    .INIT(1'b0)) 
    muxing_run_14_24_reg
       (.C(clk),
        .CE(tready_join_68_5),
        .D(muxing_run_join_99_9),
        .Q(muxing_run_14_24_reg_0),
        .R(register13_q_net));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \op_mem_20_24[0][0]_i_1 
       (.I0(muxing_run_14_24_reg_0),
        .I1(CO),
        .I2(tready_join_68_5),
        .I3(register13_q_net),
        .O(mcode_tvalid_net));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \op_mem_20_24[0][0]_i_1__0 
       (.I0(\op_mem_20_24[0][0]_i_2_n_0 ),
        .I1(delayed_ready_0_23_27),
        .I2(delayed_ready_3_23_27),
        .I3(delayed_ready_2_23_27),
        .I4(delayed_ready_1_23_27),
        .I5(register14_q_net),
        .O(tready_join_68_5));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000054)) 
    \op_mem_20_24[0][0]_i_1__1 
       (.I0(register13_q_net),
        .I1(CO),
        .I2(muxing_run_14_24_reg_0),
        .I3(last_frame_flag_17_29_reg_1),
        .I4(\op_mem_20_24[0][0]_i_3_n_0 ),
        .O(\fd_prim_array[0].rst_comp.fdre_comp ));
  LUT3 #(
    .INIT(8'hEA)) 
    \op_mem_20_24[0][0]_i_2 
       (.I0(triggered_10_23),
        .I1(mux2_y_net),
        .I2(inverter_op_net),
        .O(\op_mem_20_24[0][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1F5F)) 
    \op_mem_20_24[0][0]_i_3 
       (.I0(last_frame_flag_17_29),
        .I1(CO),
        .I2(tready_join_68_5),
        .I3(rel_85_16),
        .O(\op_mem_20_24[0][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][0]_i_5 
       (.I0(Q[0]),
        .I1(\op_mem_20_24_reg[0][31] [0]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][10]_i_5 
       (.I0(Q[10]),
        .I1(\op_mem_20_24_reg[0][31] [10]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][11]_i_5 
       (.I0(Q[11]),
        .I1(\op_mem_20_24_reg[0][31] [11]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][12]_i_5 
       (.I0(Q[12]),
        .I1(\op_mem_20_24_reg[0][31] [12]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][13]_i_5 
       (.I0(Q[13]),
        .I1(\op_mem_20_24_reg[0][31] [13]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][14]_i_5 
       (.I0(Q[14]),
        .I1(\op_mem_20_24_reg[0][31] [14]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][15]_i_5 
       (.I0(Q[15]),
        .I1(\op_mem_20_24_reg[0][31] [15]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][16]_i_5 
       (.I0(Q[16]),
        .I1(\op_mem_20_24_reg[0][31] [16]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][17]_i_5 
       (.I0(Q[17]),
        .I1(\op_mem_20_24_reg[0][31] [17]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][18]_i_5 
       (.I0(Q[18]),
        .I1(\op_mem_20_24_reg[0][31] [18]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][19]_i_5 
       (.I0(Q[19]),
        .I1(\op_mem_20_24_reg[0][31] [19]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][1]_i_5 
       (.I0(Q[1]),
        .I1(\op_mem_20_24_reg[0][31] [1]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][20]_i_5 
       (.I0(Q[20]),
        .I1(\op_mem_20_24_reg[0][31] [20]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][21]_i_5 
       (.I0(Q[21]),
        .I1(\op_mem_20_24_reg[0][31] [21]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][22]_i_5 
       (.I0(Q[22]),
        .I1(\op_mem_20_24_reg[0][31] [22]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][23]_i_5 
       (.I0(Q[23]),
        .I1(\op_mem_20_24_reg[0][31] [23]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][24]_i_5 
       (.I0(Q[24]),
        .I1(\op_mem_20_24_reg[0][31] [24]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][25]_i_5 
       (.I0(Q[25]),
        .I1(\op_mem_20_24_reg[0][31] [25]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][26]_i_5 
       (.I0(Q[26]),
        .I1(\op_mem_20_24_reg[0][31] [26]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[26]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][27]_i_5 
       (.I0(Q[27]),
        .I1(\op_mem_20_24_reg[0][31] [27]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][28]_i_5 
       (.I0(Q[28]),
        .I1(\op_mem_20_24_reg[0][31] [28]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][29]_i_5 
       (.I0(Q[29]),
        .I1(\op_mem_20_24_reg[0][31] [29]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][2]_i_5 
       (.I0(Q[2]),
        .I1(\op_mem_20_24_reg[0][31] [2]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][30]_i_5 
       (.I0(Q[30]),
        .I1(\op_mem_20_24_reg[0][31] [30]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[30]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hBBBF)) 
    \op_mem_20_24[0][31]_i_1 
       (.I0(register13_q_net),
        .I1(tready_join_68_5),
        .I2(CO),
        .I3(muxing_run_14_24_reg_0),
        .O(\fd_prim_array[0].rst_comp.fdre_comp_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][31]_i_7 
       (.I0(Q[31]),
        .I1(\op_mem_20_24_reg[0][31] [31]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][3]_i_5 
       (.I0(Q[3]),
        .I1(\op_mem_20_24_reg[0][31] [3]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][4]_i_5 
       (.I0(Q[4]),
        .I1(\op_mem_20_24_reg[0][31] [4]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][5]_i_5 
       (.I0(Q[5]),
        .I1(\op_mem_20_24_reg[0][31] [5]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][6]_i_5 
       (.I0(Q[6]),
        .I1(\op_mem_20_24_reg[0][31] [6]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][7]_i_5 
       (.I0(Q[7]),
        .I1(\op_mem_20_24_reg[0][31] [7]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][8]_i_5 
       (.I0(Q[8]),
        .I1(\op_mem_20_24_reg[0][31] [8]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \op_mem_20_24[0][9]_i_5 
       (.I0(Q[9]),
        .I1(\op_mem_20_24_reg[0][31] [9]),
        .I2(o[4]),
        .I3(CO),
        .I4(data_sel_store_16_28[5]),
        .I5(\data_sel_store_16_28_reg[6]_0 ),
        .O(\data_vec_store_6_15_28_reg[9]_0 ));
  CARRY4 rel_72_12_carry
       (.CI(1'b0),
        .CO({rel_72_12_carry_n_0,rel_72_12_carry_n_1,rel_72_12_carry_n_2,rel_72_12_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rel_72_12_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 rel_72_12_carry__0
       (.CI(rel_72_12_carry_n_0),
        .CO({NLW_rel_72_12_carry__0_CO_UNCONNECTED[3:2],CO,rel_72_12_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rel_72_12_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,last_frame_flag_17_29_reg_0}));
  CARRY4 rel_85_16_carry
       (.CI(1'b0),
        .CO({rel_85_16_carry_n_0,rel_85_16_carry_n_1,rel_85_16_carry_n_2,rel_85_16_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rel_85_16_carry_O_UNCONNECTED[3:0]),
        .S({rel_85_16_carry_i_1_n_0,rel_85_16_carry_i_2_n_0,rel_85_16_carry_i_3_n_0,rel_85_16_carry__0_0}));
  CARRY4 rel_85_16_carry__0
       (.CI(rel_85_16_carry_n_0),
        .CO({rel_85_16_carry__0_n_0,rel_85_16_carry__0_n_1,rel_85_16_carry__0_n_2,rel_85_16_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rel_85_16_carry__0_O_UNCONNECTED[3:0]),
        .S({rel_85_16_carry__0_i_1_n_0,rel_85_16_carry__0_i_2_n_0,rel_85_16_carry__0_i_3_n_0,rel_85_16_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__0_i_1
       (.I0(frame_count_73_13_addsub[22]),
        .I1(rel_85_16_carry__1_0[19]),
        .I2(frame_count_73_13_addsub[21]),
        .I3(rel_85_16_carry__1_0[18]),
        .I4(rel_85_16_carry__1_0[20]),
        .I5(frame_count_73_13_addsub[23]),
        .O(rel_85_16_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__0_i_2
       (.I0(frame_count_73_13_addsub[18]),
        .I1(rel_85_16_carry__1_0[15]),
        .I2(frame_count_73_13_addsub[19]),
        .I3(rel_85_16_carry__1_0[16]),
        .I4(rel_85_16_carry__1_0[17]),
        .I5(frame_count_73_13_addsub[20]),
        .O(rel_85_16_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__0_i_3
       (.I0(frame_count_73_13_addsub[15]),
        .I1(rel_85_16_carry__1_0[12]),
        .I2(frame_count_73_13_addsub[16]),
        .I3(rel_85_16_carry__1_0[13]),
        .I4(rel_85_16_carry__1_0[14]),
        .I5(frame_count_73_13_addsub[17]),
        .O(rel_85_16_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__0_i_4
       (.I0(frame_count_73_13_addsub[12]),
        .I1(rel_85_16_carry__1_0[9]),
        .I2(frame_count_73_13_addsub[13]),
        .I3(rel_85_16_carry__1_0[10]),
        .I4(rel_85_16_carry__1_0[11]),
        .I5(frame_count_73_13_addsub[14]),
        .O(rel_85_16_carry__0_i_4_n_0));
  CARRY4 rel_85_16_carry__1
       (.CI(rel_85_16_carry__0_n_0),
        .CO({NLW_rel_85_16_carry__1_CO_UNCONNECTED[3],rel_85_16,rel_85_16_carry__1_n_2,rel_85_16_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rel_85_16_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,rel_85_16_carry__1_i_1_n_0,rel_85_16_carry__1_i_2_n_0,rel_85_16_carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'h09000009)) 
    rel_85_16_carry__1_i_1
       (.I0(frame_count_73_13_addsub[31]),
        .I1(rel_85_16_carry__1_0[28]),
        .I2(frame_count_73_13_addsub[32]),
        .I3(rel_85_16_carry__1_0[27]),
        .I4(frame_count_73_13_addsub[30]),
        .O(rel_85_16_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__1_i_2
       (.I0(frame_count_73_13_addsub[27]),
        .I1(rel_85_16_carry__1_0[24]),
        .I2(frame_count_73_13_addsub[28]),
        .I3(rel_85_16_carry__1_0[25]),
        .I4(rel_85_16_carry__1_0[26]),
        .I5(frame_count_73_13_addsub[29]),
        .O(rel_85_16_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry__1_i_3
       (.I0(frame_count_73_13_addsub[25]),
        .I1(rel_85_16_carry__1_0[22]),
        .I2(frame_count_73_13_addsub[24]),
        .I3(rel_85_16_carry__1_0[21]),
        .I4(rel_85_16_carry__1_0[23]),
        .I5(frame_count_73_13_addsub[26]),
        .O(rel_85_16_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry_i_1
       (.I0(frame_count_73_13_addsub[9]),
        .I1(rel_85_16_carry__1_0[6]),
        .I2(frame_count_73_13_addsub[10]),
        .I3(rel_85_16_carry__1_0[7]),
        .I4(rel_85_16_carry__1_0[8]),
        .I5(frame_count_73_13_addsub[11]),
        .O(rel_85_16_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry_i_2
       (.I0(frame_count_73_13_addsub[7]),
        .I1(rel_85_16_carry__1_0[4]),
        .I2(frame_count_73_13_addsub[6]),
        .I3(rel_85_16_carry__1_0[3]),
        .I4(rel_85_16_carry__1_0[5]),
        .I5(frame_count_73_13_addsub[8]),
        .O(rel_85_16_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rel_85_16_carry_i_3
       (.I0(frame_count_73_13_addsub[4]),
        .I1(rel_85_16_carry__1_0[1]),
        .I2(frame_count_73_13_addsub[3]),
        .I3(rel_85_16_carry__1_0[0]),
        .I4(rel_85_16_carry__1_0[2]),
        .I5(frame_count_73_13_addsub[5]),
        .O(rel_85_16_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F800)) 
    triggered_10_23_i_1
       (.I0(inverter_op_net),
        .I1(mux2_y_net),
        .I2(triggered_10_23),
        .I3(triggered_10_23_i_2_n_0),
        .I4(last_frame_flag_17_29_reg_1),
        .I5(\op_mem_20_24[0][0]_i_3_n_0 ),
        .O(triggered_join_68_5));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    triggered_10_23_i_2
       (.I0(muxing_run_14_24_reg_0),
        .I1(CO),
        .O(triggered_10_23_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    triggered_10_23_reg
       (.C(clk),
        .CE(1'b1),
        .D(triggered_join_68_5),
        .Q(triggered_10_23),
        .R(register13_q_net));
endmodule

(* ORIG_REF_NAME = "sysgen_mux_41889c05ba" *) 
module design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba
   (mux2_y_net,
    internal_ip_12_1_bitnot,
    unregy_join_6_1,
    clk);
  output mux2_y_net;
  output internal_ip_12_1_bitnot;
  input unregy_join_6_1;
  input clk;

  wire clk;
  wire internal_ip_12_1_bitnot;
  wire mux2_y_net;
  wire unregy_join_6_1;

  LUT1 #(
    .INIT(2'h1)) 
    \op_mem_22_20[0]_i_1 
       (.I0(mux2_y_net),
        .O(internal_ip_12_1_bitnot));
  FDRE #(
    .INIT(1'b0)) 
    \pipe_16_22_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(unregy_join_6_1),
        .Q(mux2_y_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg
   (data_in_a,
    data_in_b,
    data_in_c,
    data_in_d,
    data_in_e,
    data_in_f,
    data_in_g,
    data_in_h,
    m_axis_dma_tready,
    trigger_in_hw,
    clk,
    thrtl_8ch_cfg_aresetn,
    thrtl_8ch_cfg_cfg_in_s_axi_awaddr,
    thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_wdata,
    thrtl_8ch_cfg_cfg_in_s_axi_wstrb,
    thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_bready,
    thrtl_8ch_cfg_cfg_in_s_axi_araddr,
    thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_rready,
    dma_ready_out,
    m_axis_dma_tdata,
    m_axis_dma_tkeep,
    m_axis_dma_tlast,
    m_axis_dma_tvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_awready,
    thrtl_8ch_cfg_cfg_in_s_axi_wready,
    thrtl_8ch_cfg_cfg_in_s_axi_bresp,
    thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_arready,
    thrtl_8ch_cfg_cfg_in_s_axi_rdata,
    thrtl_8ch_cfg_cfg_in_s_axi_rresp,
    thrtl_8ch_cfg_cfg_in_s_axi_rvalid);
  input [31:0]data_in_a;
  input [31:0]data_in_b;
  input [31:0]data_in_c;
  input [31:0]data_in_d;
  input [31:0]data_in_e;
  input [31:0]data_in_f;
  input [31:0]data_in_g;
  input [31:0]data_in_h;
  input [0:0]m_axis_dma_tready;
  input [0:0]trigger_in_hw;
  input clk;
  input thrtl_8ch_cfg_aresetn;
  input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  input thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  input [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  input [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  input thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  input thrtl_8ch_cfg_cfg_in_s_axi_bready;
  input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;
  input thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  input thrtl_8ch_cfg_cfg_in_s_axi_rready;
  output [0:0]dma_ready_out;
  output [31:0]m_axis_dma_tdata;
  output [3:0]m_axis_dma_tkeep;
  output [0:0]m_axis_dma_tlast;
  output [0:0]m_axis_dma_tvalid;
  output thrtl_8ch_cfg_cfg_in_s_axi_awready;
  output thrtl_8ch_cfg_cfg_in_s_axi_wready;
  output [1:0]thrtl_8ch_cfg_cfg_in_s_axi_bresp;
  output thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  output thrtl_8ch_cfg_cfg_in_s_axi_arready;
  output [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  output [1:0]thrtl_8ch_cfg_cfg_in_s_axi_rresp;
  output thrtl_8ch_cfg_cfg_in_s_axi_rvalid;

  wire clk;
  wire [31:0]data_in_a;
  wire [31:0]data_in_b;
  wire [31:0]data_in_c;
  wire [31:0]data_in_d;
  wire [31:0]data_in_e;
  wire [31:0]data_in_f;
  wire [31:0]data_in_g;
  wire [31:0]data_in_h;
  wire [7:0]data_sel_in;
  wire [15:0]decim_in;
  wire [31:0]frames_no_in;
  wire [31:0]m_axis_dma_tdata;
  wire [3:3]\^m_axis_dma_tkeep ;
  wire [0:0]m_axis_dma_tlast;
  wire [0:0]m_axis_dma_tready;
  wire [0:0]m_axis_dma_tvalid;
  wire thrtl_8ch_cfg_aresetn;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_arready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_awready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  wire thrtl_8ch_cfg_cfg_in_s_axi_wready;
  wire [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  wire thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  wire trigger_in;
  wire [0:0]trigger_in_hw;
  wire trigger_src;
  wire usr_rst_in;

  assign dma_ready_out[0] = \^m_axis_dma_tkeep [3];
  assign m_axis_dma_tkeep[3] = \^m_axis_dma_tkeep [3];
  assign m_axis_dma_tkeep[2] = \^m_axis_dma_tkeep [3];
  assign m_axis_dma_tkeep[1] = \^m_axis_dma_tkeep [3];
  assign m_axis_dma_tkeep[0] = \^m_axis_dma_tkeep [3];
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface thrtl_8ch_cfg_cfg_in_axi_lite_interface
       (.axi_arready_reg_0(thrtl_8ch_cfg_cfg_in_s_axi_arready),
        .axi_awready_reg_0(thrtl_8ch_cfg_cfg_in_s_axi_awready),
        .axi_wready_reg_0(thrtl_8ch_cfg_cfg_in_s_axi_wready),
        .clk(clk),
        .i(frames_no_in),
        .\slv_reg_array_reg[4][15]_0 (decim_in),
        .\slv_reg_array_reg[5][7]_0 (data_sel_in),
        .thrtl_8ch_cfg_aresetn(thrtl_8ch_cfg_aresetn),
        .thrtl_8ch_cfg_cfg_in_s_axi_araddr(thrtl_8ch_cfg_cfg_in_s_axi_araddr),
        .thrtl_8ch_cfg_cfg_in_s_axi_arvalid(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_awaddr(thrtl_8ch_cfg_cfg_in_s_axi_awaddr),
        .thrtl_8ch_cfg_cfg_in_s_axi_awvalid(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_bready(thrtl_8ch_cfg_cfg_in_s_axi_bready),
        .thrtl_8ch_cfg_cfg_in_s_axi_bvalid(thrtl_8ch_cfg_cfg_in_s_axi_bvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_rdata(thrtl_8ch_cfg_cfg_in_s_axi_rdata),
        .thrtl_8ch_cfg_cfg_in_s_axi_rready(thrtl_8ch_cfg_cfg_in_s_axi_rready),
        .thrtl_8ch_cfg_cfg_in_s_axi_rvalid(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
        .thrtl_8ch_cfg_cfg_in_s_axi_wdata(thrtl_8ch_cfg_cfg_in_s_axi_wdata),
        .thrtl_8ch_cfg_cfg_in_s_axi_wstrb(thrtl_8ch_cfg_cfg_in_s_axi_wstrb),
        .thrtl_8ch_cfg_cfg_in_s_axi_wvalid(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .trigger_in(trigger_in),
        .trigger_src(trigger_src),
        .usr_rst_in(usr_rst_in));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct thrtl_8ch_cfg_struct
       (.clk(clk),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .data_in_c(data_in_c),
        .data_in_d(data_in_d),
        .data_in_e(data_in_e),
        .data_in_f(data_in_f),
        .data_in_g(data_in_g),
        .data_in_h(data_in_h),
        .\fd_prim_array[15].rst_comp.fdre_comp (decim_in),
        .\fd_prim_array[7].rst_comp.fdre_comp (data_sel_in),
        .i(frames_no_in),
        .m_axis_dma_tdata(m_axis_dma_tdata),
        .m_axis_dma_tkeep(\^m_axis_dma_tkeep ),
        .m_axis_dma_tlast(m_axis_dma_tlast),
        .m_axis_dma_tready(m_axis_dma_tready),
        .m_axis_dma_tvalid(m_axis_dma_tvalid),
        .trigger_in(trigger_in),
        .trigger_in_hw(trigger_in_hw),
        .trigger_src(trigger_src),
        .usr_rst_in(usr_rst_in));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_cfg_in_axi_lite_interface" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_cfg_in_axi_lite_interface
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_rvalid,
    i,
    \slv_reg_array_reg[4][15]_0 ,
    \slv_reg_array_reg[5][7]_0 ,
    trigger_in,
    trigger_src,
    usr_rst_in,
    thrtl_8ch_cfg_cfg_in_s_axi_rdata,
    clk,
    thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_bready,
    thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
    thrtl_8ch_cfg_cfg_in_s_axi_rready,
    thrtl_8ch_cfg_aresetn,
    thrtl_8ch_cfg_cfg_in_s_axi_wstrb,
    thrtl_8ch_cfg_cfg_in_s_axi_wdata,
    thrtl_8ch_cfg_cfg_in_s_axi_awaddr,
    thrtl_8ch_cfg_cfg_in_s_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  output thrtl_8ch_cfg_cfg_in_s_axi_rvalid;
  output [31:0]i;
  output [15:0]\slv_reg_array_reg[4][15]_0 ;
  output [7:0]\slv_reg_array_reg[5][7]_0 ;
  output trigger_in;
  output trigger_src;
  output usr_rst_in;
  output [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  input clk;
  input thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  input thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  input thrtl_8ch_cfg_cfg_in_s_axi_bready;
  input thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  input thrtl_8ch_cfg_cfg_in_s_axi_rready;
  input thrtl_8ch_cfg_aresetn;
  input [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  input [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  input [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;

  wire [4:0]axi_araddr;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [4:0]axi_awaddr;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire clk;
  wire [2:1]dec_r__12;
  wire [31:0]i;
  wire p_0_in;
  wire [0:0]p_12_out;
  wire [0:0]p_12_out__2;
  wire [0:0]p_12_out__3;
  wire \slv_reg_array[0][0]_i_1_n_0 ;
  wire \slv_reg_array[0][10]_i_1_n_0 ;
  wire \slv_reg_array[0][11]_i_1_n_0 ;
  wire \slv_reg_array[0][12]_i_1_n_0 ;
  wire \slv_reg_array[0][13]_i_1_n_0 ;
  wire \slv_reg_array[0][14]_i_1_n_0 ;
  wire \slv_reg_array[0][15]_i_1_n_0 ;
  wire \slv_reg_array[0][15]_i_2_n_0 ;
  wire \slv_reg_array[0][16]_i_1_n_0 ;
  wire \slv_reg_array[0][17]_i_1_n_0 ;
  wire \slv_reg_array[0][18]_i_1_n_0 ;
  wire \slv_reg_array[0][19]_i_1_n_0 ;
  wire \slv_reg_array[0][1]_i_1_n_0 ;
  wire \slv_reg_array[0][20]_i_1_n_0 ;
  wire \slv_reg_array[0][21]_i_1_n_0 ;
  wire \slv_reg_array[0][22]_i_1_n_0 ;
  wire \slv_reg_array[0][23]_i_1_n_0 ;
  wire \slv_reg_array[0][23]_i_2_n_0 ;
  wire \slv_reg_array[0][24]_i_1_n_0 ;
  wire \slv_reg_array[0][25]_i_1_n_0 ;
  wire \slv_reg_array[0][26]_i_1_n_0 ;
  wire \slv_reg_array[0][27]_i_1_n_0 ;
  wire \slv_reg_array[0][28]_i_1_n_0 ;
  wire \slv_reg_array[0][29]_i_1_n_0 ;
  wire \slv_reg_array[0][2]_i_1_n_0 ;
  wire \slv_reg_array[0][30]_i_1_n_0 ;
  wire \slv_reg_array[0][31]_i_1_n_0 ;
  wire \slv_reg_array[0][31]_i_2_n_0 ;
  wire \slv_reg_array[0][31]_i_3_n_0 ;
  wire \slv_reg_array[0][31]_i_5_n_0 ;
  wire \slv_reg_array[0][3]_i_1_n_0 ;
  wire \slv_reg_array[0][4]_i_1_n_0 ;
  wire \slv_reg_array[0][5]_i_1_n_0 ;
  wire \slv_reg_array[0][6]_i_1_n_0 ;
  wire \slv_reg_array[0][7]_i_1_n_0 ;
  wire \slv_reg_array[0][7]_i_2_n_0 ;
  wire \slv_reg_array[0][8]_i_1_n_0 ;
  wire \slv_reg_array[0][9]_i_1_n_0 ;
  wire \slv_reg_array[1][0]_i_1_n_0 ;
  wire \slv_reg_array[1][0]_i_2_n_0 ;
  wire \slv_reg_array[1][15]_i_1_n_0 ;
  wire \slv_reg_array[1][23]_i_1_n_0 ;
  wire \slv_reg_array[1][31]_i_1_n_0 ;
  wire \slv_reg_array[1][7]_i_1_n_0 ;
  wire \slv_reg_array[2][0]_i_1_n_0 ;
  wire \slv_reg_array[2][0]_i_2_n_0 ;
  wire \slv_reg_array[2][15]_i_1_n_0 ;
  wire \slv_reg_array[2][23]_i_1_n_0 ;
  wire \slv_reg_array[2][31]_i_1_n_0 ;
  wire \slv_reg_array[2][7]_i_1_n_0 ;
  wire \slv_reg_array[3][0]_i_1_n_0 ;
  wire \slv_reg_array[3][10]_i_1_n_0 ;
  wire \slv_reg_array[3][11]_i_1_n_0 ;
  wire \slv_reg_array[3][12]_i_1_n_0 ;
  wire \slv_reg_array[3][13]_i_1_n_0 ;
  wire \slv_reg_array[3][14]_i_1_n_0 ;
  wire \slv_reg_array[3][15]_i_1_n_0 ;
  wire \slv_reg_array[3][15]_i_2_n_0 ;
  wire \slv_reg_array[3][16]_i_1_n_0 ;
  wire \slv_reg_array[3][17]_i_1_n_0 ;
  wire \slv_reg_array[3][18]_i_1_n_0 ;
  wire \slv_reg_array[3][19]_i_1_n_0 ;
  wire \slv_reg_array[3][1]_i_1_n_0 ;
  wire \slv_reg_array[3][20]_i_1_n_0 ;
  wire \slv_reg_array[3][21]_i_1_n_0 ;
  wire \slv_reg_array[3][22]_i_1_n_0 ;
  wire \slv_reg_array[3][23]_i_1_n_0 ;
  wire \slv_reg_array[3][23]_i_2_n_0 ;
  wire \slv_reg_array[3][24]_i_1_n_0 ;
  wire \slv_reg_array[3][25]_i_1_n_0 ;
  wire \slv_reg_array[3][26]_i_1_n_0 ;
  wire \slv_reg_array[3][27]_i_1_n_0 ;
  wire \slv_reg_array[3][28]_i_1_n_0 ;
  wire \slv_reg_array[3][29]_i_1_n_0 ;
  wire \slv_reg_array[3][2]_i_1_n_0 ;
  wire \slv_reg_array[3][30]_i_1_n_0 ;
  wire \slv_reg_array[3][31]_i_1_n_0 ;
  wire \slv_reg_array[3][31]_i_2_n_0 ;
  wire \slv_reg_array[3][31]_i_3_n_0 ;
  wire \slv_reg_array[3][31]_i_4_n_0 ;
  wire \slv_reg_array[3][3]_i_1_n_0 ;
  wire \slv_reg_array[3][4]_i_1_n_0 ;
  wire \slv_reg_array[3][5]_i_1_n_0 ;
  wire \slv_reg_array[3][6]_i_1_n_0 ;
  wire \slv_reg_array[3][7]_i_1_n_0 ;
  wire \slv_reg_array[3][7]_i_2_n_0 ;
  wire \slv_reg_array[3][8]_i_1_n_0 ;
  wire \slv_reg_array[3][9]_i_1_n_0 ;
  wire \slv_reg_array[4][0]_i_1_n_0 ;
  wire \slv_reg_array[4][10]_i_1_n_0 ;
  wire \slv_reg_array[4][11]_i_1_n_0 ;
  wire \slv_reg_array[4][12]_i_1_n_0 ;
  wire \slv_reg_array[4][13]_i_1_n_0 ;
  wire \slv_reg_array[4][14]_i_1_n_0 ;
  wire \slv_reg_array[4][15]_i_1_n_0 ;
  wire \slv_reg_array[4][15]_i_2_n_0 ;
  wire \slv_reg_array[4][16]_i_1_n_0 ;
  wire \slv_reg_array[4][17]_i_1_n_0 ;
  wire \slv_reg_array[4][18]_i_1_n_0 ;
  wire \slv_reg_array[4][19]_i_1_n_0 ;
  wire \slv_reg_array[4][1]_i_1_n_0 ;
  wire \slv_reg_array[4][20]_i_1_n_0 ;
  wire \slv_reg_array[4][21]_i_1_n_0 ;
  wire \slv_reg_array[4][22]_i_1_n_0 ;
  wire \slv_reg_array[4][23]_i_1_n_0 ;
  wire \slv_reg_array[4][23]_i_2_n_0 ;
  wire \slv_reg_array[4][24]_i_1_n_0 ;
  wire \slv_reg_array[4][25]_i_1_n_0 ;
  wire \slv_reg_array[4][26]_i_1_n_0 ;
  wire \slv_reg_array[4][27]_i_1_n_0 ;
  wire \slv_reg_array[4][28]_i_1_n_0 ;
  wire \slv_reg_array[4][29]_i_1_n_0 ;
  wire \slv_reg_array[4][2]_i_1_n_0 ;
  wire \slv_reg_array[4][30]_i_1_n_0 ;
  wire \slv_reg_array[4][31]_i_1_n_0 ;
  wire \slv_reg_array[4][31]_i_2_n_0 ;
  wire \slv_reg_array[4][31]_i_3_n_0 ;
  wire \slv_reg_array[4][31]_i_4_n_0 ;
  wire \slv_reg_array[4][3]_i_1_n_0 ;
  wire \slv_reg_array[4][4]_i_1_n_0 ;
  wire \slv_reg_array[4][5]_i_1_n_0 ;
  wire \slv_reg_array[4][6]_i_1_n_0 ;
  wire \slv_reg_array[4][7]_i_1_n_0 ;
  wire \slv_reg_array[4][7]_i_2_n_0 ;
  wire \slv_reg_array[4][8]_i_1_n_0 ;
  wire \slv_reg_array[4][9]_i_1_n_0 ;
  wire \slv_reg_array[5][0]_i_1_n_0 ;
  wire \slv_reg_array[5][0]_i_2_n_0 ;
  wire \slv_reg_array[5][10]_i_1_n_0 ;
  wire \slv_reg_array[5][11]_i_1_n_0 ;
  wire \slv_reg_array[5][12]_i_1_n_0 ;
  wire \slv_reg_array[5][13]_i_1_n_0 ;
  wire \slv_reg_array[5][14]_i_1_n_0 ;
  wire \slv_reg_array[5][15]_i_1_n_0 ;
  wire \slv_reg_array[5][15]_i_2_n_0 ;
  wire \slv_reg_array[5][16]_i_1_n_0 ;
  wire \slv_reg_array[5][17]_i_1_n_0 ;
  wire \slv_reg_array[5][18]_i_1_n_0 ;
  wire \slv_reg_array[5][19]_i_1_n_0 ;
  wire \slv_reg_array[5][1]_i_1_n_0 ;
  wire \slv_reg_array[5][1]_i_2_n_0 ;
  wire \slv_reg_array[5][20]_i_1_n_0 ;
  wire \slv_reg_array[5][21]_i_1_n_0 ;
  wire \slv_reg_array[5][22]_i_1_n_0 ;
  wire \slv_reg_array[5][23]_i_1_n_0 ;
  wire \slv_reg_array[5][23]_i_2_n_0 ;
  wire \slv_reg_array[5][24]_i_1_n_0 ;
  wire \slv_reg_array[5][25]_i_1_n_0 ;
  wire \slv_reg_array[5][26]_i_1_n_0 ;
  wire \slv_reg_array[5][27]_i_1_n_0 ;
  wire \slv_reg_array[5][28]_i_1_n_0 ;
  wire \slv_reg_array[5][29]_i_1_n_0 ;
  wire \slv_reg_array[5][2]_i_1_n_0 ;
  wire \slv_reg_array[5][30]_i_1_n_0 ;
  wire \slv_reg_array[5][31]_i_1_n_0 ;
  wire \slv_reg_array[5][31]_i_2_n_0 ;
  wire \slv_reg_array[5][31]_i_3_n_0 ;
  wire \slv_reg_array[5][3]_i_1_n_0 ;
  wire \slv_reg_array[5][4]_i_1_n_0 ;
  wire \slv_reg_array[5][5]_i_1_n_0 ;
  wire \slv_reg_array[5][6]_i_1_n_0 ;
  wire \slv_reg_array[5][7]_i_1_n_0 ;
  wire \slv_reg_array[5][7]_i_2_n_0 ;
  wire \slv_reg_array[5][8]_i_1_n_0 ;
  wire \slv_reg_array[5][9]_i_1_n_0 ;
  wire [31:1]\slv_reg_array_reg[0]_0 ;
  wire [31:1]\slv_reg_array_reg[1]_1 ;
  wire [31:1]\slv_reg_array_reg[2]_2 ;
  wire [15:0]\slv_reg_array_reg[4][15]_0 ;
  wire [31:16]\slv_reg_array_reg[4]_3 ;
  wire [7:0]\slv_reg_array_reg[5][7]_0 ;
  wire [31:8]\slv_reg_array_reg[5]_4 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [31:0]slv_wire_array;
  wire thrtl_8ch_cfg_aresetn;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_araddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_arvalid;
  wire [4:0]thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
  wire thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_bvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_rdata;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rready;
  wire thrtl_8ch_cfg_cfg_in_s_axi_rvalid;
  wire [31:0]thrtl_8ch_cfg_cfg_in_s_axi_wdata;
  wire [3:0]thrtl_8ch_cfg_cfg_in_s_axi_wstrb;
  wire thrtl_8ch_cfg_cfg_in_s_axi_wvalid;
  wire trigger_in;
  wire trigger_src;
  wire usr_rst_in;

  FDRE \axi_araddr_reg[0] 
       (.C(clk),
        .CE(axi_arready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_araddr[0]),
        .Q(axi_araddr[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[1] 
       (.C(clk),
        .CE(axi_arready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_araddr[1]),
        .Q(axi_araddr[1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(clk),
        .CE(axi_arready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_araddr[2]),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(clk),
        .CE(axi_arready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_araddr[3]),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(clk),
        .CE(axi_arready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_araddr[4]),
        .Q(axi_araddr[4]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[0] 
       (.C(clk),
        .CE(axi_awready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_awaddr[0]),
        .Q(axi_awaddr[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[1] 
       (.C(clk),
        .CE(axi_awready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_awaddr[1]),
        .Q(axi_awaddr[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(clk),
        .CE(axi_awready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_awaddr[2]),
        .Q(axi_awaddr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(clk),
        .CE(axi_awready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_awaddr[3]),
        .Q(axi_awaddr[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(clk),
        .CE(axi_awready0),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_awaddr[4]),
        .Q(axi_awaddr[4]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(thrtl_8ch_cfg_aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(thrtl_8ch_cfg_cfg_in_s_axi_bready),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [0]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [0]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[0]_i_2_n_0 ),
        .O(slv_wire_array[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(i[0]),
        .I1(trigger_in),
        .I2(dec_r__12[1]),
        .I3(trigger_src),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(usr_rst_in),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [10]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [10]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(slv_wire_array[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(i[10]),
        .I1(\slv_reg_array_reg[2]_2 [10]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [10]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [11]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [11]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(slv_wire_array[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(i[11]),
        .I1(\slv_reg_array_reg[2]_2 [11]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [11]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [12]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [12]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(slv_wire_array[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(i[12]),
        .I1(\slv_reg_array_reg[2]_2 [12]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [12]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [13]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [13]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .O(slv_wire_array[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(i[13]),
        .I1(\slv_reg_array_reg[2]_2 [13]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [13]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [14]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [14]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .O(slv_wire_array[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(i[14]),
        .I1(\slv_reg_array_reg[2]_2 [14]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [14]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [15]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [15]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .O(slv_wire_array[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(i[15]),
        .I1(\slv_reg_array_reg[2]_2 [15]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [15]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [16]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [16]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .O(slv_wire_array[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(i[16]),
        .I1(\slv_reg_array_reg[2]_2 [16]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [16]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [17]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [17]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(slv_wire_array[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(i[17]),
        .I1(\slv_reg_array_reg[2]_2 [17]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [17]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [18]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [18]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .O(slv_wire_array[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(i[18]),
        .I1(\slv_reg_array_reg[2]_2 [18]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [18]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [19]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [19]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .O(slv_wire_array[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(i[19]),
        .I1(\slv_reg_array_reg[2]_2 [19]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [19]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [1]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [1]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .O(slv_wire_array[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(i[1]),
        .I1(\slv_reg_array_reg[2]_2 [1]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [1]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [20]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [20]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .O(slv_wire_array[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(i[20]),
        .I1(\slv_reg_array_reg[2]_2 [20]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [20]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [21]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [21]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .O(slv_wire_array[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(i[21]),
        .I1(\slv_reg_array_reg[2]_2 [21]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [21]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [22]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [22]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(slv_wire_array[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(i[22]),
        .I1(\slv_reg_array_reg[2]_2 [22]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [22]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [23]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [23]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .O(slv_wire_array[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(i[23]),
        .I1(\slv_reg_array_reg[2]_2 [23]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [23]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [24]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [24]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .O(slv_wire_array[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(i[24]),
        .I1(\slv_reg_array_reg[2]_2 [24]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [24]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [25]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [25]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .O(slv_wire_array[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(i[25]),
        .I1(\slv_reg_array_reg[2]_2 [25]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [25]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [26]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [26]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[26]_i_2_n_0 ),
        .O(slv_wire_array[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(i[26]),
        .I1(\slv_reg_array_reg[2]_2 [26]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [26]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [27]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [27]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[27]_i_2_n_0 ),
        .O(slv_wire_array[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(i[27]),
        .I1(\slv_reg_array_reg[2]_2 [27]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [27]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [28]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [28]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .O(slv_wire_array[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(i[28]),
        .I1(\slv_reg_array_reg[2]_2 [28]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [28]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [29]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [29]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[29]_i_2_n_0 ),
        .O(slv_wire_array[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(i[29]),
        .I1(\slv_reg_array_reg[2]_2 [29]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [29]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [2]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [2]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .O(slv_wire_array[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(i[2]),
        .I1(\slv_reg_array_reg[2]_2 [2]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [2]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [30]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [30]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[30]_i_2_n_0 ),
        .O(slv_wire_array[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(i[30]),
        .I1(\slv_reg_array_reg[2]_2 [30]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [30]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [31]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4]_3 [31]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[31]_i_4_n_0 ),
        .O(slv_wire_array[31]));
  LUT5 #(
    .INIT(32'h00000026)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01100000)) 
    \axi_rdata[31]_i_3 
       (.I0(axi_araddr[0]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[2]),
        .O(dec_r__12[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(i[31]),
        .I1(\slv_reg_array_reg[2]_2 [31]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [31]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[31]_i_5 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(dec_r__12[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [3]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [3]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .O(slv_wire_array[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(i[3]),
        .I1(\slv_reg_array_reg[2]_2 [3]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [3]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [4]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [4]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .O(slv_wire_array[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(i[4]),
        .I1(\slv_reg_array_reg[2]_2 [4]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [4]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [5]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [5]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[5]_i_2_n_0 ),
        .O(slv_wire_array[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(i[5]),
        .I1(\slv_reg_array_reg[2]_2 [5]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [5]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [6]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [6]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[6]_i_2_n_0 ),
        .O(slv_wire_array[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(i[6]),
        .I1(\slv_reg_array_reg[2]_2 [6]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [6]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg_array_reg[5][7]_0 [7]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [7]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[7]_i_2_n_0 ),
        .O(slv_wire_array[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(i[7]),
        .I1(\slv_reg_array_reg[2]_2 [7]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [7]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [8]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [8]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(slv_wire_array[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(i[8]),
        .I1(\slv_reg_array_reg[2]_2 [8]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [8]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg_array_reg[5]_4 [9]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .I2(\slv_reg_array_reg[4][15]_0 [9]),
        .I3(dec_r__12[2]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(slv_wire_array[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(i[9]),
        .I1(\slv_reg_array_reg[2]_2 [9]),
        .I2(dec_r__12[1]),
        .I3(\slv_reg_array_reg[1]_1 [9]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[0]_0 [9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[0]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[10]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[11]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[12]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[13]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[14]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[15]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[16]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[17]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[18]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[19]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[1]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[20]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[21]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[22]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[23]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[24]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[25]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[26]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[27]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[28]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[29]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[2]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[30]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[31]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[3]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[4]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[5]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[6]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[7]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[8]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(slv_wire_array[9]),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_rready),
        .I3(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hBFFF000080000000)) 
    \slv_reg_array[0][0]_i_1 
       (.I0(p_12_out),
        .I1(\slv_reg_array[0][31]_i_3_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(usr_rst_in),
        .O(\slv_reg_array[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg_array[0][0]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(thrtl_8ch_cfg_aresetn),
        .O(p_12_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][10]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][11]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][12]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][13]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][14]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][15]_i_1 
       (.I0(\slv_reg_array[0][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][15]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][16]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][17]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][18]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][19]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][1]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][20]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][21]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][22]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][23]_i_1 
       (.I0(\slv_reg_array[0][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][23]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][24]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][25]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][26]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][27]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][28]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][29]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][2]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][30]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][31]_i_1 
       (.I0(\slv_reg_array[0][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[0][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][31]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFC2FFFFFFFF)) 
    \slv_reg_array[0][31]_i_3 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[0]),
        .I5(thrtl_8ch_cfg_aresetn),
        .O(\slv_reg_array[0][31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][31]_i_4 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
        .I3(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'hFEEFFEEE)) 
    \slv_reg_array[0][31]_i_5 
       (.I0(axi_awaddr[1]),
        .I1(axi_awaddr[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg_array[0][31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][3]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][4]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][5]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][6]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][7]_i_1 
       (.I0(\slv_reg_array[0][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][7]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][8]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][9]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .I1(\slv_reg_array[0][31]_i_5_n_0 ),
        .O(\slv_reg_array[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000080000000)) 
    \slv_reg_array[1][0]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(\slv_reg_array[1][0]_i_2_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(trigger_src),
        .O(\slv_reg_array[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \slv_reg_array[1][0]_i_2 
       (.I0(axi_awaddr[1]),
        .I1(axi_awaddr[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg_array[1][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[1][15]_i_1 
       (.I0(\slv_reg_array[1][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[1][23]_i_1 
       (.I0(\slv_reg_array[1][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[1][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[1][31]_i_1 
       (.I0(\slv_reg_array[1][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[1][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[1][7]_i_1 
       (.I0(\slv_reg_array[1][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000080000000)) 
    \slv_reg_array[2][0]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(\slv_reg_array[2][0]_i_2_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(trigger_in),
        .O(\slv_reg_array[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \slv_reg_array[2][0]_i_2 
       (.I0(axi_awaddr[0]),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[3]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg_array[2][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[2][15]_i_1 
       (.I0(\slv_reg_array[2][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[2][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[2][23]_i_1 
       (.I0(\slv_reg_array[2][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[2][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[2][31]_i_1 
       (.I0(\slv_reg_array[2][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[2][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[2][7]_i_1 
       (.I0(\slv_reg_array[2][0]_i_2_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000080000000)) 
    \slv_reg_array[3][0]_i_1 
       (.I0(p_12_out__2),
        .I1(\slv_reg_array[3][31]_i_3_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(i[0]),
        .O(\slv_reg_array[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg_array[3][0]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(thrtl_8ch_cfg_aresetn),
        .O(p_12_out__2));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][10]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][11]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][12]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][13]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][14]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[3][15]_i_1 
       (.I0(\slv_reg_array[3][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[3][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][15]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][16]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][17]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][18]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][19]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][1]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][20]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][21]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][22]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[3][23]_i_1 
       (.I0(\slv_reg_array[3][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[3][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][23]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][24]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][25]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][26]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][27]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][28]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][29]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][2]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][30]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[3][31]_i_1 
       (.I0(\slv_reg_array[3][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[3][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][31]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \slv_reg_array[3][31]_i_3 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[0]),
        .I5(thrtl_8ch_cfg_aresetn),
        .O(\slv_reg_array[3][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \slv_reg_array[3][31]_i_4 
       (.I0(axi_awaddr[4]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg_array[3][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][3]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][4]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][5]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][6]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[3][7]_i_1 
       (.I0(\slv_reg_array[3][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][7]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][8]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[3][9]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .I1(\slv_reg_array[3][31]_i_4_n_0 ),
        .O(\slv_reg_array[3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000080000000)) 
    \slv_reg_array[4][0]_i_1 
       (.I0(p_12_out__3),
        .I1(\slv_reg_array[4][31]_i_3_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(\slv_reg_array_reg[4][15]_0 [0]),
        .O(\slv_reg_array[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg_array[4][0]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(thrtl_8ch_cfg_aresetn),
        .O(p_12_out__3));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][10]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][11]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][12]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][13]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][14]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[4][15]_i_1 
       (.I0(\slv_reg_array[4][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[4][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][15]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][16]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][17]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][18]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][19]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][1]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][20]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][21]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][22]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[4][23]_i_1 
       (.I0(\slv_reg_array[4][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[4][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][23]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][24]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][25]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][26]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][27]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][28]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][29]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][2]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][30]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[4][31]_i_1 
       (.I0(\slv_reg_array[4][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[4][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][31]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \slv_reg_array[4][31]_i_3 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[0]),
        .I5(thrtl_8ch_cfg_aresetn),
        .O(\slv_reg_array[4][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slv_reg_array[4][31]_i_4 
       (.I0(axi_awaddr[4]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg_array[4][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][3]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][4]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][5]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][6]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[4][7]_i_1 
       (.I0(\slv_reg_array[4][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][7]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][8]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[4][9]_i_1 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .I1(\slv_reg_array[4][31]_i_4_n_0 ),
        .O(\slv_reg_array[4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF8000FFFF)) 
    \slv_reg_array[5][0]_i_1 
       (.I0(\slv_reg_array[5][0]_i_2_n_0 ),
        .I1(\slv_reg_array[5][31]_i_3_n_0 ),
        .I2(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .I4(thrtl_8ch_cfg_aresetn),
        .I5(\slv_reg_array_reg[5][7]_0 [0]),
        .O(\slv_reg_array[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \slv_reg_array[5][0]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[0]),
        .I1(axi_awaddr[0]),
        .I2(axi_awaddr[1]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[2]),
        .O(\slv_reg_array[5][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][10]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .O(\slv_reg_array[5][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][11]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .O(\slv_reg_array[5][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][12]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .O(\slv_reg_array[5][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][13]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .O(\slv_reg_array[5][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][14]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .O(\slv_reg_array[5][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[5][15]_i_1 
       (.I0(\slv_reg_array[5][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[1]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[5][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][15]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .O(\slv_reg_array[5][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][16]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .O(\slv_reg_array[5][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][17]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .O(\slv_reg_array[5][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][18]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .O(\slv_reg_array[5][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][19]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .O(\slv_reg_array[5][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \slv_reg_array[5][1]_i_1 
       (.I0(\slv_reg_array[5][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .I4(\slv_reg_array[5][1]_i_2_n_0 ),
        .I5(\slv_reg_array_reg[5][7]_0 [1]),
        .O(\slv_reg_array[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \slv_reg_array[5][1]_i_2 
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .I1(axi_awaddr[0]),
        .I2(axi_awaddr[1]),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(axi_awaddr[2]),
        .O(\slv_reg_array[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][20]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .O(\slv_reg_array[5][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][21]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .O(\slv_reg_array[5][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][22]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .O(\slv_reg_array[5][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[5][23]_i_1 
       (.I0(\slv_reg_array[5][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[2]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[5][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][23]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .O(\slv_reg_array[5][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][24]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .O(\slv_reg_array[5][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][25]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .O(\slv_reg_array[5][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][26]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .O(\slv_reg_array[5][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][27]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .O(\slv_reg_array[5][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][28]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .O(\slv_reg_array[5][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][29]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .O(\slv_reg_array[5][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][2]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .O(\slv_reg_array[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][30]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .O(\slv_reg_array[5][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[5][31]_i_1 
       (.I0(\slv_reg_array[5][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[5][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .O(\slv_reg_array[5][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \slv_reg_array[5][31]_i_3 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[1]),
        .I4(axi_awaddr[0]),
        .I5(thrtl_8ch_cfg_aresetn),
        .O(\slv_reg_array[5][31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][3]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .O(\slv_reg_array[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][4]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .O(\slv_reg_array[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][5]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .O(\slv_reg_array[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][6]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .O(\slv_reg_array[5][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[5][7]_i_1 
       (.I0(\slv_reg_array[5][31]_i_3_n_0 ),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_wstrb[0]),
        .I2(thrtl_8ch_cfg_aresetn),
        .I3(slv_reg_wren__0),
        .O(\slv_reg_array[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][7]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .O(\slv_reg_array[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][8]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .O(\slv_reg_array[5][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg_array[5][9]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[0]),
        .I4(axi_awaddr[1]),
        .I5(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .O(\slv_reg_array[5][9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[0][0]_i_1_n_0 ),
        .Q(usr_rst_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][10] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][10]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][11] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][11]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][12] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][12]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][13] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][13]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][14] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][14]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][15] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][15]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][16] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][16]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][17] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][17]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][18] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][18]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][19] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][19]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][1] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][1]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][20] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][20]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][21] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][21]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][22] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][22]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][23] 
       (.C(clk),
        .CE(\slv_reg_array[0][23]_i_1_n_0 ),
        .D(\slv_reg_array[0][23]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][24] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][24]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][25] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][25]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][26] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][26]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][27] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][27]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][28] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][28]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][29] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][29]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][2] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][2]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][30] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][30]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][31] 
       (.C(clk),
        .CE(\slv_reg_array[0][31]_i_1_n_0 ),
        .D(\slv_reg_array[0][31]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][3] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][3]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][4] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][4]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][5] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][5]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][6] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][6]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][7] 
       (.C(clk),
        .CE(\slv_reg_array[0][7]_i_1_n_0 ),
        .D(\slv_reg_array[0][7]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][8] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][8]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][9] 
       (.C(clk),
        .CE(\slv_reg_array[0][15]_i_1_n_0 ),
        .D(\slv_reg_array[0][9]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[1][0]_i_1_n_0 ),
        .Q(trigger_src),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][10] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .Q(\slv_reg_array_reg[1]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][11] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .Q(\slv_reg_array_reg[1]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][12] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .Q(\slv_reg_array_reg[1]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][13] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .Q(\slv_reg_array_reg[1]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][14] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .Q(\slv_reg_array_reg[1]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][15] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .Q(\slv_reg_array_reg[1]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][16] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .Q(\slv_reg_array_reg[1]_1 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][17] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .Q(\slv_reg_array_reg[1]_1 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][18] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .Q(\slv_reg_array_reg[1]_1 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][19] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .Q(\slv_reg_array_reg[1]_1 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][1] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .Q(\slv_reg_array_reg[1]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][20] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .Q(\slv_reg_array_reg[1]_1 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][21] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .Q(\slv_reg_array_reg[1]_1 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][22] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .Q(\slv_reg_array_reg[1]_1 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][23] 
       (.C(clk),
        .CE(\slv_reg_array[1][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .Q(\slv_reg_array_reg[1]_1 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][24] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .Q(\slv_reg_array_reg[1]_1 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][25] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .Q(\slv_reg_array_reg[1]_1 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][26] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .Q(\slv_reg_array_reg[1]_1 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][27] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .Q(\slv_reg_array_reg[1]_1 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][28] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .Q(\slv_reg_array_reg[1]_1 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][29] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .Q(\slv_reg_array_reg[1]_1 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][2] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .Q(\slv_reg_array_reg[1]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][30] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .Q(\slv_reg_array_reg[1]_1 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][31] 
       (.C(clk),
        .CE(\slv_reg_array[1][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .Q(\slv_reg_array_reg[1]_1 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][3] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .Q(\slv_reg_array_reg[1]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][4] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .Q(\slv_reg_array_reg[1]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][5] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .Q(\slv_reg_array_reg[1]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][6] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .Q(\slv_reg_array_reg[1]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][7] 
       (.C(clk),
        .CE(\slv_reg_array[1][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .Q(\slv_reg_array_reg[1]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][8] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .Q(\slv_reg_array_reg[1]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[1][9] 
       (.C(clk),
        .CE(\slv_reg_array[1][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .Q(\slv_reg_array_reg[1]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[2][0]_i_1_n_0 ),
        .Q(trigger_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][10] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[10]),
        .Q(\slv_reg_array_reg[2]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][11] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[11]),
        .Q(\slv_reg_array_reg[2]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][12] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[12]),
        .Q(\slv_reg_array_reg[2]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][13] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[13]),
        .Q(\slv_reg_array_reg[2]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][14] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[14]),
        .Q(\slv_reg_array_reg[2]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][15] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[15]),
        .Q(\slv_reg_array_reg[2]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][16] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[16]),
        .Q(\slv_reg_array_reg[2]_2 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][17] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[17]),
        .Q(\slv_reg_array_reg[2]_2 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][18] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[18]),
        .Q(\slv_reg_array_reg[2]_2 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][19] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[19]),
        .Q(\slv_reg_array_reg[2]_2 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][1] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[1]),
        .Q(\slv_reg_array_reg[2]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][20] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[20]),
        .Q(\slv_reg_array_reg[2]_2 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][21] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[21]),
        .Q(\slv_reg_array_reg[2]_2 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][22] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[22]),
        .Q(\slv_reg_array_reg[2]_2 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][23] 
       (.C(clk),
        .CE(\slv_reg_array[2][23]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[23]),
        .Q(\slv_reg_array_reg[2]_2 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][24] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[24]),
        .Q(\slv_reg_array_reg[2]_2 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][25] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[25]),
        .Q(\slv_reg_array_reg[2]_2 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][26] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[26]),
        .Q(\slv_reg_array_reg[2]_2 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][27] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[27]),
        .Q(\slv_reg_array_reg[2]_2 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][28] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[28]),
        .Q(\slv_reg_array_reg[2]_2 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][29] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[29]),
        .Q(\slv_reg_array_reg[2]_2 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][2] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[2]),
        .Q(\slv_reg_array_reg[2]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][30] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[30]),
        .Q(\slv_reg_array_reg[2]_2 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][31] 
       (.C(clk),
        .CE(\slv_reg_array[2][31]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[31]),
        .Q(\slv_reg_array_reg[2]_2 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][3] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[3]),
        .Q(\slv_reg_array_reg[2]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][4] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[4]),
        .Q(\slv_reg_array_reg[2]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][5] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[5]),
        .Q(\slv_reg_array_reg[2]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][6] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[6]),
        .Q(\slv_reg_array_reg[2]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][7] 
       (.C(clk),
        .CE(\slv_reg_array[2][7]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[7]),
        .Q(\slv_reg_array_reg[2]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][8] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[8]),
        .Q(\slv_reg_array_reg[2]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[2][9] 
       (.C(clk),
        .CE(\slv_reg_array[2][15]_i_1_n_0 ),
        .D(thrtl_8ch_cfg_cfg_in_s_axi_wdata[9]),
        .Q(\slv_reg_array_reg[2]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[3][0]_i_1_n_0 ),
        .Q(i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][10] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][10]_i_1_n_0 ),
        .Q(i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][11] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][11]_i_1_n_0 ),
        .Q(i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][12] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][12]_i_1_n_0 ),
        .Q(i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][13] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][13]_i_1_n_0 ),
        .Q(i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][14] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][14]_i_1_n_0 ),
        .Q(i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][15] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][15]_i_2_n_0 ),
        .Q(i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][16] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][16]_i_1_n_0 ),
        .Q(i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][17] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][17]_i_1_n_0 ),
        .Q(i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][18] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][18]_i_1_n_0 ),
        .Q(i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][19] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][19]_i_1_n_0 ),
        .Q(i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][1] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][1]_i_1_n_0 ),
        .Q(i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][20] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][20]_i_1_n_0 ),
        .Q(i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][21] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][21]_i_1_n_0 ),
        .Q(i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][22] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][22]_i_1_n_0 ),
        .Q(i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][23] 
       (.C(clk),
        .CE(\slv_reg_array[3][23]_i_1_n_0 ),
        .D(\slv_reg_array[3][23]_i_2_n_0 ),
        .Q(i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][24] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][24]_i_1_n_0 ),
        .Q(i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][25] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][25]_i_1_n_0 ),
        .Q(i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][26] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][26]_i_1_n_0 ),
        .Q(i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][27] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][27]_i_1_n_0 ),
        .Q(i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][28] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][28]_i_1_n_0 ),
        .Q(i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][29] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][29]_i_1_n_0 ),
        .Q(i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][2] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][2]_i_1_n_0 ),
        .Q(i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][30] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][30]_i_1_n_0 ),
        .Q(i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][31] 
       (.C(clk),
        .CE(\slv_reg_array[3][31]_i_1_n_0 ),
        .D(\slv_reg_array[3][31]_i_2_n_0 ),
        .Q(i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][3] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][3]_i_1_n_0 ),
        .Q(i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][4] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][4]_i_1_n_0 ),
        .Q(i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][5] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][5]_i_1_n_0 ),
        .Q(i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][6] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][6]_i_1_n_0 ),
        .Q(i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][7] 
       (.C(clk),
        .CE(\slv_reg_array[3][7]_i_1_n_0 ),
        .D(\slv_reg_array[3][7]_i_2_n_0 ),
        .Q(i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][8] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][8]_i_1_n_0 ),
        .Q(i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[3][9] 
       (.C(clk),
        .CE(\slv_reg_array[3][15]_i_1_n_0 ),
        .D(\slv_reg_array[3][9]_i_1_n_0 ),
        .Q(i[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[4][0]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][10] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][10]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][11] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][11]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][12] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][12]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][13] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][13]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][14] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][14]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][15] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][15]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][16] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][16]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][17] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][17]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][18] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][18]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][19] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][19]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][1] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][1]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][20] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][20]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][21] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][21]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][22] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][22]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][23] 
       (.C(clk),
        .CE(\slv_reg_array[4][23]_i_1_n_0 ),
        .D(\slv_reg_array[4][23]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][24] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][24]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][25] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][25]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][26] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][26]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][27] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][27]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][28] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][28]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][29] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][29]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][2] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][2]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][30] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][30]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][31] 
       (.C(clk),
        .CE(\slv_reg_array[4][31]_i_1_n_0 ),
        .D(\slv_reg_array[4][31]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[4]_3 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][3] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][3]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][4] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][4]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][5] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][5]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][6] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][6]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][7] 
       (.C(clk),
        .CE(\slv_reg_array[4][7]_i_1_n_0 ),
        .D(\slv_reg_array[4][7]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][8] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][8]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[4][9] 
       (.C(clk),
        .CE(\slv_reg_array[4][15]_i_1_n_0 ),
        .D(\slv_reg_array[4][9]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[4][15]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \slv_reg_array_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[5][0]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][10] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][10]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][11] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][11]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][12] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][12]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][13] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][13]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][14] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][14]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][15] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][15]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][16] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][16]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][17] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][17]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][18] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][18]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][19] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][19]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \slv_reg_array_reg[5][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[5][1]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][20] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][20]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][21] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][21]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][22] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][22]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][23] 
       (.C(clk),
        .CE(\slv_reg_array[5][23]_i_1_n_0 ),
        .D(\slv_reg_array[5][23]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][24] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][24]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][25] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][25]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][26] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][26]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][27] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][27]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][28] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][28]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][29] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][29]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][2] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][2]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][30] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][30]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][31] 
       (.C(clk),
        .CE(\slv_reg_array[5][31]_i_1_n_0 ),
        .D(\slv_reg_array[5][31]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][3] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][3]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][4] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][4]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][5] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][5]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][6] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][6]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][7] 
       (.C(clk),
        .CE(\slv_reg_array[5][7]_i_1_n_0 ),
        .D(\slv_reg_array[5][7]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[5][7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][8] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][8]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[5][9] 
       (.C(clk),
        .CE(\slv_reg_array[5][15]_i_1_n_0 ),
        .D(\slv_reg_array[5][9]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[5]_4 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
        .I1(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_struct" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_struct
   (m_axis_dma_tvalid,
    m_axis_dma_tlast,
    m_axis_dma_tkeep,
    m_axis_dma_tdata,
    clk,
    trigger_in,
    usr_rst_in,
    m_axis_dma_tready,
    trigger_in_hw,
    trigger_src,
    data_in_c,
    i,
    \fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[7].rst_comp.fdre_comp ,
    data_in_d,
    data_in_f,
    data_in_g,
    data_in_e,
    data_in_h,
    data_in_a,
    data_in_b);
  output [0:0]m_axis_dma_tvalid;
  output [0:0]m_axis_dma_tlast;
  output [0:0]m_axis_dma_tkeep;
  output [31:0]m_axis_dma_tdata;
  input clk;
  input trigger_in;
  input usr_rst_in;
  input [0:0]m_axis_dma_tready;
  input [0:0]trigger_in_hw;
  input trigger_src;
  input [31:0]data_in_c;
  input [31:0]i;
  input [15:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  input [7:0]\fd_prim_array[7].rst_comp.fdre_comp ;
  input [31:0]data_in_d;
  input [31:0]data_in_f;
  input [31:0]data_in_g;
  input [31:0]data_in_e;
  input [31:0]data_in_h;
  input [31:0]data_in_a;
  input [31:0]data_in_b;

  wire clk;
  wire [31:0]data1;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]data4;
  wire [31:0]data5;
  wire [31:0]data6;
  wire [31:0]data_in_a;
  wire [31:0]data_in_b;
  wire [31:0]data_in_c;
  wire [31:0]data_in_d;
  wire [31:0]data_in_e;
  wire [31:0]data_in_f;
  wire [31:0]data_in_g;
  wire [31:0]data_in_h;
  wire [7:1]data_sel_store_16_28;
  wire [31:0]data_vec_store_1_15_28;
  wire [31:0]data_vec_store_2_15_28;
  wire [31:0]data_vec_store_3_15_28;
  wire [31:0]data_vec_store_4_15_28;
  wire [31:0]data_vec_store_5_15_28;
  wire [31:0]data_vec_store_6_15_28;
  wire [31:0]data_vec_store_7_15_28;
  wire [31:0]data_vec_store_7_join_72_9;
  wire [15:0]decim_count_11_25;
  wire [15:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  wire [7:0]\fd_prim_array[7].rst_comp.fdre_comp ;
  wire [0:0]frame_count_12_25;
  wire [2:1]frame_count_73_13_addsub;
  wire [31:0]i;
  wire internal_ip_12_1_bitnot;
  wire inverter_op_net;
  wire [31:0]m_axis_dma_tdata;
  wire [0:0]m_axis_dma_tkeep;
  wire [0:0]m_axis_dma_tlast;
  wire [0:0]m_axis_dma_tready;
  wire [0:0]m_axis_dma_tvalid;
  wire mcode_n_0;
  wire mcode_n_22;
  wire mcode_n_30;
  wire mcode_n_31;
  wire mcode_n_33;
  wire mcode_n_66;
  wire mcode_n_67;
  wire mcode_n_68;
  wire mcode_n_69;
  wire mcode_n_70;
  wire mcode_n_71;
  wire mcode_n_72;
  wire mcode_n_73;
  wire mcode_n_74;
  wire mcode_n_75;
  wire mcode_n_76;
  wire mcode_n_77;
  wire mcode_n_78;
  wire mcode_n_79;
  wire mcode_n_80;
  wire mcode_n_81;
  wire mcode_n_82;
  wire mcode_n_83;
  wire mcode_n_84;
  wire mcode_n_85;
  wire mcode_n_86;
  wire mcode_n_87;
  wire mcode_n_88;
  wire mcode_n_89;
  wire mcode_n_90;
  wire mcode_n_91;
  wire mcode_n_92;
  wire mcode_n_93;
  wire mcode_n_94;
  wire mcode_n_95;
  wire mcode_n_96;
  wire mcode_tvalid_net;
  wire mux2_y_net;
  wire muxing_run_join_99_9;
  wire register10_n_0;
  wire [31:3]register10_q_net;
  wire register11_n_0;
  wire register11_n_1;
  wire register11_n_2;
  wire register11_n_3;
  wire register11_n_4;
  wire register11_n_5;
  wire register11_n_6;
  wire register11_n_7;
  wire register12_q_net;
  wire register13_q_net;
  wire register14_q_net;
  wire register16_n_0;
  wire register16_n_1;
  wire register16_n_10;
  wire register16_n_11;
  wire register16_n_12;
  wire register16_n_13;
  wire register16_n_14;
  wire register16_n_15;
  wire register16_n_16;
  wire register16_n_17;
  wire register16_n_18;
  wire register16_n_19;
  wire register16_n_2;
  wire register16_n_20;
  wire register16_n_21;
  wire register16_n_22;
  wire register16_n_23;
  wire register16_n_24;
  wire register16_n_25;
  wire register16_n_26;
  wire register16_n_27;
  wire register16_n_28;
  wire register16_n_29;
  wire register16_n_3;
  wire register16_n_30;
  wire register16_n_31;
  wire register16_n_37;
  wire register16_n_39;
  wire register16_n_4;
  wire register16_n_40;
  wire register16_n_41;
  wire register16_n_42;
  wire register16_n_43;
  wire register16_n_44;
  wire register16_n_5;
  wire register16_n_6;
  wire register16_n_7;
  wire register16_n_8;
  wire register16_n_9;
  wire [6:0]register16_q_net;
  wire [31:0]register3_q_net;
  wire [31:0]register4_q_net;
  wire [31:0]register7_q_net;
  wire [31:0]register8_q_net;
  wire rel_72_12;
  wire tready_join_68_5;
  wire trigger_in;
  wire [0:0]trigger_in_hw;
  wire trigger_src;
  wire unregy_join_6_1;
  wire usr_rst_in;

  design_0_thrtl_8ch_cfg_0_0_sysgen_delay_815930150c delay5
       (.clk(clk),
        .m_axis_dma_tdata(m_axis_dma_tdata),
        .\op_mem_20_24_reg[0][0]_0 (register16_n_0),
        .\op_mem_20_24_reg[0][10]_0 (register16_n_10),
        .\op_mem_20_24_reg[0][11]_0 (register16_n_11),
        .\op_mem_20_24_reg[0][12]_0 (register16_n_12),
        .\op_mem_20_24_reg[0][13]_0 (register16_n_13),
        .\op_mem_20_24_reg[0][14]_0 (register16_n_14),
        .\op_mem_20_24_reg[0][15]_0 (register16_n_15),
        .\op_mem_20_24_reg[0][16]_0 (register16_n_16),
        .\op_mem_20_24_reg[0][17]_0 (register16_n_17),
        .\op_mem_20_24_reg[0][18]_0 (register16_n_18),
        .\op_mem_20_24_reg[0][19]_0 (register16_n_19),
        .\op_mem_20_24_reg[0][1]_0 (register16_n_1),
        .\op_mem_20_24_reg[0][20]_0 (register16_n_20),
        .\op_mem_20_24_reg[0][21]_0 (register16_n_21),
        .\op_mem_20_24_reg[0][22]_0 (register16_n_22),
        .\op_mem_20_24_reg[0][23]_0 (register16_n_23),
        .\op_mem_20_24_reg[0][24]_0 (register16_n_24),
        .\op_mem_20_24_reg[0][25]_0 (register16_n_25),
        .\op_mem_20_24_reg[0][26]_0 (register16_n_26),
        .\op_mem_20_24_reg[0][27]_0 (register16_n_27),
        .\op_mem_20_24_reg[0][28]_0 (register16_n_28),
        .\op_mem_20_24_reg[0][29]_0 (register16_n_29),
        .\op_mem_20_24_reg[0][2]_0 (register16_n_2),
        .\op_mem_20_24_reg[0][30]_0 (register16_n_30),
        .\op_mem_20_24_reg[0][31]_0 (mcode_n_31),
        .\op_mem_20_24_reg[0][31]_1 (register16_n_31),
        .\op_mem_20_24_reg[0][3]_0 (register16_n_3),
        .\op_mem_20_24_reg[0][4]_0 (register16_n_4),
        .\op_mem_20_24_reg[0][5]_0 (register16_n_5),
        .\op_mem_20_24_reg[0][6]_0 (register16_n_6),
        .\op_mem_20_24_reg[0][7]_0 (register16_n_7),
        .\op_mem_20_24_reg[0][8]_0 (register16_n_8),
        .\op_mem_20_24_reg[0][9]_0 (register16_n_9));
  design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253 delay6
       (.clk(clk),
        .m_axis_dma_tvalid(m_axis_dma_tvalid),
        .mcode_tvalid_net(mcode_tvalid_net));
  design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_0 delay7
       (.clk(clk),
        .m_axis_dma_tlast(m_axis_dma_tlast),
        .\op_mem_20_24_reg[0][0]_0 (mcode_n_22));
  design_0_thrtl_8ch_cfg_0_0_sysgen_delay_f009745253_1 delay9
       (.clk(clk),
        .m_axis_dma_tkeep(m_axis_dma_tkeep),
        .register13_q_net(register13_q_net),
        .tready_join_68_5(tready_join_68_5));
  design_0_thrtl_8ch_cfg_0_0_sysgen_inverter_2f95a066e3 inverter
       (.clk(clk),
        .internal_ip_12_1_bitnot(internal_ip_12_1_bitnot),
        .inverter_op_net(inverter_op_net));
  design_0_thrtl_8ch_cfg_0_0_sysgen_mcode_block_792d208b0f mcode
       (.CO(rel_72_12),
        .D(data1),
        .O(frame_count_73_13_addsub),
        .Q(data_vec_store_6_15_28),
        .S({register11_n_3,register11_n_4,register11_n_5,register11_n_6}),
        .clk(clk),
        .data_sel_store_16_28(data_sel_store_16_28),
        .\data_sel_store_16_28_reg[2]_0 (register16_n_42),
        .\data_sel_store_16_28_reg[3]_0 (register16_n_44),
        .\data_sel_store_16_28_reg[4]_0 (register16_n_43),
        .\data_sel_store_16_28_reg[5]_0 (register16_n_41),
        .\data_sel_store_16_28_reg[6]_0 (register16_n_40),
        .\data_sel_store_16_28_reg[7]_0 (register16_n_37),
        .\data_vec_store_1_15_28_reg[31]_0 (data_vec_store_1_15_28),
        .\data_vec_store_2_15_28_reg[31]_0 (data_vec_store_2_15_28),
        .\data_vec_store_2_15_28_reg[31]_1 (data2),
        .\data_vec_store_3_15_28_reg[31]_0 (data_vec_store_3_15_28),
        .\data_vec_store_3_15_28_reg[31]_1 (data3),
        .\data_vec_store_4_15_28_reg[31]_0 (data_vec_store_4_15_28),
        .\data_vec_store_4_15_28_reg[31]_1 (data4),
        .\data_vec_store_5_15_28_reg[31]_0 (data_vec_store_5_15_28),
        .\data_vec_store_5_15_28_reg[31]_1 (data5),
        .\data_vec_store_6_15_28_reg[0]_0 (mcode_n_33),
        .\data_vec_store_6_15_28_reg[10]_0 (mcode_n_75),
        .\data_vec_store_6_15_28_reg[11]_0 (mcode_n_76),
        .\data_vec_store_6_15_28_reg[12]_0 (mcode_n_77),
        .\data_vec_store_6_15_28_reg[13]_0 (mcode_n_78),
        .\data_vec_store_6_15_28_reg[14]_0 (mcode_n_79),
        .\data_vec_store_6_15_28_reg[15]_0 (mcode_n_80),
        .\data_vec_store_6_15_28_reg[16]_0 (mcode_n_81),
        .\data_vec_store_6_15_28_reg[17]_0 (mcode_n_82),
        .\data_vec_store_6_15_28_reg[18]_0 (mcode_n_83),
        .\data_vec_store_6_15_28_reg[19]_0 (mcode_n_84),
        .\data_vec_store_6_15_28_reg[1]_0 (mcode_n_66),
        .\data_vec_store_6_15_28_reg[20]_0 (mcode_n_85),
        .\data_vec_store_6_15_28_reg[21]_0 (mcode_n_86),
        .\data_vec_store_6_15_28_reg[22]_0 (mcode_n_87),
        .\data_vec_store_6_15_28_reg[23]_0 (mcode_n_88),
        .\data_vec_store_6_15_28_reg[24]_0 (mcode_n_89),
        .\data_vec_store_6_15_28_reg[25]_0 (mcode_n_90),
        .\data_vec_store_6_15_28_reg[26]_0 (mcode_n_91),
        .\data_vec_store_6_15_28_reg[27]_0 (mcode_n_92),
        .\data_vec_store_6_15_28_reg[28]_0 (mcode_n_93),
        .\data_vec_store_6_15_28_reg[29]_0 (mcode_n_94),
        .\data_vec_store_6_15_28_reg[2]_0 (mcode_n_67),
        .\data_vec_store_6_15_28_reg[30]_0 (mcode_n_95),
        .\data_vec_store_6_15_28_reg[31]_0 (mcode_n_96),
        .\data_vec_store_6_15_28_reg[31]_1 (data6),
        .\data_vec_store_6_15_28_reg[3]_0 (mcode_n_68),
        .\data_vec_store_6_15_28_reg[4]_0 (mcode_n_69),
        .\data_vec_store_6_15_28_reg[5]_0 (mcode_n_70),
        .\data_vec_store_6_15_28_reg[6]_0 (mcode_n_71),
        .\data_vec_store_6_15_28_reg[7]_0 (mcode_n_72),
        .\data_vec_store_6_15_28_reg[8]_0 (mcode_n_73),
        .\data_vec_store_6_15_28_reg[9]_0 (mcode_n_74),
        .\data_vec_store_7_15_28_reg[31]_0 (data_vec_store_7_15_28),
        .\data_vec_store_7_15_28_reg[31]_1 (data_vec_store_7_join_72_9),
        .decim_count_11_25(decim_count_11_25),
        .\decim_count_11_25_reg[0]_0 (register11_n_7),
        .\fd_prim_array[0].rst_comp.fdre_comp (mcode_n_22),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (mcode_n_31),
        .\frame_count_12_25_reg[0]_0 (frame_count_12_25),
        .inverter_op_net(inverter_op_net),
        .last_frame_flag_17_29_reg_0({register11_n_0,register11_n_1}),
        .last_frame_flag_17_29_reg_1(register16_n_39),
        .mcode_tvalid_net(mcode_tvalid_net),
        .mux2_y_net(mux2_y_net),
        .muxing_run_14_24_reg_0(mcode_n_0),
        .muxing_run_14_24_reg_1(mcode_n_30),
        .muxing_run_join_99_9(muxing_run_join_99_9),
        .o({register16_q_net[6:5],register16_q_net[2:0]}),
        .\op_mem_20_24_reg[0][31] (register4_q_net),
        .register13_q_net(register13_q_net),
        .register14_q_net(register14_q_net),
        .rel_85_16_carry__0_0(register10_n_0),
        .rel_85_16_carry__1_0(register10_q_net),
        .tready_join_68_5(tready_join_68_5));
  design_0_thrtl_8ch_cfg_0_0_sysgen_mux_41889c05ba mux2
       (.clk(clk),
        .internal_ip_12_1_bitnot(internal_ip_12_1_bitnot),
        .mux2_y_net(mux2_y_net),
        .unregy_join_6_1(unregy_join_6_1));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister register1
       (.CO(rel_72_12),
        .clk(clk),
        .data_in_c(data_in_c),
        .\data_vec_store_2_15_28_reg[31] (data_vec_store_2_15_28),
        .\fd_prim_array[31].rst_comp.fdre_comp (data2));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2 register10
       (.O(frame_count_73_13_addsub),
        .clk(clk),
        .\fd_prim_array[0].rst_comp.fdre_comp (register10_n_0),
        .i(i),
        .o(register10_q_net),
        .rel_85_16_carry(frame_count_12_25));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0 register11
       (.CO(rel_72_12),
        .S({register11_n_3,register11_n_4,register11_n_5,register11_n_6}),
        .clk(clk),
        .decim_count_11_25(decim_count_11_25),
        .\decim_count_11_25_reg[0] (register11_n_7),
        .\fd_prim_array[0].rst_comp.fdre_comp (register11_n_2),
        .\fd_prim_array[15].rst_comp.fdre_comp ({register11_n_0,register11_n_1}),
        .\fd_prim_array[15].rst_comp.fdre_comp_0 (\fd_prim_array[15].rst_comp.fdre_comp ),
        .o(register16_q_net[0]));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1 register12
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in(trigger_in));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3 register13
       (.clk(clk),
        .register13_q_net(register13_q_net),
        .usr_rst_in(usr_rst_in));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4 register14
       (.clk(clk),
        .m_axis_dma_tready(m_axis_dma_tready),
        .register14_q_net(register14_q_net));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5 register15
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in_hw(trigger_in_hw),
        .trigger_src(trigger_src),
        .unregy_join_6_1(unregy_join_6_1));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2 register16
       (.CO(rel_72_12),
        .clk(clk),
        .data_sel_store_16_28(data_sel_store_16_28),
        .\data_sel_store_16_28_reg[1] (register16_n_42),
        .\data_sel_store_16_28_reg[1]_0 (register16_n_44),
        .\data_sel_store_16_28_reg[4] (register11_n_2),
        .\data_sel_store_16_28_reg[7] (mcode_n_30),
        .\fd_prim_array[0].rst_comp.fdre_comp (register16_n_0),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (register16_n_43),
        .\fd_prim_array[10].rst_comp.fdre_comp (register16_n_10),
        .\fd_prim_array[11].rst_comp.fdre_comp (register16_n_11),
        .\fd_prim_array[12].rst_comp.fdre_comp (register16_n_12),
        .\fd_prim_array[13].rst_comp.fdre_comp (register16_n_13),
        .\fd_prim_array[14].rst_comp.fdre_comp (register16_n_14),
        .\fd_prim_array[15].rst_comp.fdre_comp (register16_n_15),
        .\fd_prim_array[16].rst_comp.fdre_comp (register16_n_16),
        .\fd_prim_array[17].rst_comp.fdre_comp (register16_n_17),
        .\fd_prim_array[18].rst_comp.fdre_comp (register16_n_18),
        .\fd_prim_array[19].rst_comp.fdre_comp (register16_n_19),
        .\fd_prim_array[1].rst_comp.fdre_comp (register16_n_1),
        .\fd_prim_array[1].rst_comp.fdre_comp_0 (register16_n_39),
        .\fd_prim_array[20].rst_comp.fdre_comp (register16_n_20),
        .\fd_prim_array[21].rst_comp.fdre_comp (register16_n_21),
        .\fd_prim_array[22].rst_comp.fdre_comp (register16_n_22),
        .\fd_prim_array[23].rst_comp.fdre_comp (register16_n_23),
        .\fd_prim_array[24].rst_comp.fdre_comp (register16_n_24),
        .\fd_prim_array[25].rst_comp.fdre_comp (register16_n_25),
        .\fd_prim_array[26].rst_comp.fdre_comp (register16_n_26),
        .\fd_prim_array[27].rst_comp.fdre_comp (register16_n_27),
        .\fd_prim_array[28].rst_comp.fdre_comp (register16_n_28),
        .\fd_prim_array[29].rst_comp.fdre_comp (register16_n_29),
        .\fd_prim_array[2].rst_comp.fdre_comp (register16_n_2),
        .\fd_prim_array[2].rst_comp.fdre_comp_0 (register16_n_41),
        .\fd_prim_array[30].rst_comp.fdre_comp (register16_n_30),
        .\fd_prim_array[31].rst_comp.fdre_comp (register16_n_31),
        .\fd_prim_array[3].rst_comp.fdre_comp (register16_n_3),
        .\fd_prim_array[4].rst_comp.fdre_comp (register16_n_4),
        .\fd_prim_array[5].rst_comp.fdre_comp (register16_n_5),
        .\fd_prim_array[5].rst_comp.fdre_comp_0 (register16_n_40),
        .\fd_prim_array[6].rst_comp.fdre_comp (register16_n_6),
        .\fd_prim_array[6].rst_comp.fdre_comp_0 ({register16_q_net[6:5],register16_q_net[2:0]}),
        .\fd_prim_array[7].rst_comp.fdre_comp (register16_n_7),
        .\fd_prim_array[7].rst_comp.fdre_comp_0 (register16_n_37),
        .\fd_prim_array[7].rst_comp.fdre_comp_1 (\fd_prim_array[7].rst_comp.fdre_comp ),
        .\fd_prim_array[8].rst_comp.fdre_comp (register16_n_8),
        .\fd_prim_array[9].rst_comp.fdre_comp (register16_n_9),
        .muxing_run_14_24_reg(mcode_n_0),
        .muxing_run_join_99_9(muxing_run_join_99_9),
        .o(register8_q_net),
        .\op_mem_20_24_reg[0][0] (mcode_n_33),
        .\op_mem_20_24_reg[0][10] (mcode_n_75),
        .\op_mem_20_24_reg[0][11] (mcode_n_76),
        .\op_mem_20_24_reg[0][12] (mcode_n_77),
        .\op_mem_20_24_reg[0][13] (mcode_n_78),
        .\op_mem_20_24_reg[0][14] (mcode_n_79),
        .\op_mem_20_24_reg[0][15] (mcode_n_80),
        .\op_mem_20_24_reg[0][16] (mcode_n_81),
        .\op_mem_20_24_reg[0][17] (mcode_n_82),
        .\op_mem_20_24_reg[0][18] (mcode_n_83),
        .\op_mem_20_24_reg[0][19] (mcode_n_84),
        .\op_mem_20_24_reg[0][1] (mcode_n_66),
        .\op_mem_20_24_reg[0][20] (mcode_n_85),
        .\op_mem_20_24_reg[0][21] (mcode_n_86),
        .\op_mem_20_24_reg[0][22] (mcode_n_87),
        .\op_mem_20_24_reg[0][23] (mcode_n_88),
        .\op_mem_20_24_reg[0][24] (mcode_n_89),
        .\op_mem_20_24_reg[0][25] (mcode_n_90),
        .\op_mem_20_24_reg[0][26] (mcode_n_91),
        .\op_mem_20_24_reg[0][27] (mcode_n_92),
        .\op_mem_20_24_reg[0][28] (mcode_n_93),
        .\op_mem_20_24_reg[0][29] (mcode_n_94),
        .\op_mem_20_24_reg[0][2] (mcode_n_67),
        .\op_mem_20_24_reg[0][30] (mcode_n_95),
        .\op_mem_20_24_reg[0][31] (data_vec_store_7_join_72_9),
        .\op_mem_20_24_reg[0][31]_0 (mcode_n_96),
        .\op_mem_20_24_reg[0][31]_1 (data_vec_store_1_15_28),
        .\op_mem_20_24_reg[0][31]_2 (register7_q_net),
        .\op_mem_20_24_reg[0][31]_3 (data_vec_store_5_15_28),
        .\op_mem_20_24_reg[0][31]_4 (register3_q_net),
        .\op_mem_20_24_reg[0][31]_5 (data4),
        .\op_mem_20_24_reg[0][31]_6 (data3),
        .\op_mem_20_24_reg[0][31]_7 (data2),
        .\op_mem_20_24_reg[0][3] (mcode_n_68),
        .\op_mem_20_24_reg[0][4] (mcode_n_69),
        .\op_mem_20_24_reg[0][5] (mcode_n_70),
        .\op_mem_20_24_reg[0][6] (mcode_n_71),
        .\op_mem_20_24_reg[0][7] (mcode_n_72),
        .\op_mem_20_24_reg[0][8] (mcode_n_73),
        .\op_mem_20_24_reg[0][9] (mcode_n_74),
        .register13_q_net(register13_q_net));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6 register2
       (.CO(rel_72_12),
        .clk(clk),
        .data_in_d(data_in_d),
        .\data_vec_store_3_15_28_reg[31] (data_vec_store_3_15_28),
        .\fd_prim_array[31].rst_comp.fdre_comp (data3));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7 register3
       (.CO(rel_72_12),
        .clk(clk),
        .data_in_f(data_in_f),
        .\data_vec_store_5_15_28_reg[31] (data_vec_store_5_15_28),
        .\fd_prim_array[31].rst_comp.fdre_comp (data5),
        .o(register3_q_net));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8 register4
       (.CO(rel_72_12),
        .Q(data_vec_store_6_15_28),
        .clk(clk),
        .data_in_g(data_in_g),
        .\fd_prim_array[31].rst_comp.fdre_comp (data6),
        .o(register4_q_net));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9 register5
       (.CO(rel_72_12),
        .clk(clk),
        .data_in_e(data_in_e),
        .\data_vec_store_4_15_28_reg[31] (data_vec_store_4_15_28),
        .\fd_prim_array[31].rst_comp.fdre_comp (data4));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10 register6
       (.CO(rel_72_12),
        .clk(clk),
        .data_in_h(data_in_h),
        .\data_vec_store_7_15_28_reg[31] (data_vec_store_7_15_28),
        .\fd_prim_array[31].rst_comp.fdre_comp (data_vec_store_7_join_72_9));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11 register7
       (.clk(clk),
        .data_in_a(data_in_a),
        .o(register7_q_net));
  design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12 register8
       (.CO(rel_72_12),
        .D(data1),
        .clk(clk),
        .data_in_b(data_in_b),
        .\data_vec_store_1_15_28_reg[31] (data_vec_store_1_15_28),
        .o(register8_q_net));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_2_15_28_reg[31] ,
    data_in_c,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_2_15_28_reg[31] ;
  input [31:0]data_in_c;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_c;
  wire [31:0]\data_vec_store_2_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_33 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_in_c(data_in_c),
        .\data_vec_store_2_15_28_reg[31] (\data_vec_store_2_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_10
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_7_15_28_reg[31] ,
    data_in_h,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_7_15_28_reg[31] ;
  input [31:0]data_in_h;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_h;
  wire [31:0]\data_vec_store_7_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_15 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_in_h(data_in_h),
        .\data_vec_store_7_15_28_reg[31] (\data_vec_store_7_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_11
   (o,
    data_in_a,
    clk);
  output [31:0]o;
  input [31:0]data_in_a;
  input clk;

  wire clk;
  wire [31:0]data_in_a;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_13 synth_reg_inst
       (.clk(clk),
        .data_in_a(data_in_a),
        .o(o));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_12
   (D,
    o,
    CO,
    \data_vec_store_1_15_28_reg[31] ,
    data_in_b,
    clk);
  output [31:0]D;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_1_15_28_reg[31] ;
  input [31:0]data_in_b;
  input clk;

  wire [0:0]CO;
  wire [31:0]D;
  wire clk;
  wire [31:0]data_in_b;
  wire [31:0]\data_vec_store_1_15_28_reg[31] ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0 synth_reg_inst
       (.CO(CO),
        .D(D),
        .clk(clk),
        .data_in_b(data_in_b),
        .\data_vec_store_1_15_28_reg[31] (\data_vec_store_1_15_28_reg[31] ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_2
   (\fd_prim_array[0].rst_comp.fdre_comp ,
    o,
    rel_85_16_carry,
    O,
    i,
    clk);
  output [0:0]\fd_prim_array[0].rst_comp.fdre_comp ;
  output [28:0]o;
  input [0:0]rel_85_16_carry;
  input [1:0]O;
  input [31:0]i;
  input clk;

  wire [1:0]O;
  wire clk;
  wire [0:0]\fd_prim_array[0].rst_comp.fdre_comp ;
  wire [31:0]i;
  wire [28:0]o;
  wire [0:0]rel_85_16_carry;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_31 synth_reg_inst
       (.O(O),
        .clk(clk),
        .\fd_prim_array[0].rst_comp.fdre_comp (\fd_prim_array[0].rst_comp.fdre_comp ),
        .i(i),
        .o(o),
        .rel_85_16_carry(rel_85_16_carry));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_6
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_3_15_28_reg[31] ,
    data_in_d,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_3_15_28_reg[31] ;
  input [31:0]data_in_d;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_d;
  wire [31:0]\data_vec_store_3_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_23 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_in_d(data_in_d),
        .\data_vec_store_3_15_28_reg[31] (\data_vec_store_3_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_7
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    o,
    CO,
    \data_vec_store_5_15_28_reg[31] ,
    data_in_f,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]\data_vec_store_5_15_28_reg[31] ;
  input [31:0]data_in_f;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_f;
  wire [31:0]\data_vec_store_5_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_21 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_in_f(data_in_f),
        .\data_vec_store_5_15_28_reg[31] (\data_vec_store_5_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_8
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    o,
    CO,
    Q,
    data_in_g,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  output [31:0]o;
  input [0:0]CO;
  input [31:0]Q;
  input [31:0]data_in_g;
  input clk;

  wire [0:0]CO;
  wire [31:0]Q;
  wire clk;
  wire [31:0]data_in_g;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  wire [31:0]o;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_19 synth_reg_inst
       (.CO(CO),
        .Q(Q),
        .clk(clk),
        .data_in_g(data_in_g),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister_9
   (\fd_prim_array[31].rst_comp.fdre_comp ,
    CO,
    \data_vec_store_4_15_28_reg[31] ,
    data_in_e,
    clk);
  output [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;
  input [0:0]CO;
  input [31:0]\data_vec_store_4_15_28_reg[31] ;
  input [31:0]data_in_e;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [31:0]data_in_e;
  wire [31:0]\data_vec_store_4_15_28_reg[31] ;
  wire [31:0]\fd_prim_array[31].rst_comp.fdre_comp ;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized0_17 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_in_e(data_in_e),
        .\data_vec_store_4_15_28_reg[31] (\data_vec_store_4_15_28_reg[31] ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized0
   (\fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[0].rst_comp.fdre_comp ,
    S,
    \decim_count_11_25_reg[0] ,
    decim_count_11_25,
    CO,
    o,
    \fd_prim_array[15].rst_comp.fdre_comp_0 ,
    clk);
  output [1:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  output \fd_prim_array[0].rst_comp.fdre_comp ;
  output [3:0]S;
  output \decim_count_11_25_reg[0] ;
  input [15:0]decim_count_11_25;
  input [0:0]CO;
  input [0:0]o;
  input [15:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  input clk;

  wire [0:0]CO;
  wire [3:0]S;
  wire clk;
  wire [15:0]decim_count_11_25;
  wire \decim_count_11_25_reg[0] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp ;
  wire [1:0]\fd_prim_array[15].rst_comp.fdre_comp ;
  wire [15:0]\fd_prim_array[15].rst_comp.fdre_comp_0 ;
  wire [0:0]o;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized1 synth_reg_inst
       (.CO(CO),
        .S(S),
        .clk(clk),
        .decim_count_11_25(decim_count_11_25),
        .\decim_count_11_25_reg[0] (\decim_count_11_25_reg[0] ),
        .\fd_prim_array[0].rst_comp.fdre_comp (\fd_prim_array[0].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp (\fd_prim_array[15].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp_0 (\fd_prim_array[15].rst_comp.fdre_comp_0 ),
        .o(o));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1
   (register12_q_net,
    trigger_in,
    clk);
  output register12_q_net;
  input trigger_in;
  input clk;

  wire clk;
  wire register12_q_net;
  wire trigger_in;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_29 synth_reg_inst
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in(trigger_in));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_3
   (register13_q_net,
    usr_rst_in,
    clk);
  output register13_q_net;
  input usr_rst_in;
  input clk;

  wire clk;
  wire register13_q_net;
  wire usr_rst_in;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_27 synth_reg_inst
       (.clk(clk),
        .register13_q_net(register13_q_net),
        .usr_rst_in(usr_rst_in));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_4
   (register14_q_net,
    m_axis_dma_tready,
    clk);
  output register14_q_net;
  input [0:0]m_axis_dma_tready;
  input clk;

  wire clk;
  wire [0:0]m_axis_dma_tready;
  wire register14_q_net;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init_25 synth_reg_inst
       (.clk(clk),
        .m_axis_dma_tready(m_axis_dma_tready),
        .register14_q_net(register14_q_net));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized1_5
   (unregy_join_6_1,
    trigger_in_hw,
    clk,
    trigger_src,
    register12_q_net);
  output unregy_join_6_1;
  input [0:0]trigger_in_hw;
  input clk;
  input trigger_src;
  input register12_q_net;

  wire clk;
  wire register12_q_net;
  wire [0:0]trigger_in_hw;
  wire trigger_src;
  wire unregy_join_6_1;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init synth_reg_inst
       (.clk(clk),
        .register12_q_net(register12_q_net),
        .trigger_in_hw(trigger_in_hw),
        .trigger_src(trigger_src),
        .unregy_join_6_1(unregy_join_6_1));
endmodule

(* ORIG_REF_NAME = "thrtl_8ch_cfg_xlregister" *) 
module design_0_thrtl_8ch_cfg_0_0_thrtl_8ch_cfg_xlregister__parameterized2
   (\fd_prim_array[0].rst_comp.fdre_comp ,
    \fd_prim_array[1].rst_comp.fdre_comp ,
    \fd_prim_array[2].rst_comp.fdre_comp ,
    \fd_prim_array[3].rst_comp.fdre_comp ,
    \fd_prim_array[4].rst_comp.fdre_comp ,
    \fd_prim_array[5].rst_comp.fdre_comp ,
    \fd_prim_array[6].rst_comp.fdre_comp ,
    \fd_prim_array[7].rst_comp.fdre_comp ,
    \fd_prim_array[8].rst_comp.fdre_comp ,
    \fd_prim_array[9].rst_comp.fdre_comp ,
    \fd_prim_array[10].rst_comp.fdre_comp ,
    \fd_prim_array[11].rst_comp.fdre_comp ,
    \fd_prim_array[12].rst_comp.fdre_comp ,
    \fd_prim_array[13].rst_comp.fdre_comp ,
    \fd_prim_array[14].rst_comp.fdre_comp ,
    \fd_prim_array[15].rst_comp.fdre_comp ,
    \fd_prim_array[16].rst_comp.fdre_comp ,
    \fd_prim_array[17].rst_comp.fdre_comp ,
    \fd_prim_array[18].rst_comp.fdre_comp ,
    \fd_prim_array[19].rst_comp.fdre_comp ,
    \fd_prim_array[20].rst_comp.fdre_comp ,
    \fd_prim_array[21].rst_comp.fdre_comp ,
    \fd_prim_array[22].rst_comp.fdre_comp ,
    \fd_prim_array[23].rst_comp.fdre_comp ,
    \fd_prim_array[24].rst_comp.fdre_comp ,
    \fd_prim_array[25].rst_comp.fdre_comp ,
    \fd_prim_array[26].rst_comp.fdre_comp ,
    \fd_prim_array[27].rst_comp.fdre_comp ,
    \fd_prim_array[28].rst_comp.fdre_comp ,
    \fd_prim_array[29].rst_comp.fdre_comp ,
    \fd_prim_array[30].rst_comp.fdre_comp ,
    \fd_prim_array[31].rst_comp.fdre_comp ,
    \fd_prim_array[6].rst_comp.fdre_comp_0 ,
    \fd_prim_array[7].rst_comp.fdre_comp_0 ,
    muxing_run_join_99_9,
    \fd_prim_array[1].rst_comp.fdre_comp_0 ,
    \fd_prim_array[5].rst_comp.fdre_comp_0 ,
    \fd_prim_array[2].rst_comp.fdre_comp_0 ,
    \data_sel_store_16_28_reg[1] ,
    \fd_prim_array[0].rst_comp.fdre_comp_0 ,
    \data_sel_store_16_28_reg[1]_0 ,
    \op_mem_20_24_reg[0][31] ,
    \op_mem_20_24_reg[0][0] ,
    \op_mem_20_24_reg[0][1] ,
    \op_mem_20_24_reg[0][2] ,
    \op_mem_20_24_reg[0][3] ,
    \op_mem_20_24_reg[0][4] ,
    \op_mem_20_24_reg[0][5] ,
    \op_mem_20_24_reg[0][6] ,
    \op_mem_20_24_reg[0][7] ,
    \op_mem_20_24_reg[0][8] ,
    \op_mem_20_24_reg[0][9] ,
    \op_mem_20_24_reg[0][10] ,
    \op_mem_20_24_reg[0][11] ,
    \op_mem_20_24_reg[0][12] ,
    \op_mem_20_24_reg[0][13] ,
    \op_mem_20_24_reg[0][14] ,
    \op_mem_20_24_reg[0][15] ,
    \op_mem_20_24_reg[0][16] ,
    \op_mem_20_24_reg[0][17] ,
    \op_mem_20_24_reg[0][18] ,
    \op_mem_20_24_reg[0][19] ,
    \op_mem_20_24_reg[0][20] ,
    \op_mem_20_24_reg[0][21] ,
    \op_mem_20_24_reg[0][22] ,
    \op_mem_20_24_reg[0][23] ,
    \op_mem_20_24_reg[0][24] ,
    \op_mem_20_24_reg[0][25] ,
    \op_mem_20_24_reg[0][26] ,
    \op_mem_20_24_reg[0][27] ,
    \op_mem_20_24_reg[0][28] ,
    \op_mem_20_24_reg[0][29] ,
    \op_mem_20_24_reg[0][30] ,
    \op_mem_20_24_reg[0][31]_0 ,
    o,
    CO,
    \op_mem_20_24_reg[0][31]_1 ,
    \op_mem_20_24_reg[0][31]_2 ,
    register13_q_net,
    \data_sel_store_16_28_reg[7] ,
    data_sel_store_16_28,
    muxing_run_14_24_reg,
    \op_mem_20_24_reg[0][31]_3 ,
    \op_mem_20_24_reg[0][31]_4 ,
    \op_mem_20_24_reg[0][31]_5 ,
    \op_mem_20_24_reg[0][31]_6 ,
    \op_mem_20_24_reg[0][31]_7 ,
    \data_sel_store_16_28_reg[4] ,
    \fd_prim_array[7].rst_comp.fdre_comp_1 ,
    clk);
  output \fd_prim_array[0].rst_comp.fdre_comp ;
  output \fd_prim_array[1].rst_comp.fdre_comp ;
  output \fd_prim_array[2].rst_comp.fdre_comp ;
  output \fd_prim_array[3].rst_comp.fdre_comp ;
  output \fd_prim_array[4].rst_comp.fdre_comp ;
  output \fd_prim_array[5].rst_comp.fdre_comp ;
  output \fd_prim_array[6].rst_comp.fdre_comp ;
  output \fd_prim_array[7].rst_comp.fdre_comp ;
  output \fd_prim_array[8].rst_comp.fdre_comp ;
  output \fd_prim_array[9].rst_comp.fdre_comp ;
  output \fd_prim_array[10].rst_comp.fdre_comp ;
  output \fd_prim_array[11].rst_comp.fdre_comp ;
  output \fd_prim_array[12].rst_comp.fdre_comp ;
  output \fd_prim_array[13].rst_comp.fdre_comp ;
  output \fd_prim_array[14].rst_comp.fdre_comp ;
  output \fd_prim_array[15].rst_comp.fdre_comp ;
  output \fd_prim_array[16].rst_comp.fdre_comp ;
  output \fd_prim_array[17].rst_comp.fdre_comp ;
  output \fd_prim_array[18].rst_comp.fdre_comp ;
  output \fd_prim_array[19].rst_comp.fdre_comp ;
  output \fd_prim_array[20].rst_comp.fdre_comp ;
  output \fd_prim_array[21].rst_comp.fdre_comp ;
  output \fd_prim_array[22].rst_comp.fdre_comp ;
  output \fd_prim_array[23].rst_comp.fdre_comp ;
  output \fd_prim_array[24].rst_comp.fdre_comp ;
  output \fd_prim_array[25].rst_comp.fdre_comp ;
  output \fd_prim_array[26].rst_comp.fdre_comp ;
  output \fd_prim_array[27].rst_comp.fdre_comp ;
  output \fd_prim_array[28].rst_comp.fdre_comp ;
  output \fd_prim_array[29].rst_comp.fdre_comp ;
  output \fd_prim_array[30].rst_comp.fdre_comp ;
  output \fd_prim_array[31].rst_comp.fdre_comp ;
  output [4:0]\fd_prim_array[6].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  output muxing_run_join_99_9;
  output \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  output \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  output \data_sel_store_16_28_reg[1] ;
  output \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  output \data_sel_store_16_28_reg[1]_0 ;
  input [31:0]\op_mem_20_24_reg[0][31] ;
  input \op_mem_20_24_reg[0][0] ;
  input \op_mem_20_24_reg[0][1] ;
  input \op_mem_20_24_reg[0][2] ;
  input \op_mem_20_24_reg[0][3] ;
  input \op_mem_20_24_reg[0][4] ;
  input \op_mem_20_24_reg[0][5] ;
  input \op_mem_20_24_reg[0][6] ;
  input \op_mem_20_24_reg[0][7] ;
  input \op_mem_20_24_reg[0][8] ;
  input \op_mem_20_24_reg[0][9] ;
  input \op_mem_20_24_reg[0][10] ;
  input \op_mem_20_24_reg[0][11] ;
  input \op_mem_20_24_reg[0][12] ;
  input \op_mem_20_24_reg[0][13] ;
  input \op_mem_20_24_reg[0][14] ;
  input \op_mem_20_24_reg[0][15] ;
  input \op_mem_20_24_reg[0][16] ;
  input \op_mem_20_24_reg[0][17] ;
  input \op_mem_20_24_reg[0][18] ;
  input \op_mem_20_24_reg[0][19] ;
  input \op_mem_20_24_reg[0][20] ;
  input \op_mem_20_24_reg[0][21] ;
  input \op_mem_20_24_reg[0][22] ;
  input \op_mem_20_24_reg[0][23] ;
  input \op_mem_20_24_reg[0][24] ;
  input \op_mem_20_24_reg[0][25] ;
  input \op_mem_20_24_reg[0][26] ;
  input \op_mem_20_24_reg[0][27] ;
  input \op_mem_20_24_reg[0][28] ;
  input \op_mem_20_24_reg[0][29] ;
  input \op_mem_20_24_reg[0][30] ;
  input \op_mem_20_24_reg[0][31]_0 ;
  input [31:0]o;
  input [0:0]CO;
  input [31:0]\op_mem_20_24_reg[0][31]_1 ;
  input [31:0]\op_mem_20_24_reg[0][31]_2 ;
  input register13_q_net;
  input \data_sel_store_16_28_reg[7] ;
  input [6:0]data_sel_store_16_28;
  input muxing_run_14_24_reg;
  input [31:0]\op_mem_20_24_reg[0][31]_3 ;
  input [31:0]\op_mem_20_24_reg[0][31]_4 ;
  input [31:0]\op_mem_20_24_reg[0][31]_5 ;
  input [31:0]\op_mem_20_24_reg[0][31]_6 ;
  input [31:0]\op_mem_20_24_reg[0][31]_7 ;
  input \data_sel_store_16_28_reg[4] ;
  input [7:0]\fd_prim_array[7].rst_comp.fdre_comp_1 ;
  input clk;

  wire [0:0]CO;
  wire clk;
  wire [6:0]data_sel_store_16_28;
  wire \data_sel_store_16_28_reg[1] ;
  wire \data_sel_store_16_28_reg[1]_0 ;
  wire \data_sel_store_16_28_reg[4] ;
  wire \data_sel_store_16_28_reg[7] ;
  wire \fd_prim_array[0].rst_comp.fdre_comp ;
  wire \fd_prim_array[0].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[10].rst_comp.fdre_comp ;
  wire \fd_prim_array[11].rst_comp.fdre_comp ;
  wire \fd_prim_array[12].rst_comp.fdre_comp ;
  wire \fd_prim_array[13].rst_comp.fdre_comp ;
  wire \fd_prim_array[14].rst_comp.fdre_comp ;
  wire \fd_prim_array[15].rst_comp.fdre_comp ;
  wire \fd_prim_array[16].rst_comp.fdre_comp ;
  wire \fd_prim_array[17].rst_comp.fdre_comp ;
  wire \fd_prim_array[18].rst_comp.fdre_comp ;
  wire \fd_prim_array[19].rst_comp.fdre_comp ;
  wire \fd_prim_array[1].rst_comp.fdre_comp ;
  wire \fd_prim_array[1].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[20].rst_comp.fdre_comp ;
  wire \fd_prim_array[21].rst_comp.fdre_comp ;
  wire \fd_prim_array[22].rst_comp.fdre_comp ;
  wire \fd_prim_array[23].rst_comp.fdre_comp ;
  wire \fd_prim_array[24].rst_comp.fdre_comp ;
  wire \fd_prim_array[25].rst_comp.fdre_comp ;
  wire \fd_prim_array[26].rst_comp.fdre_comp ;
  wire \fd_prim_array[27].rst_comp.fdre_comp ;
  wire \fd_prim_array[28].rst_comp.fdre_comp ;
  wire \fd_prim_array[29].rst_comp.fdre_comp ;
  wire \fd_prim_array[2].rst_comp.fdre_comp ;
  wire \fd_prim_array[2].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[30].rst_comp.fdre_comp ;
  wire \fd_prim_array[31].rst_comp.fdre_comp ;
  wire \fd_prim_array[3].rst_comp.fdre_comp ;
  wire \fd_prim_array[4].rst_comp.fdre_comp ;
  wire \fd_prim_array[5].rst_comp.fdre_comp ;
  wire \fd_prim_array[5].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[6].rst_comp.fdre_comp ;
  wire [4:0]\fd_prim_array[6].rst_comp.fdre_comp_0 ;
  wire \fd_prim_array[7].rst_comp.fdre_comp ;
  wire \fd_prim_array[7].rst_comp.fdre_comp_0 ;
  wire [7:0]\fd_prim_array[7].rst_comp.fdre_comp_1 ;
  wire \fd_prim_array[8].rst_comp.fdre_comp ;
  wire \fd_prim_array[9].rst_comp.fdre_comp ;
  wire muxing_run_14_24_reg;
  wire muxing_run_join_99_9;
  wire [31:0]o;
  wire \op_mem_20_24_reg[0][0] ;
  wire \op_mem_20_24_reg[0][10] ;
  wire \op_mem_20_24_reg[0][11] ;
  wire \op_mem_20_24_reg[0][12] ;
  wire \op_mem_20_24_reg[0][13] ;
  wire \op_mem_20_24_reg[0][14] ;
  wire \op_mem_20_24_reg[0][15] ;
  wire \op_mem_20_24_reg[0][16] ;
  wire \op_mem_20_24_reg[0][17] ;
  wire \op_mem_20_24_reg[0][18] ;
  wire \op_mem_20_24_reg[0][19] ;
  wire \op_mem_20_24_reg[0][1] ;
  wire \op_mem_20_24_reg[0][20] ;
  wire \op_mem_20_24_reg[0][21] ;
  wire \op_mem_20_24_reg[0][22] ;
  wire \op_mem_20_24_reg[0][23] ;
  wire \op_mem_20_24_reg[0][24] ;
  wire \op_mem_20_24_reg[0][25] ;
  wire \op_mem_20_24_reg[0][26] ;
  wire \op_mem_20_24_reg[0][27] ;
  wire \op_mem_20_24_reg[0][28] ;
  wire \op_mem_20_24_reg[0][29] ;
  wire \op_mem_20_24_reg[0][2] ;
  wire \op_mem_20_24_reg[0][30] ;
  wire [31:0]\op_mem_20_24_reg[0][31] ;
  wire \op_mem_20_24_reg[0][31]_0 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_1 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_2 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_3 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_4 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_5 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_6 ;
  wire [31:0]\op_mem_20_24_reg[0][31]_7 ;
  wire \op_mem_20_24_reg[0][3] ;
  wire \op_mem_20_24_reg[0][4] ;
  wire \op_mem_20_24_reg[0][5] ;
  wire \op_mem_20_24_reg[0][6] ;
  wire \op_mem_20_24_reg[0][7] ;
  wire \op_mem_20_24_reg[0][8] ;
  wire \op_mem_20_24_reg[0][9] ;
  wire register13_q_net;

  design_0_thrtl_8ch_cfg_0_0_synth_reg_w_init__parameterized3 synth_reg_inst
       (.CO(CO),
        .clk(clk),
        .data_sel_store_16_28(data_sel_store_16_28),
        .\data_sel_store_16_28_reg[1] (\data_sel_store_16_28_reg[1] ),
        .\data_sel_store_16_28_reg[1]_0 (\data_sel_store_16_28_reg[1]_0 ),
        .\data_sel_store_16_28_reg[4] (\data_sel_store_16_28_reg[4] ),
        .\data_sel_store_16_28_reg[7] (\data_sel_store_16_28_reg[7] ),
        .\fd_prim_array[0].rst_comp.fdre_comp (\fd_prim_array[0].rst_comp.fdre_comp ),
        .\fd_prim_array[0].rst_comp.fdre_comp_0 (\fd_prim_array[0].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[10].rst_comp.fdre_comp (\fd_prim_array[10].rst_comp.fdre_comp ),
        .\fd_prim_array[11].rst_comp.fdre_comp (\fd_prim_array[11].rst_comp.fdre_comp ),
        .\fd_prim_array[12].rst_comp.fdre_comp (\fd_prim_array[12].rst_comp.fdre_comp ),
        .\fd_prim_array[13].rst_comp.fdre_comp (\fd_prim_array[13].rst_comp.fdre_comp ),
        .\fd_prim_array[14].rst_comp.fdre_comp (\fd_prim_array[14].rst_comp.fdre_comp ),
        .\fd_prim_array[15].rst_comp.fdre_comp (\fd_prim_array[15].rst_comp.fdre_comp ),
        .\fd_prim_array[16].rst_comp.fdre_comp (\fd_prim_array[16].rst_comp.fdre_comp ),
        .\fd_prim_array[17].rst_comp.fdre_comp (\fd_prim_array[17].rst_comp.fdre_comp ),
        .\fd_prim_array[18].rst_comp.fdre_comp (\fd_prim_array[18].rst_comp.fdre_comp ),
        .\fd_prim_array[19].rst_comp.fdre_comp (\fd_prim_array[19].rst_comp.fdre_comp ),
        .\fd_prim_array[1].rst_comp.fdre_comp (\fd_prim_array[1].rst_comp.fdre_comp ),
        .\fd_prim_array[1].rst_comp.fdre_comp_0 (\fd_prim_array[1].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[20].rst_comp.fdre_comp (\fd_prim_array[20].rst_comp.fdre_comp ),
        .\fd_prim_array[21].rst_comp.fdre_comp (\fd_prim_array[21].rst_comp.fdre_comp ),
        .\fd_prim_array[22].rst_comp.fdre_comp (\fd_prim_array[22].rst_comp.fdre_comp ),
        .\fd_prim_array[23].rst_comp.fdre_comp (\fd_prim_array[23].rst_comp.fdre_comp ),
        .\fd_prim_array[24].rst_comp.fdre_comp (\fd_prim_array[24].rst_comp.fdre_comp ),
        .\fd_prim_array[25].rst_comp.fdre_comp (\fd_prim_array[25].rst_comp.fdre_comp ),
        .\fd_prim_array[26].rst_comp.fdre_comp (\fd_prim_array[26].rst_comp.fdre_comp ),
        .\fd_prim_array[27].rst_comp.fdre_comp (\fd_prim_array[27].rst_comp.fdre_comp ),
        .\fd_prim_array[28].rst_comp.fdre_comp (\fd_prim_array[28].rst_comp.fdre_comp ),
        .\fd_prim_array[29].rst_comp.fdre_comp (\fd_prim_array[29].rst_comp.fdre_comp ),
        .\fd_prim_array[2].rst_comp.fdre_comp (\fd_prim_array[2].rst_comp.fdre_comp ),
        .\fd_prim_array[2].rst_comp.fdre_comp_0 (\fd_prim_array[2].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[30].rst_comp.fdre_comp (\fd_prim_array[30].rst_comp.fdre_comp ),
        .\fd_prim_array[31].rst_comp.fdre_comp (\fd_prim_array[31].rst_comp.fdre_comp ),
        .\fd_prim_array[3].rst_comp.fdre_comp (\fd_prim_array[3].rst_comp.fdre_comp ),
        .\fd_prim_array[4].rst_comp.fdre_comp (\fd_prim_array[4].rst_comp.fdre_comp ),
        .\fd_prim_array[5].rst_comp.fdre_comp (\fd_prim_array[5].rst_comp.fdre_comp ),
        .\fd_prim_array[5].rst_comp.fdre_comp_0 (\fd_prim_array[5].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[6].rst_comp.fdre_comp (\fd_prim_array[6].rst_comp.fdre_comp ),
        .\fd_prim_array[6].rst_comp.fdre_comp_0 (\fd_prim_array[6].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[7].rst_comp.fdre_comp (\fd_prim_array[7].rst_comp.fdre_comp ),
        .\fd_prim_array[7].rst_comp.fdre_comp_0 (\fd_prim_array[7].rst_comp.fdre_comp_0 ),
        .\fd_prim_array[7].rst_comp.fdre_comp_1 (\fd_prim_array[7].rst_comp.fdre_comp_1 ),
        .\fd_prim_array[8].rst_comp.fdre_comp (\fd_prim_array[8].rst_comp.fdre_comp ),
        .\fd_prim_array[9].rst_comp.fdre_comp (\fd_prim_array[9].rst_comp.fdre_comp ),
        .muxing_run_14_24_reg(muxing_run_14_24_reg),
        .muxing_run_join_99_9(muxing_run_join_99_9),
        .o(o),
        .\op_mem_20_24_reg[0][0] (\op_mem_20_24_reg[0][0] ),
        .\op_mem_20_24_reg[0][10] (\op_mem_20_24_reg[0][10] ),
        .\op_mem_20_24_reg[0][11] (\op_mem_20_24_reg[0][11] ),
        .\op_mem_20_24_reg[0][12] (\op_mem_20_24_reg[0][12] ),
        .\op_mem_20_24_reg[0][13] (\op_mem_20_24_reg[0][13] ),
        .\op_mem_20_24_reg[0][14] (\op_mem_20_24_reg[0][14] ),
        .\op_mem_20_24_reg[0][15] (\op_mem_20_24_reg[0][15] ),
        .\op_mem_20_24_reg[0][16] (\op_mem_20_24_reg[0][16] ),
        .\op_mem_20_24_reg[0][17] (\op_mem_20_24_reg[0][17] ),
        .\op_mem_20_24_reg[0][18] (\op_mem_20_24_reg[0][18] ),
        .\op_mem_20_24_reg[0][19] (\op_mem_20_24_reg[0][19] ),
        .\op_mem_20_24_reg[0][1] (\op_mem_20_24_reg[0][1] ),
        .\op_mem_20_24_reg[0][20] (\op_mem_20_24_reg[0][20] ),
        .\op_mem_20_24_reg[0][21] (\op_mem_20_24_reg[0][21] ),
        .\op_mem_20_24_reg[0][22] (\op_mem_20_24_reg[0][22] ),
        .\op_mem_20_24_reg[0][23] (\op_mem_20_24_reg[0][23] ),
        .\op_mem_20_24_reg[0][24] (\op_mem_20_24_reg[0][24] ),
        .\op_mem_20_24_reg[0][25] (\op_mem_20_24_reg[0][25] ),
        .\op_mem_20_24_reg[0][26] (\op_mem_20_24_reg[0][26] ),
        .\op_mem_20_24_reg[0][27] (\op_mem_20_24_reg[0][27] ),
        .\op_mem_20_24_reg[0][28] (\op_mem_20_24_reg[0][28] ),
        .\op_mem_20_24_reg[0][29] (\op_mem_20_24_reg[0][29] ),
        .\op_mem_20_24_reg[0][2] (\op_mem_20_24_reg[0][2] ),
        .\op_mem_20_24_reg[0][30] (\op_mem_20_24_reg[0][30] ),
        .\op_mem_20_24_reg[0][31] (\op_mem_20_24_reg[0][31] ),
        .\op_mem_20_24_reg[0][31]_0 (\op_mem_20_24_reg[0][31]_0 ),
        .\op_mem_20_24_reg[0][31]_1 (\op_mem_20_24_reg[0][31]_1 ),
        .\op_mem_20_24_reg[0][31]_2 (\op_mem_20_24_reg[0][31]_2 ),
        .\op_mem_20_24_reg[0][31]_3 (\op_mem_20_24_reg[0][31]_3 ),
        .\op_mem_20_24_reg[0][31]_4 (\op_mem_20_24_reg[0][31]_4 ),
        .\op_mem_20_24_reg[0][31]_5 (\op_mem_20_24_reg[0][31]_5 ),
        .\op_mem_20_24_reg[0][31]_6 (\op_mem_20_24_reg[0][31]_6 ),
        .\op_mem_20_24_reg[0][31]_7 (\op_mem_20_24_reg[0][31]_7 ),
        .\op_mem_20_24_reg[0][3] (\op_mem_20_24_reg[0][3] ),
        .\op_mem_20_24_reg[0][4] (\op_mem_20_24_reg[0][4] ),
        .\op_mem_20_24_reg[0][5] (\op_mem_20_24_reg[0][5] ),
        .\op_mem_20_24_reg[0][6] (\op_mem_20_24_reg[0][6] ),
        .\op_mem_20_24_reg[0][7] (\op_mem_20_24_reg[0][7] ),
        .\op_mem_20_24_reg[0][8] (\op_mem_20_24_reg[0][8] ),
        .\op_mem_20_24_reg[0][9] (\op_mem_20_24_reg[0][9] ),
        .register13_q_net(register13_q_net));
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
