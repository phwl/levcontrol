// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:18 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_blk_mem_gen_0_0/design_0_blk_mem_gen_0_0_sim_netlist.v
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
