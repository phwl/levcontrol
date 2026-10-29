// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:52:06 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_dma_channel_mapper_0_0/design_0_dma_channel_mapper_0_0_sim_netlist.v
// Design      : design_0_dma_channel_mapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_dma_channel_mapper_0_0,dma_channel_mapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dma_channel_mapper,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_dma_channel_mapper_0_0
   (lqg_uk_0,
    lqg_uk_1,
    lqg_yk_0,
    lqg_yk_1,
    lqg_xkhat_0,
    lqg_xkhat_1,
    lqg_xkhat_2,
    lqg_xkhat_3,
    lqg_xkhat_4,
    lqg_xkhat_5,
    lqg_xkhat_6,
    dma_channel_a,
    dma_channel_b,
    dma_channel_c,
    dma_channel_d,
    dma_channel_e,
    dma_channel_f,
    dma_channel_g,
    dma_channel_h);
  input [13:0]lqg_uk_0;
  input [13:0]lqg_uk_1;
  input [13:0]lqg_yk_0;
  input [13:0]lqg_yk_1;
  input [24:0]lqg_xkhat_0;
  input [24:0]lqg_xkhat_1;
  input [24:0]lqg_xkhat_2;
  input [24:0]lqg_xkhat_3;
  input [24:0]lqg_xkhat_4;
  input [24:0]lqg_xkhat_5;
  input [24:0]lqg_xkhat_6;
  output [31:0]dma_channel_a;
  output [31:0]dma_channel_b;
  output [31:0]dma_channel_c;
  output [31:0]dma_channel_d;
  output [31:0]dma_channel_e;
  output [31:0]dma_channel_f;
  output [31:0]dma_channel_g;
  output [31:0]dma_channel_h;

  wire \<const0> ;
  wire [13:0]lqg_uk_0;
  wire [13:0]lqg_uk_1;
  wire [24:0]lqg_xkhat_0;
  wire [24:0]lqg_xkhat_1;
  wire [24:0]lqg_xkhat_2;
  wire [24:0]lqg_xkhat_3;
  wire [24:0]lqg_xkhat_4;
  wire [24:0]lqg_xkhat_5;
  wire [24:0]lqg_xkhat_6;
  wire [13:0]lqg_yk_0;
  wire [13:0]lqg_yk_1;

  assign dma_channel_a[31:28] = lqg_yk_0[3:0];
  assign dma_channel_a[27:14] = lqg_uk_1;
  assign dma_channel_a[13:0] = lqg_uk_0;
  assign dma_channel_b[31:24] = lqg_xkhat_0[7:0];
  assign dma_channel_b[23:10] = lqg_yk_1;
  assign dma_channel_b[9:0] = lqg_yk_0[13:4];
  assign dma_channel_c[31:17] = lqg_xkhat_1[14:0];
  assign dma_channel_c[16:0] = lqg_xkhat_0[24:8];
  assign dma_channel_d[31:10] = lqg_xkhat_2[21:0];
  assign dma_channel_d[9:0] = lqg_xkhat_1[24:15];
  assign dma_channel_e[31:28] = lqg_xkhat_4[3:0];
  assign dma_channel_e[27:3] = lqg_xkhat_3;
  assign dma_channel_e[2:0] = lqg_xkhat_2[24:22];
  assign dma_channel_f[31:21] = lqg_xkhat_5[10:0];
  assign dma_channel_f[20:0] = lqg_xkhat_4[24:4];
  assign dma_channel_g[31:14] = lqg_xkhat_6[17:0];
  assign dma_channel_g[13:0] = lqg_xkhat_5[24:11];
  assign dma_channel_h[31] = \<const0> ;
  assign dma_channel_h[30] = \<const0> ;
  assign dma_channel_h[29] = \<const0> ;
  assign dma_channel_h[28] = \<const0> ;
  assign dma_channel_h[27] = \<const0> ;
  assign dma_channel_h[26] = \<const0> ;
  assign dma_channel_h[25] = \<const0> ;
  assign dma_channel_h[24] = \<const0> ;
  assign dma_channel_h[23] = \<const0> ;
  assign dma_channel_h[22] = \<const0> ;
  assign dma_channel_h[21] = \<const0> ;
  assign dma_channel_h[20] = \<const0> ;
  assign dma_channel_h[19] = \<const0> ;
  assign dma_channel_h[18] = \<const0> ;
  assign dma_channel_h[17] = \<const0> ;
  assign dma_channel_h[16] = \<const0> ;
  assign dma_channel_h[15] = \<const0> ;
  assign dma_channel_h[14] = \<const0> ;
  assign dma_channel_h[13] = \<const0> ;
  assign dma_channel_h[12] = \<const0> ;
  assign dma_channel_h[11] = \<const0> ;
  assign dma_channel_h[10] = \<const0> ;
  assign dma_channel_h[9] = \<const0> ;
  assign dma_channel_h[8] = \<const0> ;
  assign dma_channel_h[7] = \<const0> ;
  assign dma_channel_h[6:0] = lqg_xkhat_6[24:18];
  GND GND
       (.G(\<const0> ));
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
