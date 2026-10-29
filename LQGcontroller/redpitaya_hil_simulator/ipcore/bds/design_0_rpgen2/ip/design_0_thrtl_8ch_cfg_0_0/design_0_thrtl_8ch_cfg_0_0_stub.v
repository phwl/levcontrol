// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:18:19 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_thrtl_8ch_cfg_0_0/design_0_thrtl_8ch_cfg_0_0_stub.v
// Design      : design_0_thrtl_8ch_cfg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_0_thrtl_8ch_cfg_0_0,thrtl_8ch_cfg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "sysgen" *) 
(* X_CORE_INFO = "thrtl_8ch_cfg,Vivado 2024.2" *) 
module design_0_thrtl_8ch_cfg_0_0(data_in_a, data_in_b, data_in_c, data_in_d, 
  data_in_e, data_in_f, data_in_g, data_in_h, m_axis_dma_tready, trigger_in_hw, clk, 
  thrtl_8ch_cfg_aresetn, thrtl_8ch_cfg_cfg_in_s_axi_awaddr, 
  thrtl_8ch_cfg_cfg_in_s_axi_awvalid, thrtl_8ch_cfg_cfg_in_s_axi_wdata, 
  thrtl_8ch_cfg_cfg_in_s_axi_wstrb, thrtl_8ch_cfg_cfg_in_s_axi_wvalid, 
  thrtl_8ch_cfg_cfg_in_s_axi_bready, thrtl_8ch_cfg_cfg_in_s_axi_araddr, 
  thrtl_8ch_cfg_cfg_in_s_axi_arvalid, thrtl_8ch_cfg_cfg_in_s_axi_rready, dma_ready_out, 
  m_axis_dma_tdata, m_axis_dma_tkeep, m_axis_dma_tlast, m_axis_dma_tvalid, 
  thrtl_8ch_cfg_cfg_in_s_axi_awready, thrtl_8ch_cfg_cfg_in_s_axi_wready, 
  thrtl_8ch_cfg_cfg_in_s_axi_bresp, thrtl_8ch_cfg_cfg_in_s_axi_bvalid, 
  thrtl_8ch_cfg_cfg_in_s_axi_arready, thrtl_8ch_cfg_cfg_in_s_axi_rdata, 
  thrtl_8ch_cfg_cfg_in_s_axi_rresp, thrtl_8ch_cfg_cfg_in_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="data_in_a[31:0],data_in_b[31:0],data_in_c[31:0],data_in_d[31:0],data_in_e[31:0],data_in_f[31:0],data_in_g[31:0],data_in_h[31:0],m_axis_dma_tready[0:0],trigger_in_hw[0:0],thrtl_8ch_cfg_aresetn,thrtl_8ch_cfg_cfg_in_s_axi_awaddr[4:0],thrtl_8ch_cfg_cfg_in_s_axi_awvalid,thrtl_8ch_cfg_cfg_in_s_axi_wdata[31:0],thrtl_8ch_cfg_cfg_in_s_axi_wstrb[3:0],thrtl_8ch_cfg_cfg_in_s_axi_wvalid,thrtl_8ch_cfg_cfg_in_s_axi_bready,thrtl_8ch_cfg_cfg_in_s_axi_araddr[4:0],thrtl_8ch_cfg_cfg_in_s_axi_arvalid,thrtl_8ch_cfg_cfg_in_s_axi_rready,dma_ready_out[0:0],m_axis_dma_tdata[31:0],m_axis_dma_tkeep[3:0],m_axis_dma_tlast[0:0],m_axis_dma_tvalid[0:0],thrtl_8ch_cfg_cfg_in_s_axi_awready,thrtl_8ch_cfg_cfg_in_s_axi_wready,thrtl_8ch_cfg_cfg_in_s_axi_bresp[1:0],thrtl_8ch_cfg_cfg_in_s_axi_bvalid,thrtl_8ch_cfg_cfg_in_s_axi_arready,thrtl_8ch_cfg_cfg_in_s_axi_rdata[31:0],thrtl_8ch_cfg_cfg_in_s_axi_rresp[1:0],thrtl_8ch_cfg_cfg_in_s_axi_rvalid" */
/* synthesis syn_force_seq_prim="clk" */;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF thrtl_8ch_cfg_cfg_in_s_axi:m_axis_dma:data_in_a:data_in_b:data_in_c:data_in_d:data_in_e:data_in_f:data_in_g:data_in_h, ASSOCIATED_RESET thrtl_8ch_cfg_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
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
endmodule
