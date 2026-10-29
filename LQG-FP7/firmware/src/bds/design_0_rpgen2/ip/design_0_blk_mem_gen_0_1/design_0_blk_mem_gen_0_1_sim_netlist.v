// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May 28 17:49:22 2025
// Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_blk_mem_gen_0_1 -prefix
//               design_0_blk_mem_gen_0_1_ design_0_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_0_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_blk_mem_gen_0_1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_0_blk_mem_gen_0_1_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(rstb),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52032)
`pragma protect data_block
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
`pragma protect end_protected
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
