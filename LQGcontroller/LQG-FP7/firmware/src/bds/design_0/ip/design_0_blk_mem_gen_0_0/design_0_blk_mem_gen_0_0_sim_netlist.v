// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 12 18:11:27 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_blk_mem_gen_0_0/design_0_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_0_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_blk_mem_gen_0_0
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
  design_0_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52320)
`pragma protect data_block
X9cMuDd3RsOz85MnYK7uP7pr3Mq56o8jKrD/fdR49eyNd9uuZ6YOrSwJHhnTSolNffTax6oAVLiv
xhMOPrq/9LaKUqoQ3wtw9exuxj1mVEaonESAo19TdvT2IJz+2fjGjf9lCh7cAGCQ/jSMncnxuUSU
qpRQf1pzFrPBnowanMVrBGRw8vg9PFVv5BlS6tE0u+4bsbIijuHPznM058n7njCGgHXpbRrfiean
BlAwKzHW2MI6WYUAKvETi7Nu34GhGwQLD5+51UNFEv3fcU+9l/27v5SgFI4Hy0mMn6VzlFsoSBZ8
czm3DNrjt2E9f+x3YR5TFnrJHj0CUi6KWb5bE0YS9GJW/7IxQFQwv2Sdby0oYi7zBN/uaLOSLaXc
d7+rAyQ7RI7MlFMISHc5ppxgyIl43LpgXO63vb7qNt+H5ohx/ahcRn+95dqWt+66wgRBIPq4C3sW
2Z8WNqIETD5UAeavRo5z57o2pm5TWdECMjQohr5dhIyXC7XZhb4z8jC7493ZRAZ2TIpy7u7dW3i8
e1DBipO31XeQdclYRT9unRxxwplTez6o/WZ0gAg+OXdK6F9qc5H3q1ISq3PYAtZ3m+BdTzgM4FcJ
M/y8neLn7NVFgodo/OXzQNd1QtsGZI+VhULW5r7WK3TIqd07PfCKMLQmCopQdOfbaf65FLSoxl/c
IRsJMBmr9XWooEGDHjckkx8T2pZUKsFM3IDHI4UYzwzVMj/pAoqvsMvqJdnjZ08GaEQq088wpbcl
Jw5IY/FqskLiTT1V/aOJOHRnaD9JA3EXl8x5fy/bsMB2SOy6G4gg00a0SDfWr/ik5C4A+/exc8AS
Gh5D9ZnGdhaQuRJUeqSmc7v7G4SzPYOXYI8L5jeHzHv2fFwQlli7Ii9kqBRKzr5PNimt+pOwx6ZU
1c0HjU/KuKvAm2cDgvQXA9p3nEZ8RkwaUZ9E8gEFaSEnRkN4XSIUod94K2dAmi5BaW1ekEaFU+/a
MRxODE2mONYslbrWEtMIwNHIDcGv3akds9+ZpYIPOZBv9Bb7YQUxUfG96T7u2w+NnqhFY0EJZZQ3
dlglc3M9YhGK67Sk0IRDDJF3L650BeBua8xDzmNk+hDs7cLAJGdmSQ4ZgQKLHWvQ5lVCXYFt+JBm
+dgtIbzBqy1095//C/eM41QDlHWbxbDfdr0wLDhlEckj99GdQnNaBXyYXFnFATZljC8SEu1OV9DG
3DvpQ9f1PZLcaq28maqn1ACvjOs1avEIZUGJkizsUnPCmloPp4IN2PO0fzcqFcqAc8alV92XfHLi
2Nygb7TqT34CKuE+dYaSlddix/4N6dREg2UkfjFx7/fDMNkydbBnQkDj8vZMp8ZZHvVhJkE73iYo
2Uij7DPoi1qMbNH3BBnPnKlXhW/qLNTgwQHU/cNyxfUlgXEjjJJtwc5bs8o4UTAQ37Mauyz2PPCp
RXrySE3KvG/qnsmEVl/C0OfAHgx9aq//FN/E2Xe2P8e8SHsVeGXclabo0Gg87ip4UUpEmC6VnH6K
NuXIQxDBWjW6YY1fXucliLAC8C64v7HbPmo8Ox/xGpEQQyUCzOa1b4GG+X4amaH2FjNCapbxYQTg
4lmvQj2wq7IQKqMmaa2pPqp9TM9OaD+ttVVx6gQhFyFGyOZ+zB0I8GXwAcm5TH8jCDyFJEAIBjtO
JQIJQeSbMT3VrbHq3E/do6gyV70qZQDv0SFQm91lsgWjpJt562huFAskRhrRbUjopWjIAXONdyPO
C56pffWGJ1Kri8oPqZ8pwAjrDYbrsEDb2cJmgo4FRsrhU9DwTWqUQl3ou2Xbg0ZfdngUieQFmvWj
UHG2sWnTZbKnlAqL4+AxtJrEOo8Io6bDUmrTrbIuz0NlzDGiGPWB3kf3gdd6J22bokqzec6RSTUB
ukwtHmDQhewJi4dymodtXvsHnzJhPbbSSHcqqt3mss+zwPXdldPaR76B/6PBitbtG9+m19pyPFcp
4P+W/0FJoQPvL4S3VSE2+8sQ2QkEOfYtoJWUwIaJaDy6ia5ifUovY+Y3/SfmukUvpGGBqvPw3/jm
yxvKL37s+3o/Sr7LyRJHMAmbrVUrC8ef6YBV+dEKDzDqyEVT5hl2qFs0HKKg4EQmm5EDUrXRo0U3
VMcniqEg0t3bgdfiTMf8G2vUpyWpuJqPj5AaFhK8f7N9r7NehrvANjv8QT/Kwhdy9d98aZeII3hJ
EBob6dWaIQQJPrKv28cp+rxNOlXxgBVWa2TOSBBS1iRMYx6zkYk3pca418G0J6kF15yw6nGhpP3C
8M4PyBPYnbGkb/+zur9mGwB1swC9svplIiGlnsyIR9VDsxsbPbGv0yvynw3/7b57t/6ho4EWY9sp
dCarnl4lvFkRd3qPABDDYDLZbhpualn1h/+DeQGtZPyuI3HeJf6gRkPX83pCK9cD0+ajQvFm12zR
XJcFBKVyTGsiLaJXzTyrNEntpPbkHVv50zodMvuIzDI4vnediP/JnSHdUzoHKCQeqBgHt5wo4Xvf
tdit2B+5EDld7zSHGYmHSiiOijVpfuCqXk7rs4jFMYsfYFSS+ntNdZLtD8zwUmwpq7QkTNUHqSxl
NQorobpRFqEMo5GXeVGaObOOiHhIAQD/RkoZSCzYIDAQNSn4ex8ciqKLeBBLYW5gR96e4ZqM54KJ
/CwDWlpinAiJi79DsztIrxBm0DTVH8QXHQoOTvP6QRKuvTs9yFj+U+ljoHhSfy8uCBM9l8gxzNWl
ZlhlksjSyY1p8GsDILQ9gZ0QBSW7GeLsp9X3F/0dhbK2SvSFi1B7eEUNwY/u/A/fH9Lph9c/VULo
ScxzgrRoBbBtj5jwFpY428GzTMEWyzp35CCbGp9axBIOGgMovswaeX1xsGz25txCXpePxbvrBmCq
4PGyga02gZjh1rB1iQxfdFgDWGqbKhSg55MVPP6s4Ha9+ALj/ZqGWH3aQO1UOKlEyMVxsPnRvrY6
DiOOfsM5GkCbBPksHbTtILkH9jBbAf8vNSrKlj4n9pnzMNFF3+1VuCA/nROkQX4DILp/4b59EsYt
AhmU4fPF5U1ioK6+ugxsR7av04hONfY6MP/TN4GuGxpINakau+HVI3UNIkd1ywJPhnHbOKYYQKdt
+as/KqPZSfXePqVC28khyVVAeIkeVg73uTcifpze4g2mv3O1Q8xlm2zYOs2/u6FLS5D3Exle0GR8
b0d6aSQ0sy7xElPFFSz5/JqSP1zufqg1ejRV3FjLSXCZ3VPj/NJmibr5jA+lBDuZX72i6pXC82aq
BAK/9OhMyE6e9bumY75AFOOZXLgCgQOMF8aydwcHMePWQ08IvSD3EV9ClKx2Qldag8HFAMHTQCHE
6rIwMjzyWpG9dAFG9mFUBty47+xvp1sDbg/fH5CYqljJewTn82iuxkW/w7FqP9dxaVlAFe1NpkpT
mmIyO1+hRHP67vpXIkKo61O8UgwZgWsdImWwjCv9mxtzJ9ehS5RqVyMRsRYlvNWB34VNAP0R5jTW
hIjT8zUL/uW7aqoqZDzmXSMbLbMKDng2u6/Cv+rKFZ1DkCztm5HMinWEPtmBTpIHbEgO8CbDlIsP
FrfGIZg0bJGl1O0S+x+Oet1J5UmZ3xC3YRSWWKRJ7YW9+W6PAOmsIo+2rGm5UR6FuoXFDXFgYX0S
7TNdtVIeyZPXssaUVDEXithqiVz8qGlQEYTAQHMTmlUlPiqqzJnqwVByQMujFYwaA8T81ij/k0fL
a2Q1VIP3sDEOyFGM+1/XlolDb+BoBTEGtizJoq2r8s9q9zxMjIbilTNqx6+9p1IJUxxtRZX9j9mh
+2+c1IbPL78EtgFXUvtBD+6W8u+vuu17XlGhKAlPxwofFhChSDnjmQjQ2DQfgVxrWXPEQFGNusSm
Zc/eRC/cHEK1E5ox81snuKjeKAzliJpSEJqJbyuR9D7io5/JOoxCoHkEYKdpefcefFezcsp92KhG
ol56uiQuKenawfRiELYl0KlhVGZnIUApURM4NkRCaVo2VQalwXb7xaiZxqe9yMhTfuWQiXFchxTJ
7bGR2T+8vpDiFlhJ9nHA0V6vonXgqQ5WpMZtbV6NJMYpvrJkfde+QwyHsKxBMfthjHun2ZktoKLl
a/M2Kf9BaibIubPXdvAQ2qAYgSv4EFONwWftK9ZjYC28CZvqE+ktlDJgOxrYRgUbi2oy97sOB/Rf
bcRK9bRzy3iT0y/Y44kRpxr3TVelLG+cvFiolCxD5rQqrdAwpSBwIt6z/0IDMRHjk1jdBvsnzrVU
CuGhHrxZVDRDwULpuZ+E20vhBYp6fl3QGtj2qCcyrXDuDHPtNEasfQh0F7CwJTftzZpKE3RnMImA
QW9PDynu/C1oOXF1BT1FkoND665Rglii81DNzSIkGb1rDLHJ7Ed7vCcx5oBoUvoNMqnu4ZGATSSp
0ajMS0MRUJ5Tx9m2ChZluoduoX9Wgxkflz6Jku2b4FjMGAeViG6m+S2RzotRCflP+SlMJnigjSTV
XHBkmAPFzQKKAepENkXnnVFc9hHQE2uJR5UZOg47eCeNKIOLxH3PCYC8bBPEPRHg21e9gOum93lz
P70XwSuBa/d6oWxINTpvvDVHWcSr3NVOyXFszvQsfSLsbSjkEVcAiiDlhttRndGCefnUY5tsOx7j
AsmgjTd6ZM1eOcz1b7BFHcvEo11J8rS4huDhnfvgIBynBBdU6hLE7U6ThjWx/MRuTb/u9BV7QoBU
fI6rGLmVW0f2+h5KHE5u/MN2UhDWn+3IW/4d5WgtC7CIC35yKxu2+5vbvx7x+3knN2JkYH27VQvg
41vITYhiBHcBmStlJ/Hqq+QfPPUiXlswXs7tCzEXgnELTfRd2DYW5qM3EApDNvAhwUQfAGV98AbM
VqU6UzRTz5NlAwEVIsOd8jbqChSoIihro489iFyqv5a1ZK6ZuKH1d7iQ7GXgJ867xKPZ8fEidThA
6/Uv0InL5T40F/qYBm8sIfXKzZuHmr5ovX057tkhHHCrL9/k7Ph6wd9t1rlXzaMq//KhIrrq91hP
p8hBtfUz8S3iSItogrhVfJatYVujw+WvQ6YFtQdta3o6nbipnldmlhexkNs85rVh4SvVruY7lyzy
UsFbrqHmWU/u5UZYBODtPelZrgAzAYFBFF0InVTplwezhqJZWl4nwv8c0E2ZhCe60DONgfMOGmNs
B68s371Bwel4Jv42T0PhBqfFN+dZrJv9A+e03p6qvWMT7Mdu1DUTY1qko0teSTAN//nSITXuQBC3
wkloWchHSqM6EU0vs5ncjlHyddzgc+xbDonRPQ97SzWgZ+VObM2NSA9sOvCfU8cyGa7ARx2M5HPy
K3Odw1Jwxg3LSIaZ4gktCdioj4cpRkyzA/U3bdlmdmP7l0DA8y95rfpoW5YS4JEA1dZFe9jNqqnN
9QASTNNy/pZNpYWdPd6QLJcEz/UCjO+th+a3p6ul6BCet7WrzAutNMr7/GGJhGEq9HqTSDU7Bcem
S7MHvwecy2K3cgfGbIZXkg+wz0xcXGDb788CwqMig4Iu6HEpRGYyiYXmB1M1AhCkNP9brnhRC7x+
Vql8/XiFfahmP8GbDvqjN3A/2fIZE23naE99FwHwMZ9I3xmLMIOVx72x4M1cZHD4lq3YaVGebMYN
zFNer9Rni6tW8v4ly7QXdEhDpQw8J1HLNfXOZDxU4RX2aVKHFjgD0uICuILr8hwFh/sHhRxah6Px
Bn217AUwhFYAGv/7XMvNHuAp+L8akyzWkZfhCWMzPKQouedSpzif0LizDAm68bj4Prhbrfb9n5do
CgGq+CSDPArR+226xt8NEhq/9pxtVkI1Auqqw00p8ukx+9T/EH/vzKdMyNyPU+/P4ArDLeiYannc
xy9SSXd/m59TICUizD00IZKcF+zamPZsR5sLq59HZd9YO0MmUD22DPf2aOmu9wTSqVEo4TPDWaMk
SUGeuzkB4YBxyE4N62JwhEgkY8j3wH6FQ/HJwYVg64iREzB0PbA99XeP1/08uJ6i/qyBLGq/qkRC
RcyC37/l4wEdBZNywpQ8JcxUtpOLK+h/rAF902pw05so2vq8dzMV/QYfYbdw+41RKVcR2EYDTHL+
t5SCataDrmcN/gM5c9gYqyyl3klGNq27kRVtCLFL2zkkmo0cYIPluOln6BdWhj/RygaZHwXZj5ia
SHDvtoQgXVn6W5efsSo9n0mouChG1lj/MnhW0R6fAKX5A2PjEZgdqUrJFIBUUQu/Lw+GkH+wPfSu
FrEjnXq7J8aBnbbZF5ZdHbnafO5YC99Hm2ncPpjVDLXLn7S78xhPyL9QivUrNuFVE2AYv2zwiMOA
kjwTwWD93eiP+1RaJ3Vn+BB75M/iXdEiCvhbi5AT1YGG3kvxkMFfu4AOR03Hd5GLuYK1amzEfUT7
dfk33jj64ijL9hMTlPLvcCSmfdi9/zJgm2G5T6UqQA96QWDW6UUbQzgHkzENRqcmcoSBssvne/Ef
sNloSfgrKEKwF05jWTr+ORda13XfDySGSstgeGmTFnuayHuy4/4M+fjsoFcZKs3LfAyNPUaWoD+E
MhtTr+sfgE7/mma+Fl30U/db9mQRg7rHMRCCcZHlSmC/oiNxnVnY3Icp0K83dRQWX/0F9p5SX4dK
jIGXXJvNjqg0k8RDhMeW443nGrmRIhsDaytHDs7b8ydxa3FSpwZ5h1729SYjP/O8Ch43xi3QBrIC
pBGhx4lGSJ73G7OtxYFDVCVHiL4i9pqB2YeQd9uq8tRSzpj+KWdQ/hIx1Ra+nwKs8hoPRE7gNu9F
nfuk0BVHugypjlPasgdONAa7Emsw5+deVaoCMfHLFUqqo1s8sTXhcH0xpNeiD6z6X8JmbG+Q6FFt
jIGTNjwWvAgzhQB2VBBrZCIHwVgcAgtMzSctkuDm0vFNaW0XMCO2Z0th+oQDqy37eDTqCxWMgwC+
VkP7hHSsdJ6939CQZkSZEP3RCe0an4khyE7M2qAGCCDle7dc0kifZlvhruXRUs40zV4DFhnbzwbU
mSb7AgVkzTkYkEVRRdGMbW9Mtlqd7Ihg4qO0/sDGelltK5xdrKW+f4a/0TdpsqnaHyVnICsBY+9D
nSOQ1iKRCQ63+qazGF4rsZW84H7wpfUYQz7JVLCWyBRpHp4XXIGAVlTbCKZEhPioyn7Eb+70WoCV
mDR+f8rr//AUC8r90rQRmLfJYxYkLXNStwhzZovvGXGwOle9uMBY9rfOWmb8nUfCRF4pf5wH+eJh
8dLB4w0PbzLusf2GIDh4oT027lbwWuEIDc51/eZysWpUuxu985wNLQh+u3CLsRR3LdnylVzbIcw+
Qefq8nynNpj4be+vlKvbKVaLuLCVci//u+oBlc3AoYoQZMisk1/hT/rLQ7CpoSruoBaz322sJqjp
Xs0ghYrcUUnEtcfCFYmrN/zMeIiHW3KwMmOjkvoSCQ9NRINmp0sKOnWPkSQ0Tgd/aTDelgM8ERz4
45tpuPmjCGT0yPHiPal9SNuGbjbygLsfMce9Hpi0bGvC/ZrsCZdy/N6huFgrYhyOoXxO0MQlC1KM
USa0vXzexYT0vDJIeJgQXb43M8qimZE2Vd2nApDobtTa+g1V7UM36KlHWYaUY1z+NRxecXcivl49
wJ1BLB/x1U7KbyYPDKBZHw5RzyCcOQXteYyIDFMrQavJ7XDzcqvrm04gFsca6g9tUbeuDtAcvDjY
mtJf2afsoKyC+/F9j77GDb9gBSqfx5zMTUmVNdUbozUuNxMMCKkRm635Vx23Mq8n89PlFRuMch4X
0s+lNe46nfueh4omG8vJVxkEI7sq8mKJLcpLy4yPmfNuUx3a9BRVv7KccritbVw0d6C7VX8Nb3qs
WdHXmM5scpEFd1MYNkFvLSMCUv6nOeRY3VNqNs4MRhkZf+H6NL+0aok/LkIJBzRzzvzIhFh2K3Yk
kAhQQZQkmBXOrM69WzlI1oUfrxSKiVm13zYCEu3tv4ReSR6qDFjCLQIJZGFkg8UOnMQFwZkRAL4Z
kxclcL9Zdu7VJaCT0YsyCM8CzKWJs3Nq5t1GS3Gfk6ZtY2SXc6+R69AtVGoODfJB9Gz4cw6c5I1P
Yso748vzkyDM58pOP58I9oqwzA/wolcUThwb4VFjDgSBvXZqLaycHwQEXSa8c0062MLiWPq3m7El
PohklRJ/7QpDIN+Nek8g2NDZW8ikBvTaQJIOpcmWfhdNUoUhwmIc2JN1wJCCUKbkUaIJizT2rSZh
OJlN5+0/ivgNkndZ7cIWCx/WzRDjkkIiNZwm9CQNsnH7UUG3L/tscdIXkGuHy9aJ9yr1RCAq36Ze
nuU512jc+eRvl78htYxDB8OpdKb1OeIX1RyStt43BEqz3JdkqVrbWbT3vOLNReOhbLvjk1gVHoaP
MhlCwk8O7iun5kEm+7hYAKKMqE2BLYst5zZQZUIilxSAPrfFaPOmRSqz1SXXst4NSR66MA/AQ/9H
eYKGBM0e9g8mlm+CGpWpTrXTUbn0lOagdJWK5DTH697cBQ6EUTalszhEhoLalM8e8Crph7wYBazG
BfB6jx0E8iItgRv2h1hKJ+ZO22BVGg0UWdA3mapFsIgpKf3cej1t98aXmXQXGptFc9mczJ5jSeHG
NPTLLm4QZ9MUyeFUEfHgJUoQLD4Yd0tCkeu8y3GRYvzu5zN1y0vJseVOWyE5hKF/l4uNqB5GahLX
iCkLr1bg+DQg6fx9luiSW0Ann6iv/l4Dr8BLxQCF7ur7w6UoWfbvwA2BjBumKr3qEKv0yjIb6MR7
7BWgh6AN4QE9SO+1Z0z/GCHJMdwuiCj8KYIRKkVB8TkaVaRgEyrvwbCFITazZSd1N+DQteE24VYp
31op7phSZUcA7hR91lh6jF0/3J8XbY6WGDSrHmSa0BJKmxf9qaVVYbugnRoQyt25glwoEoHRILMp
rv0eXpNJ4y50nUkK9qRmrZEV4QSCVZru80/q+e7F89VHCmKmTo16M21Yjh6q8kQJ9NDjhHhFNPSx
k+oNbxMYe+gu9omQe0yosfB3sPTYatJduyqc92MxgnpAgqQ5qQqcKHyE1fL1ecVuRL2Fkd94jmNQ
50hnux1iwSian4XmAv8ZhVSkFGZioAPPtARNb37bo9dD8jKoPF5I0xLDOXTBdq/Xk8UbarU5YYfd
jyxFQCCxr4KWZAlQViC3ROTYFDZw2Nail6uJDn9nUptu2vtMO9O1V0Ob3DiQJGbk5kdfWkdOk3nF
REwzzdmuCLU2d1EPm+orjClwP3LTDZirQWz40KW3rXXG6SxQvvTo+GhGNam1Dg9VPjQ6sy8dVGfL
Ao7kl/GNgXg6MpA17ZCDsRbfWcEpQcF8UErOSllmpCwimDMaj3iySoolBAbVJdDGHlevMaSSbUgB
u36RMBHOWMjsrrw6cDcWVqE9Rw90i17hllg+zP+Oauldl1XGrjMcSulwFER5LCTAb+intuMTwBxy
Un36u0TvUZbc5CXVwS8P+Dee/betcT2rVHBL3690kjA6FL6m0hjt06cLbsx48wrPIXAtWvwxRKwp
qWsMHzMC7oxu//HM04PWMmR5KrnobZOt6aBG3i+JhAserpwjvwH31/qjSGbRBxl/0n3DhEODdb++
hDcz99N3T5K1LxaDeUQuERCUZvdF5XcOvSIj+jU69219AO/u9uOtIgBEl5nf1vev7/6wovIvflQi
IzEKwACyvSHKAXeMTZM4Ybu3Bsl3jcQbvLZQ7Y032615/HNeYKY4KX8q23M32beYqoMMua1LRoWL
gfHaa+KcNBj579PePpjxEGsYMSIAkJ7HymmJ52sjD5L3DlZw7Keu7GFz5E1PrSUJoSxgtGIec4yh
JypGFRFxAl/sDWE9iwwGx880uoU/n1ff6p2M6A3MiCkz+7BYqL3jKt+oWgJMBzT75djXJwd8wKQs
NohwVWAvUxxdWUzsQEiKw+jO/EeaYRmB0Dchvkbx4ihST5dIzoP3ZM9lD0hf/X/9P+9oC+6N3+cd
UGkUm9m8RBijhejgZNklykXjrq3RxJ+IpSUokTgRjOQk30oZoGo6wej0w+6n5b3DPWGgJQqWySHj
kwIGG07cfH3spxukU1Xn36p2qRh2rc0+33SHRDPXQI90YMjVTc8sPySBc3LzYtfE6fujbKWUdXhN
P8bJguWATL1tiDku+9lg0J/xZ5mHwXm+acfMqZjzpzpQ5v/3InLjBDABI/h8JKn/mjrTKV38bBT0
nYdFdhzsJFp49IDU56p+YS3ZNI1C7ATuP4HZqFAsuv5Q9Lm+Be69gNTcF9kkW/NRdIWiRlVig2wU
mQxMGO3Za9in99rggdYQCh4q2jZ0r11pXTYBGCMD96qaxPbB8rZFhTUrZbdPW2jvEBJzL1phjtP9
5ABLP6JFLEq7tptlYgJN4QdYD1sQJ8V2y9opaTMwOQUPg1Ay26hszOusSX1zM6myHZK+yds49gNs
IxxJAfhAEIuOoZ+AXgNPWSwkJShRJ0WOq6D8WJyqpSTyki5wQu00nxg0AtRLIUVJFiACIoaJ7DiD
xJg1tmhtvOiIbY1wfZ76onK5gP0fgOwmuc4WfXPnL36AdxxUsKk8WMINsqG+i1YT3YWERz0RVMCy
Ai0kBzVn/vloNxfW6srq7Np4nJqWGeyESyn6jnwORvnc15sU8JLFcihSqHefYzoYLbIcBmwLAEa3
8FULxtr6gXSBxmvv1irDDHC5OvncfFOzEUtGQeXyfKLyNj6Azffrg86k5dRLpUmerz6fSPC9K/in
58Lgsh21/atXC00FkFG67CnplL+a0eFLO+InxCGAYoBzyoL/uWyUx2wYLLTpd1iDqUeedbN9E+q1
/I5+hSkXhxAYyZlovbTf9YpqE1BWcrIouEoB6JK7wseEHvDcCzu9WQgGY/bg1H69lllmBs8JxNgZ
rEkPab214Ic1Bx4ZMLE7z9YFJWdcIwBVhKr3jxaELDQ41MpBoQXWWTk53AewKEgDj1uzSoVdH+l3
LB0oivFrtRXkYSZR9tIopGsQzXC/19RHNbj5NgrFZc1ztZSU5l9zbH+UEg/1HHYkw9X/BB7GGi5E
aSdpfd/4mhGjsDUhjm9KR1NYvkskNTF4VVMGxc/spCNgl4SYDCitrfzpb2Ui4yCMDVrifgQPcGH9
bkfl4l6hIeZSbGbtlNB+cvW2zWWDFUc8G9eFRz6CMsypM+JUPgo4YMj7KjNFXFWyDQveILbGCB/x
xT69fuyqHbzsrSDxWpJGFxPQOPxnWZt7avWsff5G4AzVz+B9xXb+05UIgoBPCQGjOdkwoLeJT86E
CDPi12O4oerX0VLwtR5WbPBrCI6kYzYJ2zbbRnSlUyDfNXSCZOJylSMUcA13wSydUPn7nygbfhO3
5lRhiecI1NbflvnX4G8mz3n2sv8cAdoiwg8JFMLK0VdsZW6zOHFlsy0tFCXPyfeyguhN4fxXbvvX
8LZLAeSCe2pI1mjCPP2gb6+vxKnho14kBMgnXaNn/Pdl4Hk1XOgMS6lYIY6ZHPzIedLEr5GiWJck
RjXptz7qbhQNxYP8+8+56qiV/pvICiD39AEO7VGZE4aurymdoAt2RrvjZXDQOYTkNV1AfmhMGzUh
yUUVhWJ8qsnMpKApVYyayUiQXJd31F9Pt/R4HDmZ8xRhOGRXMckQXPyTb9meJf7A0PV3tI55lBas
NuiwRstz+OHpuzBChErt38OQEwduTCT2iA/h9Gye+x0eYrchAiNm6V389cQnfDA66zHUZv6wjr7n
a8HCewH5JaqFo6bjZLZUuc7C+r5tF4JZGXR4j3fw56Q+x1in/wGAFcNlnA38pQYICtPAP0+CyJIU
sA3bojMjY7nz+ccVjSlbg4C4HKnmyY9R1SGEDQ1yDgrXv3xAm0C9T/GHMfq3ljJGiZSvo+8+HMzk
uEf+otL+pKjfvVRJ5jGfjP3aYY7X94yWso/oMUIscnKwZZUX4jGWCBfVmAcwaTufaO/80L/t+zIl
pmNXvC72ScN7jM55eP5m63wjFwJnPwS/UHZAdXdDkHA0sqYG2AYYHjz5q5NGxN1C4lsXdhQ7W8Fo
hdKmBHYXZ2YiOt8Uiik2XLXcUbAooXCuw60cn4bid8yyA+CFDifRmJuFi4dZe8xxg5uBAQD0jIPF
Vilfd4RXwS8Fm4xn9kemt/ttYisVPHXNQef/tIhvobqIaP4DkoXizNqyCkKHY1v+IConV2N6NkXW
QAVhVzmyFlUoUW2FtOa1N7YiklKZ9W+0lDr9A6E+ck2/61GDLLE26qV8pTeUbi/EQafB4OtjWZuZ
ON85XrHhSY1Q4dmKCNX90Jwlm8O9TkfcTmfRrve7PZ/VLhyJ2F4CsPAqCBJQPAiDwzIhCqa7FDA7
D0e4P1sdbODXEQbmwKxulglNLSnRdvyWJE9hULd7soRHRVtQOpQqk4piSaSQo62uS/ZukoaALvMT
TX5VCZbXa4XTEMElKLXQqI0ltsyLcSw7UE/Y8g1cjkTq6+tiw8QeHC83Tl69hMH3hFp8U95TZNCL
4UrxUi8eiGzQxPevq15GhiXuN/Ci0+GS1boMGZ6DoNi72n7+tvVY3cwgZWej1FDMOGsdYdTD/e3g
V6tAcn7ckhO9ixlsWJNJEmcMO8GxAJQGRUsJdvJIA5ZZvu4vfBdBgvhZL6V1vEYZtmwvAVl+3QO5
r23RAsC85v4MpSPxMU7cTgyt0cT072wlynpFJyQKtS4ToO6TLH9N9lU1YHEZN5TcRGIZRFvZZTrO
eG4oS+V01R4dLtbzfTycKaLVuCTlozXwhcb+70HB9/B42t4CoCybzICWjIoZJuFF9Fe7gkSIR3va
7uV8iHkZNjKyAnLsyf1O8ro+RH3OgTX2UVjZwxYAWeh2Bn1hGqDRsn4B5RnPhdhgHo6RRUeJXu/a
FWbfDFKrQtmByD4HfWPO6DrygPaNqwZiHFtlphlfOgoB/QbNf1VRXkVqgwxinflwyVWB3q0erfcA
UXxP2fNGTRt16kfR/CAM+Cd9S/vlZ/LzLeRSYLu0o/8iXwx69OcxYnSWKQQgm1VZoVLEBcSt+Ahy
7nBxQ+hdyPwtG0YovpV+HvXWgtJSFgFHFAag9iPc97EiwRiD9rs3W9jYOE67v4h7sicv1ydziPcT
FpVIUqTwkIdW4H3yQPI0MLXFhXha3/ILFvwnYuqxRneMSxe2p95Xoa0BA8ruR2kVfxCC/QAh2X61
vzfeBbSy31rEiUCQc9pt+ziqcR/wVSJVB4l0yZ9wM4I95HUkh7ReGHRIr38xzYR5cYDMkFmnQPaW
6D5hX6wyINWaKtRodzqP5E7+Tbld3yflunX/7g7Xtc7P6+uQNclDcpJkqlPqes9mwlFcMl1W+Wn9
39KB2B6ac369vvVLm2Qw+UTwNudobFBPae7RGF7DWfLBt6rbzScw9FXU8jvLkolBkhm+Xn/g74bK
GeDhgxviHqZQzqEFaOThlcshJIEB6k0Iz1l+4dTpE2XNk/SWiz775CsHq3Rg0PN0dkeyTicEA64D
3dkTd66gnvQEIvCGOa/2dOfUtgZErKLgZ7bbcyZGruzQwi60vjRHD4lIlOzSHq8/ZuRIx5WZ+zVS
Q2S62JtT8rEXQTYdsn8kQQJCWoMLC4AUsBWPGwyv8PX5GFzEvxyckhq4TGLZmrnGbkli2d1FxYP8
nhKqsDr7Z0mWTbxJzJBIKTDkjR4IwR86Wh78rA/Jz9mRDYlkqbqrkEpmdI+BGDTZsl9Fc9XoIwy2
7o/sPsMSDHM11PfeFdF9Fkkfc0pcQ6bP5DZY8uBwdacKQKwZU97jyB1HjS7zQDl9PilV50unTE4q
+70++IVSVsuNfbiAuoRr2ORbHuN91/qfSHJyVHSxBIZVR+KE1ujuir0yRtyo+UC2rY/WVZ5GlvMv
lzy03IUFexX1HGfwZo1bO0ZlGamQaKZpY0nIzIH7JCGlhjw+apdxhZLOmSxFuFdXNeFDob3YDNnt
DkuyQFBZioNzcOXrKKgTzRDetorcrB7vaFRlxaSf5/VxDy2ceh8iPXhhxGBSvlbJJWmHkjqjMnfk
yjRW89X5J5adX3aMAGFEtrqJnyE44qwxRSsNRnpxe0v5O8wYfzh78vNh2hDBW3PUdliCNsAiAs08
/8Ro3VNbf52L5MJqF0/fAvc//ZzExGImnZiCavT3SwEvpruXWT3saGD06kTFZ56noh81bMDfUt1T
GfAuFrSZo5/Dx2BQk/uN8U4Lmc5ns6XFSmo/8t6zDxM9f3morbkDSO6Hnw+NbjnYFdTnSoDT19eg
1K3/cG+Gv+uXGG0rfDmz9r32CDogKr+uq26PLMZ4IT24CnamwUc9KTaWbMH5R/63mJMBC94/vlDs
d21Q1J7vEUonbobc0x6QlBjDtgspT1TVJw8VBbKtbcBHWTwdbfsS5eTE+/Lw5avADPopccpyOP+p
jXcsVsDZaiJNJp48k9CVLoxz+qJwvx+LobJ8rFSpPkKmN/XqJUp5Lt8dd+U55XBkcHrBs3ZofPub
F2WWCkC0dRXYqabXZoertll83SfZD3oQwvZjT5KkOFNmHe687JKW390/lzUtkRyk9EUkpgPs4/TD
Hx+RenYHS8TPZosi2j14Hv9PwdkPtihjkUShnv3tt1GjjfRXyO4pB9We8R3watMi3AZJWSNTUTr/
zJF267/sf9ye16cuUcqjXFN0OcMOK0R9w+611yp3r5slySPUG+ezlNO70J8h/cs8yN/D42qfzMOw
37LJ4A3ZMD6PIQ8q1nKIDg8qBxswOi7U6M60JG/iyaNMp20WIhnH9qFkkHJsH48AfJeB4QkloITq
exGcj0bD/ToftLVKBXBStnqu8j176S7sortCioodEF4DYz1ui5L1nzSW5Syned/mAqsy+P4SOX92
lY2T4X/Maou6u17uIc3/SNCq7K33csdthml+bQlwFHFshwJ0kR2SmLslCICBUq3AiEvDK80Xp7VS
vvQ/KrrUJx39b6ICMb+0d3t1mNJv4NjACRQhmwo1WSnZ/9pM4L4tMHWQceFwx1XlzSKCdQRGBjjB
87/vFJj0w1EyQyTvUOKnLYNwRRuttntdF/866wDwYq9oN8qHjpzVjVqzlZcTlCxxjgLZNGA8gDEl
J5m6SmM8jbTRvzCyTD2CXkVPI+A8uwFgisokJQsuHYOp3lg91oW4RRfJ5SbC/Kq1rZYhhm5HHIz7
Zz9g5OxReRn0eXnWMov9WiCNh4bZAyMIRJksNJ4lJ4Ga/oAfq0l72z0M+Xb+PA1PK93QKhVNN1XC
7jKGo5Rlcqog/282IbwEvxcAslnn/ZkN1ADC7rF+Wr5Tcjj1GnOwxNQ/FaNouIN0PymYpRQJf6lo
66ktefADH/LS0a2mswRlISPMnl93nfWrgVxFt4L2/u21JQuYeNsEWNY9NNxdPHMB6x8/PYnNYpYM
Fb95JfivtHWRMWkI+F6TFvkm6OVJgZSarbrm4T2hYEOMLzGdNMlIOAJ/a5CVlJ9DapOb4XekIbcS
Q+WzGuTkQNSxlixtCS4/uI6noriWqTU9AEIaUruq+65aaPKggiOB/aMdWO4KgLzSBud3axxBqpei
2R8xJwQcOQoQEDjhCVIaRihHAbXaqX3qNtjEgpohW1sTuv59bW85ZZ3qlTzndJDdDwxq2ALUhmkr
hE5xgb9sd4ZkrdCNZZotaYBFKgEC3JY+UAnfMKkYUkIxaW7RaU+zilILTIePhnLlWDSnsgDvD5ct
2s0/GV2RLvRle4wzWdL5A8q8uHPGmbilRce/sI8WnJz7Afknwbrg2pjWC3YXF5fIwN/cr4URHOLy
oiobLFv9rOPysDtcjORAgezioW/dRb80oqKc8mc4+L4orXRTui/lWr2fXNxmH8cXeC90YLZLOY02
SJ0tg0W8/ScbKnNd9eJj4kDPffwpLeeTgPxC1ExLHKj6bf1MkwUkqLD8jpxiWB8TD72ss0hqmItJ
Cu8L7VDE2uP671Qri0bTRxjRLnNX6Y6w3qs8JAXSA3KPIxZgLtjSorGyp+f4Z8a7V5r752CmiCuj
u/KPiu8uiIcczx7Cfk+VeYgVKZESM8Osfcm1NAsMh7quW8FPTN3wuMBwe9UDikrUOTbWfngOVkv0
B2F+tL2/u8osrXuj2KVmFNu7p9WkXIRSMN/qJi1GK7lRtZ25bWq4j8tpNlhhca7AuCD10KP+NW9E
ezXysJi76qoKQPSdDr2Ronyp9XoNONWQ1bBPT9ozqrW7PbITV2IClXU4Ky9LpZxyJOqMq0ug9Lei
G2tB4q5IKZoJ7IhCaLyZIeDzKrqbtc78H/C+GlM5phytYf+loX6S0KSx6v+yGx2VlqUyEQA4TFWd
gqKwU0Fqt5XpdkDLCSUtqHeqso5gFQsgx6qpvrS/sLcsWG1zbi6RTvC+4QsJiJu5PQtOLBdL1Wef
6NnUd1dfOptW9hv//H2XkLtOsqFx6Z9mNmUsdry8Sq/7aJlRDAaE+cavPgMwWHwQ85Qe8dsfeohf
jI7hAktdaedC9RK74LPsfkuA9kDkrtYGcHwg0XOywSOUtdt8XP0eAWni41oC0p6YmJ0ERfiz8gnO
dPsk+/uw7pqPcVRrObbcyC+UJ6pD2e1CGZ1yu0dpvbsRqcn53LdPwhZGuZmGNGpWYzdc/JmWGgAR
XMmTEVny+fCIvUnmxO46CGHtMZYjyAYPL1g1ahFcc9oUezrhXbNH64gHCOeMhGrt/AYgcmQmSFxD
ulUG2Mo6prRsH4iT0Qf9lHIQAd41OwcaOVTruPGp6gJ+plENYlhWBnK3mhE26KLhHmo7O5q8cBXM
jTEsIUznVtnahoFC/Tj7etVOQac32EGuvNXVWM5pmul4kUb8riMRbN0E1y+5dvdjJVz4V3pvHiE6
uJj+g2YMmv9MIGfW4DAMwKa4jk0zSmTV+SzIedfWHmYf4iQts1ThHkVESdXwsaNvtN6f19W4H0sD
4HqI8RS657P+ehvlmWuGgCLVnkGl1smnzmJnpflvuJx1b6gQM7szCdgImtqZIKvBcvSYh4QZW934
vG4z5ffx/HBvKPc7aUesOmtl2hioLCq5DjyiMI71uuk+GOXPkGJBa1OvCFMad4eTcf67Kc5aPaRQ
sZsVDIBS9F2kq+uvWaM3i0m9QauNrrmR9tdoIXRkqflpVI3I+fAl8nxJT2JLYxcPCWF+OOEc9a0P
ulqrxlwr/5ISMC2sh0krWZcVD98ri6glspvC6x4FuGj/LJ+ZWatuLRZaONmMoDtAXGNcDTy8gsbp
1eOebx8sEI3ADCR7XeiFUT0R87T6Qps3mpHpVjj3lDmV3PYuJNdFCQeo5IAGqh5NKYnOiuZCYSqG
1v5olLd1y1jAeekLxMfKADN5n/7N5GYhNA1zvwlpPUBaC0X+YTybBCTco/GDTc/NZFjyhkhiiCbh
8epTvSu6g/nop0UYfQHSv9I8Ko54OvKIkwzRIXeGUqyAb/AX5grKGZo87pabyWnpDuP+H11kMI8W
DzO3IRSjt6mCvKFhFyBlYjQNh1cNtCU8IAoiZIX0qoE40be0YMD1X2YLg0JswTzYfP6m2pH++RyF
CHH1seV/Ak9d0OQIbyYVcKJbvJYsEAf8nDrEJOzpIqkb6LY+FcwFiEFV+bv+j4qgGro7C7dKdDa1
MK07Ti0AxeD419IYe7z7KJ3S9pzYfjQXWFOVDDTfr86EuaHrAmsAu/JRP/r3AZLsv4TGEfOPTM4L
YuULXkPLvlBxUc0BAdqel2sz2VaHpw9RN91uyXG8m1kq+qL1VxtJkYObqgrs+5eXl6JH+H1a4jr6
8ARf95pk2eYZOsnvXu+ISldEf7H7paoj7H+TaMZ1MKvaKPiPeNYvjNXzlvI1RVRTulx4gjkebkW+
8z31XFIpQvjzF5XONPx99BXLkjO5Iamf8vC8fDChVzoxOUwTCAmuqbb852V8SElsucwZseONTmN4
aUVnheSCAhy2NJojx4bjF/MhlKR0pScqAZsHdh4X6j0FqaBd41SS/YzuyDi7BDihOq8R+9dUBgUf
qqkIpTdUqmWAIRcY2owv6lH/7rBDcAL/GOO9rMyQ6eJrm/D5iFRoVuvZrW2EnidUnvnXgFZP+twl
C8+YbYCpUGlveq7J48JHHFHusN475tumDBF42BzdwKYHzpTvpXwialnHEWTejHOEry7VMPSgdBnY
5DqvRpkGP5te6lUpyjIfC/Qdds6JuiUqIxwQfA2O9NQP2ex5Ytyo4VV+lhdm5Ezdxf3aWZ5KOZTk
s2jzrKD4AHLWR3kgc1KvRw+DhxFme3VIfVgQghf5vkcTSGZmUYggoK44VCxnb9HS5i3UU1aiavDu
VpzrHcVoAME2oG5GRiQX50U09M9HXd+/gs46V+8p8vj4hZoz/xO4vRvdRDnQh+fGchedTSr7QIHF
F1MSOa4C62wrQaDnjmUWIxIYto5Y0BEO9+/iqDfgW3HlSHTi6Ix/7URRQ6jm+KtsfSgA4mcGzq7m
76ns6NeltOh6Piluq6MXXRU9Tdcmq0ZAJNXKvSACuNM4QusmZGrlGVAnUfxOYJBQhYFyL1e803hA
IbGrvNmrTddBowotmHljIlJHj11I5JZx03F9ePlcLKyW7Zzu6bB5+4Qr726bpby9uvDsW5SJsi1B
mkBzcSuw2iAd3CYPt6NnDAMyvljKZYE0A5U3qaSMFBs+foPHgKzRaFlOfP2ex7muJgpykYwSu3dY
kkL0WZGYAi/+mQu/M4X/iNC+hiUw6gB5b5/IG0kzOLqjqn0mfeCUx9lZnoxJfGohrYxbZecQCoo6
JTzpL5H8Q+C7qZLuFPE5WcHDRKvUPvOjyf8uRpKy0532ZL5EOHpwLmDG5pEQhhowQ5y7MWExURRN
OP6ENxtuIDczMweO+LUuWVeyxqSORcyCh2J2dyjyYrOX7KEUWI8qxikyH/sUPxFiBq/R9stC51Ll
HJAOsHWTLrdXdJQJr3XFPRMgCVCxa8WF/sWAYMpt291rAlXG1gWrp+BIBGk5aZZfYRIUrV3Bnusu
woHStYCmIOANTHSfxgexbXAM7syICJUaqk9tMRVpO7wr1mD5svZQI+79Q0+JQK0Q1u81yNFzNOix
qCD8UKAHOyZASpLZVrhB/wl2ywgQRa+4Gkh8fC7wlvc54GSZkeAXfL3mx9Vsq/UlWcriqvYOoCt9
6YELk6Q1kCSbCUjebTC0rSbPaLM3mL0aTVA5XhjIxRbjYzrdPP7KIN0NJ1fVGoajCWrzrLE5/Ty/
RvRjcWLI+DCK01xDbya+2vDf/Z6YaVFZpSy5J2mKvInvsquSRixYv5XCVxnp0YmxsFWzgu55GdIU
A/VecwjC9IlhjPDgQs5SnPm2EyH8bptv3dv6rbQd2wwLf0ZPHoZuuzRAFQEM30HfpvEIN9eB/uXB
ZmQ2UqEhI7RJzKe0Jkg2M69UnlXvuT2DHEJ7Y4Gcrs1WIjls4/7Zwx6HqmcV3CePUyfWojqwH3u1
jVNa4BAdcCxM2WDtRVNCUTNcWSbF2Ks6ETXMsSIQvz85wXDAg7GPZIjwheMHOst2sgh2tobXSHdL
iaVWLP8MwwYbgrTiotEPsMXI+96jrFFeQenYO2Vff3HUN0gYsQCeLf+itk51nZE0cudooGZbDRXp
nlIGJoo4qVGiXsvQVKIL9wo9BHwE3KBHQNKMoIromEhj4Jz57OgZ07+taTwe1wNo6MPwgt3W/sCP
RuAnSYuPLCl6rEd7iPTN9qazC9YMZoVhrHCeIbL4+ITzrnnXdzdg0e0f2rR0kfXMtLrIOxzoMyCm
mUASVPSiDN7lltbhkcA9Cyh0bcVq6IguuqRYiqrBundauaXywYXQ2d1NMkaVU0HE8QD6lOJFjyLv
MZ0Wo3eSu17WPGLL5oeTBtW0x3Dlqm4Z0UPKT+J//3myyqhWPTQEb7fUmQtRyItQ1469nmZYc9Ua
+AqMK14qc0ERpWxQTUrcapaE36bLq55dBBz5EWVwD7kN/t3ihzawD5hqywcJzNzunkqhhV/ciY7p
1/H0w65KVlYsUwUUgntUn3rT63qOrJA6nej5+F0sc1XgAERkfudC085pPYsw1QReujiQydArqzIE
Zp9RLCTDy5IEPciKtwtVGvqi2n4WKYbbQaVucJVpvJ5uwVExOoJrALyUK60B8ninIXWsVGcsr/Yf
3fCah0WTK0osyiDqY0LqCMIu44SufrGViMiI2XUDZwJY0WTtFsNeHMfORc6ztpiUAHwgrffvSZVr
fUDDUDzwt5QdnGI1/HMkhn68RnFAcOAZdXJMy9lzWrNEiIYqjUzd/XokxurGSzmotMDzKwjQssSu
UvuCS8R+BlL/JrDtQGaU73rl+cFHCjd10xcyuMbVGMuzwq3R/iMiiQOoeYAWtMaA+C9r9OFp88Sh
lT3rG0AoTUrSkDZRhBMkzeK5NJ6o8m6wl+CTfwQxGYIEj6gVPfbsQFxJitsXI8Dn2dl9bW/mzu1z
cQtX/mJDVdolk1FbBAmIK94wupz6rZ4KK8q22eayVG2QvjwvbspWS7EyeEYugV6a3bxtxorOuDR0
Bruvl4PERkQFo3p1f72se9qzdPSboXBbE9Va9mV9V/gRa+iqMLTJOT+PsdluFBPw3QQLKLCDwtnA
Cvnct8bgPXakJKXhCbpDy0cYICPhiDgGrte3yN2Snc2T6KVTFHaTkt0utps15/SMBJrVMO6haoIo
ZQSgDykPdqn6dxU9oIWfAQluJ5Dk5ArcAK2eXZbS7jINIMv4uA4b39ggi52ouF0K0rcbP/th+0Mx
xLhkBsvV5VUNeD58TRAU31WDj6q4yprtm/ic9GazWOhyuYyHFWexmSUpceVYmYYRFT0gWeCE72Qo
lRTU1wYR6eiO+zEGAp44uBWf4wFIp51udvpY3MMZ4L2Dd6qWlGXI/SLkGULr7iDZlQj4yE7k6xMS
IlUozrCqDA0byJFnTfDL0IxahHz/OIswOfMLZPQlPw7gifsFv2A8peChxjwkXNJQtBKZeq7WfQsk
vyS6EpSURdGPckRrvKyBNg5OXxh8Qgswu+rb0rImUgMdFhF4ruyJVeGwcC/GO7COus6vfJ1oBFU2
6jbx4N833XWMBbeZ2U1JraEXo6CCGiuCw3liatYb+5ctirbmq1qLSZvz9jlqgcboUpRcez+FINZ3
FaMlpzvUkPV8YLRvoSvBxH8O3X8O+esx29HQTNu/Ry5ihJx0SoAveJb7E5hv1Q7a9EspNA9o0N+Z
+9vSIjiCotCP58KPMZLSUQ+4aYTCzOnXpbWBlEMHjNlglJg7XWsPamBrSE56RZmVTdMbwzVEinn8
39gP7Gz9WQ3y4RVYKHBULTNr2u1daFgMXCdPyp2rUz48fSikOcxnPEdB6AZB9+7FS4U25tD7JCUP
TCGQ2qc7zCLl27Rl+++mhSEwyEvHCBkhfWny04N/tSgPeJlFlxosIE5AZ6C3cTizkWrEaqiUDbpc
1GckiepAnNjh2XBpRLjLn9kEhtKrgC+1rq8sJ2Im0K+x1JTUULE4gZvpifwF12NNPiXQwfnlZvQf
uV9wNZrPkwYBYdtVywSOmA2OlGomDQZjZEZcJX5nLfF3DTYnvsdZ1CGy5L/AbT2fG+bHjgBqLI8r
natfOo2lp9Uo08f3rRQg6qiS+RBOPecEnvdoZ6kkYs8RznMDyEC9X7fbnrp7Bi1evpTbcyW/sJ4J
ahU3p3tJwUhBr0WPFib4lL5XccNeRqe9F4FekUKzKFxOMP5kJddySEaypPY43uBK7aBd79JXLtbD
whyGHJ5/nrei2ZNPkEX3FENSO7Gq1i07jhG4twSHd4qehFKGlvsjFThIG6D1oRZ/04JucYUNX7tM
5pzBFG9t4Kqq6ylPns58V/Bu8b9Z4H+lMHrQBqbzRWoVvVRZqNhoIrsUEWhsYNMFkba2v5XrZ6Ie
7KMYANpxU5ZJiOvJ1Jrv9rL4NgEuHGI955oDQigDqXKa6tVAcvAjh9ZRtHbjW59UpbFXa7YRAizU
EpzRI3BulMZZP4KREeOZ/LU3wseY5jNkWQxQbFVHU2LfYgUF6qpXNW6vlIqG6WM7pJ1ERhvEVGm1
8azk7Vxva2E64ZGAgIQv2V8oVbpqCbyqv9kvkCyuCOhkK3gsF15yDWxVPZ3wk9+0Qmcb4DNq2PrU
uSK3Mg6t2DhPoFyUMGNJjjn2dnWKcnzxjkd6fjRc7ene7alO/IjUPq14t+gOP4ekl5KKeA0vhhvn
tRhgaoI7y0fe6FhPjmB9AwlVHkFhjqCmDCdiyF1xlXdMrlHRsHjmmWypAQqsbKyguyH8CwlM9ODP
4ZKSsww2kvn09KEbtrNnboi8OCThorM8ArFStFK3vzmWKGktqAQkTDHamabvU39BSBGgZrEFIXXe
u7bUSwaoW9GupLS6Xoa7r2y6nfrhitR6KjWh+iqkGV5IUkccuIkaj1mTs/yHHaj5D7kz52NYXhzl
LsrsTEeXD0hTLEHSTee0Ls5JhaEpONUdq7+0P8HOovN8t1IurmyffHthXaasJt2lpciu2CZCmMqt
mv7AKaeznPjjB32BtxDHsfwbi2L/BaaMPwTLgxieE9sU6I8m0j6r7KCRCFAgMWqeQivDOntYznoO
pzLGg9t+qiGd/nn0jePdQ7bLd1DGxSq1HAxEdKEfupvKcHTBOE7tKkCzUI5M9iROcivLjiSt/WQN
DRf57l6AlIOzLHYzeqc91yqn6JbzDeVyw4ZJaf56AN5s4rL+miwDrVTrnQvcHjopsrXmxSCy7L4K
3G5Hok365FEWKIB2PKyXqTGVWRVdFZCi4uJdp5bjL3WvRZe3Cog8P2BpHCMDqOmMmHYRwa6iWXBS
3ED53gIxrO56yQU7HVD3pAgezlUWsMxv/5W86fQLIZoVfxa6pF9rXYTp6+rnP5cA+JYTnVNEbrhf
m8L4AJ42ULlPdLcLhWaIIMV2Lk7v5AP/Xyte1e8RlfLzqXeaqo4/NCx1hL2q23ppMXWNDuMTXkPR
9dE/zPj6w595H1l0p+ptoOSBuLNNMKTCdrSxpJHE+qH1QLsgdaN1B5RVSzR9wyqK68WgZmDkWggZ
EKP6mqdaCcyr4pjg2siOp6mBPdW2qGOxw8DOav1DiIcqEV2yOJ04c1OiPQgV1OooJ7iAA2GI8Hhv
YLl/jPYLUG8AXCQB8BPIwsfBsV7+ZXuwfD8iOdBS1EjKGdIVTK046A3Z7WyG7DIv3kUBo788+zJn
wT3+xkQx6bWI8PGk3VtPPiS/98cjTXE1J9cf5t2oNYQwF/EWKSRaMyPwAoOF8HZJFzu7Rx/KHNtM
DoD4NvRARskVBIo6yvWn7ZbnXuKYZfyLb6I+XHlOoCzZk2WRCRiWu4Xd4pSCRnUqX3ZXz6omgQSQ
yLtJavkJ2KkjhVSfDIHqA1BNJjbTkT1cmgtu2CiBnrV2YNf0R6yI0LDC+wDDNKuJr4JcvmFdc43a
Kokz3OQedun6rUA4z5r3Hd5Dt0jGJ6XBvRPTfZ1j/y/EQ9ZRB2LFOSzXD3s5mgPvL3Ru70Q2pf4L
PilRGaUOR4BYNqr/cso+y1ZJ7vzzJsnqefEfJbcVLNLqviRWDMxhsiECYOkUCru0mT3ZLqaeISwT
7i4YDcpK0IcqT9LF2hlagZj72W1/bob7EGcvk/56ShwpJR3ZXgNTIaR/nN1R9hFsBpUVaCVdYc89
gqs0BkvUxjjeZANX6p7gGcNGV5F8pKkL76vMj8/MFtIWU7WsM6VpnOgoPGdFwAsFC9i4KYPxsrZn
3V19eAi11LkvRduUnXvPdoy2jZYSTqhUHQ1noerQudjK0uI3ZZ6CfhLUZZ1YxxWZGq+K9tyueGo8
S1Q106hLi6+TrR2pjpEmoaa8u0FNb90Z5nYqmV2drH53NielOdspvdb3mrd9D9NnO0rligkvGpy7
Ze17OgRkWg5hg91hStJVTH7ZgCNUWB0huy9BL6P3H4ZELFkA0EW2p/4fA6psATQaDxrTDSoSaZWa
QpnUoXt8/iENWgldsxfcLt/JBmk+QbgVPiVpNuSkA1FzFPjGE1lxAAVmtEmr43S5O4k3hRixxq7v
+hlBXwlXDhrvaM9lljp1+UHyY3RcsPtX/lV/EBXis8Obm9OLAN0p1nGhmghe5xZvNmuevQdiCNeN
ke2Q6IijsqrD7vXq4yjoFTkrojcBcjZP+LYvm7qGV/rgMbju39/tU4Q8KwxBNaEP6UWLERFRT0n5
T2P6so86ubMgHsrvs5PcKIo110PTPSVT4WLWHCIJQRMBA/J69HF0hn/Xm9l0SfCXWFPkBnb/5Nvq
5ki+7olfSHgneU6DdiYiGmLf7833INCSDG59otu/UoBN+L1zTWiWKwgT/CnKqBUizFy5HF1HTkpo
99b2UzOaprrpZA26jXIHxj9xB8dyYjcd5/5+EE8aYrPRx0FVxjd3HCYzLcDG6c2TlQDxQmyScf5A
jTsItedYnOqP2pCete2Ww0dXQdiYin4yxOF0d1wI5zvKhi8fRdGPZtISpHf0c33KB+khKo0M4N5q
nwStMtmSYaTnzhJr2og0AM1XtUQEHC7gQODQeK8E4Jyh+eFn9d1QNUYMnjZSoXopYVfNI/sdWFrB
07rvDKmxsMtp5juWHpO3nuoThEz0esWBpRdyPrjmUK+Pm0uVI/Fm9mms22REc9v4mHz7FKCoDRdG
4UPF1e/DGF9bIMc36ct1GwyniwGcJN1hXXo96tD9Al6cCJLPIg5B4bLitEYXwX8fhl5yV8JZRnT+
aSiUuq556d/yS/y6ATrhBJKgOFpvbiTwD7rbg1skOzcs8OvJfiqzx8NWMbGU+PqKNfUdts2IDkEJ
2PD5yOxiseB7W58Gvq5Ig+UHVbWccOnexnekZ/nJmbK4PXWhzX3vsrfofBNLSO5A7J6M85Y1g5Jb
wSNL04Y0HS5zw5nebVVUx6b9SzuVyXiwrimbFl1O5bu7qCle+JHqrL+0jxjuR0Zp3f2MFTzx8mzw
abfu/Ew5qkhRXtQZB/Qgc+raIIjxz7vSLX0vq527vlEkFAQd7jrOxxFnBiK4yTgUI6cRyRemuUwy
BHJTVZTmm8mHbRbqZhXtQVzlRH9eMbB4NlAsvQ+PwDxsxzGm0cMWYm3EOY/BIpNcYNGC306YDLRG
WYQN2K0jEtqDTXxxqy8q5oxgpT/Fijykj7gbERsYP8tQw6OrO3yQI1RJg12G9tE24swi/u1qBKHf
0xLTz7+ewrQhTqLU+nyS2krcsXEwkYAz/o7Cfh0UAUNCYdOFTI4EdWHTkxncvcMA15rrBRIXrGBC
qcmRSgnYrzr5zRftr4LvCnWlZvWWONKeSnox5pZ02coxc5URUcwXq3F3wZ2qbTj6SaKd925vCW7d
FPUCV9By2wPvhj4MEojWgert7aW1VwKPIuH6jRFlrmXbYjT7n9X3Rb9MEPwumktHuI9/5YpmBPzN
6DIDgnYSDiRJKaIUmqyCUQ3USapk2AWpNuk4hFcA03aSLYhkG+qWGNxKWHlH450lutaYnpVoplp0
Gf64OTpqGbZMEtSm7+7wKvFfjtgZk634dXnqiad/C5Cgi2JSZCF4Kkw/+WFeZdCQBahFJjwSc/KA
DF20/uBw1wPCueuph7b1nt4fyLsSBJSNVrw05kurHPY3CEJ6wr5BpcaFuX2NFHijG6aaNFMfRdpO
WEY3g62ucObsfGwhR4PFk4RZEntfTHxSLKNDQeim0F5oMd8YATqWGaAwcLrb57trvHWIxO3hFTt5
Y65lTgMQ4Fftl5Zgb9/aimDrskooO9dffhglj7eE5HvlghJAV7XoE5f4F5Q5CvWY3rwt26VXa68g
ckDOlv9T4CnK3ScKFwoib9UR2us7hUIpM3hyeQMKuUDwsvTmyzelT+nhzB6UkkVZ2A8tYE3yFgBK
JNrEHvJ5fIFUTzxRKcZ05HZlWdu2jYNNnfuZonyJgv7nPZ2b8vXUU1VjY2EVYd5f7LzAgG47uegZ
LiK5M8nZ4HzCifKh7UuAEo7QkqnkmeCSN1ul+nGDf5QoqL4O1zGnlTnT3K9pYlQy3e0O1YO4jwq5
9hXsuMSPhuMrEpX/+CEGGeh9z7AxTqG29UxbKHAzrdnfWx1jMPoL0rN+bsZyIICHTE1vZt6d6ng6
uFseTikwyHNalLrg2IfnJ/7i55XHgQvW1YZ4n76zwyw69H2khRB2wgdZMRubEQish4zUOyjfK+NN
lbebICqGH8+LUoznC7pJumiAdzfjh77mJkJqHWp+cPjlKCmrK/QV86Yh+yiGQ82FpOmlISREA1W1
qs0fv7bjgx1nA2vnZ5aA0xUQTZBlnzdBHfNtW8K6EujmTpZJ0+SKw8xoliMtqpCqoThGUEtMp7bV
fMUzoPve+8xgN57Xb5MsWNZMwgFiHxpWvdmZeIYadVc+NZ1NTZRVaRJHe43/p9GWZSFsJNXaB/Py
j1scB7vJ+v42SYmGSpNmsKBbgAYaNa07csgCQC1MvpLQGqaZczWemVE0QIaR8/S5Hhf4X3pqFo9U
/q4CjA7eTf8pFvNmpprxpJ0M/KOc2XxkejOS4SW6WOzBtdj07fnhlUD2+vJqxKYBelJ66U0jyniQ
KUQSvgYa1CL/OZ31cDR78UL+pkWR2ZSo0dW+S3/x8jr20LoZ8i2hhqV11NSVyHG10TANbNwuEGs4
7VUaQKCe50ZNQKzTUcF+Ad9Bbdh06n1dn+6q+r/vcnzUINZjAqK8PUt1LYkii4o5uq0zUhzH1T0e
vj1oGsdfQlk3RTJ1HEEjKcsXj8aB6bBN/osrTY4lZ2P8gtbY1CA1kEceD3kw/kvu0jjDhkzbCzMX
a3em75KXjxYLvdf0ktge9PUzwK1r6L1ChKhIJo9qy/+AfpHg1YmhFF4BsMm6tXscal2bTa9pRhwl
YU2vRljFC/WllA2bGqKE23OaRtrdF3uehacmQaOE6zNjkXkzhp8JEPigcghR7aWuMCTU9ANJvDS+
/P2v3LuUwSJH9qyELx5wWGEFUJ84o11AY3HD+il4j3TCM4NCN4Ades8iZ/VqgsG2NaLprF7vRpCE
DVjKZKnBBZnJFVA6ZkL7SqGfuN5i01RCBd1JO8Jcz0j04o4smC8pnd7ZieUCVuhMQfaEmcAaHgac
JkxwM2nKq4EYTMvc++WgbnBGQkj9i9+7MEBOjpKDK3pSN8ejfEiObE8ZNGh/kLTBgQNQ3VnlLjrk
82YIHUkNI2d6JTsNzMrr9/d5ld3iA9sUVYkmUUwzxhR/iBTk9XyyhH4GuwPn1cg4VAImKT88Xbte
qcRVujKJ2QC5gp34flBSTeVMup0OTRxRrbGwaG11gqx/emky2eOAafel93czhZZWfy1Mo1zyTyJb
BfeIJ1mGlS9yZ2Cp6hWosCmDA2hfRc4iMCrc/KWxPi3ur/MAM0qUx1XLke3sunsos2lfGV95UjPe
DmqG9wYBFScNRQj8zs65VjBmSdDSWxnSVHYdOr8XaBhuLunmgEzy6QIg97u2FHN34j9AJfVUAHEW
EaC78VUHtf6/fHFaqqr5NkZ9cZVUifNk3pESNikTawjItJGLeqDDKb5vj+s2K1lHW3rJJ21ekHhH
Khosgdv0Kx4X4uiRtw2qurTApzDl5h47LV3wybpdkYY+B4qy8DZPd8hstMWNBooYlNfgCNnJqqhi
oiuGMlVkQQ0t3rSGDrVvGWQmtc9Mc5PbsdNvCDAksyoUNAiYvImKW/4hsZZIlU2+UMqxt5Pt+rfP
u1s5+gXuEEVZ09VTPV4TbrnuUUgy9GyXcGt+67OcKqEyK5raJrev2L9fgq7sj8iPzx8BZOOVqyIw
5MfoRpxRaTHp6lUjwZUnd5Kouj3Gp1HlQ0wLBBGCOlwPgCSEmrB49A+fw4Xa9VYbusHM3GvaRwA6
MioYSm2SavgJQt0+2rdPZ5Z67WRm1InuJ+Nj3EyGPkl9qg/vdnYLAcsVL31OQ6Wy6oVbL6h1AX11
DrZbHXERfD6pri/8c4kBrcVgBJ+3jQ7nDHGd+hSKjKwQ6W6ViplPKa2YiJTJKjZXiAOpD70Y/Hk+
LTQICHTgtYs0OoTbbKGoDiIwYoKKapiGy2GQUVlq4xyQyMsbH/h8RwXaJ9ASfpw0ZXTZ11JZsVhz
5geaXdMkB+20MwIvN7qRVFOYpwhwh047ySqNVyHu/Cff8O6XimWxMvXBWiBppjGQ3QxP3B3l1Qsf
qfu565iQZ9s693mnBg6+UfpSP3L6OOoRe3zJvSyyhIvloCHk2h+HPnLRj4wszRjH/Rnpx0VARNSB
JIQ4SZpKm9pSSN/iiOQ134BuBszkw2Pb3OCNJsXB/nUJ/4tFtHyzPa/2I817iUXYXWPLKv7UbAhO
5SsW2NIaGQsrYlNRCDBUbbSgk0OJZNKr6eiUNnO9h3d6HgZ8VZl/u2uZEZLdp0SrSSyg1dOxn25M
MsGkw48rYotLG78y2S8SxGeiFRHtbjdrCsXQ1UzUIhaEP70XUTSkLKIHebMAzDM/vp3WXA6WbHB6
2hkAU/NHbzFUGFerl2MiRnMBoz/nVsHLw4JcFhLUFI+p60FGTvd2hP5Pi0dzmXYrbOrXffvn7IbJ
zuEm/sZqLGTbs1o9b8/b09C2iKHNhEEkgaATfZNsTcbm+3QRrFoH5jggBT/pCyUI993OJOofxm/R
RR304R7iHpp1/naVzB5il37p2z2M6kShFjXximPJbLFDm6SCRCAC4/plrPLjTl2tay3AeoNz8E6s
3RrDViGFFTZJwktcaUPhhufdR5Ugizuu6wcvxX8FnKuLgpzAt9Mlq2OtjLpL7rBPUl64B2ntDYnk
ehsPBRn+erg5iNiyvBDA+SM2QgnEFhjjElii4woaFnNM6QlTWztO8BVmhjE+Fe48vKLJRwNhJ2aP
KygD4tqvWrm1fTZuv7AWcKtiio0jNLVdCzHfKr6Z9YE870tRUO2sERXaOuaERToEKLvT+obHoMoI
mYVHnE28BNol1vuxau6Axx7v/6VSQtZ0uTXa6gbtGb+APSg7YHH+4gwrzbVvT+yxWlelEvO1uITl
E0QQ+2ll61bhwortGCGtWtoqdDFscrfiqkeXmWBTSFoZ5O/hOIGEcT94g3E192B3xszh0UGS6LNG
dKYetkRQeAy8QJbkWdZj/cIAEOsSc4cT1PfogxssQ2PNZJgsaf5nbI9Pu/dEX54nJ5F7GSRJ/lQh
+uVJ4CyIR0CbohZydKYnU2/XdZks+v98hRDX0VdDkik5qI0a8OEVGFv+LNLZYo3ZMg3rWcYc9wq+
fq2UJBO/0p8M2POY2ZYiq7bHVNZbvRbh/UDAoW2xdROlb8hH3sOA26k9Y130amIsxqIHSGw1rfIn
PKoKXfXKMjZlOEeedexvCvkS/KIQQLvF1S0+bmp6IldSOILhX6hn9hjj9E2or9zLD3+uFfROwi06
dAo4O/RfqLXRvjfP6EaQfgNxZr1FguXgy09VSY6uNAnbhitqnoAjCerOivLB22I1/vZj9i30X3pC
lzdt5csDoT8K6P9E2ErCmtMSGOw8ZbhroEDjw+MVAHuMIYeJ2rKQH/FtCew/+kYa2/aAUfqOnjWq
qkAfcu7563x7lA8n3VqCwa9+3hldM/+k+a3TkzVkHQdjorpLEspKr1NyPw4HI09wAE7oZ0L2DVfL
TqX3NC2wlf8KRTVw5zPQJ2jTNI3MYPPG9bE6x2lAhn80QyZnEbSV7fbrY1HzgdOXUPcafGdzwrua
z3irAjJ1hGQKc32GnBB88frG7s2H59kCkYV4wsBDMKzsOl35RMRmUiKbKO8m5Ta/gPAB4vJl8yg0
fmrO3Py0xbgcHJ5+58TynNX5qYM/L55HqyRgjLg1pGHCgjXaAWqo0j24AtFpv6jgrVxAfzHxgcIX
1CeJfKqUgB1+b7ruulLY1dFN/PN6Ng2bIkxtNWo1egY8lwbi7pTT+0OonM9xtDXXFtNyzlDLYaCu
7ML+qfsaaumv7hU6iLIC41zkVvwBW4Qz8TF1AyxaEiph144JFN2Qdq2qiZDljEgP5MDkHqzxBuu6
LhgPe4QQ5NqRq9R82pMEOtGHu5O+CCn2iujDf2oSEdOBMkvgYejQ7L8T9jj3CFvcgU65vi1lHYro
iyEZ9yqvgWjgkoQ8TwIk2fuOgKCyPh+NUogTS9JhFoAD53ylbweaZyKVPfN65vYKelx/Wj+DZYz7
dbDSHpc39E/PFrhV0b48t1U3MmcI9cCxeSMjpHkAgYcJqd/DNWHv/fbjbKwaH3x8IlQ1BdAGzdmi
PsnkDV74FBFkorADhF4dp5jcKBDm2mMwRfIOWyHue7dTfDiomMWvwz5RLjKsttrOljZ4+ws0KgL7
g1evKVaSdmYVFouBmhNmxEC/OR7nA/obVnINopeOup0uke6l8nZRHSKMPaaYK71SUGCaSGDAEd8/
S7fU1CjoXJkUHAfkE25gdKBPf3zDRmpl1yS1v2dtUGXWlezi/9t6mRF5U2CMNQae4IwNkZ93acoc
VhqQ+fcwaucj9StbyFmNI3Pl0M4SCKvmXxeik1hX6DY1SMEvbdMGkGAp1URW2/AkXWJknCUqmN48
2VAdFHCH8wJdJhxym24u+6yhZmJgEO7nczJFBOaKIR6xAL1S9VZmBviJNQcbPJvU9Goh9Q0Uid0U
Snoz9Iv5FZz55L3eyQJQYUp/zy5LEcUPMt6nV1B0MH2pkmm2BI9WL7NVM3qMh1pXEtCmraRHM/Is
SzEmVojGdEmxogYeqptaf4EU2xitruwWEQh8Jecg6FtAqwV2nzFukeV6h6eiY7TfKgtTHm/FHwqZ
QPF1kFNPIzHbCT3V8pDsyK/QU/+OMQxR6zuvlq1YBFMw2rnjJwtbCp48E+bPeCVbQaZSbBu+4N7J
VVabOYt3rfg94fflANnpG+n7Du0lAJBhtaR2KZav+LCO431MOXmkFtS4eMoSYBZlWgODyynBurUc
bE+akAIEaAnvQirxbp5XwKr06B1/7G6lNp/jZTSXTU2HX2PTKcx6GiNP9ArxjVdLXRdphk9wfNmS
QlI0B88xFWe7fKSGKeFUrD/yBI6zelKFMFsUomuSfMv9F8AzVLbbTHWV6T1k6PMzfLhu9VU4DlrF
RMInczDqpW618DFqg1tl4PtUA14udgsOdzFcYdsX2vmFuA+zbpg6SLMMgpffJ+O+VqPOG+ryA2Br
oRo8c+jb9gsJXSaZPHgX/oQNxthY9hkO4Rk44ob14Pftmg6Dfq2RvIs0RR+SPwBQRhjLEd3ArMML
XtIbIADn395TNX5gimOndedeGsWzLE7BdW7Ki0i9dRApFQK4l84iwCPU/WPh2K3Yyq+q8XjRqpfL
bHZflfqKeplB7APFsNBo2lVgnF5QltmPmTVoIp4k9EfS5AmECP4CTk90JU7goTy9yS7irJNnMQW3
E0nmyXwCAPIQ8RClMDLcfWZz3WP16MwNagDGIAi1RY7iDeiSszzOkEqXA+tZym0QPQpLKiw0/9Tg
7ikVXX8WWhCfjOHwwEImpZznNG6YMZrBfN3ETqzQJ0M5zAuccRjUyaZHe71+ylJQa3/W69Jznc1R
F4YElYpLaZXmIeS1hXvFGaGdR2fJXWVTUq5ctExCY/nSoYepVxVn0hyRYrghyMAfW8rlNk3KW+68
Exfw1+5L5o8FoOrWmqpR7g0pWOuBWRXQEQZ62UIQ6sV3WK5zO+QlMQHM7vn8o2PqBPhuTGPKLx77
xzZT5VkqdSQmfciM6sc7KA4ecsBCcJ6xvYV8lc/aVYJ+tEKAli/PRRPiLQSFsfLYWNZxyoNHxAxf
YPANTaXrQPh2JbVQtPRwRoEjmrDAaeA+s7OxRRqSG9HZ34dOZFyrKQXQnqGm9q45r1nY1dHdtmwL
KtfrFNEOwuiNeTv8czHz2fgrCRfuRuQBu6+puopVkMk3Qcl8mjc+PukPkf28mJYrDCzOlzUBEmVZ
S0Nl3tkRKm/8y1BqGXnkPcxhcDpbVo3pIUHl09sC6nWUV9JoGdEu7gGqoILUi0SnspO/L9NpbPGH
JneMTH6kURZQshwoJBvCWgApLdc2SJ6dKnwY0PTEBiYgBN5rk+OYfwMafWVYR3SK3ICWPUaogIVP
+7ll+AdRnbELSHEldOpekcbIyNBv/vUvakyiUcctuchgVKniaBUqDLRiSL/EYxVfdYvIQWeuGaAK
NBWAWedXjhrRRy0nid8ClW41uOWQRMY4sDgOYMbhy8YI4VTMKCnFJiOqzWM5CycPUm0BWrN35vqT
r8If+GqBEcqK5cfB7pCOUHQAV8rTINficCwn8d7E+3xNLmk9c8izvEzHtHxbmc0RmxKXVlCAElcR
f5ZrQi5hrEgJrHJ0Z0P0pcbu53FTHzlZeSQlCNo64i7FjGJ+CmaGaGEIIIsOJCDEYjKAUagOM5xU
cNVT5hPCP0QUG+Vn5d16M6EebV+jNExrBnE10/5WQEOXc6ou+rTCJiCYCm4Fqg6u1NkV4sKG75QZ
43kYI7Ptc0M8ZGLxvhYI2A4AY50Qb8v4YXniLt1KEUKEZuUdeDk2RI818mOBU0LJExFi9MI3D2JW
pvS3YbBijdBdO8xOXjdhIIUDgfTtNkO7lPIuuyKTxoQs+hsR84OqVWj7pBLLcy7zbhD/YHqkHxuX
kfMuApU8J7qLJ6e6p7rW97IX8okAVlfPLWK6WusKq14ilnAL65sjrT8EUrp5wx2k14JTPSFjto9I
lMoqZNh6/b+Er7vk2IeRlGf3yVOJs1uUiOExYG8s/nuimd+4F9F/Vitjp+hqWH7PDcSaixZa0GMH
GhkrmF0x+naDyj/CKMRFPhn+ncHb3YZ5vWijmJj0iPRnggJBtxZtUlm2BqokMT3Xlpl+wUriDL10
9CeXzQRYRwlv8OabnYqQpcMWyCNarEXmnf/QGuho7u5idPg9bsSzdfEcvzVq6yb+dmq+RrUzm7lN
LZQwcjy1UDcc0AYwskQB3RuY29wk8hg2yF4Mm8AkqCCmTaYbljpRHOa+fHm5EasuLiJoSRnZrScM
kSVPcXpFEjFcYkrkrn7mRkLA3l2YPeWkQ8DqesUt5/s3YV35OG7YidjWeGStQ9Ek9yZe/ZnHyfZX
1hGF6EeDCxgdaY+5GggcmyVkyx1ioeKeiZacpYUx6crJgIKg8CPhncCDsewOHCOseDk2Y8nzD2e3
hIPiXAHRNkzpGKCzss19l1Fe5OB3RwY+q6p/BAIhslNKxQXTXVDPPZiy0EPJIunl/GKgZxn9s08P
if3SSb884rLmEXWCZs4mKBN86gwYKSkuVTuiNH2i0xTfuJwLbUD7hSIdQXMtuqwwEQ3jQsh4Y0MT
PPEKQtaoZ5l+uCltB5lZw3uMKZDLkkTfhLiN5c3UTnouCveeK6veqz9qIbQ7WUsVBAw9CBMqWDOi
HgehrViAjMWn2WMtYqJt/rdWeDCBQTVBCxx+j8p1gV1pivFeeihpgdUGIBF5mdMEknNmGq5zc7fO
vvEkkwsqLSosfaaro/WCujKQmN2M7mf/jXyfBFk/7zl4rwJ5hXdmptwezClcNa/IzArJ5LU3PqAa
XUrRYTeOleCRvqtYrOHLA/CbeHm3+PMGzX3hk626sk72IxK83IYDutzBHIqn/daVuxhf0ZbVfu3c
/3NI2BA5LBybdGX/1MuD4znzeaTMLdHik2sjtYwI06c5GmLi5ZV+pXjg1RK5l2whC03d8rjR1w7Q
j5Rh5sCTmeGQyO3Y5X0tHH9s70kQ6OL/XtrCMVbNFQzUGjYK1UWvD85u8qidLUKeAVTQcfBW00WD
LlgruB6DR0GgMVkvgiq0CRIPacmfGPa925wGgFUxyab+WL+d2eRjjuwVxip7BQI0pf+X2W4LubMY
CeeuEXF9pRksKwbvSXyUHUvWcMdjzGpbN/uiiybYLEFe8H/X8erxYHAJLYh4/FHKclR11zGS4DYO
ls/ktZlkvL67+jEkQhKAICLpCxqnFH7qHLffH7ZlLVk3csQW5A6hq/6FxsAV9WpoYjboRcB9IT4s
iVZKqT13tt3tKyVsSN8fCXDG3NtgLQe94LrSo1ABFrPtUD2Z2U6e9Oslt5y3WEPjvUlTN4hpRL37
c8NnxqqRZU5Zx+Kasck1skQtzMAzb6W6vVUwzQO2ZmQvTuZRanrxp4VEomg8QKmA/8LJsEJq6qQc
ou1V6J+g1AlCJBcfjPpQ6s5FTxpC3muUT6pIDkn7rg3xXUkllRmwdYmYZWK0O8cDqbCAiFCYa4SH
gceVlaya0RC/M/F4QckigmX4sLO30f+nM9PcsZ4nU/k+6SbR5h4OvLytJ+s4sCXN6zgDTdJEMDWa
KK107t4hxjMYD7t5gEPw8m59gVScx3jCTazqk68JcEWzHuA/oCrt8faQce0rGnPL6GtZ8ygsgCBS
0Vvy53SjY5oirXtFJ4m4LgNSdxSq0PDiS8c50EhkYzgVXtYtixCwmslMXYwOYwgQ7sixQF5yIHwN
TkCgURH8ZccB6pnIQ7VzA9TsUd2JkkUZLGzLKle5JjoJIoMvvTxzz/c/wEYS9wNADV/SmyWn8Nc9
LkD4zvb5yCYTKne/Y39hmpw4tvPhTi/lFUok0PsUxRVuyojXqMAMwzqDEiQ2TrTqQLlHu9OC3zZt
GZiNbutSUeSfJSdeun/TF+OZzibZcD+gHgi0ZWuAhCfAmxVvTh0E2oEBe4JkPihtnGd54TR0TbfY
XupLxRRf3tWw6V02V62hTwK3Lt0o7pxdAaLf+kKV4xUILuu3P6VwAU14iyBPbN2hw71q4nJZYfIA
oQWgIptL1YLcK46C0pSREHNI5hLszx6yu0PwgGX1V+ERgtJt1yT4AvuEMHkxCzIgnYm3Aenb22Ix
ZAU0LOUbT5cj8rcYlW/kOoGPRlgIV+VRhvQzTDUQL7sgOdhTK1xaX66OIeqhXm3Op6dr8f9SaDV5
KWzmcki83Ts+FIiDPY+uSF5pzVubOAK6+aYmaviEaeO6SHLUtFWyzIv/sN0CBunwBxvxxDF3Ntw2
PJ4Ut3h3KeqCmhnIGIsjwK/aO9yssxug3jHWe8CUBsio+lV3YENFfPwvRm7QDc+hE1tJexNg50sB
E4ZEbMjmTaWif9wi/2jp4cz3NyEWRjduE4vGobet5jSmZ0dNDlUuGsky7RVI77xEGuSSxzmSX/7E
YkqSVRYlfe2Id2VRzf3AnM+xgxI8rZ9KnzfFAP9zz44noZZ8r7dpWQICsipSuakS+W+yNQf8uexA
fMTcH6ctl40kMeOM6/qWjH3JH45ca7GsTlYoHj/A98487yPfs0wswfYKchDCRKeaOXTg1Rqm2Ve+
ulPQG1zUT8mJFKXjWhJoYfKZ5TpmPL7EZySff8qsW5CpUtRxz7BRrCHWx8RnPSfnsNtp6kzOTHZ9
QXMuYNnh95D4FYCE9aC+0FQbD+AYwQVELDy1zpA5jgrMskkhV9hLM7H+E2JBhXvNklb4jAKOClPn
2wDId5KIZcxKDreJ3wURx2ggJFBbvtEhdsNz2d54k17YB2pTO7iIfdp2Q/RhuOqBapQqlIvczu47
Wvo7yl31DUB7BqnPsZ2P6EvWUyyxB6Zw4cgzC7UONCb2bchHpUxRhDwyRKGOMKn+OZ+nIhCJKvnH
wipMblccAGcGX7smYKmUg/djOlZw4PM0NOvpQeItTzmPTsioSIu2QEfMuKKBFTyEGd21GzMXd97V
83S2RdxsHbjXVsRtNNt1s5jLkROZ7aWwPii9Va9aocXsFYzTyHVlCPO1evXZyaqUhUuKQf03PP8Y
4s2ARSwnPrMaukMOz8SbNNtSGTVeNcKzhl8Uld8oh5QmJrz8SdVhQL+/0m5py0AWq7nH3KZ2cGQD
codMljl7MeO2pMzE+oRCx+dvMyjJ1m9ss0LIjdZl6MjhTtrGCvvH/LuwTsTXLld8vNFs8nJk5OzO
ctibm5yNt84fdcupElSxnBHstHkOKk9sW+Zy2Mb+1Fr5/xGN6LdtOdY9pZ5uY46SfNw7jGb7ozoN
nKQasgkEGZQn9LdpztwkH70ZZjheWsB0cCaf/Hd4J6PnlPHgsN0yFD4hazzNlbxusqg1XDTUWHnY
1YmJ3L+e5AfElk5z/BsnZx/ZHs3Zr3rf8AY10YZNSbh7QlTpHW4cONWuMIt8+lyEqS6iTL4v9i9T
JXx/t+53hMxrctff/GqoG8cmOntVE9bow+GW2k3iBpmvch88qBTkCf8OacAZCEI5WJZ6dhlXe1w8
P7qye+ox7qOOj0RM1MFBhCNl5emINzTnAbXumKjbvfoKYf1ObPktvzdw7wdmrXEZJFkBV2tV/SSF
y+Je+UTIOaMDby5c79cdHgOtHXqPzoCUWFA7CTjKAw/4U1Rca45XtD9Kph8uI3XqoU6x7k/doYky
F3bkelfqzU5XRzH2T9yNuurF8P489n2f8iSsXO+2joz0MNy1an9s5GwaoUF3goe25sZEbOXmkQ8e
UQr9IyhRcWx23Gq4LdVBsk5UXDjsb6/n+/4irEyS+3SDWi2vrQlSua1SGJFsdL0gNS7bOZh3x/b2
L0J9BhWDA2jQwkrF+CoAjApnigs4WLfkE3XVOvRDETLkXMRv/mgfWmCxoHmsB0mZdeWm+QXdt6oY
RFeBFmA0rIGTVOl2u5wzFFeSn7gydWeVP9gk//BtLM3ul6scPEslsgba8IguGbhELCxg1kBF7pre
yqZerwMcFifxBKOze6u7mS/qq3fYzYQitCsfdXV7qE0JrHQZVt/sBk1lwDzvhS/yLiT6wqHE+uNn
ZaOkM95078yhJJkeH+FLDjuz0qG/VylNn1QegiczJOXDIbB8wM2ITX5cKXvJK0bTvsyMRJJ4Ph4C
o56wo3p5KSBaLKvw4Bkhm++cV3pwX/CbLfm9ouNR1oO77oYvKO0AzAceSmrpMYieRjcvM0gBya2E
ZQ8F7AiTV5l+B9Yl0ULQCmoaahqorwan7LQ75DOgjLpNvhr4YGVNC0cINbL/tOO1wW1GLlteVCnJ
Donwa0+9nk6FgBKeu+2v6k7bcjes5FwlGcwP/DOD1rCvIJKVLmASkoVnJ3zAxV+mxWF5VOYkIK9I
LQd9t1KZLvgDtNgJH2kewVMGAoYao3nW7St5CoBWFMrUekBjt7cF77brQTFPYYuijxQkjsGfSO1S
n3ik/jGj+6/LxZAdfzlgJ7/YFcsy0ldSmkID58q9gcGHZMk7fpXhUUehQLKayk9rxAqHegRrSEMj
XS2Bj+fIcCGVimd1EozermDsyJtKsc1kQ9ipE03ERlCGwMaqZXVUW06BxrErFkGbPMrJoBG75Sh3
BvwElH+V7VEI6KQvHmii5Ta8TFmdGil8BRJJjKzKmATLJJV2WLERSEo97z07/xgs1P4d/WVhAY2V
zvw3p91Xw9KgtlgMVwxh4nrjU2ZYZ+yZNGfHllrrZIOyrD8TI8VzOaCTlJjFe9+xNe6ckxmJCncm
nWYIdKr7g6kI1X51OI0ZgYj9wXBIc1czxEatZ/HWy1SD1Pop31fKBnVxN/OvH4DU4CbGLF6TPZET
A8FGayPq0oVAPVvYAc4nV/hQcY3Z+qmpte9SZcWP1ZLxSGRYFEcCtzrxXQ+gJOhD2ytrhuqCNC+e
yJqC9OYS6U6I6GsWCIbpt6yHGOfYSAJ6/aK0wXBivhVVdmEc3DRhOChqFlDwxwuyTSRylhuGUFUO
8wv4XThUYjiR5sSVdiDyjtqQCIcxMXGX63A5XxPR/wGQhcT0/N5FZTbDFqb1wdM55sOsNVMcqC/F
bLivjeqSqQP+SL03K7+hA5kXZECBKnf6edZkWq46ykxZYCCXk1qB8Pxjj791bEbAUNTjlnObR1sf
pvyGYLsOn3GId+R1ObbXgXRfrfVoGkzSEL2RlCIjKqw3zRvuoJ4YImF3PGJHFSk0zIC6TjoorXDX
NxHla8/R773S1nrMGS3K1eIxsEP+h+SJ9tSAQztU1ZkdUIab/w9rzWQC9jZLHk5xJ5E8hIeqgRTq
9qKuSbvlh3LFnadzLTIX1ZALQwSls+IiSyh+Ss6Uph1QGIED9BQkYppbZ6KONFXLw5u62yF4ZfY4
jtvgnQwwfDkmwlrGkKBdRJPUo/Xr/YAC3mDUgXIzk2WMbV3tmVD1IHTXQUKjLLoG8yiWmx8H3Os4
GYZNtZDaMDL06afPm26eWqggMAlD+ojFhC8lgQ4ZnQemYEEzGMkLdyMIgg0bKFjJ9gVBMkQvXf3+
o2/1GKAwduk5qxyFFhLDAvgel28NEjI3bcRC5go4MRdmW9z9iKh1jfNBDEWv5XPHTM0+NsapmuRU
/OjuNKCXxVOmxYfwISRwpEc2lQaAGQpfpdwsPpkNx9QcYX/YVgdxyFHpsYSgEZbbQLtVnOYOzWyd
Jr1JSVl5C/lxYETeZUM/+XZw7/zwBah9VQW8ejWYMMwIwi547JDUmjeQj7g7HXrYvA87/uRgL/J/
JhMCzzSp+1J2TGZvSuEjWcVG2U1U0RbWK0TFx6YOQiQ/UAXNnqLUS7HeioZymITLrsFkOPTJ61mD
H+fMllci0DoqLEfgDS8FDmx97DnKZVpes2WKJGzfWjdXTXhhSFMLLDP9xnsT9NqpBTYcE/bhXJSy
j1Q7a7xh8+XzXGxU+ed5ry4B8n+zOKsRGSFdfXeUYCRAzpQMneuWTv/FTxk4iu6h2m2G35IbdSFU
yyjslfkG44d9ehHiRblfYYWg6T4hoY7grMlPHhebdDRCLL49jYS167isE3LIg1bbvxueBeWp40Hu
9JbnLmJT/CdWmlpL9ZgCDwXEKW3yNtUk2sh2wSBlXDkm+9Kb16PBUDO30xoBrKXp56TsjhSgB5/Y
eLt7pnTsli6PyZVghYkTC0cRA/zwXxH7fKqiIoBqyqDgLhnusfVaSedEMBtQM4vqaraDVGOt7dDB
o20UgnfKteH4AyP8b6A6UpOPUuVRIaDpYt2IPM6AXf54XYjMQ0+ibhafdO46neVHCEXm4H+uXA7Y
ypTdAAhIZAvTaPhPRdvvnTuPsBEYjT1PoQxaBV6gpZpRTldziv9BeRGc4SWI6YGZBy2TeQAYCHxD
wQPn9O9tIdaXFRcvv1lIkGB+aDkIGhy1OLGrQjVIqSd8BtJ18fLjene+OAnapwXUmyUVfQ+bJhkp
eSzV5zfOPBODQ8M++uVL0ldbI0mF6o2ajPcpQb/UPbbEfiFGVRt0ZtcB99fjdciNi8lYq5j8tA6r
GbRlnGESpFwZY9X0MDTvLlAnvWplvqdaVq2b/k7Jb+10ht3ua7aj7pRg9FIaxwyW35gRX6Nld5yI
VimOmFqPwu8ohdJZH5m7IYwBYGyejzbyh5xgcHw7ub3Ej6P6mKjRVcG7L9y4Nyy8RUvgy2V1OOUB
FB2AL5noUz95eVkTeGUVQmfEiEAWl6XDmddDYIJsSG1vpEeYs+O9LNeBvm8vnWunrWVrEuhElhvi
UQUBAcgfzZQ+GVEqqZirhIYML7ySivUmilPNhjloZOpwYHW3qu61q8EDN0oAlhQNufDUZ3CHKm7m
ZszaBM6lr7JPlloL47vGHceLD5oFE3/6V18NnSgbHofGBEw2RryotyePF7Q047kwYdHQ7tITZ6NK
WYADKQM6lL1bS9+WDhquCTueCZSXlTqrcX2BWOI3tGXkkbcZqGFtQ/F9VfgLD4LJjQK2ePdoWQwr
OVVIUMFi2CzyFqtupsRhz+DidfayhoNnd+iKUJkVkDt3WojC/xpRufckPdusemEFomcppiOWxH+l
CghyXrn2W7A3uJcdWuAJ+yErl3NNZWYV2dfjYSKyd+8t8o/DWG/He/T8X+dbd9IVB1ckzfPXuy6L
AeLmEdHB/5slWbEGL6458aP81dYw1bEXAqXSc+AqWg308EpCIeXUbTqnnKfTUOpGG7ddi3Cx4P0j
wXdSeriuPdTnYsYwx2J7U+197XR/WK6R+HW9kZrHSzMikob1Iio+o4Q7VEF3D1jNAMQe3arZVgor
v/Qs2I5/HlQuTksKjq8GH4l52837BGG8PrswOktv8ItSK11NXEmPodtz+2cvKvfQv/jPItE2O1aN
g/9Q1Q4hb3Xh33jI7Cj6SrrWINepxEKeRBz1ASdqQMKlMqE4Uc/fPYLCg1jqcZ66K2hED0se+qbJ
tmnAqARftS7vRA4WbGrhrO1QUeqeMu0Icn0x1rTdtKy51cwwsDCYjqvdlsbJ0It1dGInTsmI1Ob2
Sx20Dskrjcx7HabriYAbibLdY7U/a98gbwk0hFQQjqO3gYdyS20HUqkH+D9n6fqDFObTal/Wtrxf
cKWfFWZHjHCfsfI/qF3+TPUUl6OJ3jdNX4dZ8/coQQ2MWy1yEBeDuGK5OIBi+1C5FDn8TJM29Bvl
TTlqhg4mWKL7jdMGZPY104qXd+kBzQJpryfKpp42IbbYxVjZ8FR1N+oL2vGXZXrJ2orSxtZZT2Q5
+MseXSDKBZkvRbHRQwAwXR095VnCqg+jXEjFw3wD4Fm2yxOwt6Zqb/V8GqgGKe5kiOHqgcfZHiQF
YLkhEKtigvHCBjV3bk4aUsAY5pSGeHHfklZm90c73Fo1sdEKAJBTqQ8iTr7vcdfFOgGm6JlypZ4l
TTqIeURxZvYLf7P3Zj+iZaVZz8x6X8Ze/N6HigYEJA0HOL3bFfudWS4b1kYbCFjsoIHzq5HfcPXs
hZxJn5aEk13wApI+8LEVTFv9dgHMtZ+fWVnEhUqowntRQdriRQYQKjTlByD+Cx5RiQN/FeKfoTam
D+/lk3TJM4goEixb3OJcMEsIcyYuf6xdriEm2ONPZH/DLXO6VJfzh/yofu6bOD6UxU+42c1RptPK
X1PopUqdeDIlNiF9qf4uszzbYpv4DsIZLxrWuKskghIL8okvVubmNmHlxNNAxP6iS7v5uUPFR5y1
aafr5+Yp60G4WKn9Hvy5UftQj76u3W+e+LTnfz3f6XXMiMj0yTO/Boln3KBkaivbkBoBDUlEjH1p
a45Xd+ee33G5OllJ/XF7s1Nz8m1WOppH4FPQ+3I9oe/veBPYsbncwb6a63xXMai/CRpNVmrCdgzr
Si0f1/1QL/VL/V/GvsfCmClw1HY/tEYRZMqHZBawrMIhccxl1JPUkPfq5458BB6my41HDgTm4/Sp
FA6ozbmEWsZ2Czhpz/oB5VTpqegqihhe/t1FvwLzj8FLyIkltNOIEGgyz3eyh4Q0ChayNSV9JAIW
yd0Q+GRD+tozJFlHotyo68f1typFRRsIEpDg8rfJVVCzxmF6gV1Fnkhef43F8JutQ8PLarVZXEAn
rQjzFr6zBO3DfTLLM65SQQrBCHdJfb05bYy3H6KrO4r3o7ck3Mc2uufTH6enIE/xczlOiR2LTIMZ
nNYUrUHjRX4/mmNieb6TD71bzwfEsVY0wmuQHGF/e8Fs7aqMOAHmrN3Y1t9JP36/RzkDjej0KF/b
mdSRPpv0suWS+87XCZwV9LzjrzMpSo2/Z3kCmNs7MCCqCP9vOt2mdWtdTDlFtNcVLO+ExNOoDgKI
JubuOlEZMKUKyPxllkV+rZffhkXybFwHnQFPq12zYIdJOcgBqr6kB3h/lVRf5YbEfCU4GJyCZbth
8KFNQuWBJ64jvtf01gF6cB6Vmzh5as0JC+Q/1lHcebTqGhM6btlztZ4UQL1ANUa4csS8N4dLW4Rw
lDDrJUuc+V6tnv2WPMtjORKoomop9Xyg3rlguwZ7CMn+AiorjErFh3Doa3WaqKumK6uJntxo4Lan
EcAI8c/NwFBeKYOIIV8+pd2MznolAKWxW88CSsEeeR8FLG3dd2WqDmrCJ3YrdokG/wQp19g+slGK
Uiteb1MZHNmLI/9JtgaANhzcJ4AijlFlWgrgRxZfBOm5qnm/hpIQCeiTOD9bF5aWmB1DixRBtsYJ
KncS1tU7AcPUjuK4BQOgq1dBEqNJXdPmgmw4cYOvui31iroKJiisCMDH5Gpr+q/byNekcjzSKE1+
wDPnttrHjB2RGFI3jIyp31bN7JcFf6Y0sFl16P1TEiIUErgHlWNKJqnPgb7bO2E9+Y+sXE8JLekE
Ni1bTNnZcpeaO+uqo8bi98DiCaVSB86sns3medzrpuoCl3jK1GEMzjdCvrJtlTNf5CIFqqH5E6ik
Gg/Hh1VlIblC2/leNw4asPAV+kEhCeVj8QF7qTxE+fWOybLoUcoB8TAdudLkYfaZJi331x5ydN34
yfCauLsJzEmanI8XEJQzZHOzHXqVM2uIuGhRgl19k7eKcyh6n0BUt/eTHZbHzl/LFcGMNAFmVFES
vkH2OUDfVuuvoS1ezIXTIrkPbCjK+Wfk5uW+ZI1HT2ZZvnHoFGQYIB+imEFFrtZnMH/ontWpaOq9
PuCN3xz8ef8Jwo7wcQ16gC9NhiwlSS09zyQ+HcAhkcvKbz3TE6vJfDVrcY/tCf/nSAl7dpSqPGdO
pArwioMIAqrYkNVF20FAlVqLDxgFHARmTokCGj8ZB2Msa28N9Sl/4NfF/zR8CeVKeouTwho4LT2i
gbxeCBHZyFoVO21SlR0TRxKjAdQwdSZqXj/ybTZyZnb9p9/mrvBmCDxWtML/MQq6x+F9d4SmmpDO
DGIrODVZp8txTHqU6O6y4WqWSPEF4ydvmK5u9QlXyWwtkVucEDBIAeltMzqgWiPsooIPExzM1TWd
m9uVNWpaNdOdWH844nvm4l2JNXhWyinx6yUtysBElTfn7XfeIaUE/cLcUd9WcGpy65UQJ9Fywf7w
5j1ZHsMhNM2zowfXDE70bAfkQFc/GFcOS2EKdj3A2RmE6b9t7YlFFsBwq5KaWCikHYGwevQGfZKT
GqxdfffY9om+5KMZyyJUpvef9m0/oMUbytItt5gAUxIFfDfTiJYml9IwdxRut2dg/J+CwF4QM2FK
GXBr93fY+bGu3R6Zo0EZYPzIkEVYtV2oyil44ov7JfAzYLlCanAHukX5f70AA8jVXWW5ptKjpyZd
mKoTDPW6cR7nM4n6q4PMWlmh60WXulBKgSZPotmjJufZ8M7nwAXRhpvUQIYfIh93s+oUg5Ao5QqA
xs2XXCxAF+wwtr7xzynOQ2dmfrEuJQynMboV37q40uyQV5SspK4UPts87ICyvOBZT9Qi+GxwkQ5Q
SLd4TIEJ6yv94+tjHg8KlVsnPLhx9jWooDPNVdst+zR3IvnL2eSohf+2fZgaIl7JaJAFV5pOGWrX
yXbAXJI8InoMmuAHlXQkGlrM9E9Aa+G9bkJPtBwn40ieyvhEGhypUJxajQnjwEjqS+4Kzcg7MCeY
85K3MfN6/cdf0ei95TAhrg2KFCxFp5DuQHCzsTmW5LmuiJX3KCQDJ74s60e5hpghsNT+jPzZSwPZ
+cKqWOOzUsTvkVQ5+nZ7BOpGe/hbmjZlQIr/aNlT5HYzPpJL4AeUlLO9Wqgy6Yp0jrwZIAdgHJOK
kz/HPPWjEHBP2XVPcLfCbuHCgr4F4hHFeYYhs2yr1oZDQpUU+U8m1hpAFAVzAsE/LWMnLn6fhXzy
Yg6CeDqZlS0Wmsk13VMEeiRx4ekEWpbyFflSh/TxsuPbaqmzsG1Jq5SvLl+u9SM38KBy8GDUF5pW
Eo9fW8qp3nWJusHlLpX2ZVcpMp+T3vFhYpPLfn4WExDGdIGP06rBy2FP8wyW8GUEJev+7DmlPgnD
LwTJ+KvicaFU+LImXRGG+D/19b84bnB/01AWo1JmChepEsoGakCmDzZAutXdVBranpOfq5KcaEBy
6kHmwTnVidetl8RUKQYWALKQ8CbPH1ha1cuPfyKCaW0jJkze4h5PEeQAZWEmucprpyIskvxmof5S
CZkcDRDpveXF6JK/SiBK+sKlinu6uXxn41nE3vA9PGZej4eb53QTt8xhxY2axMYaIGRb/jEv+amA
eAm9Ib92Uon3dC2StV7gxXt7Znymqc1YKnDgz9jZV1FueQ6WdEATrpxs5nUkwLCasOekhPWJe6C/
8NXd5JfgC3VCK9PfXQ7x80/+0w7Yi+TYayUr5l1XhozRyS0Ht5p+t1gFuW56rQCLgJN3rBcoo4Xi
4zUqIBo/3TlDeWeA/6bmgy5ZIvYEzo7HOB3BvEuSSwCKDhR/zec24md0DY0GWoS2d0/XyKcJEH/q
H/LWskGtUUVEUnMXu9X4FI47S8t4YlVHOabtEayrlE4oEf0QsuhTh0ylGRzeDIWkqcLS3vnMk5DQ
LD38G8SlWfqtu6e/bXCCepqeonveV6rhUStPtt9ib+nuLd2aYtlRMlHRvY2f7dE4x7e5M7BY2EUj
e51fvvHDwovI9mG7BIGJTQLCWSDE+QVyU3UZhmsD7R3HlncnMHO7K2Ct/ROlLb5cJ5dLklrrJFpA
HrqmE3pbQtZX8h30Stu5Q9cB87oE6bKlNIsF33o+lc0JuGphqJGlM9IpI08UfkV3slfVV/d8MqsW
GW5qiRkkdnCk4FqeOs4IwTYY+XqttKJJkBPoda4hR71lSPp539Lmabqt7ll426/AiBAlGRojWT0c
APGPBkIKwPMEXP8+y873mwnhDcZSCNo5IVld34Y4hSaMbr4owg7NAJ9JnIROOh0LbGKu1lbaWBmA
BBwNSc5QDb/nREDP5Kn/UBEKqIPx4PicYHSmMssF2pwb3S2ZgSRn0R/tpKTbyp6/8VrM2FedDKKu
g6xzNKSdZ6khwQoqhMtf0iGZcXTk+DDODgI173q3U+i7gDG7FEcoPYlxl7xVTonAkkiDpZmBSM9N
LC2y6PUYVzzH9X2en+hRKnfAIwI3jAHclMXGwvA7H78z2sH2CsoxMyjwpuDZQXJgWF2u5bHuhCXV
nDgDnU8p5vJfRY3I+5KdpD9I9XjVwHvq+uKS1MCjjlXIo7cgonn/wKLRmAq+IyiyAEy9bqvq5uFd
OpsrxiRkBBBM+dJLsImXSocVWaeqs6uRk3erzZC9cpwIK0BvC9Qw4SBQX4IPOCy8KsasZp3CuPQP
pb+0b6BboXp9pbBd5/vNWQJS+5T2IPiwdyZ//HXIKyu+2TxZRs+uyxdkmy9QnV//xYJA+YPBuBTJ
msWaRufSiikb6yZg/gR1y7//5KOhuyOYl9FzoYH2cHE0vjBbXjIzZqAeVSpaxmJHKO9Tux4WrI0s
uMNaKrjq+EJdyE2fiVFoIBO/OrE73EydeJhxtTrBO3ZsARWYvJcmWoKDso5mfmdfleuDF7pypm/c
W/Pg4JOEKJ/yozf8H0eTBfy3FMMFQAVPwCw0UWQ6c5F5Gvy3+niG/UiOAz0d8s4RbFldEtF7vr1Y
7Zw+N3MYRd5ggI5xbr1lKHU6BDRnEoSefd3qeJQ9Dud9qOwTpUyyhhA5xOcxHdnEX8qDiNBvGce4
jYg9dwy8IVBLCI6WKV8aoP6dF9cPJUtCtAw0oM0yYJ5y7v8Mv84lgEdzAaOODNv+sZphiNtGfF6v
jgXGEpIWNAVqzV9YvX8GruhR/o1/uwF0toFAOoS+GtxGk1CwNrj4KoylZniJQ3p3EhzdrRaROeD7
eMbN+uFktZOO66Z8lDJoISoyZFHw/RwVUs7whOzr9EioGv076hYtmr0U5BlGtABc/l46D22tJGBn
4RyLwViR7DWeYlXVGywmm+RDrqajCILaYMPKBv5a+aiU+K4yzT9xupYK+vBgqK0yb94zi84bh8RL
CXwVs2Y4IM0zTrK4M0dPVdqgMBf6Fb9lDuFYy0CObdHUCGvq9EyeDeLn5GuACEF+0U8Z0hlHZA8t
lYn+CwuAPcZclw5s2IKU212bhXixSdVALA2yw8ZikQNFcR/EdLNUMN3zS3jX8wYpYnbyVIfIKirG
1j1HJY0wS57KJr2+uDQlupxhnqhSNnXlC3x0P7gb5VJKV6bR8ECKkv4F/BKe1RQwW9et16LOifxp
H0BS3kw8vcpLuE2f/5RyuImff3Wpncji6j17rd9HMaeuX5EXl4aozpIKDrLcKmQJzVk96HIWpQnx
o15wJJnSN1ae7Fg/hVHBJjq1I7lTVULFxlML0s2aHQBD87mC5aSOqIjs6a/PG4AYT4ExexMJdGf3
0rKHW9ffgJJ0bI4aLh2hx03iCk3q4FF6Au4xoOuRd9CdRdyqKYZVz+A3OWX4sU+3v8njBm3TSXgb
UWKtr0ErsbkTCUXHn1LHDeQpNtnHbmfPgw6fCv3MBORv996EU2pGvOUyXoqXEBFYuPXcq/VDIOYu
OhhWvThjvB1jtJQwZ0XwSvAtIQWXcXKaX+w+lTd4GZcFfqo29xllLlvxGnb3BqfotV8piQ0Yv0WF
wABV1DErjdBLCAj7u43qY0obrJV0iISqSMU5ndKOZdWxPYnZQqsv5DG7zMlTC0TfDzvaEqOWN2t6
/Jo+EMdaZil5OwKNP+8ZM8R5g9bmWsnqVsAQYafuAN9Ej84zMjEZZSVnT+4o9p7ieq+XUz2ePi9g
/1t3Hnu7/oH4I0eJOk71abA4eXwXaZHc/B7xFCq0EmXbTAOF32N1FHMGbYwtZMoyKzhnbjPdEwe6
Q9SsdV8eI/obns8IcYG2+0M3ofi1ahYU4j+ucWMk+sEQsB/iIvvTQG+NNnRnixmw/cREZi9X4NOF
9bM2FXFSJIXXsDVuLUMQ8G56I9+cytCOI9Xd09GrIaXXPliZsRDoGvA1Fik27bzgzLFg6IPqc33V
pLykQjRQNB3FkVZMh9lE74jnOCoU1+hKPa1cNms5om5Lyi1VikJWnYn5Wr5aiZgPm7y+fce6XLng
vd43FEQsPqGW4O50w9FT+9/kUfunbVy/iAcQHND1QHls4y65YW/DC3H86SMDOYlhK0lIfhdY75Rv
2UnXyU978L4Y7XuaFdSyLQ4DutLfEyBP+Pb0qYhHAisR+2AZHqCq0oDOXt+5DT0HDpvZXSD4kLMK
9TGQVah5CpA+rmWlopntHHKVGcicrPycEgk8gfLbIYyWjifWcqjFje2vYmrsOeYRbHqIPGxmiYIr
FS1lXy46mL0CuH05DXEww1eGnHb3Ex8MniUdnVXO+1hqwdJpmi3W/wdrRkfYjcgpOvXSorVc0+XC
25wikloUNMehuJUFhalwlkjs/WCqCkmZpIzp3c0lnmOz2002yw5Q5i2O5wz37JrVby0RTIPAHGkl
Uuzmf1mJYsbFHqyolXIVX/FvEzMRgMlswyq36YcBsiRueeayLT2GoNgb/u3Sz7n3omJDrgMZqz4w
FDGOSEqKFOyPtZrpiXdNBa8v7SSG38+wJMRfpIycA34mCm+VNbUbVb/+mJ9R6bq4LLw83kl6JhTl
dy2AmPUgiEDUOz/AQI0RG5t1fgdn8/0QUoHfp4NuZH/22gAcjYQdL8va7tGVGNXuylYy2V1AgChT
VWi1WZAIDmTq/TwwLh9F2Z5tlwkBF1nEe5lSf6LLmJTFAKjbweJTiTl062f4KP4wqlNLAt0w0Q8n
e0BaWG1ErPEOu9KFhjCnTYSNfBVofauNPADTguPqe8Ll4USqtXM2z/zJr4mnJ0cFi3fs64yF+RVr
ZN2HEOADI2+qcZz0KiqS+romauZr8aKVil97EsDOXCFOsum3Zvj5CHRuMSjBkHcos0JcUTm8IjFq
wLpt8WOKvzhMKeqMRC8mNzH6HcfOaGHinqbHkRwMo0k5yE/Ib/P62Zp8J+TzJSrHfJFGfm5uv9Ho
XLCKikapoQvmbSdbdlP1gaMmkvxXTWLLyGrGNiW9F3vvjwNRwHIdUduQ/E2HwOX/Q6ETVWfTX6x5
4wUESx0K2zY0sNsBBuk5yh4Sz2GKVMC749Jp/qAqiYp17E9GabojbgoB0SmF5oCE6QUI7XPcuVio
aFP2wCYIHZkpY0IJkhitC2eS2RgIqEgfMJjxnz3v21becIajdASXNYw8MoaDzFKA7gqJs8uxp3Fb
UL1a12SRed0JFNDyb6oNm97wL7Is0Q/eTVj1HHf5uLEMqze2sGRalm4f5JXMoFVh4m+4GF+LOa4c
aufNjZB1+gRdOqDElFhgHOrYM7klj5qxaoPOQ75oBWicUAOG48t+hjynFzxtlLmaj+9CFae2hR8n
z2B0DHycSkrtPNn3GndM59UGdvbAqstrY6OpAInPGepx0BWqzK53Nr6OmYJa12VWSis8h/E2GbZ0
U9aw4QjUEhZgJOZrCmeybCoS1JaAh2P9RdOopAkZuM680ORwzMr9rgKD47LyI/+Y7rG8mlDopzjN
A4sj6aEgLmc04K4o3q8s7ZknhVUoaWmtu1cqYRC+d5fzoPZ3SRu5zxDFqAc9D7Wc1pu4pAa0foI7
1O8C2QMLe4i2e0wo8WTzLEGRN8W7A/2w3NoB/9MdeTIpfpN5pcxER7GE4jn4O32tF2iIgOj453A8
lYCTyM9eT+h7P8MkRn/dQPNLuBepAiP4vT47log94WvzyjnlepmI2oClWeiuH5RBNgHI619wD8UC
V8DPD7MF+EylE8rz+reu7zbUFovEFZPVgDzyJ386LwJCp/VpzmpkqCQjfLBGcQn47Nqt2SWwkajp
L8lEK2cDpaRRXhu1ih/6Dx7Jv5dUEHEJaLs9LkpBiyxVt3Wqgn0zEE+gBurow3bAWbU4HK0mv0uj
EgQPpfIdv1jE9vtpgQt04JA4Zr3psIXX4Y+lfBeB5m9ufRZCVmAuBtbNsFfh5iDDrb3mc+DFEuFS
S4057TtsqbQYRcOyRhYRhW5iZ8/rcX+b5ePw+iaNJed+zy4/UV61+TOHfWFJix0/GvbZUN6WBm82
k5QQqTl6RCoS3zwykYxZxFoqar2U2pQsQ9p8tx4M7gwfOFRnWFN3PjXsU12Lsn6nofab7nFy0L/M
O8+x6qXVFDQ8PipjAXtk0wruDzAp3Q6BD1aMTECHmqbRiJT6GmQYvaT+mVfXj85MYqcZb5J349Jp
9TkYodAX2+RfLhUGkHO1KSxwro4M8ToIrpLBsH0jDJe64axd9P3PaaDo7MKvud72JVqljyYe80Vl
UfT5sr+88aHXd3RfGxGXUg7CmnLoHJ2gOf7+1wi0k2cyZ92P0w5Am+pG4p2md9MxQhD4rc+koX4g
WkgxePsx8654zWafwA8MeNYxTPdJSEla0ji+aOylCPwpN0fZKEwhC+WMg/oIizoumx/OKffzKKmV
lrZsKWgJwMGvoTEexRdaXqgXgrZJnZWbqEvWbAjLuAJQY4m4cOnQxqIAw3ATpR7LEGrItyf8cOy9
wvRtCuQU7fep9MajHFQ+9Fx0X/QdYWJEKMTBNbCar4kmVhIyWWBiALewTSTffAdJEndoiYeVzjqs
DCcyvA1xaHziKYfmrSf88ADPO+UN/vEm/GtLcnNZWGY8KYtlHskJ+x8bqD0mM7R8d50ecdjw96B+
cgy8t2CMNaWmrto3adp+oWw+ekgCAkZxa5gDrS87MVOYURpiyZohdJJYxi9SQ+KKlsnDxD/qhR1w
4A8UnPOXd2BGmkxzwbydW4dRaUitbLg+yxPKnKTsk6H+xrhBRGb4V5O7LvIRr+nwogvzxVPaEZ79
d2ijt2MS7vbGE25WFv54qijCC5N93ovHhsj4NYEP2nS2e8blTV9e3WHCGyx/NUdGKSTy7JVXbfkk
7I7jQvQzNDJmb3R9tMfjf8mOTgYZLr4TUBEnTh7XIRoIVA7GFuiH9Gv+DftPyx4xIV7RfrKHFSci
PlWQ2Bugad0aNaa6h74qlm/pT3/fbxEUYJBy72gKA1eaSxo4H26cQYnnTj7Nja/rzwBsh0ALH6Ze
RLIaLWDGgy4eheXuTV0uUBlozwJe6sMJa3CR6vGqY3XLqr9Fww9iC69nzIPyoyHts3ZaaSsB8d46
epqOBvXtNRQCdeZsVFOgt0k3s2yxmFAhExzL3RCG1zuqKYPAERukq/LRse/EHyROPpCEqXZIQBk8
veSPfYd3PNPwENCy5CAXg7mwmhHlb1FAQvJfrjg6kQS4iMHhuBwPFDQmOt7tfj21BkpCP/Wo33Ww
UcGqcQNSIpHYAOclqLvkiKU9qeCVv1+UQsx8B0i07CEn6NCqH8m4d0Wr6szrX0eK0esvHfzXFZnw
3dOYL/FTuC4tl+wTdchB8p3NKDcrOElLrUyPfP/nyj5Bor+UFo7dfezDRMRNEwdO4os5ZTFWcrZJ
Ndyz5Du6ae/vYqLZ6R6lTbKmF+726donvbqFqvCGfPw6UlfEGpsA5+V1qsaz2sNkZTqOjQa/50Kn
BCSp6u3oSugDMc6T/mh3RzjkHM4JjpipCLk0WH9qXjUJew340sZwmtG/gkJaTr4qJM7YrY66PFEq
Xo4rTybknAfE1zhAg/0Vpmm14wUyzyl+qJbwf77zQpSVM4aIFW6KrCVsqJnbZXPNFNJ2ApAJ8MA8
pTvNmYl+vFyNiduzen6+XrlLB0mBA8gmxHV5O7hX5IBzY+i+KZN1j4cJk+n3HRmiP3yOabVNd8N3
OOSXrG7RcLr4FZYQ94c9LQLJPcxILKoWJAIGjPk05bTSlGLsocDe/fhFbdcnyRxtpl8/Nty0aUoL
obD26ma0EqYjQETJGHIxDM0ggasFYWLCaMbGgnTMm1W1D/Iyzf6QLTBXS/Uj5H9tFpKKGpq8tdng
0vSu3k6ZNZRM5FM9U85at056VHl0RdsAXmF3PkFe29/EcTJnfokw6y5ufL9SoYJhhQKKqLwo5mtL
P6Nid3JPkhcqH0+CVH/osAJ+QWNXGy/go3/ARNoeRa/iwi3QSnCOb7/pBUeoDlxRxqB74cTd/y8P
ak4Pw1yQSa0GKsmCyydLc7SwQu/C+0FaGIeOqC5PyElrtTfoE0TZnUgAIeZkboEoK1151+i+nQ3B
H5Q5NyrJ+drAMHtyt6lzacPXVf8WVT03JP+MsnUNcye4dFR+xnj5z0DpSEhZwUdyqN41zRjDuoBp
54w0citG+KjH7/eXAxL4oKxjjkz8NJCoZHCFftKmqcvfyaVJt9aJiGsUbf1qG3nPrbVtPU0Qjl/m
MChJBEVArGznzVkcl8dROYCZoF91SmcKrMwlJlL2AgM6gDbtabTuH3tSVjDcXmyMtGXQjjYPmlJR
2u/C89Tx/hVH0nuSQS8Fo01xxGMRACKy692kODdSH9hm+MhogrO6LaY8gp2M6hrHeGpspMX9dUHG
rfdBTePnsLLVk1cEmGexsSbmYja+aBl9WD11+eT7B4Fp89JNc9kN+n0ZsjnngZGnZ8bAodG5dEwk
wuVDwDZFMF2jGE/8CA0qZgFkswqRlkljvk+mVM4fgWBsJNuAXTyHV6seWpYZ+LgqZ7tJUC4mRM/1
CITeuQjqvnOyypMpkSZyXC7cIVMyiS5uy/lA8Jtj7o2SEWdczNWbnhA2cBV1vMmA/1nJrWr69Zav
FzvqPUuxaEWS7mlOJqjQH1Qbtn8rakRgb969Tai0CKfYmSTGqhxtKhwkoRGevs4W3IOu3AHPOwIz
fjJiOpf9KsVuKrSxikzBwLhjhJyuDeYVHxyetGqiNOsJWOONQctiNSnt5Hx5Nhh/b08PLSSd7b35
jwgsTX0BvRYp02i5Xm+JmHAweCWJ38vxi4JIlbBnLCO5UjSkZbRJUl9591sYw+RU5YZD5R4nqMcF
Y7Uw9cGtxDHqZWMVh0wXWf2FvpToC35AycZcMaOS5rbCHNV+hMx09M5GALRoauFrO+tIkHx02QIK
8e7deEkHI8m199UOlBXF/dPlc48iQuHkLNmPY1wL3TWh3XZw8U+C40R2I7jgkVocFeZN+h56shwI
NbjI9EVN4EZRO7kLW4bpbGiHiJA1w2psEK6Cv/Yd8e9qDRs3e+dj35Jzi+Bq1IWzj7r7hmV2gupF
Mo/jJN0aiqljinczdYPDDlL/TunqO8ln3xLIlpxJ4xJnHobAGp+NN42utDcmdxWCvw/ot02QfwPX
6L7zg0ShPOoHA14HHasQNbu3nPE7WR7Sc8cUWRMVo9E1stXKcvHZDY/X9PvwA3H9+BRslE4y1qrr
UHWEEJo0u6X1ntrfeNo9VYZOXRrDD9Ddm1znu+gkBsaH5gtGHo4+KNRD30bZF5YGR011MWm3YKnd
YT1iQcT/+QSup+abRsI/ko+8a18q2GOyGPnTAKLTj2Zr5eeofCqrK9/l0nePmbOCnD4NZdyHwAM0
XgLZtrCceUtlDeGJtrf51Om5SOndC7yobJVlZSxn5NNQ++iouaM8btx9pEitKJP4Kuxa8fJiaE5m
IT0nfHo3F8ONKgjM7/IMsLSx5jPXX+63b9UpV93wSAg8fZJBkGCE/ec5VHbV8044C3FgkcHCVwrw
UqQO2UuGPA1XGeHKqeKF3NnLyjhXeZmIsKrp7Mfv93H3QtSmiYUVGNHWzWdGtKctHczefufKthmp
CtJhyIfdr7bMkj7TnVjAyM4u3U/SmfEFGWSenOgrbgYQDr5DyBYGJGcVf3LAD2sCfuI+blhWEOWw
FFbc1sgQu/5M4n3m0nSpsnWK+gV2cH1LU356Mvrz+02ZlAtItyMEPFL9OB36oDzIvhGEvLqe9vEJ
BUIaO8xzwKXHY4AMgOCK5AEuftHTsR/lTas9V8tAD8fHEHWs0ipb7k7IpAbOvfb739feBFjqsXGN
XB4dhE/a3wdS2vhtOyhmb3mlM+6Q2HCU7jmJ4X3Qv2BFvEbJYeuRSQN6S/R2m5kFuXjjMflkgGwU
00KwMNArUXwWYJM82dk8Fd6Pdj5bvuQO7wfVtBmop4MaQGksLMgLzn0k/6NbLmEHXjruE5PXWI2j
R+hj66khi1b+SOjDNvJz0SlD2m8Lq5JNExvimekxYV2SxL6bslR/VkVSvYJz+GXz6rh3gPmNg6nL
Qa8yRd9sv2oF6op68hpWSmnJbCbh1zjHAl4KFXejVMzU+vw3x0wnrnfQR35xJn23HdQRM8TAEmUg
pjH9oD5vhLkyz7Pp4FsTQqcIj9Ex7X1OziW2UlXi0vRgbFB+PLLVWb1pmYREz6oxxhPYWqbwpPe2
DTqd5mUwjkq8qkUBY3jmXySY7ssSzl/e4UHW0ezk4T8mqF1prs52pqo4G5XODEKFROCHz6HPYRdl
xY/GiH1ojZzXp1NsePzzdfoPZSi46eA9yLWwVDH9on+4gmu87Z80py/Tf+PJTJ3lbzVBeQbKY4Qh
sIoNnywnZqq1R54T9rF+ljVQT9HKWW8aM5n6M6HvDkJzJi4dXmjqyZfjC8QLRIQyqB40bpzNU9cC
iAuJvdTzLesuqWerjeZLIu+36LQH9pUemcOT7U3l3aDtwlq4nS1Zc1bz/mVqHUq9zul16yb8uT2G
l/brk97FeRADvnO9ampsfeF0T0yt6qnfGNy1S84/9c+g1UKS45CySbT+VGXAgI/A3gwjD08+ET7U
c+Y0VYwcI0gvwasCv1UI0wt6GrH2bdlbq5l++CLifRzKgJnn2+qVg7TUc0eXXJovGbc+EQERlvlV
FCXvRF4E41O6EwdJr0ADBaOn28BC63b2PdXmZUX2QpKjTw9YxK54XnB+gki39281TSjBefBmGvV5
JTDdeAre262kpoOJKvRc/CixWXoqcKUSVFTNwo5aj4Um/7Ld2WIeBpe1rlVqP0RdQSgkhZXky961
Bko1yIi2X5Hw57/aZs97uko6MDGj0DzHakuEm8smvr2u7Cfs2gsUnFEOYUxYEGWd9Jtzj1l9kMnI
IQKagg5lMD53f37/TqZ2uj9brDW4Go3rQVzwMyk7Zbfprehqq9yeldNuSvqcs2s5XvpANsL2p/KD
Ig1tyMfkeW7tO61mbkFGZaPXegJvpEulbbkLk9oS7qv9UWAEJl5qjhdkr7MoOF9X2lqY8gkGiQUS
/yTHAAi2oEfIrO1LsF7R2cggKlEtM1UcjWnWN3OSB4CGtzEyXy17AA1842uhf1AdL/WUFKVst4Ug
kJxa/Di2wPDOOS+lhSrDHTeXMxU/lJom9ykkNiP1GsjUMtr4br4JYAfQi7b9LJyP1/XWUlrtO3kD
L5NXELymLrsgACfiQlmUsgAdfZ7tPbFgikSbyXA+wOnm8CbtFJqf/doyqZBygJh0X3+xaT0oP5ZT
fZvQz5tqo41calIvCTwIlbtpz5VHsFoOLUqPUNPZmMgDzQh8s6w1aHRZsH01YM6PdltDn/OL55bu
G7+TtKRRaSaSqfO4TGjGSbqBzHAncv6fjxmT4hI2YMsc1i8o5XkLy/1fGpm5OXpFL5fMz4i/OMq9
aZg1b/QDo25/gQOd/yw8Cy4XYkiPQybZY8qSuu3w4je69ZC7+lWEa9k2zi9WVI4tV+YLTzt/ShkL
inrjJlnUm8ZrwPeqeJFA90gYOKiIduzgNPV5ZsWECb0+3HAlLv/Gpk5981KiHCUSobIjkuSsj1ts
OKi31uR3CzQfMmG6W93ZKK/IdjNJQ3iUqPEZquld3sgKwlrrOQy1Vuxf9t5xu9Yv4Heupo4m/F8w
u4Q2QeANbUhd9S8ebatmb1CYp6SZk2c5g5uRyJcwnCuagdD/JF2DeVrD+3nL019Aje15geAZ5WcU
W0u+FNXIg+obye5fgLJzEsxcZvTlbMrtkUxA+YIS/3quhiJIkF+XEK1mzV/0Li4YuiPT6eTaYRQa
YIfqm8xRXyvIWLxD+fLedwX8KhaN7BLp0E0idtrXEdqyc4uo+quKxMuFSH3Ob8ggUMr5v4lB3MPJ
jUUEcewJM1na5WDO2L/mOUjzfc0G7cFSijtfbj2IZhw/Ne3u89t9s5KqCjtKIBBgfmpHLl7rglPq
hRG2DdwnG1wXRXrLN8od1B51VvVW5bFpPXFiQXRbHv4vYHkNnAwCh65e6q1CCQk2kZcMRhrOCgVU
mh5I6mAjMMPW014sQrXPn5IPPeByNp984EjdH3A1y6j6bKoGAWql8pC1MBtFM3pE8CCg/VzTC9WT
wGZI7nPwd70bG1yVutAvoSPTpQ3hY6r15+kY89LHeai1yJzEkhlUcX1x03MHQ61/XyaTweQENCZ6
ec7vTjlkt1g5NFNKvjvg6ppfZdWnmNh4dkHFadIEDhP5gPd/nP5vJr3G1GCNBnWAhiMsEAwFa+A2
YGbYbOeQq75Wft0S0LpVDwN+yDUJ1V+aqO/ojw05Z1DvlvJ/i7Gz4n2EGbK2/zFjqzmIOFEmq9n8
9echGKtFyKyL5iMxNiYJnSe1lvUBO8FzEhEm5lH9mqqNZTyFNgwpr5LIA2PLZOrN53hAaia5OctC
myET5RD6ffrFYjlbxzacUVJleWRlnuTTQU10aDIcIXPI6E6+J9IRs26vwaJj7Ue3JM8xPzXm5wbe
speqJCGeQwK4NDDEGkqm8wNPgqzhQ1wFcBtvZ2rVUaoo0xmHDGPNmcQ7ZFvg+C1NereSYehTpqQ0
c4dLZ72S3kbA9ywm5GxWY6i5HeCvzE3W2APgXVfBdSbA2+/ycLbiSMWX02I5fm/xgrfOMIZQzm9B
c1zijB/1PLO4jtwBf0eLKCDdJNFbnh+fxLo/R8ZgAoZGmvKXUxuFAUxBRU2TH/20bbBNKoi3raV0
gfKfAN7o997q4Je9j4qQU1s7x6AmJbYxYKpcYipRmSfIsnMex8BNg6WzWiSa05sjqaMqIhILXVQj
6PNEBMfp15D1Oj1/xbdeHhi+GrMSc5nA1wtwtSLQdycIhtJlhFxM3vEYLJG2IBT6j89Kzsv86vq4
oT0AK6xvz7TKSic4DZB0ncREvjIgPboz7ttQJ7euQKBIY1anPioshV7tLiJOWkSgspy3m+DmiMmS
SmEDWnfOvkJUKJF8EQ0iDbhR1VcXXRWLj6bVLpFwQ+0FZUpK4c6v+LQlXFPlQ9hXVodPdNj4gjWq
whH6o3HJloAFMX1HBUQZg6k+WBYjH9KmhLwvwtCbVH6pOE0Z6ADsaPt9nniAUIyzpdpRYM+9nRS6
iwKD19qfoJriEufpcVK+xaGGsGkA8T5ijzxvST276zgDklXs1+koKrOZiUg23cFPr+ta4t1t+rLX
HkQ7u1dd0YeJG8ZWAKbP72saoGUnak08aIEkyb6/g99DlcAUUmf40mHt9NHUfCp3WDthlLYdkZGB
EEdsNXIrEZkeAW1XGzm+h1CKaL7MS12Ubtgox9sqaVSDmCCATdJgfk4fq+zqvxeGAEy23yiaZN7J
Wf7C1b+cvePzY5IejieMbGHF1DSoj5VY/vCIaj3Js5fx2Nhi6coOKj0V9eyIHNAj9DicJP40AHAw
3oahPI6Ds98UKktD5rNIf6RpsfyT0XXnSbo9qJ1RrcJCMgL9uZumGaHIxPZh5fjDznmDsuJHFIIr
CTP29l/Vhpx8ni85+NzLQpv6awTgBIFygIYWL7FMDV4w0uh33V5R3sQMdJcFXBZxF8VdFNwJkly9
QMDEe66b/8Q3QUkuFQOxzgTSjRZsHp+g30ZOcA9O/j1j3MNsA835YywXdhjRK4EbvueL7S6fDuuR
kuOiOHQzuhG3GjDkd6Jqzepj9udX74H77On/gqMULWmn4ETGPIli+dXuDFS5+Wgq8JDVzj5X9nfA
eUAceIkP2LIATimu2Md4lFPpwDf77mREXTy6Q+QYq+RFqV9isDcl6NAaG3JLQqyTL5dJjOOA0n8B
GyMGF7emlUXrlhX2i6hpFmkVXxSe5yLMkw1JBao6PcJ+i5EM7pF18CPBj+6S8km6OTVI5G5cqAgO
Pfkb4sYZK/OTrFCwfJ8ppfq3+pO8UcdwctWf96ccFlgY+PGczlBjrUepWDw6WV+jWw6TicSMF7uu
9DAHg8myksQpEbJ9F3HgcNqbaoyMldFQ3DP9F6KsWVmrHywJUn8q764Hr1AH9XF76yYZE1vfUSv0
AWmih/o6/1f/Si+GVgSn9makqmHUIqtbidHQYZEg4Uzaz1Hr7UmksyI5zGTmL1zrABSBDDUL6pQz
b/DWx0IagfD6FtmpkEZWLWntfDP/jwke4EtHxxMAhmzaks3iKEWUVtObaMuSArN7fn1/GsaA4CHO
2hPI8g270XHCM0vck8w9nV5LPqeX6Y/PZrVU81GrTZXOP9QWtZuAc+lZB95fpkSUgBnc/o5Z9220
t6E51OFBF5DbHdZBSXsEsAHz0azyWaUWsP3d0bIuZxqRBRSL/3NmLYrXBYJpqczrL9+9SGy01+0l
XwSksPsOS/kcNWCzPBmNRuENbm0KUEX6YERi9OsapTZkkdBsx+NdU7cyF5U8rVwWT1TNBAbrW/0C
Nm9ENbxZG6HDsDBrNq28kJ88K6CL6/wL4Md874poQEZB/EqdqGKB2n6WuBhdGEXUFnZ/DNflYg1j
zc4qGsnl3mmKA3zo4pwfBz/Hobg4ZIhcnT9mtS9sChWDKf7tgPnpeSC4eI2N3LgUlb0ht4PiRgOS
mRRX2qnBsl6XJhBtHyN6KfZ3a6rkGF/IfHCJfCFg5/u2FwDwGRkMmgyxuAYE92KupMzkXydRwown
xjjOI1wUkyyLZJWQMfsYp9Rh3YBVVeUDE3ZNJwdvNiKEkPhgIHtb4zgyKAtm+1WNNYy/2ffWmuUm
mYurKF1C/3DEffI8t6PHSGAeepHIAlkHHRbUBbm9DNdZtFdLcdLHePonupMFpVcrEk1Nlt8iIcrd
X91u7IGeRo5tghveZXBpai6MU4pSf8Df1R7+xcMSC4PtwhapyxsSPbpn0wSeVWDKFZT3uY9y9E0c
w1+5oBdndmL5RnK8x0EmieLoiK8syRNbjKYcBCphqVOneWAVYtvlhdLnvuJYRF4CY3KOIgZ+gjDE
weUcaJB41bfrbRTHfZmPDOUFr4QNBFiQ6uGRkAjgFAOzHDoS/tj1i1l/T5aOWyms+/NftIm1Ee2r
mVdMpwqU6COtOubXbseFzYuVNO69BHA6hq3j2MEmg1MjeHXrrIhUxJMT5cC9NQJPUYpokQ5T5RGn
pRmZxvoj7k7aamfVJpRBZfHawf2xsIav11ple7lC+4rDJmK8X+s+1lVnJOSlyxffYKcEizkGdwn/
Q7HMlRGijRNEEURBBpWWVmeD1oSG+PAgnKunjay9Z7G1phDzYv5uu5XrBcOKW4bE596xRhhZfSoP
g5KJOFYoQ5fCE3r2ZxUHkdul96JKamsIde0fQGgW96MjixPKWwYvrW+J43Q28bqVqYP1lUm/vqiG
+EHWhgCAOWd/z+DdSkxnwIoWnYiCvZyH7TrIA4KFR1nT6smJ65/TROWbZERYj/pb28aFv4IR7sjz
cCSh4+9nEuuDiMNlQXwPyR3qbGED9Mn4iphoXbI+Q5Fs5jk4gu4x4AQOq7z7UK1M7LgfcepfT5dz
z13n9LDPC68AA8RjXdL0AhCqdUrwaZ6MOVzUCIPHYR+gntjVzJI84HlNGad6gUtawGYX4pfNVpZo
HSM1sFKF6UqtJGc+G5qO5uyNTERZTsxauZkdsf1PMjwi+rjIpUAeOijQN5kjFPhFoG+/ipjtwnxY
tkMLhlajMCQVy70HMQLHHTBpPe5rmjbVlmoghQInps6M9CUSDNErsN84m9gx8i6ZZA7zuYjo2SH+
i9+9NOVTsiDZQLI5XXOh5rmEsuSE8ntzYcnsIuH2KsULkmEDXI3czLoKKLtEzLroMov1r2BlGiV8
3FZ+L3sMqSX9dkfg9pioBVBSB1meFcAk/kayTkomBKqgR9Coomo1LD8XFOtTRpTsUJDUL9kLRoLy
MDohEh+n/5TFg0n1kaOadEELUZU4W5gJZ9I7QwVRg7D6zRDxyGlLwvpcKgR9sjY8IoDa8bIXCguh
FYkIUhfdZ74KVTw7QohyQq1WdMTQBRImXOwGqd2C1a4/aZC9UqhqfgTZMKoT8ZBdT1LOcBfkQQz1
imMWcJxr5z8/LCtgZOGHOKDcJYU6Hjb6ykhCjaa6RaLLd+y11sQMONbwFek8ZkMseWY0X8YdNtlz
ZKLvGIK3swZQUW7Gqt0A+X3YOj8u6rwJk7vR7SkZAxPcSEG+rvZ/bAlXkRnFOHqpYox7CPFZsgWw
EcFw9siqaMc04h/SPI5D/XYUL2sDXqoWdwRm5VLMeSppnmfIW66yx3pKh/IvVYARp7hwpeA7bT+h
Db3CKRMLeeO0/il1/scj8gNVtcpwAJLFNSTsifYL0kZ8xlTfWK6bXBUduCJaL2lnKqByg8C0sr6Y
viDMCzXpRjMRxzyqUUG8fc1ZAUfIa3iy5BPT0evLCnk+RxlFVCCRgZi+lVHH6I0YbPMvSekS8UZc
iVERubW2T0Fn9VOB0lsrxFYJ9CUn9vl4jYD4viFTD1S0etqCW+IijHSJ25SnVqP2QNpwZZPIbHi8
5B3ugYtcTxzKrpBbrgMYBsLc14wRVScT0rlJWmacLmvDHvesK1MQPeueCHfBuh/rapsaHSaMbBYp
NfvanAyNN6sQcG/1pqxyOemWl9YzoOqxH5BSJWp2vcPLp6MIZ0YrgSjIRKEof6r0C6u/Dc6Ola3+
UuVYO2GcNJ8vUM2nb5srPzglbZU9DW6qHljNvHDCMjPKUS4hv9XdQKJSzSPN4xtnF/6sKA+d3zr/
tVKEcjTTlpvHwzGQ2b4vYbgjlLY+p8YsUr1ICwS6XJgGvsELGKUnlfNXhEryEO/EIctedYlDZu5g
prMnBdiMNJtbrwkccXI8Q3c2aJ3PD39s8KIE8ksICIjsuVcw27hkA4oA4Lv46hhEQwQ9Dg0TgXVz
jXudb5M4ZTy575JIyFpHnRyU/JwfEFz1m2R5buN+gyrih1QuW0Kq9Ubemc+g2x+49PhS1cT3ZHnt
jaw7s4KLMmzdlQHUuRwEErsPuOM3bkkfxlny5TbCdjH02CvzRHlKsR+VY9UWxy3Jai8X5KX+JQpK
FMDOLOkMYlC3lST4xBUR5VYBBKbvOOSbA9O05IgAcxTZFIrdHOdCBEo/8ouvSDj8dbmuFpgwAlUT
clD+dRDM/J+mPGa7H0aDUoZPMJ7ga8W6dGgyE7MhYHpSts8JYRox9nuoJuaf4ayemq9VdPAUvS72
8ht8lFfmBNYoT4uy8a75MxRyIh2DKy7mFiV8GjGKQPe5WR/3kaXesJjzESF3cZ3qR1ucarmCrJsn
Cmbjbnvxa3+k9TsT6uArrbjACqOFjaRTA9imTDFGVaM6Dackx/xcF4wldwGg6sl51fumLLRL6Gtw
LyGSvumgWfk2g1WTORAnAgrnfu1FIgtoVcMygxCRYyirjPk0zjanaBZfM431Q9y929uNCTAsOzGg
r9l3ItvRHtrZjwd7NK9L91eRIlaJnQVfI347DzuddfXCqjHB2uPyKohIXCZHjykcaYiosdAMsNNg
JUWvIdOXWksI0LfrRqAcQZrrbPv+UJGW9kscoZXIjzTbtOXfMp4DU8y3AjOPuuhb5Gajgbip+OI3
9DFcZ2E0IDVMEtIJt1JdUAHHWQbZCb934X21ZoLblA9EohaqJb9s4dtJwrFQqp88DxTOmYqG7afi
DDnwxCWOUBw8HyVpdhPJvBcEqtOdgnBRxeMvc8rob3ClFiU3TMweaWrstsH/RkI/KM4tXRHwekw0
/r4nXCUDnZh/hhlGsCPQwKvY6T/FnVm9E2ZwdH2AUcgGo4WCqQsFCMQ074rittUHNTozj7kiXRCx
A6m3B+EYYWUJmoEGihJaU5VlHw3bbP4+1g/EA9vN7QKobpqLZo8xIiUxmpr1Y9wIdOYJSlIBzRwy
O9VDfm/acHzOdpLbVxmKKPkaXtVAMsU2LsRnPNFjkQD0vmaWEzm4WZM9Z1frxXyKYbOhbO29xznK
rIPsCcU1jNvbZjMEMVeEdnkZAym1uvrviKQuWlqudPNjkvtFCUKC3eE70fZuukjarQ+AhRHTFbac
0HhX3BvGJneMDu7s92wlllKQf1tcJHKCcKx4AIgnekwUgeDX8BUDN3tAeipBtRF7Z/MEWgN37vrO
hKWk1mEHKEXNQZzk27ax97Ro0Yenj6aBtNqy5hvEALPNk45yUz3BB0oo0ohz+Kh04k9rilZ739k5
ZqxoINYaViMEmZABylblGT8Im7MFdsHaHpzQBUHH6XorWt5ggpmMw0S9M0sIP9BR+wJroQ135FmC
Wbkgi/+8vWUSCezF0/5CqaiyRp79jelvfh5L5n+eI+ZO3huNO0yb+G+jcD8uYtrRqFWMmd8NYdX8
mbtXXze+14YxlBCh/bBRPH01UlviGevx1GbIalxKt2nmCzHuZj2qgfXsrGGb+9gSjP/dUksrv/TS
jLMjjvsCveymXTuE/i27hAGVUUHbGmahI3RjDdcyvYRRerBMehjZQbafPb/xqsH9rgfZYZCfCo4I
J2QTN8BjXXFrsp19O8KXF2XUITxueCVvMdW/6+XworgtAAQ8Q+CSXmCguG1UIIzbTAoI+29xOFXw
dTQo9cnGzmLy5gE0aHGok1Srxsf4MHEeV9o6LK6JSfiOflFYWrQgM5nf03vUmSpp4dg3ZWQ8KiEj
nnCzzyJGRX8dmhYoDzqgqZAZ136uhrJt3Z/+J+uu9Tq6Z5emGh60EHadOmRZ4HfslEQTE4SG4rA7
HeiJ7VTQSzkUQsirw76pvromLf/DHFJznjTYfFlJCv8JXdqLGLNudp+OfBXJmCm3xuiwrQpfYlQy
Zsg6nYbNQ/dCVPQNkmlo5V0gPWUsiUcaKCM4zLsuUnFXTgcBb0NNTA+xxBeoGQZTqC0ElhbUufwd
ezOfJHjuep/hdQ3z1bgoOP7RzFKNJNOMA7lIR0IMeWvutmPAo6xnxDLs8FCUCmccr2IyhVcjRk52
LcmpuWOenm/T8V2BroNgTgxchvHpczhDqnU/TVp/xjZ76D6c6b9tVXI2diLkzdOa3B8AlrxJP3s0
sgG4QuZaQYAESZd+Nsc70XiHwHtlUxI3ukX7pPHrGUoYWIHgBLMWW1sdhGIve4SpfdoHqfrSgNPV
kw36OS+ObyR+C+iwSbU9yuNmYCz1ZGvKjUTe89Hsojkjrpd50vl8tDtPfs+A8N4yvE7SqufIXi47
SnxiQsRalxorvY+L8E88rsz0QVOJwA3eyxh9yqswdO/7oewQQqiNJdKjdemBi+LvwE+gbJ44G0L2
USu7Ff5JHYo/5dR6bjm9uMVI1FmnkgdyA8LOUgBfc9WtOBoF8K86WbmpVrtn1IGAE2H87L2FMYab
oG9V1QGMa0pt+XGidk8khckeUY1HSnHtt1B0fK6V1iB6LurZauwms2rmazVheGjeLmBBG5FYmbzz
pKAg/w+56hQ8VPKTgUMyktgRMH028QpiSO7lDn13egwSNBGOAcCx+RWy5CclZuTNuizpzRhR7ber
bZu0mkqKhoR4bWHfcqH0MogoDxI7QwybP5JDdGH832GlBWB+1DSLCFfF/ghGwmctjjq3B6YMqjQS
FB0a/n6WfdT2PoQXO+hh8k7Rlbfcx9iwqgk8dEdPmlQt+Eyn5XlL3FoBnxqlHmUnqphQy1OVfsYA
k0meZAbPypwv8ACouv69VRgx9DpGMOrRTNVUG7XJA0fJA1a/oEitx8qIJTcky7TEsyIZRV8usvds
mSO68luP4XpTooUzM5vcj6xk9daz4CpYojM7YmcYORcvbgxIxjxgm3wTWbp7+tzBSrI275HvCGm5
Kjj11HUgBMT01S9Fg0OF2TfjBIflt6Ir1AK8sRf47/S+KW5lVN3qYC50oFbd/A2IctY1G/RUKulC
E/Nvg0quDuINFwA5CfZfFJljARXVJtkesNFGjK1iIPmhQP04hkWuXZaZwdRaQSqcS7wME0HabAdJ
mq0wmxoF1ZMV+TsLi0bpEYhf1ASTctAfxVD7FnkkZGGAna8FMC/3cJTXdI/KF6EecMUHSXHnknVk
6M3x+dNlH2nga2BpzJBhtxuXI69q4r3CK3pE72vLvqS0nZks7o08LQrCX6KPooOj/q+OJHns+KeV
TiyelsbWjMDvMs6ifQSjHUN19DEcjE6UVPa1klq8VFCWBjP2EtB2BAcwhU4v68svEaMKCxZX25Gc
kaRXd22wACSOFbJulWTZCHqiK/MFCXdIqlcACjx3D/H3g1/voNro2xXNEK4GWT4Zq/VdFS7J06ps
ax96iI4KjzlAPIzBKE4t+RilEixnn4dNXezvxNy6xYVMFIo7AcihtRdb1F5qzC4g9kAENSWELoDg
74XBja9cFR+iZ2hSf0Dx1HbfDENgZpWFQuwXcUlZI5YYiUFcjfmzDu0vGbS59kPD34OCXXw4Zyav
DxRBxp9Gfs/mNYeQ6jAnydxhaxIbNNHFiucunSzXn0deLUADj4okKtneFeE+wCpxNnu1dCYjuPUh
ohDDI5JCl8hJEkQrKkrAsGQYN/WOngkAtEA9f140i3GxqTPY4dMlaHBY6SyE8SfXWPFiCO9TMI/L
lqOlUKYALjaPEU+uVGhFderecALurmm6gmp2QvnMpS5DdJr/ItUiouTe0Vc8PJT7ExkFrvkZiscX
hOHE+1pj2y2xLIeQN1tUnFtbAjHAZaGT0reylSnROToM1hkktVxdlQeAI3D4Dgg23OuX3EJh/1sT
axpCKzkB3Gif0++lEcKLCf4RW+SgPKtUDY/a3sO/XrhjhIULuzn8HyUWP9WqUjKHGO7PRPp9dGMW
eIOqM+oXwYD9hHiLZ45VKytJ0owQ88Kdk4TtM1sAbFWg1/RIE6tWLunho+DgpnUiNHRYNlyn3hr4
1z+CNN/tEUxR3hLA6Z7olsLYexS/S7boexUfnEv2t7XGDlo3uyGHmzDeX96npYpFofCxA3KHRM0B
6iOMfalmyOP0/yvRTI5FHLsq68+1ea3eGwOmsGkbWjABhdH5c+1+OdJps7X653Ss9MNIY4OOeptK
peUIbF25qtg6kTc6veBdkRW1I+IG2IY0nkDsv4pkG/+03/5MDAXBwM9r5UZLpYlIuZol9P430XGN
sRsECmggN+cXRxIJH/hkHaHv52Ka3iV0Vs//NHE9+8ZzVRVT8akyTRw0TMC0daVPKgUdyLctLzCT
y2IjajDMTehsri0A1E0EQkCDs5nmlOZxcNMuupsCgDb0/D2x8rBFUMl/gJIJenXHUat3yaiOsRS/
+yFsLGoWqZLZvq2b70OtSnWJPUyEr6o2NfxLsVxeIa4Y8LYDEZEBbhETAuMWtadgUWEIOElc4s/o
lzWo1siUdAvJBTyveLCZ+uSpmygQNKBhPofHjvphSjudJvJ/t9/6iCZ2rN7s9nWqJa9irOfy1kh0
Hmro6djtJQ8N3yiks0NW5UaTcIlRPvl8Nkm49Gad3Ltnt0K4UHNBtVRltGrukE7ccDRRwk7HrzUZ
MV0CYYPiqqP7Js8Fd/C0Pbn/JMh7kYKw5xpbJ5pPy5FKyGRnCmBvDXmkRhdA2FbL3yUzPilBIkh7
+eTIsrQTHqDB8t+SiyrMC1fkdMI9i6V3kk+ChH2m5EhubiRKb0hBjB9p+aHDl+39NTN6pMORRAcW
FE9KcL/eDxQvjTBUTPs9Tld9B7HwV+aMpcEgwr2j6kvOtgF7mZ08uWTHPiLghnEt/g542PH6i9Hy
kUN1P1i7OJke5UmdsiHhlnBd9OStmNQIBqWwCgO5gfqnuy8LRe4UTnkS4MggtR6MoKOgfcK2Q5LE
dBtsamAcPquU+v68Nh7pMAXqEVthM+uRVCGjAmN9i4F2SX1oUfBLaBAAoRWwH9cHQItjoGvdIj28
z3HLQW326pLc9+SI53Kbub+2dQ7GumSfFWraSh53jTHjrMwR+RZpFpFU85WFJJkRlx7L1+2h7Eyr
Rc7I+X2AxngGouxJMnmd4ps/tO7eSlZq97Oslb9KLRcviHxFPof+qUACT14kJfdqNn+9XONv9bdE
RU4/mjHbCUvQHlhMr5oEGvsqcooeVJjTBo/sxknI/69kBcHKxb7c9OpbwiJcboQ6RbqEc+wXHw84
BFLqeuElGQIS1HkLbVEGe7aC5V825w9oS4s1/Pkkk5K3g2SBDrb4E+PVTbtyrGKcvt5Ga+veKpu2
DEvazCBvcIW/gN1k+JCoTx1eLRkxMiS4Y6SiSN6Vc+m/AEDGtlTK7+DZva4ZId4UnNP30rR3bg7M
TeREYBc+N1C8hEwdvrHJ7TdxPTba3qR6nt9IBrNoPsdOm0X5ECC7vkh8UfAj5QLyGQB1jgNFTnqa
33Zvxl7/kO3KxjyWPUHXslT4nwl/5h6RH8aENU3VxhgyhjhQIhcMPtfHlj5L00BltkzpYxVQ7LBh
aIXUC5wumhSjd0puWM6jqiW9/fqqJURPiG/Lu2/aPNZaDqI5peUWFbEY1FlFb5Usy8S30kGHH/kC
HnC/89FROIeBvR69cYt48w8PHOjJ3KA8XKQxwLqL1b7L0cvNRvZ1rbsKgEkMCm26uDFBAMeq3+qr
UhgmBqh4/6Z8XV2QZfPsLac2joDkc6aDt794+GUJnWo/WjKPVdCls73wTNjfdiNv5imbcjewbUtj
Q1DTxZh4QNGLyRjksJp0VB3YheaXhsD3HqRh5vzy5wx2xdxJ3vke33t0MWVsdoI2+G16txLxAYkM
FRZv2Cuq+cqPGNb3LQfjeRrkZRo6ef/N8nEwkXJ3zMOLtsUtIKJTOwD2Fp/aOOYNZgnXeq6xZSXc
VH6Oe4aE2psvHuiLwZh3x0fDTHL7t7dRzPi2psB+i9qATeL8jviBmG38XkCgku7rADmIV/MRqysO
LUVvcowjF0e4lT2Gk1e5Srd/Ady9UDAQxw8MzwLfvg92dJCVWp8JQhq4pW+oRXr6fRmNGB6O53Jc
kZTZ8y5R66aBg/UnGeAEIPvNgveYYDNaG16f+00/E2tqCMZ+IuMOs+zzXZEH2iqRvRPtjfko8JUu
bBdc+cwKu5sQjB8P0Da9E4TAm5Hw1iOUT0SpTvn5pJbqBz4+HnDp/zoPVBlieLImA+ossG9BRXBs
5OtczGn/CAu7W+VTdMMQ7Vi7RGmUvWBkiA2R7vxMTKPKkHgVB8H5AqzS4+BHfHH/guKRAVxe49qh
DuBjLtH2XmKZDG8FfAv5bg2Q4k6ZefIspmCwggaJbUI269S3Rwo5FUijOCZ/hiLxJIQXyuN3iu9x
452qvoG1n2cVlKsjwWL2YaSw3H/4aWYy0OGWNJyNhbJnxMWjCEF2Wkz6MS0cCdLXdJK3NTnGKXD6
truNLjFjf1ry4+r69aLwyPpbRKxV/0D5DJYe3h0oH9hmRI2n08EW2QNo6LyQCR3hUdVooVy/yPlE
5nYLt0S503g5c9oluEfNotliECDkFWbnrevaS/bfBIDcaREJCdvdFRYhFqEzdg9xNUU7OdATF30T
6V3j7UIAlnOMEnXK4mPphzt6L5TOAR5JxC4WSdlakE9rU9SgeML9GfMN2rbhtfy6a6pjqsbc1X4L
VZDs7AvBoVB4zmxYCr0A/nnYb/wc4V2IFE45t9tUqgTF6ZuZUKXTJDlQwYe1LFJPEsvuvTYMQUhb
6ijnDR1EyhXz+bv1unE7MzPAgCLlhURwXz8VBfo3v7JLC1TjeMmzZdHWLAJgdI/bV0SSfgBSNjgl
OmT45l+GdqcSAxMeREubkKXCMbBJ+5duVBLtsYfdQmMZ49eTgtxmdDZ0dqOMA0C8n0djpX1omQDJ
LarxEdCgDs5heILjK0y8ZC4F/Ar1VcDyz67uegrR3/YL3PIGOh1V5q2141ZIJBhax0rxBzBpn7rq
ZsVMz3wVFzS+Npd8cjNoPJFpkqs5CiytAodYpa28C56LBKTTmoRCzHSnwGD4U0cEnElvT01CHlHK
I7b1ndCg2cUQW8GmZfpyHKO8RTHtI/hzc6N9fpG6nFnZmpGiyR7+SBShvDidJeOA+vc8Sshn2Akv
5lWug7k9Ofl/lYKuDzOmxSBGM6YM98yqlkHZzmkyjzzAhl8Pik2V9NH5BibCTzOqcoZDWLaolhlg
Ne3Us0XWiI976cDVO5JG4tNGu/WltDwg59H6qsTGUx3EJqIbye8Iv9tOn+xcV+Ukn6sPwt7P+Us0
dtkHkjDZ6piLkJgjHGwpe1oohup4sMPcYBeOscSUybi2Ff3TxV/ZQ2atFxGcqXc0UT8+9tZ//kVG
/4F0qMMqTSbHSZy7w0AvQFwQ0x8YKN2JxCggHs9knBcccEkGrgJw9pcz2ywYsG+4QM3mS+1ySoZp
szYgXxkHo/cJ27m08FduutikZBJV/6DD073pwqWZJH63ts9lAGyCg/pX4s+YR+oQe6BtZ8ennGUn
xGp/DWa5VfzACLuwaA/sF78NdZmaDIi/vBTKP1CUYs6HWrFz/RMs4oz+KnKz7ujz0BucZle0qvSl
0iZ2X/Xssp3U1kAGO26qAdk+t+h5kHsItdNvRhJf+rDvoi5q6iLl/g9jdWJjkS/bP1IL0UtjwA5a
ZFnYZbbfCtGuAz/VfZ6L+0jq14Y7YClbw8PYXgkLfdklZ81px8YFlzlo8B7zHvDaYEE0yyZkCMXt
jIm1SNfC/4E7SJkUgKmeF7KE5dJa2YuYIrhF0gmTpHVIx/X0BvD785318neIxg9fxZCUnD/IrH1J
hAdttkCfDpWJLyo2fFtWMOfpdsNCC9CvrsKdjBQiWJEOb0y+5Wzj7DlunqUws8wcIAhcQDazGa1Q
kSV26OT0yrGKutPmBCZYK0X68AyfVPvEmOASZ15ChKNojICxC07EMBb3AjHb5ud1bLE0haVvyC/U
1GuAU/UbI7nT8i3dpZOHtaiY2KAaAj85aQQdoRP1Pkp+SbAp7xBd+tBjMld03QCOmjqMAzrXs5WE
bF/Eh7wM+HgT5x60uRR+7hzB3UqMG9MHK6Tb2elRJFtHHdcjiLtku3EIpn+8ltwClu5+YHLhpM2S
8/f7Ka8Q9T5gbq/5CB6+OOg8Yap2Z27Xy+EzUS/DYFOzMFuubtFUj+hTIQUf347CqYm+skQAEEDA
Ut+GWPpo8oAuscVSWxvQ5vpGsZiBkGCZrkzeoGpYBRGbXSRjpraE46KtkCu31S3C2yS04tQkKALF
fNCjnav0BILGnaUQLytftkJ+mRHsGW0+LIH0rRO+0RTZ0x+YkSH8j+GCPNAVKQCq/9zob/mshO9t
iN5BZHCmTz51r0rAAidBqD0Iw+hNCrb4ebGfcJJqH2r6lUq3FlePy45IP5KuMK4GCW2Tsmc3y/GT
CV5eQLlc5DWwki2VP1pwdsLOXLpnXOJW8qdfX6GNpMLhKHmWOtDpSi15seS1JcS0l36Dfp8yD89p
MT4Zz5LCNDgBEpbtfwUMZi596d9G7oxrFmaOQYHHRIsU29Wj8ohoWsgVIzeBWTfnrGOevCqpoAxT
I9iM8qQYI9BapE/BVAEDPSNye1rqLA5gAYsPLUx0iVzsaoAAIKG5Ds2CTNZkX9TbOeICX7XG10yw
Fo2HI26HA5TLoS0F7SXUyXCfHjiPHitKY5A/O3w+RXNEBisOYxHnRwaZWSG54U3WbxjrWYg8tBJo
C9pbaZeU7x9Qc7pI7fGbNHoqXC+vhtQld+RkRZYmxNdvb2lkls92XJDUMobTU5wvU0I3WhXJVhwf
0Hefw9yuup0TLh6un6iaVCvuJQDFy+YesqNklyLXJO9L6DsNkwVBZAi260inFZSOW/tsggSyogop
MRW2ATCVxwwH49Y/IJYGEv71VGKgtyEn98Jon9V/qI2YhyGVWt6hBOSA6xSdlkym41QlHE07PoLg
2kNna12WxBi3B7dTzh/a1ge7YXdksWhF0KPVRCdTYQbCkhK9JTobI+6mkLiAeRp690ipB9NRSvNm
F8+UhoztYCGbVR6MliYdCP33IV0+zAml8AdHogs48gj9UAvPgoe1iHVFIVmuif6XZZJF5x9G0RAV
pzRwFd3cCN4xzOK1RiqnEFRyTnSQXftxzv20etRw6vT4yI+cFk+pIdy8biM/oVPzAhLRhAMGm3Ro
H4Aq+4vwKmjhxdrYqUnfmb0HhEtEykjLamISz7OsIrLpq+nXjZg2oc3rBfwIkf22EWl0hKg+rbyE
Dj9nuU7LgmnBgpSfg9gHH1Kw6lmJl9vw0Dx1ITdqlT8fFKWQZBQOZHUOFb2fDLuXbMYNaEsu7XPx
7gO4BDfaRR4PtzOidVtmBYjEXVYh93/3zGrVM6LhJViFLd21VfSvcTLh3IakNhWswYQT/QmBgi9F
UilPixp4dl9kdxAGb1/e6g8WC7OvGJoq/rRS6bAkr4NpTeoqr7YTa0Sp+h6qYPHoGwbkc53tDq+w
M5O/9/mI2Z4jQYUjyd4mm3v+KfvP91hia7y2DqeTml0NboDYUo7wCmmEFBoksYdguI84d+sjS4kO
0uKVhTRTprc2T2lLqPBnwhwb3Hz+0pmQzl2QTaS9+Si1hkiV5sCLf2FekKP4OlHfSOfFeWOWD6Y+
V2VK4/YiTjuBwnypE4vljJw5+ZXMLdnszC8a0+oIv6zdqFaq+FNvzcNsyzyhj92BHyz7myFI95Vx
qOBTj3QlI0Ch8fWWrT8oDuvaDYogo2O5dgrEiybmqoQ3R/7K34yfpTDaz3aHHYHZURFtL6COLa8n
y7P1+LlHWas1cv9YMhslVJ/M+a0UoJm0KLdkzmOhhLSFUGvjyjYtGWn3NRN1LLbKyyHk0geHkruZ
CiaaorIXaOwSin8DVElxmkDyoLUlSMrRfwL9GGeh78raNee6KemcdVogS7iWbKirsm4IcblESdEi
GwBL783u3C9OIz12e6YsjqtbCavwDwEaFzHJzI51LP1gFKSPumOw6ibmPJyylxZyCFE24mNQNahJ
pCnhs0M8BNjTEeaapVW3tau6Tjb51KU+Vxo5NcVHO5BZ5eq+C7fUk2QseyuirX3DE/bgh9GUgx72
ZmbAVsG8r8chbVzH6IH0HyHpJ6o94KD0ov+55IlMIG2gB6gqu/hnemJa75FqI40bXv3WiJUfaO66
QZf0oEGYXw1W996dFTVSQnBitxFU4MVrxiMgWU8gJ5d9AUiHWFrXP1eMAHyIGSp/ss9qao7+jF5W
mpbKwoqFxE/4K4ux1iQ5bqUQ4cAR5vssDdG8ptB/pXHor2Ly+QTf8mcuKdrhNvkH1LhxabgPambG
sQlDJXrzpH3JlRPphfWZcFrtd3NEST72Wlvm1KLUd2HuQ3ksrFSKgjvBSykn02SlWpdeBPbt/hc1
5nssLGGfYfDky2M/MYtF/6VRGqu96a2UI8p2wYAe5hdFuZjr96aM6RFHTwCS0VuRx41RMD/ZpUYM
fWFlLXKc4j35YDy0XXGZ+L9xqlTK4HzKRdND2jC3iQ8ZwkyFIbcxCNQlAzGCr26pa8Riib7JryZD
14Q5qyVIrvxuVI6YaczQ6M5CEcdxlctBblNHUWVtt01+esmnAYByTftW0MyrqqGkYwz4
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
