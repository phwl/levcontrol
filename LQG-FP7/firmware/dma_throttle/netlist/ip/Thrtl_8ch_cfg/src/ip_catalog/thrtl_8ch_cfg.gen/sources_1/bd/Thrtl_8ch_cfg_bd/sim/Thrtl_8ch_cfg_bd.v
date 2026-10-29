//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Jan 28 15:13:10 2026
//Host        : model-composer running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target Thrtl_8ch_cfg_bd.bd
//Design      : Thrtl_8ch_cfg_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Thrtl_8ch_cfg_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Thrtl_8ch_cfg_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,da_axi4_cnt=1,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Thrtl_8ch_cfg_bd.hwdef" *) 
module Thrtl_8ch_cfg_bd
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    data_in_a,
    data_in_b,
    data_in_c,
    data_in_d,
    data_in_e,
    data_in_f,
    data_in_g,
    data_in_h,
    dma_ready_out,
    m_axis_dma_tdata,
    m_axis_dma_tkeep,
    m_axis_dma_tlast,
    m_axis_dma_tready,
    m_axis_dma_tvalid,
    trigger_in_hw);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_A, LAYERED_METADATA undef" *) input [31:0]data_in_a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_B DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_B, LAYERED_METADATA undef" *) input [31:0]data_in_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_C DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_C, LAYERED_METADATA undef" *) input [31:0]data_in_c;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_D DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_D, LAYERED_METADATA undef" *) input [31:0]data_in_d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_E DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_E, LAYERED_METADATA undef" *) input [31:0]data_in_e;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_F DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_F, LAYERED_METADATA undef" *) input [31:0]data_in_f;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_G DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_G, LAYERED_METADATA undef" *) input [31:0]data_in_g;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_H DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_H, LAYERED_METADATA undef" *) input [31:0]data_in_h;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DMA_READY_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DMA_READY_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]dma_ready_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dma, FREQ_HZ 50000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_dma_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP" *) output [3:0]m_axis_dma_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TLAST" *) output [0:0]m_axis_dma_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TREADY" *) input [0:0]m_axis_dma_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TVALID" *) output [0:0]m_axis_dma_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRIGGER_IN_HW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRIGGER_IN_HW, LAYERED_METADATA undef" *) input [0:0]trigger_in_hw;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
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
  wire processing_system_1_FCLK_CLK0;
  wire processing_system_1_FCLK_RESET0_N;
  wire [31:0]processing_system_1_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system_1_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system_1_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system_1_M_AXI_GP0_ARID;
  wire [3:0]processing_system_1_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system_1_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system_1_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system_1_M_AXI_GP0_ARQOS;
  wire processing_system_1_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system_1_M_AXI_GP0_ARSIZE;
  wire processing_system_1_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system_1_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system_1_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system_1_M_AXI_GP0_AWID;
  wire [3:0]processing_system_1_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system_1_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system_1_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system_1_M_AXI_GP0_AWQOS;
  wire processing_system_1_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system_1_M_AXI_GP0_AWSIZE;
  wire processing_system_1_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system_1_M_AXI_GP0_BID;
  wire processing_system_1_M_AXI_GP0_BREADY;
  wire [1:0]processing_system_1_M_AXI_GP0_BRESP;
  wire processing_system_1_M_AXI_GP0_BVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_RDATA;
  wire [11:0]processing_system_1_M_AXI_GP0_RID;
  wire processing_system_1_M_AXI_GP0_RLAST;
  wire processing_system_1_M_AXI_GP0_RREADY;
  wire [1:0]processing_system_1_M_AXI_GP0_RRESP;
  wire processing_system_1_M_AXI_GP0_RVALID;
  wire [31:0]processing_system_1_M_AXI_GP0_WDATA;
  wire [11:0]processing_system_1_M_AXI_GP0_WID;
  wire processing_system_1_M_AXI_GP0_WLAST;
  wire processing_system_1_M_AXI_GP0_WREADY;
  wire [3:0]processing_system_1_M_AXI_GP0_WSTRB;
  wire processing_system_1_M_AXI_GP0_WVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_ARADDR;
  wire processing_system_1_axi_periph_M00_AXI_ARREADY;
  wire processing_system_1_axi_periph_M00_AXI_ARVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_AWADDR;
  wire processing_system_1_axi_periph_M00_AXI_AWREADY;
  wire processing_system_1_axi_periph_M00_AXI_AWVALID;
  wire processing_system_1_axi_periph_M00_AXI_BREADY;
  wire [1:0]processing_system_1_axi_periph_M00_AXI_BRESP;
  wire processing_system_1_axi_periph_M00_AXI_BVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_RDATA;
  wire processing_system_1_axi_periph_M00_AXI_RREADY;
  wire [1:0]processing_system_1_axi_periph_M00_AXI_RRESP;
  wire processing_system_1_axi_periph_M00_AXI_RVALID;
  wire [31:0]processing_system_1_axi_periph_M00_AXI_WDATA;
  wire processing_system_1_axi_periph_M00_AXI_WREADY;
  wire [3:0]processing_system_1_axi_periph_M00_AXI_WSTRB;
  wire processing_system_1_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_processing_system_1_50M_peripheral_aresetn;
  wire [0:0]trigger_in_hw;

  Thrtl_8ch_cfg_bd_Thrtl_8ch_cfg_1_0 Thrtl_8ch_cfg_1
       (.clk(processing_system_1_FCLK_CLK0),
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
        .thrtl_8ch_cfg_aresetn(rst_processing_system_1_50M_peripheral_aresetn),
        .thrtl_8ch_cfg_cfg_in_s_axi_araddr(processing_system_1_axi_periph_M00_AXI_ARADDR[4:0]),
        .thrtl_8ch_cfg_cfg_in_s_axi_arready(processing_system_1_axi_periph_M00_AXI_ARREADY),
        .thrtl_8ch_cfg_cfg_in_s_axi_arvalid(processing_system_1_axi_periph_M00_AXI_ARVALID),
        .thrtl_8ch_cfg_cfg_in_s_axi_awaddr(processing_system_1_axi_periph_M00_AXI_AWADDR[4:0]),
        .thrtl_8ch_cfg_cfg_in_s_axi_awready(processing_system_1_axi_periph_M00_AXI_AWREADY),
        .thrtl_8ch_cfg_cfg_in_s_axi_awvalid(processing_system_1_axi_periph_M00_AXI_AWVALID),
        .thrtl_8ch_cfg_cfg_in_s_axi_bready(processing_system_1_axi_periph_M00_AXI_BREADY),
        .thrtl_8ch_cfg_cfg_in_s_axi_bresp(processing_system_1_axi_periph_M00_AXI_BRESP),
        .thrtl_8ch_cfg_cfg_in_s_axi_bvalid(processing_system_1_axi_periph_M00_AXI_BVALID),
        .thrtl_8ch_cfg_cfg_in_s_axi_rdata(processing_system_1_axi_periph_M00_AXI_RDATA),
        .thrtl_8ch_cfg_cfg_in_s_axi_rready(processing_system_1_axi_periph_M00_AXI_RREADY),
        .thrtl_8ch_cfg_cfg_in_s_axi_rresp(processing_system_1_axi_periph_M00_AXI_RRESP),
        .thrtl_8ch_cfg_cfg_in_s_axi_rvalid(processing_system_1_axi_periph_M00_AXI_RVALID),
        .thrtl_8ch_cfg_cfg_in_s_axi_wdata(processing_system_1_axi_periph_M00_AXI_WDATA),
        .thrtl_8ch_cfg_cfg_in_s_axi_wready(processing_system_1_axi_periph_M00_AXI_WREADY),
        .thrtl_8ch_cfg_cfg_in_s_axi_wstrb(processing_system_1_axi_periph_M00_AXI_WSTRB),
        .thrtl_8ch_cfg_cfg_in_s_axi_wvalid(processing_system_1_axi_periph_M00_AXI_WVALID),
        .trigger_in_hw(trigger_in_hw));
  Thrtl_8ch_cfg_bd_processing_system_1_0 processing_system_1
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system_1_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system_1_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system_1_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system_1_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system_1_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system_1_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system_1_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system_1_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system_1_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system_1_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system_1_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system_1_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system_1_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system_1_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system_1_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system_1_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system_1_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system_1_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system_1_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system_1_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system_1_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system_1_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system_1_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system_1_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system_1_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system_1_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system_1_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system_1_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system_1_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system_1_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system_1_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system_1_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system_1_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system_1_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system_1_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system_1_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system_1_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system_1_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system_1_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system_1_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system_1_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  Thrtl_8ch_cfg_bd_processing_system_1_axi_periph_0 processing_system_1_axi_periph
       (.ACLK(processing_system_1_FCLK_CLK0),
        .ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .M00_ACLK(processing_system_1_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .M00_AXI_araddr(processing_system_1_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(processing_system_1_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(processing_system_1_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(processing_system_1_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(processing_system_1_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(processing_system_1_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(processing_system_1_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(processing_system_1_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(processing_system_1_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(processing_system_1_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(processing_system_1_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(processing_system_1_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(processing_system_1_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(processing_system_1_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(processing_system_1_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(processing_system_1_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(processing_system_1_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(processing_system_1_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system_1_50M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system_1_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system_1_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system_1_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system_1_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system_1_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system_1_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system_1_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system_1_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system_1_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system_1_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system_1_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system_1_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system_1_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system_1_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system_1_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system_1_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system_1_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system_1_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system_1_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system_1_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system_1_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system_1_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system_1_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system_1_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system_1_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system_1_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system_1_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system_1_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system_1_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system_1_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system_1_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system_1_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system_1_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system_1_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system_1_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system_1_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system_1_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system_1_M_AXI_GP0_WVALID));
  Thrtl_8ch_cfg_bd_rst_processing_system_1_50M_0 rst_processing_system_1_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system_1_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system_1_50M_peripheral_aresetn),
        .slowest_sync_clk(processing_system_1_FCLK_CLK0));
endmodule

module Thrtl_8ch_cfg_bd_processing_system_1_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [11:0]S00_AXI_arid;
  wire [3:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [11:0]S00_AXI_awid;
  wire [3:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [11:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [11:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [11:0]S00_AXI_wid;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  s00_couplers_imp_SALUB s00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arid(S00_AXI_arid),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arqos(S00_AXI_arqos),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awid(S00_AXI_awid),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awqos(S00_AXI_awqos),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bid(S00_AXI_bid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rid(S00_AXI_rid),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wid(S00_AXI_wid),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
endmodule

module s00_couplers_imp_SALUB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [11:0]S_AXI_arid;
  wire [3:0]S_AXI_arlen;
  wire [1:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [11:0]S_AXI_awid;
  wire [3:0]S_AXI_awlen;
  wire [1:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [11:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [11:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [11:0]S_AXI_wid;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  Thrtl_8ch_cfg_bd_processing_system_1_axi_periph_imp_auto_pc_0 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wid(S_AXI_wid),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule
