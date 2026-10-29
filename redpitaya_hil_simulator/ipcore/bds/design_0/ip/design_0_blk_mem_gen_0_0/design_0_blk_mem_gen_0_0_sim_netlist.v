// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:32:18 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0/ip/design_0_blk_mem_gen_0_0/design_0_blk_mem_gen_0_0_sim_netlist.v
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
+KJ8P7MNKJ9wqUU1VShGjqxTPDj2OwAzpHKs7xNSbxA7zyK+2qr7i+rEV7H+TW9acMp3sW4KLKE2
x9EDOnpeVq7Vcw/HfFq04XTfcEmQ24hqojj5QqXAREER1aTvOVntStC6uQjpQFUvfuMlvg89AGRL
JeCrX/0JPMKPtuXb8MI6qy4evtGu7U898gJ8rh7JlxJ0qlOCuA+aufOvaXXiFgWTJme9kNE2iPcZ
161Jmi1IzrJOKusM9HkBydmI3zL8ux7h5sVZxe856h1waMSZBYUfIdzBmSShzvbUbHYjRZaif4kt
nA5tYP17ZtPjorHpZQe0qwhdz47gonkkHWjd9XN2ErDXc5ZOwYNbUGHEtvwZcsEuUYrIcRGfLthC
LJRLl7maNL/UMId8J7dQlEqDqktgKD8beSo8CD23LpV1xE7DtGQvtzwTswUuv/SVq3sPvMLJ1D5h
/6/qQhOrzeBbaFxCnFJdJXD8yzZICd6Qr2258e2O16wIGC4iWc7APbdrvrA4X7mwt9mAkGJ5cyld
iWQFf8WxfWVkeol1cZ5bQHEon4rvbdkpGGPau9wqsuzD7LIhQHnuEO4B6FKltoEKSUkefrJr0VYU
U5GA4dZqIdHTSpclE7tScwsPX4KtQGkq09Wj40ZnbJVEFFLs86cgDCBr8T14v27dlsRivv8I8owV
gRws746aKSme70nyIEFOyhuZ6VYh+sivcCpsRW6NJe9jv9Gg6ecqqYE16V8tUjKi0mLHllCRjU3v
Q/zmij2zxE+0HruoqTcsI6nG9ppqiYyP3Vo/mxCxw1P6jNR5Dx0INta0No4hbxlJ8eNUnostKASu
mJhAQQxbdO7XzjBPNVgIBvxGdXMiXahBUUhmCkRYcFdA67rJGPglkps9Or1pDDyqzkystUNSoJRP
Q95RnQGbK9QIRMfydrorkOVzWMEJ2P5nrevbKAeDnjdiiP50bR5j1heavwwgTMNnULCqGB1aUCtF
yqwAQYL2slapICG8gAOrHR0qNLgpwP361u2mDDWzBADYZwvBuUgLf/Ub6kfcAkg74bjnnFGx4yl3
t3gLLV19MFs9JcNPRO2ZgcFnGgcs0dgMJXNBMM2JYVLeQA1SLBxN3G+42OQdm7hfkwyb1hqFrGI3
nzmRZARs7fAu9xXCEsrnnXQzdaXmylBBRt09fP2SPB40+rSwQxiRePjc0VaI8zippLvA5s5BmQbf
OvQSZoJjtLHzIaYIIw42qye1BTTDV5x65r61ijNrorSd6SaPj9OQy5r67x6c6leDqYQ8+KbiHD4Y
L1BcvpiL3lvLfApG7jr81z3r4l8ttF0adSw/++rPpcrptqRqGBWOsLAxWvlbCBNBivKrllT/BvMN
qmi5vh0whVmuizUuz6UVEfKjcEpgXA5n5QgnG6MbYwpuzW0/1PEebr+nb4Q52P5VCWbwjm+LNRGg
Pqb0wyKbK0IVu6lKgXktzgGN+oN6Zz8L/IvRhuJkxzMWF4eH5aDbBtFurjqbWs/fdl0i2g2uluIM
VjdNjin+VUR6OroQA+nlmvsB0yWDO9KJl0VjnuhkOTcPJGstZGSsN+4csOz33NwTFmSjnztdq8Cl
hORZk8pLruyndoAzcu1DnENXpOueGT6cUyFNR/nXRjMSBjZmYXTDghdldv8rkv4jlvi74dvZjGkf
jMxQyjzv/MbLv5ZgUlw8Rz3+vEU5A1WDMrhVsYLhOR0YRSBNUW/N/oUuX+JCxGrKaEf0/lmvyWwe
UaXnKvsvEfbGaHvI8MMtrb7VMWln6W0fGlVdU/73bgWrBj+burq/Y1HZnqpLvt6bWBQFwm5kP6cU
Fiy1dovCTZjcZNCsigJAPmelKzO/36S3w6h4RJEHMZGElwca7yJ/xCGCOqFjkekEjmBxhyCWPIG2
M33BLjdYrDVROt3Yzj9x/+S5GlCER7E3jsrQ1Fdp1ceFXwifTqXLMEeYhyaFLRfjNObelfOdhyml
oZrYy7vkGytCeBkF3nBh3wFvJX0YoCC4qV0e5QGBbhmfyolbC0RM2KbXOjH9bngUEmtwc+RglHNZ
bXMMpXpTZxfiExKbrVrHlX2bvapLRIzeFJKBt/KJTF7VKtKx02AmIoN6lpfP4b2NKQR8RNBiMNsV
EHlhOMoD+XmSzOWzOY44jxFqo7WMqD6bkqR+B0ya545lS7jGzURi/9JLfyXqDlCyCSZ8dK+Owc2n
5CMPGfmkcsZnPjRsQyxpyUyjQnb36BPntr3MwIvglNT0yQ/szaEZNKgHBLKBSVkZlWT20KinZibl
Etii4+V+CuYLS2Ovpz5jB8orjwLBw6mBVgxQEIWNkE3GquODPGXQ0JAkIlbfLNKBx++bwKJoZUtB
ntH7VWe31lGOfxvzSyREWfZ6KUtS8oV1nRBXxwVwrrgZz4uqjpSMXodgouGrItxxx0oL6U7uMWrX
PDJL5dlTSJO7E9RjTMRnXEI2BVhNIdpEa5hsEC6g4GQR4dva+X2hh5x+Qt7gn9DVKQJhCtB9ok8H
hkSRavcY2lUHddW9skank/fur1SoGf2ahVn375aNPhNyRCdb7Ztj9QsTMUsQLWWkVfs4BfVRnzwV
G9PX1OkwH4auZMuM6HQI0K/lXDuMKTadw5B0+0GGC0+zeuZg6n/vj+W7jrCZLxjMI78TDEIiQzyE
IzI+Bn+AIO18kkIgL++84E0MGdGiwHxpV7qo7q7BtMEbd7No0ToxHy8dkrC+hRtFYTkA59nnD93K
A/mqsLXhS4tmr9wwYrYcgjz1FSoRnHPH4JmaRFyKzIQtD0JaD9vNjeT0tpV+AhoCz1n6VzUOfvoq
nd6eOEqndVv6p4qn8QSFnFv4KtR8G5PcGxiuP5Kq5m9nOzr67y95UYZe4df5K+xtOL7N4SulZL4F
Dud8a9vE6CwL3y38/XEvn6kSrn3WRBqcTPr9AZWpJFy2/liSV4ak3t3wY5QLNjAj94CsM3mJA842
bCzV7RTyp45dMtDa8o1pYMGd2J8v/ytd5bppSiYCZh5fHc+6SP8NzieBUDL+nqCkxVlODPH1g/BF
R6Dn2DuNu40cBgM3+c8d5dc5gWCLwn3W8VKvcEOkQUW3RyEEr7RbtaVQPXB8lqRpvwWfXjIciow6
wGGdp5qEjHcPoOLzSylSI32rT+GLZMC/VC5QFRYHhWQRmHxR4n2ZfokGch/52traNHLm+C+aM6eG
wfrRpgVUkSEzcX1NOfYaRjOA9eQaJCXlK+hsnUk3cJIKW1Yd2nc8kF4EOYqfZkrgOPxzqhPqmfoz
IEDDnaEa5i26haUrnhTmXi0lzo2PoHislOBzctgJ31JqN/oDYajxDpDNjRCLezWD1CIpDp9cwpPR
XHjkjH0EVGaH3jDYL1eozWVIBn+MF1AH9mKAxx/+7GnY58ZXNg285UQeOvCqos1/3w0Js6BTLHKY
BLb+81WbCBDfVVOwNgaAy/CocApqGTkjqniXOWeW30euv46Z2hJYjmWp7TA0EiT0HUIB391h91v8
Qyq/YNxQE52GcVn6X7Uop2IphXtUlwZwo2aUtsBvGPQAZOiamsS/4WiJ0ayHWSirpSyVa3oqBV8H
8xNE0I/VbcUfnujE2lSR2vT4B9394pc97gOgkeCtmN4VY5F/g74bFIiUkzuvf/osvXiLU9JZ7uS2
e8PnlQ8wmvVtVd66JGYuvzvSpmdV9ZcRQhj+SGUV2ew4kSu/o3d1DorQs5qhHT+Mx3O5VBj5c/EI
xmIXGnxeZSmsF1fedlpnbiEvRl9mh8GNj+Sy6kn/GnaFNyTGA5LuQ9Bd0Gl593ftrPJLVfAky3fK
GfNaWpmw9inV5VS1Bbjyye+Vk6rOEo0ZULkzmJ+F/I9MbCYDxHGHxyVdP30vFZ2CG67T35A8a5mF
BIV0RzvjrTS0v1CbskZu4u6Ze1gx+Eb+GcRY6J4uuCOz1zkDJwAo0UG0xcYzEhLyx7WyAWleUT9B
BqKPkuqdv0n8CgCskBxwUKJvXoP5MkImcnyZgToUXhCTeCWapzlQW4CGfIDNSPT7j/m/sBuG8g7F
Zk66mcqAieSUmmBUrOQFa1S0qaAT4UDi7c1xkMcr79KC6xV8lVB0ew0Lq/Swr+efS1++tzqe/MZR
28miQf0oKSe7MFyTVGN20PxbgOgpzWQfuKi97EHk4226/yS7FedFLJiNZHq0vcCEgrUYUE5lEvM/
1EXWo4HugqREaQWJHPw28CBEHjXD4S5ZyCymW9YFyrRbvK7BP7jojx2OGvu5sjdEDqMlr95FtG0w
NA8Rgy258moHPjbXlqZDyabD4+3zVoXa5jg2xdFyYBhzK8L/8DkIifRnHodnabHIj078/56wkaFM
fZ3L2iJl5pyfKvWh4t59pD3lJ+u50yUhJdYqJX8Ncq8jdjJTW7ql+GMEK++yk0VyLsCsGZFAwKm5
OG/CzT5bF9Z1n5Jzin3vBhefZDbr0pM0VysnD8QV8QU9lOh7NCI6CbNjB4A6NIjG0GwlDhcmctPt
WXbn0tIc/SqkwSUVix3mOimf8b/JA3uG3/QBAufC2776m329yYybqKhVlxbdtyTu+YME7Ueah3Gr
mBjUIg//MksKG5Vxy5d6od/Fsm/haC5aUQSjAFl8faBsbsYiAEMiJBUVjXI18SN9oclf2URATTfB
3jVz0z64F0OVkFwYV4YFeikIxjHdweEBQMBrQELeaCjFvFdwaNvaufAeKSPsJ6fVxGHrNs461Ptp
ZpQG1K/ApZti+xW5YB5MkG+KQl5ibQgzpmPMUNVJ6Jb7xLjlMapBVPZjOrIkaARXVBeRZEpgF/rq
lzdIS1raC+I+xcXaIiXHj0/BftSE7NcqSDHRPx26dDFlSLyaytZzQ5M4zh3tT5muFHVlGu2ahXCY
PYeCsGuZdvp+X00WRdnysKfUDeFnhLxgtjjcRAoKnhUkH1Sdxo6CY03RScxT1jlIPARP9Zfa2XEw
fw/aQT5bDcNuiXnZwJODlTjilCQaUbND0x16jr3xR2aIa/oFhG90kkufbSSoUI69g1Wb4bnuvZ6M
44kkI7lCB3c5ORERPVMk6qwJ6UC67Ge2heQqJnaGH7quOevRIzOXlGTFARazqjYBuIlsE9gc4h8Q
O3Pa5Jno4gY+2X7UY38kZO4NmOpPQfwin60v/ZtH3ht5A/y9klHIqvmxEzgLNqvCrjwqiyFjWAy6
VOqlyCqrAg794bkGEuW4L6pZ9ZH5LcVhUIt5114AWyP8F6VU/pRCyPDVoLLOngXWU/ols3qn+C9v
j4+vUX0zF+ohjCifBHQL2qKlrSXpSh882yOEiY/VisKzEjdx7MSgzJnjVTP3R79VrkO0j20Pw/EC
2hqj7Dy8B34pfByB5fIgo3kecPMFN/mMUEMpHIVJYT2Dpg8XKGYS+Unm+a1MlrJZ1Q9OXyiheRE2
wvAfLHlICf5csKlZeYwXm0rUFZ+tbb9wAcArfszHSb/Zwm+1EgIvbHI+3lJkX1wdAQhIRBI6CfDT
BYY5mGEIGq+4AXPr3P0d6avwXfl2J5O+XM41WblG/q0FpwjsOlsPawS5NEagGwnDBVrjwwkFcSUq
tUmM3A+qvoAvd2rZAez7pw6UkxGGtbDxuamnGoG+OSuQ+2pSAMk3lMOQhLSP+jWfl76w3K+X7ZxA
g0zXHm22vdERyDe6nNM8m1jZg+4nO+JsFFOpsC4XYC32+F67c6mYDtfC9fYqwCqWhZcGjmKzokZ4
b5+HKxXVXvE3RG2PohA61sWZtACO/vaZtgaknYx5rDQ+Afebrpr2YH8WWIv0ZVch9p95GkaSKVDb
WLPzeX7Td9/kJJCLNnXkNefy1qBy6HitsAhoVOCVhy4fY9WQ8rKaxbc6AD4fQ0ASu6gkfxCpZkxB
C1sK9kePFXq8/HdCPdXVdaNiD/hXpqc28dZLWVf0wfbrVH3mTmovN5lwG2sbdyTuqtXFeBuelgfG
iIpaFq+fb73fs+UrpOtcgfK014/nqoj5w0AYZVpBd/zKkpvwhZI32ko0pGKWjY+V/tleXpFG46dj
ECtwFm24Ou7dFM2K0FGeUQy0qH7TaOZXKwzGwF4BJJ2vebMbjWZW1MnHsyEjslZrPNS8Eud4/n9h
8wRQg2fexd7oJopMXUc7OS70tiDWQzkGvP5UQA9i0Q7oGmXzSJBZD0c34bJPXDRBVTZRGBkaGNcO
GZ/JZlBaITjEvbPom4fXc2ma+GFZzdRE+WYtm9rsfRSHS8wn0MT4mYnYrKlWPVutYD0F5c6QzQLW
UsQEHsN3sl+r77w8Rt0LiIAr8LJaCk/1P8V9z3rin+wDnpzc7XAMtEQBCztRbdHYK2nYdp3YS8nv
j1uFE3iPqxuAyi/H6FxnsZxe8eJPOvSzV2KkSCdprQ87g1ihlLIygavF41LYouZqjJnpIFfbXSHE
6TntUrcQ1APaWxhpN/5qWsvSwmAWZf2BAPL4lQYWVCr9KDXAeIzrFbrmSKC4EkKohnyUST8dIszQ
d4C829Aq0q5YWHHv75v9hVsvpn08FfEZPhZ0c/RRkWkT82zBeOFzhFhxwGaRnW7mQNE/MeVYk0tg
0Nh3U09doDgXWCIBYdmQIU7wWd4yVwsKih2NTIIf/qwVt2dsjnBbhSMZ9zGCbWMWVY44czPV/dGl
c/00hdNQvWGqziZ1EyuCJb0YV/1NOZYs9g03AG52WtavjjNq4Tu249zLP/HCrngD8yMGFdgv0NHB
P8l5U2ebZe3zDY2ynTFDDh4i54Hr5GnL8/ggFqvSID5y6maKuARg8WqIWuUYr0Etm2PSzPNHnsDx
WXBTYT9WXbZ9JCwXsKrmd7wpEFMUw372i6M0sO/4Q6zfw3+UKrNZ2Ypjy2vdkDpZfK1PHyqlWXaY
96huCyvotJkD1S27t+FIX2WrXh4gYuWonMEYArJSVVRScOAA5qd/8FBGJI2ewDflpIvE/XhmmI9P
W6xoG09z56JJ7Ek/v2GeMwd2ZyNI7qqTrVwbo5xQgwc95llo0omrmhjOvASF2w5RV8nILdTIcmaX
CaFrOsNmluuOP2rZt3UVgF0mHQJ6cPUUYG6W1Iv3Re11BPCEVbFyNK5KckHoJQxec67QwvateB8e
vKPD2b30yC/KLM0EQxzVbSGBNge0AjRzqG8C6ZY13Uo3XeD5qYfbivbSMjMdYNJJPpKUEi7PUSb5
vQn58flumhCvvvkWYqAZftndNFiBf9XKl+9QokQ0T5MHe+OcyjQWoOqjOkQBXE2D14OEhFwp9k4o
Eaoqqqo0FKLWjmotUl769/z0zzTYDcLHaZ2TT4ivkyJdc74l8gzrgkzb7AIeygoD3lpV/+v4IhSJ
v/q0Q8cCVNIJhiANHwgliMK98+lwozc+QVtacSirpkuOoKeVyXvlW37NQTIRieMv8T6SNTRvRrFY
1eN3YI7BHQbgot4vAaP0oMVhvmgz5FgUkq2VEA11SNrFenomWZ8q4/FbYn8h3hx33+yAUhqJtymj
uJXprI9MYdQzjBYM2ENYhW0F+T/7l9UD2xbSQeJfvtHE+1LqeHxInmgGcrXJe5UMqfL81wTMV8ys
f91YwbZmx/HvoR2zGNrKjN2G5TOEVqt1ygYm3qzHFylWmdEYp2qlnDYrBxsn/MsFi0TDhB/Qp9XU
AfLMaCgMvcGqUStlb4Z15vXZq/WTv00jhociW2UloVXbzWWqVkuIa4mod+NX/ynCrHinkaG4bsi2
EKV9EpHuc2GkpW5XchUVAv+xO9Kn7PqqkTeU+Lqk5Ys29d0Msw7S9KQY8vayfAdSRGLb4nDqovUe
1BLD7vabBHc+1a+9o73+hgMoD8zqNLjbfmCwQL1GAOxiCD1BSYKxYNX6VJ8PguRkaNv5HdejDdAt
jawTzKZIlr1k6OVTgdX8DZjyMFkKjPNAcSDubtjq/M7BdlcI3YiDiSpUCsm7RzYlz87dsqiZsC6Z
5N+UGn0PN4oT1gHFEE4u+sSNBT6u/jH1dmJAvo0joBbgoAs92BciIcJ9yWnb9xDQ3eHnA/4kvriD
LMW6Z6IkOV5BnRg8uYcXxWpYNeJaq+KICRIL19RGPaGxV9CB4HlpZVV0b4qe9kwhmGW0HDOrzYDR
PVyvDWH8v1xqtl6r8boAQTnxLc7oA3lr2hsRTeJF0RIBrHNpPJqLGsevs2O6897FhfrJfRhZgfGO
EHJEMCQlpHUozDhg30ztjHvk9xW1mr6IA1V2emyyO3+AgS4XYqRDnwNrRYQVPIHdVcFDlBTrfnlp
ElxUtzEWTZizPHL3L4OWi3gM5+cc8w1F7PlPXNxv3KWmlBJCIOaQxsjvU6sZJsgcDRBADx0Z5KNk
ftWjS7Iwxouf/waMqtZXGHT2wgK/KHwP25KiHmtqfkpgzLwcyL21te4eI9Tsnkc6HOw83fDOYQX1
F17kvPJuGCcx5lOGEiK8UliCy9722KytkD4UY5gYLfaQuw+Nuj4THmtEfw2OwV0sRUiI/2+a2gL/
Zr/m4k7WxOUaxJGXVQvcYrzshz3+z1ClsbxUBVz/WPdTsI50TaSj7s0wE2ofg5XL+edhxYH4PYbw
wLjtFo1dXEMmJNkacG0piIqiSz3KRJFOqKbSvr+OZGtQNyOvMg7s0P8kU+Ks7h+KOrVltO4JCOEB
L1+oX1faEEFwYVmRi652vQLtD9LIRwfYh7BlEdTAigK8gN1G7WWptIAdJAhMrezKd0ZqpT3oW/YX
XcK2noxfKez3iOUWNdPwSmxrupST29Qvb664fpbRcr4RCjedc/KgutDxgY2SLY/omBOYrrc4eh1J
1DICrtJ52p/P+KOIo7Ew/RQkd0xJFVlYw7GBMSH+oHwggBBItcNBmKQvyQMeENNgFQC3smC/IZL2
lAfYEexg8y900h+H7Yv/A8dMXr9q3J7yEYz081+w79k/FjtzMxKq/vJ+Bh5fzO4RjvAGyddT1wZL
Q+gMIRPG0VIFITmIMLeUd6H78sbHJDfQnR+uCmJmVwpoEt/yBdV+dbvg0TI2TtP/p1ZENMB86Cvz
lcaX0AP6R4pfsBa3BtZ4MVfXjghmrzegk7/aXsyXAzEEgQbzyIR5pFOFOc4C5BDzEx6tGrotACxJ
Ejf4MxaXDHC2D3VAZ+wZHdkODNyUwJuv27UN6RojJOWoNd7Xsa+yaXQDXSYhQxbEMpFqqqN+2IRZ
fz5w3qPVynh9HYvKKhjdpJGyv+DjZj0jG5iIZXBhrq+nwzK7llU3Ca1w5LBGnVMkMeCRPAOnSbJo
/Bctaz3OLad6TexX/ygAlWR7R2Vkkz0vc9MmVV1My6ySp84B815HVwRtd+7SFJHXBTepJWUpRLzv
rLeVqis/NzinnxWkqgTxB6Zm5DUW6utdK6Pe4rabyHgINS32/EAGzw9Fz+L0VM6P+N/1T14Ncvlf
A2pNvkX4J/MRg9FZAnawcVb6NLe/6fOtYlcqJBfJlgSt5RkVupQJfhci0kVphOeHKKODJ9fnzF5w
gVNi6lTwUryMyDasXlMv/Bhiw6HQfaAgydjeO2MeUIIZOwshLla2tYJpZL1YSMxIv1HOt/xaRUGQ
xpUaTA9SUie3ZxOS/vggQssi4h2cQupehlWchUBZlL1rcJaN8AIxctLlZHQ5TD/Y3GhVBQ1/VIqC
tKZ/+H06gLx2YcMlWKowfYnTbBp/5e6MTKj7oZsYL7e2l6gNRCyqsVoBbGZvecylM2CgdOj9REed
I8XW2vPJpsZhAdwrUgLtw0iTHLlptQ0u4p+9YIR8058X7JtbZsz3kGVzF+G0ofKIE5ld9JkFRZPT
uZKgtvlmBoTdqMDceEMebZoFPlvOOgYTCDyUhv/cTnAyDnXbo6SFGdIecvoZaIWKTeOYxp9exNHy
xZTTqCmI/+ROkk3LKggIMyhonlGRn2xiP4wdS2nYV0EKcS29a8rC8uZ29c1n2jQKBdFl2+YEU5K4
gmkLTLefm0jTQI4Z1vI9jl5ELCaq7GrCS+Spi+jz9uu/tEXDIPTSS/o/IjOM8W9UQzln5bLCXhX2
p+VFLZftWZcDPBipQGWowoEsNArEvB4v+Ud7iOKFB+qHCbmwiKCKWWmimUm8Jk8FeQyBTt8V/Pf9
SNGXXuRFbXEA8lCZORxIeSUac7bk1YqS97LH7SFe+QkiDQ0hW/w0RKgSf3Nc8I2p+9x/QTpsiNIY
aq8Dbytb8JAlgHGgN5XP/eaqUuxAmsjnC8uRnONJqFURuRljltBPuuVdtYPRsWXc1wrdyLELkTg/
F5kRMeU+mF75Vdvqej/8HlFtzsIEXCRffHlRxbrC/UNR6h8SjiCeWtSTAeKEyaNwCgf8gEMwXc4j
zsZ95R9nm/nj422A410YoG3A8BbTbEOsYdwVuCPFPeTyXKmKFPTY0D/5S8+0iVuptaPMOQ+eXYk9
5+3rstMM0rzzj7XFONTtKaHhndZCfqmnPrGN0OHMWzQV3DLAoP/qsz6hDbbY9I3XNsFgXblVsmBu
UTHWeoM/guZhrs3mOoCUZFuzSfd560VdJF5Q6E+Xsv57B2YPEcgOhdfeSwKlXyatxGkMwrJ/d5Jd
yuv3CgGtJZ8l9QkWkcXXPsuc//Hxc50q/Poqf1wR+FMas50atenao/yBXUcTDHhJg1MV0/GuDj0J
MphFRFkdSvLmqqh50obJXj2exhOU0LTMWtZmc9mgolJtVONMFcxg4VV8gCgfw8Zd2sh98Onplx8E
ZCt5D8jc4/UQ6S3sGL27T4BM21UaJa0BQP5u+T5xYAHRBm2GknpsvZ73gEMY7GtsPfzTx90ZSrh5
biX0k2qaYXdY8xk1o3SXzhk9yCDhH5XhGuzHNvkX9S91pPa6ViI2HDg4/xIvsyau/sGFBmC3bu8d
Lc8V8225SNTCetuZ9ge0TP7NB3ARZliLiytEpBek3bMytv7p5S4SsDW95+u1OTVieys/TqjorgmL
xa8w3foEM+UGvwhCGgC2ti8vWo7UAKp2tHuh+l19Gp8Hl/2Yc2lxgPtUi8D5kf8sbb/VdcC+MXvG
jZP1nZinFtZ9L5emloLteHjdh+25XY+tJSXRrFxGiZs6nBfJ+B/bnBC1k4RGP3NTPwfVx3p035bx
ypMJ2GNZ9Fg/SCfhZQ+bm1L3I+giCLWxUkFgmvqrctEZH2lUQWDHjGrMU2FldPUlXLAhXgCpkIQl
rqjranSD1Crtxrw94UrMPwsUwGwG5Jtr6/d0tO/jGebODsnQf/E+oIJpRAbayTnmihNZvwqfnPC0
nxBHAz/iYXaJOafMtcQ70xYHHadLtbkjKcpo14Yu1tzXOkWUBYTkJNubXd+VAw0f8z4u4ST/nNiR
KC6ADQOPsJEi9c33an2RrSCqQNwwotwTOs1x0wOQzy5tzbmiTaKo6X9u+40p3v/l6f8BQp/6fa7T
+XTJVYbeYvlNi6I33XuGt+upK6A2DT0krkrwYfXH2UW1Ygxx2fjZcUKKRDfFFxNZ8+X3usE9zYBk
YIvR0/UHdw1QcouTaAR/B34TB0jVpQeKU49aOJrHrekmhkx3Y6suZcVbVCqnDonKUcs9DiCggWxy
VOolBREfpgn21vytngpgnNa+krCr8t/et6TiVdRu7F26msMxUTXVpapC4cX+MFh8xt89KRNTbVCA
cIBVTWKczKYS2B0Z8j5pP/3vwDozTPBJF4vaL34KKMlqF6JrX9SYYYOT6b++q/cSp8l5nZViVgtm
cmzGmHgT5IdqlcF+u2uUJOEAfGNUWngeQrcvHNf4jh1fcEc86IJr9P3zeGO98gc3R+5ZSFjxn9Rl
+/lUxMpzDfaM8SI0YUeGdoOy+s2wmMSuUW37Bb7l9gZJzUbOcwY7AwKkEv9F4tvqzUmo+yD69qm9
2/umUyYudXoPvbPWVJsbFdmSANn2PvHXPxXu9txKIEIFr8D6GNzv7QLCt+y8CyTJWfZx/Ud9hrWc
AxFTH+FTFwNNo+Hb0WPa+3KiFGFhWmTZFEQra3EVLX3Jx14Hmk8N7rLbVsOV9e2cgysHH/ZZ8fxc
Jq9Ew5bvZJvKZuAlX7OjT7dVh0CWgB8DIfT9lHYCqbWcYXTEa59QCj1wfG1rWSCN+fDlifiXEEkn
WIB3TG05LiuCzz6tmsT1+XWey9L+Wu/e449rgZi3NXelcJYSdignWR2Tjv5/xEzhA+4fOtvPoUc1
iBoI9ZJfN6igpRmu4uMMe2m7qAQ7kMZ6qGv/VW7RbR/AGsSDSl+93rPcXYJKCr6l02f4AZLKqBNg
XwT/ShzP3gVxv95P9sUCpV3CGxhjwdku1NkLVg4Ub/eew1Q1fc8Ygz8iQTuDeEzHJ0i36ONTxt7p
lTi3W2S/rt0asYFtU0sleU9SU9WgIo4ztPRaGwkwMXj0ZJqLSav2jR1vI6CnU9WVpfCQBpBSJb1J
/UIRSK+eXNWhwSW9C22qMeHfKw5Na3hk1SOqAqxK1BQXXJT/N5uypOmYglDB2DJ5tzIm7vROo8lM
Ouw8Z5+SWzDJEH0HFC+b7tKp+RHSpZ5nzEXYaIthItOMRBftEtzIcOOBr+ymZQw7vUkRUnoP6MQL
jl/Ud8sQECNDrQ50EfmGQvapr1J7X9cj/v7vCarFTI/5z2VHF9zMvo1Uwp2BF8pydfukHImB5GIj
lizC3D4m0BfwkYhOxzi0JTJoNtFynFSta4nH+RG9EAcbO1lO0dDQwUcLsCNGKGzyL9udrpms/3ry
QMoaAhVN8C5BuMz6xmDyf4lqs1u78QkJTHCPWHVpxGetbLq9WwU/hmV20H5sWiICO9Hm/ODRwWgV
ppVM125N8q36WCzTBPPB4OROIG00kpwvnh6GkY7EpyubRbhTydDDZhhpbxfHQv/QwvqpEulMjSHW
lWdxeD3J6kkZlK1JEVxFSq5eiTGHODvCv/obCwau70MQSdXbyVIX6rnhgNyby3+I89DZFYDMtGF8
esWtnDk1gtQ+AFOi523vXTwWn3SJ8BBC6vSqG+w0XlOxgXuCj8aHNiS2NcFfhQX/Ou/V/6uZVfGS
kZst6VgZD678AAVD8sIUEVNlEZvQa/A5So5ZuYUS5KD9JO5VPOaPC9305+l5TuxKCXGP00Cyz5Gj
6ZYrlgePshcIO8iMt7mG4ph88NNTvvxCH6pf+9W4raZ5+Wtu2+xaC2a4iONG7Il4MhdqO5iZu+cA
q758pOZqA9sgiGPUU00zVR2svIXEMJRj7BtpqNVZIZrVNt0xCS5+8LS2MxByI/+zAc/R2XO59LSH
vGxTk6XPGpHomZvGe6sPYe2RQRAn55usve7RcyyoisVr2zaGlC7P3lBqlGFXf5nGVOSFqyeSZwUb
lYxNyXqWjrVVdVAVm6OWzI+csMD9crv/4wrGVmNbF/1kvR/Y5gej9JWP7RvCDFegDi3o4CmKIFis
NrUv32Ixjv/cOrKPRYlWFJMoJDdeOFx+Y5J3fCeX/Q3wqVvSYgRc8EqzMPqhqy4Q7rBLo5IoLcoZ
+ItZnF9/eTlCNvOQEGZPnXmLTWQdbVJLaXmSx7YoLkjIGzuQEErbg0WpztbhO38t8YYfLYZTEC/n
Dtsls8CmhFuiUFktYDVNEacbKkHBoiN4Hf+WIyKHq5629tbP8CWuEQPFWhN/Q+BsKge8Sl8EDTmu
ASwTE2DthzlIoIdfR9adlcuWDOibN37rYZol607RFNm8hZ3ujv7ZVT1UYgyB1itxjVcTshFYq3hg
VOfZ7z5MfYp5R0/QiugNSYiWmRtv8yM3rOqmp7de65xmgcsX2RbIkjKf5PLJdtP27on8klYuY8nk
e6AKjiUjnhtGbePtCvPkC2cfBxi748RBWa2LB6R/yxBJiX6SzhPUQMANm8+HcBAEpUQgfQTbcJ8y
ubn5Ll2dKRcbKeHfjL6112fVBFuaYuUpG9JYptNnTnYB3Srztw7hDY07WgYSfapKsg3JrpdBrBhq
mUQTtPGl6fj8tFx06Wfi6wVNAF3p2orIyup7ik4+GAhaqzgIzQPuSxXVNcP6NbtmIUlcmacZp3d6
F3slYiGYzmNEfqZLeWLnIM1SZr4RK8Ef2qHVwZn+h53yNzVTlKeVklWB5oVKXmWoCcuA6+CeH0Yc
3u3JXQnhuk3793ZCzPnK5rPkA7Ts7U995qyE4u5x7b8XftNemeLz5/wPFrzhpSwyOVRphXC3htfX
OmXLb1kLgZEBMxlyFILmeDexz6orvMPi6wx5y9xts7kNdu6WeGGnKTZwFvTeAst5zBdkUNgHjsX3
XToS4aNQUIi7kp3ZYCffM4eKkhfuaylZ+oxMj+mull8a082+ruYN+fYnJfK0nOPWCfZShKponSGQ
2IWn6EMn4SOd2+H4JvDdo1GnNcCbNKHx/MX7Dgz6aulztMQmlFUP1ixwA26AAQVFq0cDYXDs1Ls1
hdFrsJzZytE3iU0TE0Asc5XFXYR4oh5Q37XdF38qKKgy0ZCNgsQuh20U22owfU/R1JZ2WWxhUXoq
/7d9PiXcSkz0ldXejXOxCZ7TKmC1x3XPScYNBTfVmI5FBFpDYxRKXdvjQtMGENlRm8OIKGV4oZnY
kawcFfztnLSqyUNYj4M/tQaYRd6v1o5IJDzv8CfuKTKxKTdAWVsznPvdwKhMONOkb6SJZf1c5b+r
kl9zakrhFUqypVCTbbdaP/zf8eR5q+IRFK14qdn/F9jhBpgTswqofTCYTJfYQTbhsLsFLaJgo48X
Grp+YU8zbU1mQS6BGTrmZkrJdRxNuuUAPxjoDFT05Rvv3oQlSD9/BWE6Uv5sd6u7CWt+yw+Y8z9e
KfyrftJa1+ZX4SHwspjQ7t7Go3+k5IBKI7Y3QlT1HZLn0vaPHFOdee4Go86ScdsRYh82IsHi/NS+
8Dsad/FYhONAxCZDOJ5m7JFqvacqzW5d2IsHuo6ao+kVoWiuXVaugXp09y12sIJ8eLw+xG77eb9x
KPiDW4XfslSMGtsIK1QZs0LGo/PbOa6AtAXQlV4oiUkiyVZsssG2x3y4N4PWEx5HLgS+3WnIL/bw
1iPpMUkuofoWfaLFGcfAcSRvgvb57X0iw/txmvoqmLvTtUWtgwk48u7XpoNDLeK3efFsK4aicAQ0
iApAVaMHXhSVgcUKy2/WamGeH6pgcBhENx7410+ckjuoVu4iEpt/dePs1c26g91HSehGOnPExFYT
n3ATjeeY2HRk2oN0+P8TbufOgvTzAP5KQDUL9A14K+RSuti9atUm1nbwZYgmLBKhsOZYtI1hdqdD
rBtLaGVJMHphi30mMMrYRpSSp4DWz1H81Q3hXukxP4cfHEvWQUimsobmWmyKTai7wHeHqV3kpxj5
I0RsdqMBn7/IUwgJtuUknKLeoTaLT6zFg7Xdf6gROX4hvFYGoIru8vSKCjKJLYGZToEtxW/+49u2
dlS04Pp0Zu9fnCA00TaiUMxkg851c5Z3Wt57wrx1kLuHj/k1+JQ0Eewk5tIvNRGYluxf4u+Yoh6q
RfYqZMlaHN7FSr9dd4G2ohbrkybmRI+6KHlGr5wwTA7sJEBlRefuUrEqutQTPRoIdq0362+X20Di
rM30UqZ2rWQyfi1KAeDmQyt1yf2xOIuM57PiqPKSxXyX+aiVpK9b/ZWdWr/gr2urYTojQmatB6O+
j2Nj/P4YDe1nlAVQ3XlYUMCXBbFvDx9L9QymYBenMrey+QECvEzf6oMvduEpBtPVWNa7JXv4yzXL
NStghsnY+LFsmO6veNqTZrDo18UeLHzMFRKi8ZBwdPWGqCpMpWw1IBRKZM/PBOJwR00U+lLw1Ny3
GgYhYgPvz/HY2YbjXzbRIgcmVuO2lf3mZsOPsioNtQtzewPkNiyLKF5X1xeLUalD388hThp/Z7+p
8FWcdpF/SFftEqZ+nzKL4o+z9e7u10W8kFrfdMBpYN6/f7FJBkx2kW87Uzxzgb6M75UhLBYPCrrR
irKHGONpeXZFyHutMHoRRw9uYCJFFsr3uFzxrSsZID9tbvf8Diitj95Z5tLQhjSbczWc66e+Vr8a
1PuMeK9V1kVGWy6XUxKkgddyo8g67zhWI67N3wK4jUR5r0ILFTJlPY9waewfTX+bcIwKn/0B1M6F
pvH/qJB/aorI46ol/clDb6b1oAoiQljmuxLUIt61XDrFmhuBW8JfElCV36b/GJfuyCmRq9SZGbLF
U2LbDohp/x8RjcEBonwtUAIwCipWQ8ErPtZ8d8jXzfro3boR1J85lqAhqGzK/1kMDtAO5cBEhFhP
Xl8kR393bhYLUsD9XAl2NnnUr779lA3ko9eWWwBqOOCBMW4431RmJSUejIzX9VU6VoJW1sW6lgW2
n1nP7IlFZn8UXjJcN0haVyXtK4sss4GUk6UacFr9YlEppwQIWzR844W+gAhlWPaPtekVwwzdjgHM
ToV49HH+HL92oXxDND3nzUAEq6eFDQkQ+zHiGi1NayCJRq3plOt8yPFypQL72AaJq+2pAdibWv/G
Leh3Etvw4XDWMVqj/Wo5P0cTJBReCgg7ukD6CtqwQBLN95DZk+JopPMG8AM29UpZy9xNMqMCifsQ
ZCfkJgrysp5j2TGwSwCiz7kwRvQaRSdoiF15R5KGEfGVQ6aCVocxeb8YiuPctsABTJjc1aTOgF/p
DcJNUe3CS1thA0+nXWFrpgaBMawdYP3Cfl6O7shdkny9ZQA3YVAv6uBAwCAKpGsAriym8Tp8TRkQ
a7kU8+Tno4OO9ES+Pc26G/7xKiqI0Ki1ygqA3Z/sml9fLEdOVe4uPtAFsXJokTG7Jx7cSmxbkNmi
voFe4+7Ay4MJFAk5iiVQOhXcjTeDOBBQ+KromW4yGAf/X7ZM3XmYaHzUnNM3qM/n2mTVakdxT3sB
cjrcuV7t6reHD1hnLEm0Lv8La/IWN20gMBlSbp6jqizw80l4rQlnga9km53yAbd+dUwy8KGjyNE6
flX/YLflZtNXGKrJ86v6EC3+AMvSWgyEGH+YnrsY6CDev5K5Fm1U/BN0e7joIh8aOVuJo+LEee9v
oVqJxOCB8h/3zhVWYwLK1NCbK4bCDy9eGVfz8Vlhoa2iU46HQtfcF+GtN3BAifBNf1w/99HUKgUl
Aq9vXIMxqO0AU1oKxCT5dIzM9ao/PMi7khR5tkhMVvKj9RxtSP5AWqqW/bcPJDAYxJi2cjiyaA/D
CqlS7bLHPvZxO1BK1UPuXrcil75C6c+YiRXphNQhcBRuCorcfnRXEPmZtNB6f6IPoJXApLNhgvWy
KapYQitQJDCIHpy7JU1jFtnZTSLBpigHDmoY0E4TYmug8AsOrCjhIxcsfT+Z6v/fbKiC/4yJb+7O
2gYOanjQU3+ylkqXb0MrTYbf9cWz+HJv624QRWzX236IIWwIRZf89IPAeOdKbi6X7REbZNnb9waJ
Yu/SyaD1l6NUK7Lg6mPkJW6aXgZRAqrG242sW/9Y4Y/CyJEAR5N2H0Jwljju3qTrJzeKhl0TL06E
QQsjNbesWOTwRwDj856vnqLBFV13w0a9ULU7OLzB4SyrIn6jJ6VtPvGMAin2DaknbETQigQeoxDJ
reyj/RY/uY55FPRssJ2ZjscRI8baZn++1zUaHIroBB9DK/phsniI64fme1agirZU/VP+7QguilQp
2+TjLFIoqNarlfH4IK51C87X1qIl0Km30IFlxgAvqU5A5byDAt8qFObWUGh1cEllahjA9D93ZjV/
V/vIsWj2MyHZV/J32CBwarH3xz71ZrimzbmTyBrX8ICWt3e/kSc5PI6MVsUxvs6Zx45OGPIlVVcg
35RweeWLc6wSlRX+37LZ3f5rZCdRZ9fdr9RyM4b7LfJpMOGf78rZ/6EDv+2I0vDWDRAHEryI/j4N
JZqkCRT2LbDxe/pbFlt1CQRrAYkvjqd8LNm0vrG2LsLnfHB2D1rVlEzqTsLwqBoMxHil/SNpUB1d
W96T+lyEKqKLINDsVBnKYQkuuSsG65lEFKvbk/Uc4l77SikOAKuq+fdwiyiHJqsmgNIBznYj6Z7N
Yr8b/pH4QsWOOvz4JntCyBBHtrOoM/q6AvlPn8JrPg8sE26Of3rGxkGRxJVVZ96LtSXcl2ibe8fX
j2FNWRe6u0DFvi0VQcWDYFPh7B7opc32ca3BTCmtF3uV86vI4hlZKV2CPzsaQT3NzTM+H6gQicvj
hAQ6aLVLTAZDRgvipOcOFzZcmq5a8oeuD9MOLlq7+Pu8QxQaEG0LxHR9OHwsliWCHv/SY4RTh6Mp
dco2Us3b1dr3qPhtpegA10HYRLT9fPcjS0A+a+kNOV+cUF5Fvk9yJ2NPStbpknp94VYo59N+zTES
p2Uh8ZtuPboqro7+YiLOb975RxSAB390VGng3huqneq7TtleNrhIja7QFe80ezdbg7xsmmSZZbLp
EJkxpUGvKDBz/EYjK/RjRucdNu1njtHLlgUk44VttV/iPgzjLCQlA7mcZGHVDICGHqyBiizTv+4U
wzDL4/nisOPgZFhfRC6sEdUuTapmdrprfLX4rFchiFL6tcjesPWl6g697BV3OroDJo0hKosc4vvo
Mfdvi9QmxnWcE38p+KHpXJhaWilj4DBGhrAnOjWWnpVEn6BEGRgAWUwZ83Il2+O1jV2++3Gp+H8b
SmJ9Y4M3e3FUmo2hQLZiphIEjiMFz7QvcC202UqzbZWZjhB6ZDMxSB5LRYfWLbFyJxalyIOz3aib
rZqsSXXBZoLaSibTl5/M8cuMGOlat070dFse3xXxmGS+zvnqhNzV6q1whuROPuUpDWhtioNBn8ci
J337/n5QHgmgeKbw7Vx8vt2IPYPUGqXA8P6D15C5FH+2q3gP8i59qVZwGlGsWNbq4+0Rvgj5MKVZ
QYLfe2VM9dgA10E22zf6WulixszcG34FDeyz3Pxlip5co5GIG2ir5R1ClMPZXP6cs4kqqeYGENrj
DpVwHW2eKjPzattRfayCYXlhPWsKhrc7TI9p1BEW6oJ5TYz2J0/IXBL7ZTe0uzSK3Cez6uzYBQUO
rTLw6i/OjPfMX+kWWc6BVwcej+GywMDwle8taFL8snwbFnC/QFtFmYY6aJ+hRrgSoJBRxTbqGg4A
X/lNXRPIMg3CL4LioT+EwUXtOqT7miPUFBGLGyKIDF4c0I9L661Pnp3Ox2g+JnTBV6BI+DSM8uoO
EDk7XNVJ+czV7Arq33lXSfEK+tBAuRHXQoyUCc2amQT6ZlFoXvS+OA2N+1vw6n5avFMxGZ7Gdbns
39VwhFC88sIWU49zXCiTEepFkXOd0xtRbXTcmbnqRmGNgTbRNGzzL47m4Fz2ERVFtclKB7dpzjOu
6bs29Hu4ObR3wzUag2nrZ4DB+aec7z7rwFDW4pTWbI5psxqh8kcWQuj1EFwLp915EVzxUKOqu3ZC
MjOzsC86R4tZjO+WLN508v3SLdtWMMwslTCHMEuYz2I2a0SkCoY9U3pnIlN2PU3z/OEmFoOKdXZw
116mGUkq6VN18YrwuDLdcpsrIAxq1LnkGKD+rppkd3pijtJUKd7nKmOAmbEzyB8MQKYbMqaC4nmG
RPT2C0ZIFAgW4YGE/B4XICunBxEoiSVNd+fS+6oG5y95bQ5Os2WqoDSBSh/Fz8/1U3w4AYZ9q1xT
XXQ4iluL1vj2JCh/9x/PiJAZmciJOX7gWeZ1gu3y3kytWAzJH8tBp9EmVRKFTIo9oF0VMKA7Cntf
bnXQ6hOt+j8BgFYOlEr99PMCHdu2264s8A1X4oCowoLRXs5FF5JpJ/Fryn1mv79MIse5mPuuPs1+
PtPf/NkG1Rq1lu1npanHzFi5JNCBeIAVIHutdaOnC7TrZd/tH7v/Q2ikC3hKFzBQUK/6CXfa+sor
AG2Lckn9ud+CXobLjptSyPCXbS81A1q790P28j0jT7UYV4SC/tvC8LNFMTXxbMVffEi0G07BrtPK
q7Pqypcovr0LnqNG+bJaJWpvGayV+G+O04Zm6W1rbPS3UKeZuSA2oF4LrvSrCTyk+ZZjUAdiqbtA
TEUZPX7IujWWV9As+qJWg7YsOcWEW/eoaYrIq18xMpxGawmrphBVxpszC1JTLiU3p3viCuQqyH5N
64Gn2VYdL1VxVT493P9uyybmxEksX00zX0HmquzGuVx3qXNc6Mec8uT3+StjKpqLe7SjoC03E74s
WrMXnHApZ0Dgnojbj538iep7XBwSJNY4LmFWJLbKqw+3AXDYhTI2bMkJU8usx4KqNm5wv440wnUX
9G2OYQlc/PNsPjv+w7ktmXpkcHqCEoXIBVr/DDQv8qwQs7u35h6smNXQHTNeT30yoXY8pwvayESh
wk9PiqF8BCzGZZabhM0KXg2kyJBoZ/6zVnlffcpt13uo775qV5+rIEaoRztC0Zi5Ipa8y756L7F6
Dj9npio3vzXjERiCtGXj+/37IIkvjuHU4/1MDs++BFBjXeDnmm1egMCpt1gyEZrcI7clH54WzDQ0
8paEJqf240peyrt++QoMxoAPKYqCAgjkJ9Ychqhpwk0wFP5y2kxo0QW6oiweB//DC3zGmHzc74e0
akvgDKCg/r9jCQ0cU1L+6mnmiwcTn+z4M+5H7VEoEEaC/KEg8Y9qxjHS2gDxzMZDi+VbOkkafZuC
8bvpCb0VLKC2+E9dblj3BqpHMiafcXi5f4ysfMaFF1yRkQ99Rjn8gBqpNTSFScBt5qihlJYN9S1z
ynmV+aoP/ibgnhotKbpEAqac7B+vC1sXU2zDIGPM7nInsZKoLeR83ltkN4v0XbiGGykh3+cQVDv9
UarZC4cUf7uodP2Z20FjdzC+MsNa1HKm7XFJq9SnBWzP67COyVBAOjYo9OpYsZ8TSMUZfgyVC1DB
Qu6fFPqWo9Y0QkSPuJsar0789CHa413LiGql3EiGCKJbLTlMNil7XbmBaM8F57Pc17kkvkkpi69W
SkEIodkncLUh2SBBOufRNPCQqbraOSsUC2mnj4U7dCk4jGYOevY9KYJKWvEyyx0kwLbQi+DeGwUK
jOC3VIYO0gnSruChyqjFjJs2E66jy6LVDFCB2gd5OkxtAX6TDgoxIZK++ySZ14ic4e/2WEPUIyK7
tbppU2XQMD/Q8Lyf6A9+H8WfSmVnx7Y5LDHgsw+rCYwPKQxTSm4N4MdhX08bdQFwFIDMtCba/a7r
N0BchvWxp3owrO00N99enFLjdP0T/fXDmFBid6dA7vy9/i2U+9b5lIbDGCg9ALdIEE7DoODtxVGp
fdsMKIVhTgmQQNF+O7jJNo1DNjBOH5STZCll3+YCp08eMxke3SrLR8rWdCBeWYcxt2RpaZYFubAg
sSHxhn4eclRoY/dpJfq3SYXDhWO3ZkANn8JVVDSaL/okGMDvEgpVnHPAwbVjXvokWL103iyvyFKU
GRpeEWfKPR3BHKZHlL7u1OzaCQNE0BztxIvPz22/hzo4oGSOm6QAHUFfNy6bRbf3R7V+7bWE3BtV
IF5MSTD97EikV4Nnt5VcbQJxxLiGpaNUWbvII5Ccs2fZu71+RR4bEwYYkEbplfHTjINXlUyenF3r
hF1MfVz+jSq0ldhCF7fnHG7rPbmDn2podmX8d92siajiFzvOwV5vcFUH8mu1j90VqUT6ExhpAX4d
/oCmy9GW+Z+9BPqWgGdSCgI+Wx673clco1q03l45egTIyS04suYQZdrwj9wfeN62LXfUbY7qq/4w
ZHU/7pGibB8di7xwsPeVHk5Gse+2Y+0kuDE3JChcV0HnvRrpcDNmBogwk3Q0RBTKQ8g1ULt6W4zv
nKqzNB8tNqLAlC3DSPzVp0WBreRh+rznBn7b8Y8GdRHTjBboQ4zX7cBfgHwI6PoliYJOENWFtfe5
rmGZXQCz1Bpf+59c/8SOV3H0JyczLR4leZpg3H1zQ9RhMlA9zcU7IaHFN2qXNHxnyyXcjDJ+A5P9
g+YOfd4DWeaJp8G6FEKkViLbOzf0JeIyYGQOSWOU8UoFOcCNTS/iKN04mCcTrFO7CufJlT3huYl/
aXsF3vCKvpLc804ukR6cU3pfdOUHTsaR1qQFslSj/w4YxITxIsTa1hMIRc/5COFjQuRELyUj9hTA
DgvxNqwBXtnubH5+tKo9qiahrqEjXLY5qNDIGjWQiCbB7Fs2cV2QxfU87p4+5gDJyhqcOh6StVk1
7fa7DODdSqRtms4f0ddnfSgFr0ZY71UeYylbSqPbDW/LekfaMrtvqdzsLsvrkkBB+sjn7JVU3AYj
FkE1q4rlO7PdxM13kTle/3BIZpPQ5FlxkTER3WP11ZstlHBQh19s45wqb/mwV7azDTlUn/sbIZZg
IL+PMop+rRWg/P95B9Q/fdVRt/EYRib9m60gIa3vomxj8Mja88COzPGr0WvSk8VKjHSa41yynNLv
3ChSKPbFmyB7w//xeK52/sh9wApjfdO7qBpfr8cyGBA76ECqTgKkYLfLJrLO3309rkIl3QNnoK3T
SJQ3IijskT9pS51co/rPKhJHFUf1ExCqVYsdCPtLXQm4YXCK4UOG9a/bCCz6mBhvA24Hl/glg7dq
IxETWxIzRxx6VngyKKC2zkPF0LfbPIj+rfo5wIX5IqP2Vs6qbtCy5av/T6A9Hg6G9UsDilRPJWOR
4XXAL3j92kdPNV9Q45rU1inkSOs3petP31dVGv7ud892GwKd3sOIEOtfw6dvuHViP6nL57lmJVag
20/R4OXUDTCw0WFziVt7kXFut9pGQWUCoXinrKM4ijauJYB6AV89ujZuqGRDiwP13SCtFrHGP3HZ
xY1BjhFeWJsvlKuhYt/G3vfk1c6yfGcfpQazEcGlV8ZED7xmhmzEQto256ElHVIx79zOoXLLLGbj
nxtQE1Sqe5DAoVBaS23fY/ZzS84ZAeFNK9xBWil2VrPRyWaj07cZ08fUD8hiOiGkR5cAS6NJxTH/
44Le6bwW0w7rap0SfVX7w1zo1rtKquH2iEK0bmtroD7lfqoaQrh6zYbwLujP40e83fSh60zNtKlF
saHjkq5Iy7+hns4lPGsOAxcUZzKceNyWfIfHJrp8xK7YPnh+aRCB6tRKibSYvT77dLeqqtA3dUuh
lXtTvt/8bzptfqciv8eQBnnjHU2tijOCRfUzLCDsQxFefGVMWt2wB8pHpX59Ssuniwa4C248DpEP
Sqm655Wbdh905k/SkjDlulsvFXMymXuhY/UIhbHutaqComSGNlcyyrYv85JO58LQ3N9d1kTS9u1d
TJRqp6IK7WZfOFL6yaO/UQovWnol0gRRJcqyL5WPu0WVg6peYa3IqgGq8v33mjysperujQq0ta52
ywUxAM3lnqBqcBOrJlcTTM09BFXq4FAzfp84X8Y+6seJTfxdkNzD18iT4rq02jvyhSLX+kvmreDW
wO45Pq743wnsvPx3cxAjFBwhao9gcL+n/ALZHJUISi79qGasXUa3u4wTKFlAhGs1JaLFbRvr1qow
tfS9yL2W4FayzsFZtov+2pjAZ/2hq6/GQ3viQqx+Ky71ULxVmcUa513+n2+Q7g/dW7mojSR17T5P
Bn2/8hb1byXMaVM7tVbylGo1Nmh9koYEwaps7hbUjmR3ILORLtADebbmf1MwAWPAaCTcHPNi4+6m
cOMUVuJPX9QWttBXieTT2AdzaOCMc2uolYvzUjjizaSQ07ce6L0uxMVTdsaZNyFsW8au3bu7sWve
6kAUw+6IoEcBDREqre2q9smofTPyGOAwAPGcty0VYfHe4NBEfTC8JUQCtCtiTavCbq2cXLjVYtwt
gC4JgFqYqmtIN/NKHon8tStlUowPaKIUPPBKDHuXBzmdhZGUiE+qVUxTG5ikjvJTFmsIrF1yeSt9
AW5ueeT+Uw5wMIk28D4ujEVJJ6EKHdVXmhoy47azE+VG1u9s8DGeI6B+eLiM9odmxw3bvqObPqHf
u3oJ8FcYYUQUoMec80YrQoVTZ9I/Y5Yu7HQmcnYhzfXxCWWJLwmkSm41lc0PQtV2uT6++Pu4VgfL
XZTAeonFtw5uyM9X0AmKfAl73s/I8jbQY2LIo2S6ac1DssykEix2YvU3sN2Ejy2TnNoFYdI3S7Po
UdDQ47hORs7qgsk5YsXt9Otr+G/XNEI3nX36bj2jdraiHpUCANF+LwyFYPN8bG2mj6XtTy7GQErX
6c2INT/jJG+eKx3VTPdbGwUPvPFk7/IWAs7P1Uo08bGnVyW35ewdD3PsrZEj/45qjVHzTSZs59qE
ngT7vfc6rLqvSxIBKqlFYk+eY5p8Sba7PsTNcWoMuBLQtJxGLk3ge/GF/jvBkqXEiHq6PQyT3K4Y
sqGLBfVaj3sih4G43ftjHqD5+P67hZY1Ifb4YV1GJL9j+NdSieAziGwW+jk+WPqUouOPbOBCzJpK
4QlksShTz9bb7WCctimO/kSY2WnCO3mSJPxY69IVPmyuHv3+ZDkhNW7XGCLCsrO3KpwtmnYwTh+c
FeUZur7r06utkQQm7FA8Y0L4OEw7CUCIeg4lzMmll1YIlU9gB7IKwfsPfLYgl9u+01sllAMoAZIz
Vm9j4iDhgGaBYH3/exEZr8DhDXOgocnu/5yBj39456CSG8KXNvtKS7sA9GuQrT4xrb4C7IGy8Bmh
oI9qi2pu0USJG98uUZdIGmxrYyHUAThpQ/kwYzxWLcGjJG/1wSh8LV7NGCGLZUlhJZ8oJQdwff2j
LovgyCN5Y7W1O/Ntr+7UE4+9/IIiyuaSOYQj1Xfvu6Hf9avHrKLgmzIp0zfUSbzxDkUtdfNx3MoV
1NgI5VBV5Fc1cBw18hMv54PNKmjvZI4KInpcRCkr+X2BTSw/RLcVZ68NE7029CbGAXJ0McjpIwb8
jlNqlEigUyCr8no2LMrkP0/8pvqlliGDu0dylXHEPF3vnxhGRyG7qHu45rgGSzAIUuBspBA0KZ1Q
ao0vCbbQQHz4Jo7kJ+skHf/lrBys1IQ6dCkxQustyK44wh4zO7S0b+YnGt0ta9MBdjx73DZJft1B
3SRspb7kKFjq+GefP0NvGuMnWPH+vTRE02cRw5YJhT3wCW2uvvrTB8qgvcFSX7dZve6w/8NLke3B
CwJGSakYmfcPrt6Q7hLIgvSGJVP8c+H5MFx8hyL+DeNxwUU6fGdhh4yrrG56zFoTXEjBwbV1hEev
klhAiMBpk1DXYXZjEszKxi78LLDzXGoIo20Bpg5jA7XsYjZ4JUCDwQNWMN39+nLTtyJWUzSzNdP+
xgmkOOXNPxKFykc2u+akOhqNslX0AVPu1kjwq/wgDBPVzGxDBRCjnPgeJBMdLMqBl2ZwQopyPDDL
k1dp3BdyiuVXAJ6Xw+Z7LL4j92FmUfxnj2Z7GAdFcbGIo89lGTAjmZzzs/Bq7MuNp6gTALaKR0Er
VWBkcJb11KksGEo6ljYqzB8CQOvBQw6wx2LpfaPJLCnfNmOcrdY+fvaFfM1InSe5Py8jn0Vip01K
j6zPo0ohQa6oNbPZapjh0qZoIYnOrGNJ9ij0BKhHhIVEvLrspDQQcKn0onchc8PD3S3JS/dpY8Gb
0/0RuQuGseLrYYgFT5H89Iszg3otfgMNdQZTd3wo+OuvEmZbtDpdiMF+gYPZd5aVPnRHKF8optke
eIJ7MW3QFqNO3qUvl+2jQaQikA3axsjLlWAjVZb9TnK+Qckf0elQJWfe8NpLGlTvVBw886unc3+N
n8S+bEOs01JfgdIJ+LC41odcFRHZJ3dzFTwG4fHSVTQfnW0nB5ebVrmm1cvwWf93OmspwT8QakKT
urNQP3vlLpMPqhB+mwNxgpuvPxGUtWPZAigGpo/X9PoLfyUAJ2BPgMvfC2n99hBrokq7qbQ+RCU6
DOCe4LoEGtRL9/i4B6Ksok4Dw4xbPGvAz3zsIs4Ad+zmT6V04C23hEXMtj5Qntbuuud9ppuP966f
CpR1BhkXaBoxI+Gd6LtzNwc5AgurYwnkMiTOAmeY9drVGJiMmOCSOR3/sCPLq3SvvwMGUu6LAXZb
euSpjgpTP5IyrqKusAqdX/7MN/+PxgUvaCmt+Zxmc8tsSJJGTQ6hMTS3D4GA76VORqcaUlMPcqRM
yeMn0NWkBSCO2SrWPKUsl8p94Xct57MAF6oyn1ardIcVPMbJg95AaX3MB1LNZ/lLwTc46o7FG8Vo
FivgNTOO0qzjC0P5+/ujNn87Dk0K1CymWmtspQH72A8G/v+ACZqKKyVothE7MVl+7WH1fZTIFmKi
8OwKwjv4E9NrB3ogGLqeRKJR/Qg/Z93xkbt8zjCE9yzde0qftYaxxZ9Hh8zFkiEC4U8rF8PkWJjc
K5GzGPu7lapBtG8M/YzowCAqZLvAlEv2NbTpj+Rpsx0oxUrXEjJJjzrFNCMryGcROhiapvuMEPuq
TElA/pwKtXQFC9Hx7eJ0cQ7FV8HQUT/G11HUuaeM+4kMgH7qe7LAt9N1BkCLYtLN0pbuxsXUn+PX
eTSkNGUifikaORz7xDhx167agF2N2WeD0PACbl8VcP9D5WYt6hJMO3/RWf+hJiZ4Xe/R+Tuux6Gq
vTIJmtVWgBu1Upo7dH+Rz9r2HHPAuie9kZNuJqQj+aAEeMsd6V9s4qFXgAb6CevS6U1aTcDdqthV
CQYfZDm01bEO1VpVGQ9z5eNdQA7U+Zai9AQl80Fc9Da8A81wGIEz4BzxsqZmE5LmIR3Pf5OJoO0+
XBVCWQEbX0HqFloh5nFfa/M6m+nCocNW/9O6uQ2JcZhUF6YiKhNitimMLx/JFD6l9tFwxv6RS5eW
Y9ohlYJjc9UgOEydj4NbyMNA/1rMxiWoc3oJMyF9sJLCp2HN1juNl95aYnw32iARRuV6TEwMhkOa
mOqkCVHOS2kHoyVkwUOrVj3PcSivCROr004upprN4v6ki1D6nO/O7M7P9h/XJA8Dl3VfTzULMGXA
syzbUlrg5sWw3bYeyPsqrKeJ4YQt64i39ex7cuRic0nqNpZEhPgwPUtZVIDkuNvfd1N1JQlMP3fC
aHW2SeES/XlmCwJ+00AEWdnoCWrWcilqEsFVZF7weNMLWyx7F2bP2a6mhP5wGYa09Y14es/4YD05
YjmsSkqnXYBL0VBXs/pEBdtzbI65TcIiALONUtVbfAKGxp+vV1Hf+j4BIcGqtRGS2TrhsnHcZ4/i
1Xa8WcNI8K6d9+5ajnSA08mwL+azNUJxJawYAovGVA4pwV9xP/Og4/AFOgwdwLhxKjnG8/9EnKWv
VCYHTfgkdCXFYSFgyqrV8VVawBCCg0GHx2heTh1ZTGUtAI+a63zzb7kf2MolLFK1WKKCL4fzhrHf
uzQ2A+TtIOwEjch9af7gl1C/ihFjgUtd3XI4uOe+K4jwoLS9KFVbJbOsahjepGnrQktRhDttGZKN
qCV7WwmJigan3PF5I97fU2QSSc2jvdiVLsGcJUJhcZgFXB7K4ybPbtL3WJwCZumNQXDzleMBxG9j
A4g5k9Eb1V3TqNgd6RUNmfAkATiY4lmHHGV4b9MHbTUt3hgEv3o0WYdNPRmmTKhP9h+2yZBixcFA
zc4svyMPCOz9BBVlxlbmRfPVSilgnCQmiPIoMaUfexn7NKsCnPH75wvqSF1RC0DrG9X4paSL9tsE
Ik5vAO4apNO5oFbsXZk3Uh2+80lMNbgmGXPdl3pSUGG8pqPddGQxSn3F3WcyezPjIfNdvDN2neWP
cnb4M134NWeF5+XQDb7fzbirL0rlyhBXxtTYJEPx9AAqbdvE8OBRvTLdYM72sdg1eZ30B5Eegnz+
+W61FA38xS3WFVhxw5NuNgERGqyPTV8nNrdt2CYdXqePf475UypyPQvfDhaDHK2D/N4jjMyKj0hb
EFPGrh/Z9oNWz9QuDoeeVlMrgRnLQJqsqYf4LNENZ3Nnh/iIDaHKStvsJWLTXtnY+GbLrCzqlLyD
/xEiWAn95g/djICf0p8I3vM3TdJDFbXdvGtOX6mMxggiJk5XQOk2Ra3D8/x/tnjcpubf9u8+95Ur
oBJ5++7voNwf+0FD5HREJ2WguAFKsiIaftPmepKswdZCeAMEmWbfghX1pVzyiWIWFzNY8itSBuGs
4nDZc0p7aXuuyqjynnt1XdRmecfP3imTt0BJTxwAnEGTxWU7K+ax+h5xfnMY8s8+70AG88jXge8C
wqNBZzgYQj8/Cq73JQAAS/gGyZgJT4jM8SgikcsRFpp0TvHz3t59b0+al0eGODf9TTPcecGwGk1e
UWYG6K2vXZzh2FkTJfu9BwbCagrKqrqFD/+doZSvO4fSp7NrraCTOkPsk/fSmHjLq2ySxtCEOMrn
/9HDOdERXWqOcvCjDsh24HGUuHsuhaDMXxm8oQrvGmnQfqSEJ3Mn61Ndh3fiAKDiKXq8XuOITr9h
1SBtLfVQ5Cd7lOykmhFdCkMNjP+sbZwQA0X3kVvNMapBrH3F0qlsLK5DiqnBWjYQ83EFQRK2cqrp
VYGedSyu3Fm4xKaxV1DORh1kZoSSGiNipvxqOz5jzyZ797dG5PW9ZytXYUh8jh3BoeM/4XE0jRN4
MJ8uJ/e7b5aVxuG7gFCdc4WNaqQ1hlKGMC2QIQv/mFDBKYmXtp0Fyy6tYC/wYzdPb+4vKU6vyfui
j7rT/haUepYbkBM5RXWFc1GzynYDhdNEFuW0RpGWULHzdLgPK1LFnsFgKnT2VTFVr8RG2ONqNeb/
KCl2ab8da4jg0g+DpQoBIvy5z4xqd0bYQc06qQrynS4KS6EbJGztRWR3UoYR7sbjtHeKRQJ8biFY
GZzrXbRHN78eA20XxsJbjlt4l5i4YfM7krP5cCwVB9haRtMNbzFXe7yhzs+r5BAcnsRAzroS0ibY
R6tFjGGbzndjAI/5d/edAFIp43mNW6b/ABT8pB8dZDwbDqbMCWTDsq4HSVaph2iNkz4QXiuoorL2
8fF5y8akcYQ7OsZZucDMV5VLxBKtA0AAVrXU5e/JeA5ueN4XIyJJdZajcRdjDD9CDjSoyTtYzR4U
mNiEiRNxuaNtYxKLIfOhLG5MHv8tUKoDqcYNswKwwh4WbEHfIKudKiaY9NHErskX5d/B9frV34rJ
H8bnkA6U6L9cxbyKYwUVs2OxMUoVy/ZH9w68AefwcdDmInjFHVrTVzJ/Ev8L4Neul//rn5T++Mfj
aJw7df0Y43qpqbu8zOereqcEeCj1MA94PDMONMLHciGZfTBLsqTw+qvwCsLwVI29F0y2//spfiDH
HEqZoV6ajBbAbzZTaMBWK4LjaWUfP5VNeD1YfF3OCA8xetf253dp7zfCZSuWMgqCBMiuRih580Xn
1Zf1++vMMhwLLFgntxzDhV7RQb9h9zArKz3IPHQPbu6fuYbOh+wJdzuK4D/Aj9gYSjnq0qc+4B2e
LbFH3+KUQvDowh//K0fzYaOFxO7fBeu/Si7am19FWc4/UoL3yVIDv05DMYQwwZyp4vmrrjw4C5mH
pNJMnO5zxtKsC8IrukfEv4Tmgt+xqINPqSrXuCEYbTm7XL04NjVpfD335d/1KYCb11RKRxRWqLDg
+KNHAgXJ2flXRI0Ad4mPgXINn88JACCgsi1htyYYyl1/SuLmvleCC6kKR7DqMQkWU42BWK9cECJg
TSBUHIt+NY/SVmB0EARscLtd1equV3bgEtkh4Kr7ZUuB8kjE7gL2sS6L/MJoML9CWSTD9KunVhYR
on8KCXbdiLV9fP6CwY7XG4FPK1SSb2bxkxYjkL7o+xPfQz+goIqcSfWoPe0Mkstcf5Xv2wjwILSD
G78mL6HCmJWjXx8FALUwfkStACJ/cRbYhll+vlXWUtTbqxqxcUL16S3n7iKBSCBkpDvRjjLLJjlS
L/P5Lt1dvffr/ZJeI+DJmeLxyw+06KnjINcjYrZ0VQWvFMI1/pdDrLkEvip9IhVqXAJ03vUF1wPi
MnTwpOl20i24j1mLjb+6U6MOXc2T5tBu0hX1EPtWvElW0uZNU5zz13M4U9RnSFEZ24F/yGJmWcuE
0nSVwJaZqXuANr7K3C4MQEqYM3d9c4NefOsPfuHaHl3T76dk0hu6RsBXi0chFu2nWbAvWPxl4Sdy
4qImg/e39nLHrV++VrOh8ihliszWS8J8T2QLRAtIydHL3Bk8ZPiw87NCnSwDOr5BdMfTXGWCYggK
mzNfzw1NMjtstxU3O2wX4TvlP0tLRVgAeDXcE1MYjgjsagIhNM2LOgjmcqVItLQ7amAkExK3YFYY
rldKkr/W1K6Ba21E9J5qoW2RC8V4nbHL5bFTAWMiyEJVQb/dGgAJke/DFGmhk2mpu0V5cbrlN88m
vKjNJ36GdAxn+tz4WpiFujfoKBwmoZ0j+AChX0RzKTKbPVoP5RBMML4T3XQ/nWdu8aBmKAas2UnR
Q8cmEHN+XXyDnBVXPX10c17zj8NROK5yUE7JdJ2bzDQUkoLJGHks7xSEuDlc2ZZVbxJqm8M/AntW
pcbNPGDNNR/WMflkzsThE0rYy/cdEZh8R/hdyV2EPNysdPvFegW4FBl6gJVXs3t8/nEVRargC33G
dTJBjjisA45OVz3G7cB5F5+/QoKIiWVTpEk+oy56sTdY5E2iNnh0I5orA/wQjoGwOnU7vW4+sq6J
S9qWfCijeFRxvYovxkXWbtXbTGxJUzHrlOWUVDip6wGLXCIPibSIWxrdhbmdYuYGn4Zz3PYEM4Cb
vaZVOBQJmAT8vY6DAWSzFy8Vqxu81slVieOW+ncJW6kKkYZOxFLQoEmWBdBKNmh6xOiF3hpcgJ2r
MiD5BOdATuYLuM57GxcSQUIZhMMpiVE2kynXyOv8uQd4KSxTZInE4/R7v4zwBF8RPbrLSsBI6AgS
tcAeNVMuQH5rPrr/Pwnz7nBZLB7Jyfzmokn55rLWa+ecgRz2JVuD8BEiuH3pnFBJZdJsIvh7Ho2W
1p+Rzh+VqdPkp+tPbGwPdq1iX3cu/Vl15Nj7iP0DYBTm7p1cWnDvBpYOpU6U0ZXOszDWaiwEM54e
xRtLYRrKC5AxZ/cxSRmrHqQB847bvE1oBgDINlNp2i2c9Lw3YEnUAYfff5884q4dHWweHeJ/fUMH
XcG0pZIHE5iLIAiwqsZRdCzPB/NlxUbYkyrGaLrYS91xEperk9VnR3HoCR/G3cYfMimwz/QzWAzs
Jm4xnKrttPSGiiU4D6tiZ3SWZex6btvYtMPIvF0cAYhTT8KhhrtULze6T8WMnHsSnUCI976EPxwu
uyAEo4XvyI7QG8kVq10DkJDZ+fOLwqmMh+133YdEwG+wRN9t2PhFKlt/3mZy/WyNT/BGezcq/lGK
e0K9blrfDTCpBjYxt9b3UnyBDeA2Xe38w0W038KDoWIdOl5T8TXrmZMrS+QiIW1dFh/8bTYfkFVN
L9fBZ82FDnHzSuYkrp9Li8dw5WJdmQqx+A135/QYF3CKBtKHpQjZdyCYIcqfPtmzkGxs7UGX3h8b
v0oL6tYmbaCWY+WcOPPtQphpy2dlUx59K6tATy6pV8h3xHqxxFNSwmI/yLMbmGPlhyLXYgVeUOJ2
lc4BlJ5cR7QVyAQdgg4k69WF9QS975zakDmVi2/3KaJihqN31VBLDfDybUYhTmITeJXscuOwMSBe
HlPbW1521xBjERA7JJXrB4TJuHfqe5h4PNrvI+BReo+2nQRjQUVn+19lk/JzvoEvKlPOXzBuPY6s
fGhssPbpL+gmDfZh1JS7x5NwFhYqK7C/Hcaqa0YufpOAb3KmWTJrWgEi0+LgTiCvjrquReyb4Ggp
1X7gfkZ52q4EHzEcEEx4h92Q1QOPjZWyZBQZkLdtJ0InCKC1gYN/11KKXAd/y19/mW7QJcP0YMue
XwFuVgmYq57z5d57QBz97FfN0qqwzMnkUJ1hZuYthq8we/fnn1323qXKCg085aXM/dbjgYZxs/1F
fda+CFZRL+N7ym/PZSGDZxdSqtXhcclqYolvJQXBqQV+wcvpN0nQVAdAm866M/s6cHiwDLHPAyuf
HIQx4sC08LoEc4H+JSeZmFs/yv2ZuYd7y4ujwx6/cjHliGGY75Y93xajOk7x049nHNpHT7JM0xCO
Tk1IfGg0Yx0XLK3Lo8VBM1nHNKvkpMU1R9qeU6me+Gf8q9E4qjBvF4L+607xf8aMy1SnHogAdp5p
AO9/HWsSMt3Y1EsAMSKbXssGsbLohdmEv26PuP6DilVB56nY4lMBrUv4C4Hk2W/BPmH0xtzyp2S4
lcX5UYC6RNVmPSRkiFs50lR/Cf9QBSivqd2bNl4EEp/ubCDRjC/Ie/HQvDHK/sUu8QZLp4eNXAIw
aGpRqeSBT/gyq2ofRWm0Pv1zbLnhgET2rKjlbznQ2GML5C95/fxjToOWTFH9uZS3wc044vse3SSL
5uWc2DGUG0JuTGwcR+Lt1z+FaDELKmum0BOavApcQj/J9QZzqeOMa9cXqJ21eqe4oq7V44F8stzQ
/0UieF0tmkTYH/g4DXUxw+pkerIyM9ciTOz+0sJAcLp0GwmCEi+dkPzNeQjKeip9yNAmO1wG3dij
nBDUCOvcWM07yx5w5Doia0FXU8qz+hleZ0iJsc9hAqSHjBu817Snj77U0P82l2xioDnGldNlakH6
6aC8KaZelcaMpVK+GiUUyB+1wsNn4L5cE11sLJm2EgO5ReNWbAThJwJf65TEsHYriFFCuUaT/3lg
9e01LGaJ9KVBUqnqdtGIr94hmf7imvd4FERYMisEsPK8awINvGxSdu8v+r7vKIZAvRre7DB5J+4C
whalIsuHAbvetBB0BfkHOfRadabaKLh2AoNQq981y/AYQnYnw6LKYCll3lQpl9oMWMVbHQqhf4FV
OcJT5RYOo/8VGDq1SM0Zb44AZr1EUKCpYY7Wje6tnucTuBQFGX7s1AR1Ivo8aIv3yklsjPifd0UK
ejNf5MguZ3/i1pm08+9XWcsg2texDSapgwi5qrl8XbZCngazJQk1C4/+6sNorK+5ltUhA4kWsuJN
4dYIKuGNL/OyYhJ5VA94aV7PoKV//Y7taUfNSfrs54m6NUPd2r7aG8opaaEHX/NSn5iaBcYSFbmR
jMOUCygTUJDK1Rhz4Czc3xGTkH2F7fIIIoNA7k7PPdHsqwtYXbSPMJH7NML08EKdTXbO5GcOWBrm
Fn94ehaZp4r+sHTh5UWhjNTSytAGq2YxLsyNRBGhM0f6FUUTI0RgxaI3HLzvGSQgamlSrIDLLkUh
qNyUtAGEDtm8la2NTfk66kOC9uOEp6V0jMdIOEfowhcU5L1y9BwgZ1dvM0jLGz+3bAgi+fjz4wO7
78tekisA0WW15qZEPVHJ1HY2beJTM8VeC/RRzX211sQXgg89TCAeHs+3rE9p0jecgKICQ353LucN
qJvA/18XPSNg1dQNDUFcr+3kL5aOBWmdYbTdu9FC8EucVuwOhDJAhb5NoHYRH5dgm+BUkeVIu0QF
U+kfeX5o4oQIbidMub4O4dSV+zr2FNstRBUKQlk6H707HdQyP5VODJtM7CrNcsSpbn9DxnbiaUBA
PuLKgFDYSTc+H+IZV124sC/hVTPzO0Ujip7mR+Q0xhBwKYFYAnACqmJTcYCDC0P1nUpffHoSsgfE
1V+SoJxqFO4fW1YL1kSa7TQMQIbVPI51e6M5BdnhfKBWTdElDa+mysde4PBO7TTfk8Hz7eRSO+AR
Y9MB8PvZLJXkcP8sCP4pWRpugVcRdbJ+7sNqVB5qCXjEsr8SWlkT0NaSPw1L3tne836jjfLPf5Q6
C1Y6Hg5+/UpFRUl4AcFW0M8BWnU1Gz5yT12vZk7jWEHxiAK+sPfIhpDeidaJqIHHJo7xuTxHAgRn
rTQoooDMo5KWtf/LkvZk8xnD5l60BFX4+7yt7IoKtPeMXIeNFctP7WGIF368+HrO+5TdfOaLPvzL
NtNAwLi/asmFHevH4thADbthFsYYt2AdE0Gi7Lfn2JVYlvlJ06/Ou4zryrhjBDmYvduzP1OorJW/
aoMy8L04Op4GdvvwRaQtQpxN0qdeX1ZDMW0mAN1bCc5p+49Nl17kLERYJVjE/CJdef4/O91XK/AF
5lPJoGQhO/HBC7HK5NJjD5rF7qEe6wDDVqFpu1fWnjzPlgkEvq76h6au0gRnUJprWXSm5B2/dgOl
qMjcQdd48IP7jsJRw8sHx2QVw7uIRztpoVMmC1pRXkkwA1Q4JKZQCfS8P4vw//Ud+5gk1HbpcNZg
dniloeTV1qUtK1Q/n3y1xo/rl3Y0hPuf8X+kK1Bg21IBA8VoOU7uAZpCzgfZoG/aWpYWX1AtcQk/
/Yt+9BP8m8XioxOpzzAxjyV//awEb4N+MC5v8PDrWNy1VuR6LbWHavc9N572IvTVNaxk4P9EbgHP
FJRCRJ+WDSmqcBAU3CvjArbjSmmXPcvYt00YPzT6kaJ//F6AepvlDbqZb1U8OselP3qWR5EmSF2x
ioxganOFsdyAi+7B4kwq1LsUh2K6X+qnNi4DuZ/LPI3bbC77xTfsDXeFz7LbWWau+FWEJVM4pm1a
Zq3gELvlBbyGzwrnNK0G6c93+Tu/EH16oc66eL/cLHkGhHDYYUuP0G4Kmf3yrnvCOGu1Sk0UqFV8
1D5F8tIss8k4pOaqGJZBv/xU50SfawPuZER+s0/KeVjh0pmfesaqJ1jBQPDMj70rjNdg3qegwjpj
aLGa3c+E/XYTfYN3dIF4HgNllDsJy0jiApnqlZzHGm2sEEMN3AG0ihSfcvkQSRk6uecOCLGA9YVP
MOZH8eUvcvWKUzm2gC/5zjoVfn6UhSyY8nioKhyu4yoMt8MZHUlM7b6T44KHwwdnL+d5oYzev/J5
bsfK7MtG2ygKr//JGkSSCSSjlbPTu9JwNS589T3pUlyrleNSF34y4XhQ2JWtUGGNqdAvnQ3idZ1T
1oZWcNMYLbX5zNqDM3DdOFCx8K17DYuOddcE52WWYQ0WCHftDypUc6z0oZnC5lFMT9TkgL/uujDV
6FxB3+DIEQ3DXeJuIEcPVVHv3n1prTwkaKH6T266tHWUvdJ0gBiz+E7z5XahrmhnQGA+uoVRlVt/
RPFJR4R9Xrg2cGkKLfatYACencWw4DKvbL5ue86Hiyd6+aiPIPlS0SfsBcSlONOnft0o/tUZNu/H
AzNRL42TZcH2iAj3/Ri7Js3qmpjWPhxBLQVz3tByOKC9Ypk+bV4F8QzPBXaXmw4cfhG2+gkUzz0W
YkLExOZBHv3lXSgAQsq2lfQTpp0mHGVWl+ydwzYVpTNMSgpbnNGkftRdmgzf3dugQ8QnXymnc7NT
JgOHnP/Z2YwULBNLBqvwyOLXdwR/jQgsLENAJH6w6QjitIA8HoxNh/AWzpYHrCH4K+uqKqdpZNW2
PyNDN3WUu2Dyx3t/dtAkonIjHMT5dA4/2QY21PZAqyRKUipUSMEhYSKvuN5Bm2j3DO81A0t+xRpD
2DD2uYV7dCoinhM6FpHpizuK3BJmnHZna3xgzwlZTm2suFqHcSBFKiX0msvc3M5Z8pn9gE5tQcZq
5JoAFEd/2trs+hZeOabQ/apEfd/KhpfPm7FDSewlZhLmtG02fLB2U3g/WNbC1xzdmAWauJIjmc8E
OjzZhlb+mCzWPikfipyDvlv428+15JRH5QFIiFQw35Emryuyd++p2RpCW1oJff8MC4q0fJU5FUS2
KumIJOqdmXxswcWHEegFIMdVXpB9xNtEELSMgbIvp+7qDRvJ812S/MVEmcmxiiy+k3WD6QDJR8fe
yYGEqQvlBmfYjY+cmCe8vGJ/tB6iCNp/DMinOHM0VNTWt/3AwoXLWjwKS4Ao/MNJG5G+iQMTQ7pl
mMYko+X/823Zk6pOmByyuuBoNKNSklh66wy7UtQ3pvbbWP9riPRrc/rzVAL3wt2zTZQQqttT0H52
c12BwbnpEZ1kgnrWhC7+Rss/EA6KABID5vwjn76A3etTPfn2GPPiuOWVLp7YZ5WzSgqM+FFjawO2
9b+4ZVZwHSRn2aEgy9YmkW0Voq6utLx9SHepxtsV+wOFojrPUEPHvGLn6D7YC+8FTT9+f7H0skQj
mFQezeCXOemrGruVxX/CgheA0q4GtG9YQQGS3bJjyp3tYytPT/WSmLLxSL/qh9lN6eP8aJrYEy1i
+mXNKaJTdF/+8Hk+rDYL/3B32MNqCytBuVDLi61H8lFPSm+E4B9RoeB+VC1q2TynrEqSL3zENWdK
Te37lyFCjdcWTpbr27f30DeEhe3JdwPGxwaBZ0EE8X7VdzsloStXYvjM6fsPM6mwT5J+BEZriIK4
KOegMo6fyyz+lQm1VqlQJWxzTdUMSm0rsIfsMwZyI6tZsGhFqbpqAk74eXyysib9x/dl2eagT3tu
YYvs0wiZe9NuxqFL5lULicvma2QJXgJqg22OHXXAhquzDyJy34/AgUzKyoSHjF6I4FHGZlH2g2jS
jqRMDlfmgo2VZ1egrDVY7cY3VY75OstqqsU9AEslZZPzQGeG0SGX6coUVFKVhIR4oq/gmTnYGKUu
7nj3YbBXiMB9U7qRUoki3gEcvgopoo/B5yn6EuCtso19kLvhkW1lpkaiO/J2xBUDR8WEZnoBTiAB
deRjUl4ortf8eRXYNa3Yxh2KZiYX6CVijlnIcsUGSAI+e5EmlqEkfB+kmuge8dQDAA/uKzlDA0tN
m3MvHpJv0B1Ol8M4niy6w1f23lEzgvAZ+DX+NC0dYOzw8nyxjqX57XttAi4Jc3irbNPlH48tRjF8
AYoWw3l1x5rL2GMepPK5bRex07GF/64yp7uZ79e8ZOnEAysZQ9pAWSOvz6qL0b1vPjU2BA0M/gqf
hGAx4YntwF3ZPmz18qhVne9NYzO4drWNQEog/9Wuyt/VyOUbv6wMbWGimRJ374gx0JFTHsts/VjK
uP+u3g7bgy7s9MQCD1Oj24TSj//7MvBed9CCHgidzyU8QYcs5VOdgjXTUvyjYN80UyI7hzAiYOgE
y7YPVCEYEqaqmxdF0CQ/2pT0GPMW/3vLCx4jtMnpDFDJtGNy1ZYjMnXlS363F0oWPvji06quqKMo
rJRKiLyLPJeu99gqdOZEBHey49DP9UNtQX4zqIXlGNb4juNwHsY0QJkozGHDIXj3GTj9iDJnh0It
UVyJclHB2ijhi/jfmXDX8o2RscpKvlSH5dlnbX9rsv0LMgCAjQGYJUh86qG8S8jHiZU1IfM6A0HO
X/VpShXECXtm9Z/6HxQ79T8G2wkljI5W37JhSav9WZoh0nXONrRTbXoRv+VPEFLUEPXdPvKCayvV
INOOmzqPZfMHtsZfvxNjt0qQlr+6iULeRIBknOC1LsoPDvd45vCKc3002z6QtRgZ3yRnkoATuhGy
7eKLMnmEQUR1t+yz8uylPoPgrjiSRS/dtJVXQBUvNi6rx7yrpGr9VdYunl6xLy4It5TXPzsf5vNq
Kobh6PeB4EexclDiB3kSFQBRmzyFP0rkBQWueVsgglf6PSDLx13Y9XeraYsJz63hwBqW4dTWhkc9
rkuM99qMkZCKoamfLwWD0oJQ6YdXjO7kiD21nFxogWfonG+s5pdxKMoI4jR9Hx2g7ErJOL03acQ9
0SW2gQ19sjMv4Bl5LxLEiOSpqJ/VgT1VVBuJk9BVk3omazFNLEZd+FGoDHBfPZzuj3U5cbBPqx51
nyJ91V1JHyAzkpLmWnCbZ+keB63de4x56mNTfg5RB74eNfafqKj9Japp7c9Bk6yNrnbAE5Pn8hgT
iqHZVHsv0cLqfE7arZaDsWc/0kux1u7JfrxDHn7Rnuquufqss/JPWvTH0t7DmZ9QYMY39tb3R88J
dRG/ef9bJIrkx8KXK4rTe1A3B9V1aiHqZe77hLxMS4yreliBEY6ZQiHpwM8zTVsjqhirDIOi4bs/
/+XsHYx7Hsm0JsMkFgS/JOvt2t/nqifuv7POBMpyF+b1BN4hnfrUMuko2F05t2NrBnHfkZTs+nwg
+y+wA9e8n+mXZDGnb2hX1sSDunUUjQy/bhF8Z0HGtfSLEL8V2mtg3MvG/SaVLPb4DhoGE1+uG/6C
wDENQpbYSAz5xRP2W24H1W36OMdf3XvTa00dTlj6yrX1lUKHMyrSHwAM3VDxadTIxHVZ/i4ZHFsO
aBU93jVcmVCYNq09Y2l/eBW23WspN1bBA2PqSo1pHpaif4UNUWCtyrdIYfxTIRIoiuScyX05Not8
dyQQbeuCr72WS9TtfMkoA09HogARzdO0WUnWn5z3ztwr8ZFedt6JeNI6vhylISHDG7TmuvFRP8Ex
cxOHUsHZGWKRYFOMuUGhnwX4KaNSM2tiKvwOETVULBBwGhfvJB1+lBkYRHqfos9nN3vrceGJjkn4
+sVY2QsB9ZwUgvTGoh+vUtsDe2gctIGdxqiz7AhZIzKS+HRY2U5NStDz3+faDhw6HOMfrMAZ+/gb
Rs/Kw2eSLrlHQAIaJHNt8bYi3i0HDPBVbkKePCpYjPWv4IkNpKn7KHlD3L7/OI2+6a4YXpgJuRu7
+aZwapFoK5P7tyvZuT++y9MTzMph2iX45aEQLt7PHXGtFn/XbLgoD2mV1wM9QwtN9Rh7ueTD0048
xItFYpq2kxe1YJDhxRybekdGjWiOoSkakP8bRVg3st+hl6+hzLm2MfZ/1/V/Pig3jkwVLyfmDlGl
uyRBN3m7nNiCoGjPdCzHvloC5gX4wt1qxQNFXZVxS/RKfRUxXgcgz5s+5EEgKv8YxPCAqy5VMftj
JFqqQyKIylg2qpbLmyinFfeDhbZe0+xltFbsnsVFGZuCj1oxmqz23XWWf/dEXXaeLXLR1TdAGCgg
HnOz8kXW99bakz8/r0/Kckw3yQLNheUfE00Idc1BHjdEUPrxGaBpjfQ2K1yf2rPHeaXn/JRoMM9R
MlfdHmms3fOKBVH33RFYNcD69dPVJ4PHmiXBzgvipomJxPUKnymL9BxdRFpDFAegBc3M/Axqmqyy
7JPEbQvj67uZ7nG1QuzmSeX8gh5tEeg/8Eu1H+8PorE2hK/L5JaRpmZeAPFB6pCfaL918f54PkPP
Te96kRWIinZyc/xX3ibmkpjpLAq0foANSFrfBZog4SnqXL8TZsTq0NR8YhWI3KP+vVdob7jTzvRh
b/i6ouYcMw9C5FW826fK2LmQesrSCtr3D0XhfJwqkm2FKnWeD6oqU6gn+1wIr4JBjesxxNM34T5Z
D0azhfEo83gkSRsBgg4jTA8FB2GkNIWvVfSpWjJ4VRVkcFAeOik9VeQ0PiiIB+iUs6UXaickatDm
1sxLdTHbvcRmT2YwsIo84iwzG92bjgx0PjRo1bxJFY/Smokr1WJrlB8QaYQ/umNepNrD30OGoswN
u8kni0EFQGiN1yNCgWwccBUC64eo49PGD0fzLT7Oe1BysPMdDPQ9+D/o1rrF6LSZr+quz5GIweI2
8SrNJz1PbUPzUm0mkPFf6np28bgCwfUiMohwXqWjMMDRHBLOQ9S7u56gB1/HZkMt5Qh+IaMkAo6C
4w8+Y++uDbFW2WEn0l0ODcd1uWsr0n9UhXno3iMxlsDolwiMmTHaUL95OIczXxO52Mc+N0syxlKx
S4D+Zvs8hJyhmBM52S7VLug6dZklUuHrDsMkFJ3crpXpQ4Wok3uzHEaDSpnC31KL092oKtLy6BEx
i1f1+MCN/iTPy1GYHEPihENvAX79QMM9u/QQAyoS1yFy9CvPCA2+vxXk0gS39QpFBL9khIOgHeGN
1yvYLk2d8XRxzpXfr7kdcQxD5LJr8pu6l6XZtbu38Bj0E7ZWky6scx5zn/Zjax53n5cTxv5qEdmG
a5vhMkYKw8mWKU5TrKMPU6XCnGUZwuTbbAThUrP7pH5CuGkLf3NU0eexGiUxx1cRKJxShmkINaMA
p1ykqCZWR03Xi7/WZTTOM/p0JVc3nXKk1rbB2VCj66zJ9ROgRxPZ9rehW9AmB2M6RGaiAH1uAtnM
ltgiaLQTVUffDKU3iu+5Dgx7lvv1UF24bt1AjQzZu3ROdLmRPeOqJQnfx+7RTIx1MCWDjLYje5w5
BHh+k/S/bawwB6kr4jHCo4uDk5Vri5IgyVyUUzafZ4ctw6yHDRsRifgJFi/0oxVfTjSnIAZTfhDw
u8JWy1/+R0dTiHcAOECGX+UfkCDUh7ebChzASjBHxHgwiAi7Y5kSEJAELK4qzGd4ESELEcONy5ub
U2gHOh7wKnjEvsKbO5qe5vsilOh4o5ijpTeRkd9oA2x8ZuA7NfkAdlDm7ch1BbJ9+kEksrUzqRWI
Vi3PDIeLJh0xFIF4I2KPShrM2cny84wBDu8H8hyqKU+Dsk2RRRrbvg7u/FKz9eM3TwWhrdHuWVEx
e29AhkoSBnjIy+51CWZ3JuRykdU/PTwvnynGUhdh9xEkVjUX2SAAqkDp1O2QfTv9gk7jlKc4Pyrc
QokvpQa2RzCzIldawiZGtfaEQRPk1+Wr6v8tRtvMB0WbpT81gFsbblyyFpYvnaF2YGdQSBeCXSI8
1RaMGkWVAiWSpexHYJhL8yxIwv+dxmggKKmLQ4srtIv6ix0f9Dqv6T1jouLWSSC5A3rViagGzgpQ
D+zuwtnZq1IwnJVbVums/K3PJyDvaRWpLM8fKz6EnedQFSdAyxPb4egxjmaOAgELY72jPFQJVCnM
h3C7KVpwHrDuZLefd5pLCuP3wDHzhNhfsBX1+05lnreZ1h4z5QUe9D1yAP6rXdLFYmYbqcWsH7zw
ZXKYrR4bf6Hk+PlysxnEXKph9unrooxuDYCtyDAWiQjtAIfj0z0vhoHQeHj4LNB05QahtCAXN/0s
fctMFmplUy06iCkL0oWlVfS705AUwbJeC6rSSMxrb2NWGoTFo3a774laUQCyBnyHoLx/mfAGCKBP
OjKxzuMgiffhTiBGUUhUKgFAg4WjrUwG5rh+KA8vQtOmC8MbDRHcCq53GY9ZzhpzL9wYocIxRryt
/Jq6/8vZvV3JjHj5XQmJwDmxqefVa3xeyhESB/RSzGqAWKaYuGxyZQa0PpiMQcgR33X2ZLcFDCfE
7qyYmYrbfbqWCfKcYelNYMBwetr+d5sIEFHsgVt8qvG9kFDUw2Bakb2hfz5YsBhh4adAr+OBvyKy
BDIy21ilg+6GWufz5mqJij/RVU3W2iAmPBEXX6XhbZ8jEfbyCu0hU3CrxQT3QfYCTT/BR955e5lY
nlx0YnqRZswqMhaTqQaezPF6PWpnfpvRIsbZj0P7o9pUzBmLjUOJevPgCUqbF1NekopPse3IeKHG
0o7bj1+W1nl7uklRu/RFwOhMqkWBPGkrixMkWAClKV7U8i3ZI12T9GsPwrJGlTotRFy9O9us75h/
p8JKnbA3BoZVD0VhjmILDZxRR1dTQ50tz5w+6UWzN9MCtTjPL2qPOfBrH5O7X72e3a2rqXix/3/s
1WSdbZ3+/s3f0XG/uQ8lmqvmQ3QRSHZg+S4YgCQEvrD/Mhpg8iM4OW0315NBBCX5fYxQaNYG9IKX
KnaQbNhLVPnBYE2fSH+0ZtK4l4iK3RnICq7ZIXm1SzY+kYtGyqrmuRhz9JYTMmkXk8tFeMvjzLYo
uedTv72XDWnsvxsw8CLHaVcRdPW79qfuo0KBPG+XXtA1nBhXKezCAqRwMNVyLGxV+CXUGqjJ6+fz
HNmnXUxFiDB2hJBv4WmzuzfNzHoAboFo20nqmRWHqGxjewfGnI03nPsTrCseYWHYEb+gr+Nn/fcl
kmvgCkeDKns2gSGf64iNcN6N2glS17pqT1HiebkuBMRLvnHQcSjcy4oVo9eVqRJ17Whf46rxTehb
bnn/CmqmKVnEE1Ea+jRfhcr5g60f/M8qmOhZrkSieIx2ZwYfuyLLMPGn8BZ7JEU9SDglldjNScCt
QccU6fx/xVCyG7PZ0cOO0ZsxH9N1ovyGolMm1LzTAuG1+/6o7dbukEcIFshh2BF3rqZ79cZBFQua
QzNFfC1Q808yUEDAGcCcyag/jH+VAuoMcnaeMPxljoFi+9jJvICxkWNBDk+mkQ28ORq9gy6wZnW2
gCiWnA7vVnv56MIqBOwYA1oNBIptTlw4sB8n2/wc547BQB3jgpiSF1+voe+SgN/KumKGwIfifLx1
V54hZRUo81jNVzn1R1+4XEJioquVb9QhWNdyA8ttN3N8W7bu1ND03jQbQrB5zwO2uIk7OjuyMxLr
ewZG0IEAgPteRe57OEDcGaCBGOHK7rLy4PhVOI2I2eZiDLGnfrE6DaNZFxE8iBNsrZIpil5Vg+2K
n457nJ0Fe36Y+V9PDc151/wYgtVclgiHDKAw2feIGAMGfWmpev4do/Sj4Ehb3Q5yo9BaaMoYpRuv
qYEhtU3gHzddDbxK4zK9pFKSzFnULstXTSqbN2ANpmjLutkNAtjb/fEAR9yFv2ntjiAqeetmTA0b
xhXfGofSvdIda1+u/OUaTEsmKBwLhoqa+owPQTDuSRcspriaQpdQsHJwqR3/dKxUYoshearTLmFA
7sFJeT43wyfiBBPhKIGMPvTOqsBuQ0eWJD0dCeW82eBDxUKwCiDIKCzMti5EJeEUsjf19Phgkccd
RmJS+sXPXq3YxGF4sMjqWDhiWo7KUHuWUm6mThnAkvhMxKWeDqlA/t3R51O23gS3FfcSDNNJlUEQ
QJYSPLuQI9RtlDBnGUNplUHeFqXhRFkCxfIEEiL/gUlEamS18/DuQbUlyK/qjOtSWZykv0iwI1pS
L5f0H6rkrS0TP3WYa5WEl6LGrgoDU04GJu5CotB9g2lUvden78zdZIKH28WLZtHWXy+DRXrP0rd5
jw1vV/j9j4ZvvTuBpzdUhoBobbBtNiO43S8uFK5g9VQf2kzsBDFOvYtfB9Lc/S6WYM9ph51tATJG
vS2//TX4e8jRdB5sl81EtrdtT6hdnHbokdNGtN0kOx7WU2JXyZYM0p66luHm1ReRcA1oZaVXbKXb
TTkDWskmCwS7idXsXL8oM7nAvdGujFIY1CcYZVv72Pqo9gm/PFQR89zehGoVQufUVpsMgwmmkX5X
28P89YbEa+UXNTP3XyJi4XpnSOQflvVw3EnxuJUCsAF+B8QlzfBZu4ajomKpXk8TdeBXYqdvUm0L
3SaZ7nuNrdM5ZSvbrR+Mzo0SFgmgT42NwC2oXMyy3tIn/r4Ii/NwtFDCGW1P5rVk+giskMootAbp
f1IMzn98GNZVrZF2mDyCskWt1gXmtSZYfhfWfiA+NYEfdypMFinMy40XtguMqicno6ixw0m5pWv+
qnRzj3luBBfy3bn1b0fVm1/wEV+lf4LY3oX8qua6/QqOF6o9d6Fvpp6bsj0VF+gPwyBJBo7a0kuC
KMVm0iCQkCO/4XLP+89fDJ1RuawHgtMDbg8sm1AZhWRN3GYq1zCHKmV8BNQPdXCJvwLzsNg2OeKa
lENyvvUyFKvkGtNwVUaTGwQv5HtaV7BT9TSJCyifXSQXS38HxyO6dymRjCwFzgchAI28871Lab6Z
CJ3fbCgKsSjrS1yRA+vibWlVjp9svv4QG3WrpM/8vYFGBJYsGQkYgmbfxL4eGSraLXHL2Ukkd7G+
+I3369/itycHYA0ynMBlUJz5iKyg0Nb0LS7mr8L2VqT1xAlIfqOeyMBDSG81BiixSrys/SQtpfk7
mW+b3pfPUTlilnf0pTG4RYHFoGPV4SUOy68LlI5CgzNdExdw1kgV63txtw1/y5SBK/1DFDTD+hT4
vWqxR43Cr2121a/sWhlqsXGxOUSFWxPYrQoup7MjbbEEJk9hRx0rNLvT4C11LcBGYYGK33MRVLCV
TMib6ZtmwVCMxH/gANk8b6uYEKY/hs3nE55CeIG5+sHjfY7sZKAGNG03G8NM+hdPYRRNm4zdLd6P
+e/c18hwLLp4BQOOA7yfAf4FvZVj228+Gl4zDCDXd3+dtmBTYFdCUtggN0TPhgzWTIIFjHcBU36M
Mwz5dT4dC9z5iabev3L/Rpo9AEqZFlrXLjBOiIywjGaZtQqfpEBC+/FLtDhbva0iP4bZOVLtvTmE
C9vnOaMHEVRzTRtyz6ANFrJnqEXHjdqsz1Z7Nx6c4JoWiHf6WxkuM68RCJRJ9TYPrShsaZ1QjzUE
uV+1Rl1VIZEl82N8AdXawopVPcRzsH41HYJf53cT7XSfZrr2fl1OHVqPKKPmwtDXA0DIIRk8Venk
TtKVf0mK6lbdS0ZxNMW3nXnInKl5C9Rr45u/EI6W8PfiNb1UHa6M8D4dg63OdD4LFjW91K2PnN9S
mh8WGhh2SnwX2h1cpkdc2Sua2HucgdcBLJDMTVDazdaz5Bi6DWYqNiQJZEowMBjdHpL32cA/pPvS
MTO1k/2ER9GOtvrpDsNLlHgJYxi0wnVjJYiLu6FMeoopuSGTwZBKyU8yCJxI4Y8D+me6txNSkZOv
bFi6LMp1kaBWg824h5hMU/2C6TFakLuAqTkCSnWc1IUy4LEMDf3RUcVOnoyJsBq0YufGPSSskVRB
8CeWkiFRqlcsvyYLX5YzFgkZaCbFpyRlmeTqZwCNRl8h64TduPXeB/cyF10vBmbzcdeyonIDKRYF
zt/U9c8yBdhM63GeHmrPp5/O8cba7Y33kUQ/W+D/6LE1w6wak3i1eC8MdMvkQFcF3eMu9GfyjgAD
7lfrpRjiP2gsUGcGTkL2zlQQe1jeqoIMyMysvgsTBPGCRCVUsltlLT3rsXj8CA0u97j5yThKytDo
+w0QfGELSjhGvb7I3BTFZ0f2tYWHQPm+MnNJDwUZ37dzFMXcP5sXWVsI4E56XOcwBi18BFPU1P6u
yiKMYo1QMCkjVg7kBpMJyoC6baL1r/DQo5RLd59qpRVxSXq4FiN9nnifeAGZTGvmsxwBEFCayOVG
V6BklhAGO2o4QF5bJgUGvz15xgRZPp++zkAz7HXrGGKeCCA686NdjdJ4xb28r+vqa0qqEuhTtaTu
T1Jn5l3uMc82achd/3+4JIhy0RdyNgxKeIRelaVHOQrtdZRyLfzYLp8BP88OLYHmKlMS9+95MgLp
ZRwMbGIxipKKJDlVxBVj0nqTWHgcwKoCBfVgbLYftKTc9BYnH7CHv2l+pCb9r9tLKynjVLYfEWS6
pEI2TBCgaRXMhaEmeWCo2MSjjvwdIFyzq5Z5C5TNnrzCUmfn9u9NuDQp2uTQ7LzyNU/9rCE6VTvE
8WSBqBqMCaG8mNBtB4Yew7JLlGP6sCOz0906Wz9LzdRH0o1BsVqkuwhYOWKHcp6A0zT3wua0XEUg
prdPCmInYt0gEUSfkHkTbogfVAnABEKJpapYXumPMgP5KcnTuEwz2p56dEocJhYFMk+u4LpKVd7B
orFvJPh4bH09EjPVzTv0FG5Aeyrh4l2ZuFeYPY3ZQ+q2QEiDRIi2FrrGuEXrivEev21lSXqDRnNI
uLGy7ewYcb1IM9kSUYy+6C61UfU6RzpxInupepKJzVhN2IqZAwpOJI93+zhmy24+rdsU7J4Mlj0n
tKr0X30luJUJj2FnghBclcu3SP6NnhMl9oqzsP9ITuJ/RFSH+jnY1sWidt/qLQqmDts8gp8NCrwJ
zu/3vUcragrE9WA1RtoMiUJO7xhY8dOmy4kdp1SyBFVgNmCRMu7L8cqhiJAzw8bUMj1vKSJWMD/q
2MX9CyNb8fKL5Z0WTef3eyhnwN9Vnl0FdYH5P3ADn8p1/deSWuy73KZR3Br3j4JrumjvrzW9ZqSr
hP1I5t0pAIuJwPQYlRUwjYMaTb4KVWCoVzNITd+8rotuxO9eelZzqCctsWx/seLVaDB/tY5LroXy
Kyvmgaeh8aYwLtC0tCueWso8/uZnNgPkUpwWHc5Etq80ufSnVE+o2OqC8ER2ALZ+mfh/dWvTDBT4
r079kH0gOd67rM6+NsIwF7tOlQoVRa2V45BIekSU0GfwC5rXdhNQmzNv1R5wTb1I66Q5VJyOC0/V
P+Cjdyz9MXUfN0FBNVoaxSwhnbBV3N/5uDo/D427bdXABmdTFuzWzYB2uzdDHAU9jxZsRja51pL+
/TIYrfQWrTiPDxurMW+v99LRkIgtMDPQU1kCq34WSgS2fID+IT13RJtexqY7HAinQnxIerLMT0Xt
p0JHd2A/pB2dXgI4MXHiBWx5M3J0ZkWHbWZBZQEWzgCkDWdISwM5td/amRaGO2R2DUu+54i3n1t9
g55qm/dW9v1bY55MPiF8+/aG0kxr2H9uAV2F6iUhB0u2co4ycbStt7MwrQUQwGsUl+jfIPafRfbR
/YO/LgavNCDWNEq/soBgLUS4mQeEOizaWS6prDBINZIzI0TTq8qLDuBCZ1ipa06i5vHGQhsPD6Vs
3c8X0qV9K9mlYp3cnSPhHmD6mv+5yR+3d1GTAYtXjZ6YmXzMkXefeSeuQE9RtJFg4vg9MqAwIOLn
GX/gmGVaWtJ2H/qeJ86wEu4ZD7KlZcA4zR6BtRM5jYyUFDeZHVn/OAIj+7IeQaokrvE8CIu3i4f3
AUfXyEpD+4Aoe6ulz3xR+6ZHywfxTJbyRRpKPH0caZeuv/lM3XyRkZFab+9YZVlpy/okzEhQS0v5
ShM7J7Q9WZafLzBU4kifGRaN9U/KP3KetiQFHTgEgAzyEtL1scILqa8Uj4F0E9t1fycnfg2bbc0+
h1dSC65db8aVuyp3xIm6FJ4licxYhddkywXMHBY03ukThrBMRUggx2qvibCxCXZaT4TFP1boXKPD
2EjfLSEyHOScolkeUx57u4QjAidtW5OnbSDX7J2o8cDbzIs3fEdc891/Arjkhxek3XGuv2PTHX5z
JirQAz67HMZ6lFeipEm46DK9teKAzAWuhjzsHQfN/hiqh7w7hN6zkYNa7IwQxX8MseUrf105Iu8A
ZAneN0LF6AnXTJy6+oE5tNj+9IzHHRsXOLieWSc1TDB91WVKD/vnywstDIpPZOG0lfTXC+oJzL/M
1+0EgaTq/DRgakZLkVC+DAujWmx5Itb+gZJD9cyYo/TKwLU0ojWAXtWDySHr+Nza/Ei47rbHv58V
xMU+/LS8I6JM0ETxs6eyuBtCN5SStMIXas0twfPvp6vyIblcCPAL9RhL0c//l0sqYoTGCu0LJQL2
GIjYTNz1GeAj07X+YU2TwaeWQHlfkTGcifKI/rCvt6Tz4t88N1dOmU4rfazX/6F54UxOKO1/NX5k
rMOfnHpqgUofa2SZrYrjc1Px6g2w02qHUMUQSQCY2kQ/Y1c1tQPB7qJQQ7zaq+H5/CZUgdzvW1oy
ICIqi4JPuQmgguFDXGQEym443pLOZAFJzku32OJSCgnxQO3zrnyNefaYhuqx7QhE4fbyVc3VoVct
nDF/4I+IjdFkCP7svlWoneFQD01ypRnKYZOwdNgqYUqi81xw+XBWmL9ImUfPUeVD/5TFc50dkAsT
/fWdtv7Q4XBXqvutBoLqt9EO7yF8ZJypL3/sPneErarfzRjhP/egLyrTwqfGWz4UZ5h3kSSD5sEL
HPyQlJ+EWCSNBDKfuA0hr92sh4HMLaqqSh1MYmCdR+b3vJu/JmbhfZNxSxkB12iN54X8Bvb0/Kqb
fIasrDlw4jOiL5ceo5ZFGe7O6OnLU/S5Zv1YmTDKdL1B2hvvGezGhdzb/Rlf5Cszu60Fibqjh7O2
8vUNBTJcXkwM8n955TECSs3mmsAtdNQCWdHFxM//+ew+I2dbhVSOdZ3s5TECeokpgTf8k66fh9X2
KjhHFwWAKuV4EW8QaN3N/aIvtnTv5u6F5SPucBgVjZViMVGYKGmn3uwJaoSOv/4Y7BAmkhBlh651
JtO7RTOKuYcBYd0PWatBBswkuMskBg/s7Z7fkqF0R5boi7dnvD+nU9zurHykeZE/azvQnj5wBI8M
mfOkBPlm1qebkL1Az3IwmfXmzA/2mJgj6g/ThIVpzspX8HEH2FeW4PWbLe2aQIXYlX/Ubfe//df+
IagNEwE5RG47ovZZafe4wQMFMxD5TJXEGtFayfx5t9h8c7JwrXmG6hSpGunWbw1AcFNntZoIoOHa
bTMlkEamuxOjhNf3OG6aVuAh+CNjhQUq/9dEjTtbXzdGngEGZl9seUOlKKHQr2l0IJ3QMCdublaS
NKmM2nppvoOrE4/SkA6UNOSEkj7C2bSwl5q5JK1dZn42jmKPFO2JECKBGnCWoNN6ocX/Tv8VDPeZ
3g2C10GzxOKywZQS/YyDu/2qDMxyROpprc/KjPzqlUCJnimGDIlpc1gh+wnd2EMRtoXNdg+aRMTW
9dq3n7SzXMx5IJ+zfFIc+O9w426xxxHatKgZwjXeqj7KJm7/UA/eEKSfHw2pNrY+DEsHzdqpV27N
3Gz4fyHvatLK0iq6etiDWqwEkySKId/2Rwtzn/thYNgAcKz2MeeEBJ/87SwKp4v1bp5NJdCsTktn
VbuO4k/j0zMbNL0qtBFd9cpMj4sqmh5BYU77dTRa790aiTvwD6jsAlhBNcDfkCyB5EYNrpQgaNDl
6XFr6ktflmi5GZXckMG+opp18JLdk7lNoYL4cTUfAI0wMJD8HICYcxqfG5PmBV/yVj7Vhyad3wmU
zLO0Jl/O6Ia3lgplMMb0veqTmdq2+TING0YfnfPa7iqjMeVQ88gNFIUQLFrOKZhuhZ7Ex8mbfSUy
ldhfmfVQvZ/wHB5WbQfCnEMoxaY9v4/G8rXO+BSMhtt79d8nlwVAnW5a1WxNnVOtG1ntIC39ivX3
RbF8cDhep5vPg2IooiGiwRpkeGhpp833MyODAeVvmu/8G06xxZZYLWmHbGxk7mTJsY1j/I6rGhW1
G0mJBk1Fnyq9g9M4QDSLoFOulFpwaT2iTLcnaT2SYjc8VhwRnYgE0p0MQQFxvI9hG9d6p9GiNrDI
H0EnKCh6hEcDit3k3WHYR2OxUKmsAjq/eUKL5lU40wGnya+I8EF4R1OOVl0l5lWRr39wuGkEH199
sRod/bjOL0tP5wmw52TBdLeU0NLPY8n8DIj2yuMeRpaoZnHxyukQCmSdRVPCt95T9FMBrAa98x8p
KxnQH7QFHeZbVXU0KjHGKEzE142bA67kEZM1nBSgkaeVoGjaxSos4F8GBrZhfy29etQ8TGRsuudJ
Mzy0t+bBUNeF+tzlZIekNbwuqQPnx+Of1hQB72tVr+oFCMusBdKKbgNnT0d1pHT0xp9ivmehFMSd
8/wjljcsIUML8R5SL3tu/nFSYLf7m3bGcKmTR34hIpCZlb3t9AJsOJvPSvPnJRAJhoYa215w8MIf
8wDTNAbYUVMcyaxVGwKmx1TuBbO7ruVYseeww5PcjqiOCgmDAfCj9Jd2eVtY8AUAsb6eLHJTAB1b
pgp+8RcXhjcqYpVvhF9XoqphVWEXVEx82BzzeVrprjQ4dT4ImxPBV55oczA18xbsOgSAbU9/1/cV
jNGpCOfdaTufb0dQXfggam2SDTPEizXaYBEP0Q7OEkqB6K5rtInEZPRrOekZyBwR/BxtUCWUyiWE
20xKRqTrtRZ5SMIsJTMGEmI6Avq6p85Xjd9DqXrTsq4p7Y/ZGdp+Kv32lrSOKWbW2K9/UI+U8uZi
c+FPGxREdBgV5WKf1Djvwwu7K4VL8VJ0v15aEyepFM0VNP2N7mmhXS3u4RhNJRCxps3Udop9jNu5
M4fvT00UAokETMN7TLL2n1Kt1tJcI24WTYVUDuWDHASygxiMLfgim0wjcG/aFyf0e+hPG34/4tq3
jEEqTuOOl9JnREDTqjPuvP4ozkKiv7WYCVGCd+XPbmnUe8528drhgNx/1Pd35DT9E6FugPEqpvPd
3uo07t6X3Z0vSYXYgMeYslr3yRPW1drnuooOgcZqqEbsJzKa0rnJ3RA2przwppqvmioSL0ktL2wC
nOqF1MfoXivARdLplIadh4kjfGHZ+7o/+1Qjz3BSKd5jLvAoUjcvPxcrvEnm+omokUcZsswQT7qg
jWpxL9FvZXpxEUNB/+iY5k0K1vHwJz9vSlYiALc0eyIcdpRCgSUHpvnRhyuhJ95S5oQaGAor7eOS
kCoKgEYFJ79j9H8XMR66YmVyZcSSm/uhbOtIBXGugLkN+M0g3juMwpboV2B/aQynsNm200WfLO09
WfdXVGjdrtlOd8A5TN6p7oxOBOy0HX8Faw5zoETz3WkWpZMlBY/21/9k1N/Bu7Vpas4sK5vzSr23
anuE+JUif/891fjLBMn7vVW5mtsMNS6wir6EUdeYAVTXxtb2X6mccEKkK9ewcEv/ytSYqUKQXVvC
9OS8DYGUMksEwf/bPw2sgdkVfaewGXvpleAlFwu0xswOmTDYfWt13F37cUi0uszr9j+IeCXa5qEn
2c0lbesIyKM6Rk0UciFEPUQd6xARUo9A1Grv5JmnAFIr91XEUkftHgHbPvAzR9KxllRaqHtutMjU
zWOHjxgdoSsHPrEpCOKA9HWjNsXhv/STA+/DbbN5ECZv/OKH+ORWeYEv668NvWL+lmxNM9sbOyZj
2h+xY2iZKdHzeAeTmnDAjOXxiD9GvOPHQs6zpLrCY087ci3A97JDidFkgfa+oF8sOlW7PS55f8gd
IsgmPikECm4wKpvRiLDlf6/nAfy8vIX3CQXpFNi3d9LVglQZ6qfzyDrSkei06eF8o6ZTVmo8+6Md
MCntUHGJKjYk4/Z1Y8wAlgUcMvcZGsFsuX0/fvuTh1y4G73Kx07vc8fHR15s4GUWFSkiY3APfnOm
6CPBKJXP3OnQcvCxb9MFo7c6ffof8bSvqr4tBYrHYScMlt/4V1UohoY9eW/iJ6Wnz0L5KfTzSoP8
qhCCC97gc1+WSDBOHHPZCDZFIcqeQ6tNRuoOIYnwbXNxmj3NZyZa4FVmmT8EOcF13Ih4c8jtR2Sd
qNaAwiosIngv6zyi0un/pIAEr/t3ENcyMBTsF/jFGgFaHrPFzCfE3g2SJHPKlbkZ5InMQNup61Tg
zsVtQ5LY3QdcKwejY3juRa9TKGHl085ydcVQml1Sj0C4abG+6rK0WPxZDKnAzIK/DM3yCBGtJVXA
1BDU62K0h4t3xeIH2QOBE8QcW6pyv3S1Wlg07DSl+tQeS2Dk7UPffFpJUFkr7ZOHaBeoAgdDqGqz
1W2JIor6DQqwGK6/IMNn9Kcq/Vf+MyF109kbIhUKVWqG2D9yGEc7LIINwmczOmux4EYl50+LOm/e
8P6y5CNH+BImHxVCEpjG6Ta33ZxOnyd9JJUq37otuPS15k6uLGXm74IgtHfAo+IJy/h3yuYXupFJ
SwZR98aQ3jK1RCna/QHEVb3bAuo2X2XgHD4nMyn2aKjbk2lSCe/KdHm7GrLZxYKSbVqhl9dUHM+M
m3pF+2toBFsY4mnl4ERAkAAk151A+WIorC1k9pcR20kQks4ga7JGrxUPZ+vqnsuEAoV7sDqoMmNQ
ix0ue/aXgQVJYtswAl+9E572TfAmk7JyTMx3v5zC2xcD9wfAKW2ZIp9CJVHymAkMaxPDI0StmMM8
S/7q/41Devkr0NIuYji8K/e1ZxInN1/VDPiLwnOB+yEaLQ8luby3nCYoNMwSn7uOMD3U6jQ2lWmL
Nq/gFxru37Mir6p2KPZtU5m/9W0qQh63Jfz68snlahOljw82Do8XGSVUjKW+qinJ1HmFNWHIhoTb
VyH+feJmJ1WkKbo2K+qAD7n1LgKxHRzbC7MU2j9z8EjI5BtyKyYBCV3LKSqJapbSCPoAz5M4SVbi
bm97Cog9UhN1MW25imIu6+JWCRdVuaiPApq3pLQ5S//+oKdZ2fPFVQIZJz3bGsyFmY+Dc3evvEOx
k0oic1aHpsnEYyuzOLxn82IQFKtj7c8DftvVumLotApgPM4duUqEFYo4iKruIFv+cXXFWT4uGTlo
aaplzZnbfTfJ3VZN2VeZRmAActC0yEzK5hKocCiE2tOp0FLMirr+ZJTILz1ewVzUR0jClfSV4FNF
QtdXGKYm/ZoR6WL3F7m1ZAyP0YmXEAVt1sgMRLTGlphof2QoafP88hUPSoyLYCqm615lldtlkoLJ
/W4jZY6+VQsNAB4Fx8/Kxb+BRahjryPmYH7FvR8xmkp7+dbC3H9mpQ9rsYjihueBZD2QaNphZZt6
rpiVAV6x2x1cRoT5XgYpYVT2RiomGByHwxJ2Ld5XFBb75oZ1zUNXqt5b4BmeYTdmCswNa3sHs4Jf
vXwIE0sWZ6nAUmupwpGtdHvEAIEzkwfN3eAmPviYZOpae5l8dZRsnSjR8djBG6OmcY8B5QN2VYWO
AODc8pbvAmGfhpzX0W19k8yzAPwpLvurGQXiTmQpenXlqD8FR+KXtOsUZmdyS7OBlReokNyBARvA
jEd/5q4DggdUSxHsXJRe96N71YgyakYtyTVsGEB5lQBVdyXQeQPi9qMXlAEMC6xqMPp4W7XrCYfc
3OQUWrQNj01SoV7depTb6Ro6AzwKmSskZQci3XAFHS1l35fmO/t+NampKgYjF8lK7q6UxelSwAV9
a1bTgGrN4USm/ASwSPq0IfYe0qV0xatO65/x5SLxhlELwE8U8xM/LIH8nT4raGEnQDfZ3qpuyHF4
aJRfEAukAnNhe7PS9R+C/wpD9yRIvxAGeEcaVzEI63cTPOY71gMK/04BeQkwj5s6zmvR/huiYTRK
lTEixJX1GawV8NqvzcMO60LTZzG+AMSVR+LXnym+7OKi11o59epya6ATSz+DHRnjlRKf2i9zsSUk
ncju1z4gwpOmpxAeTskWU8dxX5kGLH4p6mBfMbRJb5AYEFGN88LZ8cbNXUxPO/9FpTjwmD4NK9Pk
LRONQEAHpPCAJO5vBNsv5EHR2f6DIpHVuPwz74aMGcOSwS1U0jmYrvar25nbTXKxspp1xPbFUjdM
wpzbDjC22r2KkbYyf+j1yDZ/vXe/+853Rh8HHlgQQrYVbpB2y067XrQlV5gQ25jyxL1WJnWweNPg
0m9CChDk6hX1BetsAoRkL/PXxkY7lxyjGjC36S2v5qubKxpJGsvP+7xqeXDFL2g5NerwetEGrISs
/sLzClYNyRRfLRfdHV1LAje6Y/izI5QYNdTV7rxRrlPIf0R2o16RSlQ35Ji7xGy4o+R7bGjId2zL
o6dJoCktfUTV7U5e650RKXaUAO3gDy/AMWMVWPnZzI3bAiJqxl/xCUUL9OTBfL1J8PPF1LsHnTPg
zy4KA/29gv0KCHbaJRidf41B0Ab+TluWF+BBR9C17E7BHR0h1evy+cN6H1WQCbumd9B8TDp2dkMg
o26QTc+48Y6utD/6nj0zhRIlqId1TDUY1A33YDAOZeROUDSzXWGWC99Yc1kVu312xOh282DQwTdw
UFgxsbCBgqi0TKYz6jwSUWL6MSfMSjsKcYQlfkuUm6U1FztAOqgGvO3jHHe4bMQV5++v8RLlN9UP
wkwis3wt2YNNzqOzxYMTYqoZ6mcOeMGHexMrarRtd6Psf8ecXsDag5IOF/NF10PZUeRaXxSTOxnj
tZrmuVtZWTiYZvSCX3a3UqK7SDM6YBz0/gr4Yt4Su3+hMivNRK1vcT65n5a6Or6p2JH+DHVpGFMR
cnHRveCgQOhJN0rpnH5j8KOJmw/fDCi147ijOLVwlMoMTYzJyZeEt9SAAa4uY7s55zMn5qNBB+2t
v/91Clc+LIdwGcSQs0LBXXt5wK6XTXtX+KZ1NktPs+hk8Q3hNSRpodPJqQ6/XWHL/TKz/cOav5PT
oqan6Wu2Xen57qLxAcw7GeapR+c/nNWU2HnQi7M6ORIhkXH4nS7DaLQJlOQ+LD6k96dmK9KempwE
mVjzoQrZGKDvwG4q5MKGbG1pA7K0ioj3GTnP/d3f9uTYg7IUFy6POH/RiFsNui4izoEJs8ocjcdc
sA9By+txnnKNzuWgeELoBAkFebZq7A6hYN/sbG6/Rs3rbNpfDXXjWLa6QD50miDbg9dpVQ7aiRO4
eJwekJcuXB0VOhNoG8sp625f1sKkz4al6fhaKvsyZAmo8cGZ1/xfkUIZmjVC3qAy6brzoNtqP4Rb
nTV+NG72dJwSDdt1KtZdHckOsEoniWH1qfSr+7IJXOWU0IINygJv3dIEx9SUXzLitrEgxDe1Nzc8
m0veOuXUOuJld6Z1h5aqhFblltReXzg8cqkKIKS9wcxhpWPK1sh1W1nng+abNN8HLveH2mgGZMp2
iIN4QJa+DcyG0nDxHkUqMctXtbd10LdY0+ZE9EzsepGSm/r+1LbXVsrBNh1VU22JRDbCIn603L/M
1OoSlBEsGSnScfuIU+61ja/KtEBfiwyBCr/LQaGU8QRiA6n+5G2WXLq/n4pUYS+9KUUXRgRpRW+p
MkmK3wKGOql3G59Lt1oCj1ORN8inCDfhLXbzvEnE1mayIks23btLfyOERPTv3ui+zUiBPmZQCouC
T7MvOqdKBJtXUiwIO6ZdbUhBf51mOmV6jkqJIAC4dAOwinbte42C950+TcVD07nElsBZeuBJnwV+
DrNlyIbyIpM61V+h6kqwG183q8fZuIYiWx0z7t/OlBGqDbB4yvkx0ILxZbH0pYK1h7ZXoMHqlZgy
kcPM25xuxR19MidxdDe0LOZNBCgFyqQbFOSX3vL225uxpxEqLBmba/N/gXXcLJ1l0k8anqvdwfnq
09Fs706dPF6WuG1OHU9qG5svEKr+4ViwGTqR9Xn6eC9aDwpvcR5fQFHE2TfR3tKtzXSoF8H3ZdHj
Pqt7TDmakTXz7Pj7zO00PRpHj5BP3i9HntiDzCFbfFV8DigmWnnG/WDCE3TKHWkDToxVdrwnIDA/
kMNedz4YUduqw2WA6scaQLTFymS2tmP7MIbhQmpUpUae0v67rQcrorPnBHbzClvfbNCXUo6M59/G
BlctxB2MIS/8DlsoT3vajfr1i9vW3fzmfDz6DJTHiLiBClZTdde5VKsLDZPaSzso/U+8tEs/xVLq
p/s5GyCzEs7JYz7FN1NC51dqv1n+P0MqtsldRyVp5en4tIhdlQIv6OK0RXMQYe/1ln2YTlHDJ2D+
eoawZWJd07XnwNPOHJy99SPHW2yk+5JckISLld3S4R4o42Dt/WD7HRKE/+QZyeOCfJvr/zWa/Dx8
gtzLDLXr3gyP6ujbMgQdNugzyJxngdndfJxKAsR82vFg2ww/2SP/7GxrNe3grXbnSwLpaA6rO4QV
6MW4QVfDzFCtw9CCBVtJ8flOuVlwHhE5JpmI4Tf/B1/ta/EHZ4hy+YYt1/Ab2Zv4+hMvDi3ZKZxu
r7K46CH/R5G9/BUidlLzNZWgOM1v19g7K0AuzifVLmoIsY175L+JJetsuUHIZ9apDRJUjQqNuP6x
9tStbxa6oEYOC0DV2AwlP2t60KOdNjtsaixQgAcOZ9pC5nLxVybpUtKllrU3rij2+SZOT/ejshfq
qUqXDZMwvQw1cJ5oVL668NO+IZc5T++GWz6UfgwnBShvLj8sTcDlqr5P4Iooh3kO/hj0oi7d10pf
tuk3cvmVVblaJM+12YLiPcs5YlhNTZdn4rofJNQ2PDXrLZSr1S6pI4ppzV4edqmxM0ThLohBMp/E
ZHrNV0AWPIo/BExKH/XbubwTkh1MfLFHtapRAvMy2fird7IlWX4A4EFcSMaP3uiXUfTrGlKqQmyW
t/Vj/ESV4H8mN0aHHRw65D2WU1HqSKhhr8e5oQhx7DyIJj8+DY3PsotxrS+RgI2gN9icos4sP34f
ah6r1DWrRhYv0SsEZs8aFGjdIQXOKDseqlkSz9s6B+vjAtNITO3eDTfk0tKy43YsOHFwNlr+ihgB
NG75hiVYIw6OYJYqWFFIxKFPYbDcsN6yHW90Nn6w6thKcwlS7sAmJwnhejkvGbIFdxnotCYbpUnL
0T+V7HhLGfk+TgBygccy11PJ2g6BsFltLuOxmLNixUe7ONOOCxtlBS5SBdm1x20gaHNima2m4jCr
y3LXamvERbqPRJdiOmpmecRSexug1eBNmGrXQB34nkJy2r8acMFjlgB2QOSwgFqGwG7/Mj8Q0ag3
YcztginGgw0UtjdB7Uk0Yr0y26amu2NSeWgz0j0TqK4vf96anTk6oekT7LvGlY76e5ZQZKwttLRO
5cyJJcEhGJ6D4n6Y1F/Jza79Wz22uoEvuDCPXk9KBtanyq4n7Vj/URj3HKjwqs0T9Ga7QfwJu52K
jJNXxT7oB2ER/NnSfnlkxF2/UaqfJrVBRbukIs7TV5b0hyszbmzJ7XTaXYeMVi4oAViQvGQAsxa+
rEyoWbZG2tU/hnue2YceXWUOL4P/WVuvketscMlXZpT7y+Ug73ecnznEsJpMkwkCZ20l+A5KzwpI
roYBXyANl3HoDKg0NQ/syFBBQ+/hUB0aEv3k46EV0VbKux5xCqTIMceBYBZAAzWBRlzdTOWErB2M
WcOAMPOLv34uOfI//eYC6IC4Jh5bYfPmKRWOrMQ6eI+x4ApbSwP5FQoPg9o817NhasctThOpT6bs
aep+PfSDZx7Ch6Lu1fNWFWLDmAnh+LxnQ6dpxCBdztrC/e6lw30NqdUq8Tx+GKw0CpwPjxWf/SDg
A+U0n+Mn9wIqTZTRjDXUNZtZb/nj+7I0GHAKqp+at9QVR7PggrIbOwHYne8keGrBq+fCu1lejB3X
r+s2xjUwqKffY6NlD71VnicraF4zCCiPf/JYFxF8LOdGn54tKAPtkxRuwJGj26H1Uo51ooxRVLqg
y9S9VccpZ7AT5C/voqR8H7NSJrkRvzL3OMZQOJZ4jh0cWJYHPs4I3LCygd3Kn+zfPBUo2KWZHcGh
k1x347+0Rmz0LAZ4W+ggzRWm65WfHB/m6TnvggDR5ExIWp2m3YTdhMBCiP1ufcZ5j/68BFmA75VS
k9aJgXz1Q9CZiXd17gP/z4doZMzyoblr3+W2HGtEncE4ji1z9487iozEqIsGK9g0EnG5ulcIP0re
d7qRK/paGnDjrKKFHHPUh38B/QtxNcrRUnwZvWTw44kSMcGm7j3+ndbC9ASPsMxYK3283LqFb8xn
xdZzoHdrCVoDttpZKFsFamvnsf+NkP0SZqLymgERPen9mYWz9L/EHBpfal/9ob3Sf9oc9xrjwRKB
RIciociIAuBMwQBtzkWp/ZIKnD58Kol+YLKBPhNPH5O5H6zJNqLjq+B8RFLeyQDGRs/x1qUiXYrY
qMGSOCeKH9xZLuNI3bMmCKCIaeibBiAsSFVJvYlNYuMjl54bCwIZFKHJd5SdsMRBGYVg5is2rZ3K
/lboNtqv/nlJ5hb07JWwebhpZTkV1UVTVyKb+IlnPutcumk0OFN61S/JzJ24I+csdzhwdtOO0T7X
9zN88zN0MyxP4uo91s1GMuUT08/2i8ihG45qgofAcrkUqhOZGLIJtBJgkRJkAMOVJIMsg7OK7fL3
+8KqEIZXMSDUxJBlSOOxi46cLQ8yp3nHLBh4mIP6gC9ehHv+ohpFFLhP1E/dbyl4Ncs8glCMJa1m
LxcFrTcOo9D5zc7bce9xvP8W1dl3YkHd6n/xqv+Kd44Hzca6gda9fmxFBBB5W0PbIpGHF7mds6aB
ZLfyTbqlUf3xCrDVb+AqNEjIOQ+RcSJbOiqvkJZXKwWtxudjdOAnY1ElmpTEbra4HQ6lrT8KjEDv
y0rfKSXrjlpQpHbbAnSTrSOifNACcuZJwn4RGZmhL1Pl4kNw6dcRsldVn5fSvJ2NanUvb8CbRa2g
pOxm+JtuRpLVBA1LqF4ZAvt45uQox95H+kc3rCWGBjbOzC2LPQfeAx6/7hE8dnHLTtH/ZVRF4E4M
6ZD/+nVcQIa4RbUGg5NfbTlgTcuXXAUoF8pR1bUkt1vJ1ywsHv4oTYIJpITKYMSsDZjSJx/0uVjR
L5r3+4jF4LcuIxMIGEC5kvnuygaqex8VmyMisiPgRjZJGsZUFCPsMhYaqdTvRtGiRnMnzxvW1FJJ
7fqxalfWm+MPuc4TmeEGR7lqoDA18rIbXRvKVYoW9aK79k+e1YRxjCOnuXMNh3PRCOMBGhl82DEH
GcZBiIIKNFW/q5yCThQuIWKQpPivTZT6iYH5rAt+7H0w6RfE+rDMaw4OdGYBiF8hetebBdyoNFEa
99bgytviuUalHQlBmYOxqbHpacT+diXuE52sBdUDFpJ/tAkndSw8QwzL+fYBG6USlPfSUi5JfoVX
5JRkGDSk3AmyIQk4DmmZSTkgz3qASWemVpDR7EnaaoczwocEg/Cqu7AFsF6RWsB28mlHmJo1a+eA
40+wuQKTlFOZqfB9j9bysYUQYfxDdGag5Z4msl8oA06fPVJ22nt8jtAjdX8e0WRwzHbIn3/swJ3q
r1HAkAqUf9PKAPhgTuBXGaCoe0wmfnPMfNXWEzomJ01yNbJHKJzZqGy0oW3lsNGeTS8uTNlggh1p
qI7gVenaLuhwIPohuD1iD2/srAiYIYHXxPbSYmciLmGXgfuy4QSKirZobLup73Sn6NOTMunqASjW
5xfTfLwAW/idhKkykOtHbe3eMub35b0ygGYRFm950IEg5kNX11zqWkr6GRp57tmBaVEKnCoyds7U
A3Pbfgqb1MxJ7I9aQsZKHQVebItXQfOc72C/4P5HPkWyCdv3FgPX9kA9cD109n4dXQW7+Z+W0iPk
iBd2/sOVjHYSQx5LQY3YgPuTwd1SmULsQCDOzETjMKx37bw/fR1+8nm6EKXWlXXN+8hxPTqYuvUr
ABT4SjUQXTJ3THSetZoFwfHtqIV3f06gwNMDw3Nz6YdgWwTw2Wy+p+h6We83KGhfsvx5m2nVPzW/
Kt09zd1gQKGQslvI4IABZ4Om+u/nItiUp1juvnsTWnkyvNBD6/R0BJRcCWrmN0p+V6tXRvNz2p/4
F4vsXW83QWHcCWtcUNZSjihr07rCC6YDsjZyp0iYmUynNLA6yM4Q6agVcZPR4HHJYkj6wJ5dfQt2
VBJQvJWUsxXiagZ9hrHWDth9PfqlTYrV/vYMQtLOsLjq8YAkfFpz9RyeHGTgmdqABMzrlms/JhTM
FzDb9lYIi+Z40mHSqSSozgtDLCkDx0Mxs2vnJJ+Trl4h2tcjAGH4o1FmhrQKfhDzDb46YlsGJ0Ax
rNXs9f9sNmlpW536lPpm1ppITRvEr68aq3/DYuRwzQO0XBP8obo6LJjawYEICPLTXH6KpWyvH2BA
lN6jMuduKKdyAEaoIQu8P6VRudVdP8S1a4oXpnS3faRp/9/tIoCL0Y4hwsnRpJYWaWNO030E/cHc
rfKO20upjfoCUKNKZpb5E+kL1B76YHll3bBrCG8dByBFleifVbGdf0xuJaPVR4jFGY3IrT9XNi/Z
ngL3BLYJ0/3DGa+sItlB+MFcOJhDflcZSyfw0MH33w6xdlC8kraCpQxzfU849l7vd3OTkf2cECWH
02qxcSnduisZZCWsXRTxGc+CKVj3yxs3UHBJn9zhSwwLk4ARYqyySlGI/Ss7hqxLsa/gmcMVPMWc
degrlbaJ1LLKTk4kdiUjKTB0HwUo8/I36v0rTA0WGVJhEgXcnpc+HwT5eTyWxyYolDGXzKsp9T+N
cDBmvmbNEAO/vxbm9NrIXGqENB7fzafsZodeXHdN5Gs1RLs7T31pKWkmkPuzd0Wkf7f3ENDA/vVE
3I6ch0I+y4E7z+WnnEA1oRqY0er3hDTGRZgmDfa5mqct6MUzVaXH/QpLLJgw6bLQHxgK0Y506nGt
gLvfP9n+kuak6j60fWm33d58GCUAsXLaPCI4g1WGygw69x0fq+B3w4fOLH/OdxX2sDhKGfZHIlMV
WRBn0L5b5QxWTV/OD25jKY3X70XAAkx+LvRtweyh6KubZoy5eD2tgcPJ6s+mNpaSsNYHnR9knaB0
ibkPMvAQTLYilTwOWf1RcK7CEyKJ1qJYZ0gwG5XqqTxDKf82TEned1Mvy9yBzP7U1xtBtyKYwGFT
XKKQG/ZgIH+6lOm8Kceznw8LKkOMxrdbff6576BYegGUvxQFI9GzNI3Zpqm5IeB/VVzy15Ed3nVy
Od4heoVhPqDTQj/pX1T/xsIrAJI2QWZ7RuoXxakP32EbmQv2M7esS4StCvqmUFTGkPbWh8RRqGuw
fjQWVu1B2m3LlAHQfVo76rjBoObJvfL1v+EErkN5Tda7KxB005ovKyrI0zaShsHlGQ1du18SGWiN
QwGMyjlWl+nC40j+75+5vheL1qzoY5zfM/bDYuIVObFPfkUYkq1gLgaL2M8ZOhmnXNodASktqD0a
1fvSGJ9udtQJeTWuKTxo19i8B0EyCIl7N+VDGZAKCHvujOABlHoPs2QwZKXoBNFV2autuAxPPpQg
i9RU8OhV2a+D3jMg6MYq0XWS3pPdI33sR2bKjZm0OgrWtO5Nrky8L/P9C8vTTuObz3ajo6LEZdc4
zsUm9pWKBAJKVw4lck+9YWtjN13Fa7O8NkPnXMpmzPDFmUxGHf8nc60J6bQI/e2rdEjl5L5Wlsg3
A8R+2myaIhOwAooje2zdVlEbHYD7nMK5SzDzkpL9ZlKoL2FfruRabwoYe3DcCvDgicjgFV6nDxbr
2mvwLrHWyzu/QRxkeVro3wUMSBWTHncoWUaOV+SsFpw5MqiUZ8MWoh0B8RxFZy63ElaprpAB25fn
6A/gvDuM+e+7TVaLJ52PDZlwNAQtUZxR6qw1LPjICBzS8ZZKS90NK3KBN99aV2134attyZQiDvS7
dZ8aIuP4QpqAwkyBjw3tn6QzJ+U2lsEdFAPBCPgMP3MyXLXkOZecRc9URdBxlpW3ZpVmFv8zRSHs
yzG1mc9Fn5kHOFaoAg381jgOdY9g7Vx+l01Z3oI8PpsYjdB964pbwg7NxUzRV/1smGA8A2A/IGdI
Oy8T0vZzd47cI5qvD7/YCbDsKKi5J3bg9k9nih1IEsrtlT1mBjcjWuNKIGHWRuQeVqTXHdrgCJCk
X/hyNEdW5utRtFGzAudmspsAvaY3uAwMzBVD9XCnsAZPHaTPF7v6CnPX9eQh1Ktme0GSD7YWtXJX
1BdZ5s0hIlxMAw4EMpOKsfJMMB+MucX2X9y7eSnAkfZb4dEea77BmPTbd4EbKUPraM8rHBW0Y0yB
BJmKef8ij9aKtsBLMmI7ZyoW6zhm8WwXWQYqOUTylGK7Zi2GuyHG1TyuVKjsl1RSrWt8Fob2+o6H
exR6xXagARjZoZCAyVK+6PiOLVWy8trQdikq/mKF+R56lbsWb5ZjE6LzCXKMHSOBa2PEoaZj/sus
i+q9wTV1SuY9geKlNaLDbJlHHCxGtDZ6yfpEEY6hqzI0q/vm1L9gIjGfJA6f8hVq+e6H/fk2Pmmk
xFWJ9oYoRZi7PcTetGy+Ef+X4qYVe5MWnFJDtuZxDz8QmsGXMA4PTO9HY8qLiTeDRx1O3wrnQOas
/L7H2SfJqniy9X1AcLWL8/ARiFlfsG+Q27wumDXLI3bUk98fjFs5fpF77hGS5UpnZRaN2T5fqUu/
ahDzFOjKij3BDf9//gQkbXC5XbeBeeTF5mtdU01eK9oUMBF6CML28IhVHDPkvC0IjDEAqRkwFJcm
6K3taOITMDhNbpLV/4sV5LMcPXLpS4yiWoj6z5f0wjqcnXjg/auEkL5p7tmohhevHQ403hX5LVWr
NklruUmTEGYMB1X9aYB57AXvFasGmqRHXT5FxEjBbYX4mQDunwNWQnZUz3LcuISaTmML84vf3ScN
S+ZN1NaB7dSzlpWOEmZrUUOypkzJmBQSJmVcOSD8NHoJblB80f7/kwuGgSQLoaB5JEm82KtD7A0r
/JcM4WhUQ4xToWiCpQGoWzWNIweqTzv6K8hVTR0RVfzMFQWhIka0tZD4OzTyTVl3p0iMnbxbN9S2
uhgyi5XGoHl6B2YXFqLFHmFQ3y5hNgeWen7g8LuKUL1TQ49BHjFo/jtYAIplxTWMYXxX+BCjcp7l
WTZ96RWfw1BRtRg4c+W+dUemRJ33nbWHOEclmQkVZYbl+M26+nSV6PoIjOa+RUzdgwAkYkvyYFr9
myv4tejTrZvVwyp8h6B80+33MrFvJQnx39cuZRY3J/LAzAxyVDdqqXif5VW4LzHnwz1Vy8RJdrg9
zPqSVoqoaD+Ba9bQUPgYCkx6ZqXAHpReEVpn+K3OF7E0VKuS2KqNqW628Be0xahOWs2eabsCd2ej
sb+s2QDfpgZrmpg4c+2+C9/dkcRqy68Q++yvtOwDv/LzUignW2Wp3r9EH598PbjDeZ5qAG4ZcdPD
rfK0p3jiEof9ry/LRIKWXLEjs4nhcF5zS6O3k5a+xpL8CZcen0lLJqB4ub8vMKOzZynG1uspOcZh
i2rJHppBCiUIQg0gM7pTyjPZuPocZX8UNsIwt8njI5WUcnh5RgCn0CLqkOGn/15MAt5yzhxFw8/g
0Z1l6PdW8PrK31w1x4l3DDh90FRdF8N9vQGQidMW0lbfTtapieMKAgME/8hrYdSZ4fnM2/Syyn/i
3Bk3GBKua+G+4le8eM4qOkRS/dgqmrsqoiq2yL3LV7zPtwpWr6rbhOLTWyOS0Tnu9WqXaupSYLsT
/V41guKLFvGikv93uSLYwHNMSx4H8ch+xX6sa8NyyAI6IqeAWbfop0uZ7HirScViN04iR0/leiKJ
9PlAUh8Zswrk8D2/zT3BtW47ejLQPbpFt1gajtfU17BnAz1qDsWAVysnhjCpT4MepOCgGun2lQXn
QypxcGHOx1vlHb5y9PWOlox5PcIc/jlPJVAWeJb6T3ffdl5C7pk1+qNKaabBJA8pD54fOelZpAnM
NGz7EDV8R3zSYn4EW/ZyyqeiYjuI7OavqTe6cR7k7jZj3l5ZK+sARtnG3IuNRMuRpeCDf0y6v/sc
8hRE/Lkaq8Ol4vyU8IlMsTKO3AssvXuaSVOfSIWWSX65Ymp/v+yWa/pOLCHQm8Ys+Q6vvdhwGpqV
ygqEV+xo1J7Ce49LUzJGOxdgYStwkL4kSC4veqjzWUeRyvbqh368mlWjM/MHR5EUfIlLlHH/Rakh
mHt7x2bjR3cw3Rgs4OVeB7rNkJ5Gn8oXHhP+Y7aPdkuBe/0uI4G1CYZbwCzAAdsmf3bQxadER7BU
oFQRc1stwPXHVrV36bQ9d8b4L2jWtDKngVWmqp+gxUwcpVtLdgrQoTf7Vh/uPiqxWx+2ghg57kqH
fCgdj0KFKA1v2939LwspUUuysCyv6TOrPaszFpcqe7+Ti3MiQ7kfxuFsUQ5NVKsn1MVA9GfwokON
vCI/HYw914lCVw7m9qHsukJCuUhaHNExA4I+Re8t954rTJHf2P5fgwT4l/+8q5WDVwFL7KyJiX58
c+kF49nEBAA12cJfVfVoU/1XDJ/JMmZGIJjvnHAIaXaEch0Ry2UA0wyMlpg9iusIB3XFaUOzEsTM
tXRqpiuO9YYWegJ0WKu1VNGjKct9lepAOlEmiGqFcivQncJDDp0XXD4WhhA39HiDIv+/6XDxAdgo
F68w/3Kevj9U8DmvnyxA05xqSa8wMb1qDtQXGqp3eTHWbWa4IQaiON3Rf6UUP84sUrRHXOIgHRUl
+RpQh1xCl3dgm1dEBRQGELatayqdzVNA6URZq6ngm+cNMOTUu4HtTLeEAOo3rdsYF9tpWedXJ+zp
nCkJWmAfLxvhjCYhllflvjhlTCGWbOskhA91L16lAk5g24Bf4aBYHtCb1qecSInQfTgN0/OcHSlZ
YOlMOhafLadhxgxrpsb0JprVvtD/o3VcZoPImDOh07/XONSQfDh4cDqoaCfG4ZcAeNrNSJuNdw+G
UcsFgW/oLOSqFQEgdtDsfX1+M8OTKtbfANU8HK9J/JwNP7qQx9xp97gFR0Nws//8edtuQC4uMsiL
FnCitoohQFkTAWRzoaTmKrOfsMv9kj6yHM8RHh5lydt+XsheqaRnpCFO3HiUiWRSVwcsQmu0vH/C
6NMm9GBFKm/XHbgXmU0BVHVbkPHVYARVoM6qgWenb41I5p3E1aB27bqJLDq2HqUv4OTAi0OCUn0U
4Sxdo7Sor/3DY9ATeZ/4MgNNr9zqPhHVJoaiYQ9Oyupwh5j7BWNl2E3TW30tJdJE3vbG0msjjuzK
ZOKYQjv8ng9cj+MybO61EHDDpuJ24QX0ZOnT999ZAu3fGqEGpX2QROzxB/9BD9PQdIGMyKTD5Ajw
zBsWeBFilM6IWIEJxWtRsAkqwTyyFgOVwc8Ii4FwaBjWIRuy5BGuoYQ/F6/Vo3DSdkkuk8u5JpX2
lw9FbLs94eu2Zqr21pZOx4bxtz26+PpK3DRrsf3GgRmTj3Q1VC69mJHyNbWEKiPaGG/O5hQPQ6/S
9BWNex9Hd2iYgVg2OQnBCkq15RRVX4vhSJpM1BM1xDYn5IwbHWyqVJurSQeGL9VBbIVNiqeQo9sz
aGSm/ygtoZ9uMN2ku1Fq7UCK8owKtgduir+zvZAU/d4psoFhwbDuJWFinQ+i5kuxAsm+6BiNnhfJ
sixs03x0tiyk5SCGMKlWEom8VOXNZd+dPFk1wv6lufb+nEHmiZ7XTcavrXd79G6FXld741SDEgMv
1nqw+li1JTrbsvkPsozrUqcGhqnFKMOJrVMe44y/y2IrGrkmmyFU9M0htCh8uXhg2nKfRfxKpMvy
oYYBCtVEnnU2VVC6wol/De9HApzT+paB5fsHp81fjG53x4j/NzUfzSomZYkeBdHbqR9sxW+j20MK
E57E8iaZSivQWAAkOGgThmBaL4VsDmfnJ9KpqVkxHQE4eJn7WoufbQ35COTeuwKfj8h0DzcQzvBN
3FH25jCdK8qZwg7LC6WI5LQIzWJLf6M37MtHuQa97Obf/au/WJ0tPe17VBOvkJ0hoitfOHtbo8//
VyWJz5rEeG6xYG2VIsek5o544ptPWa1whgO2qumqgPrekeCpl9XUgqjjUvkf7G33jyrSRERC12OG
i88Zq2ZKTVCQhIBNBmvrM2gObopJ6jEjYKqaPc2YumFWIYvW4g9Uwh7EQo5pTYMLMKuQ3CGIH6U2
1uNIevqvOZGIQrLfoUF0kLDnL7qb7Y+Sfeymd5j4lW9hfh6dE1uFFTQCS6cJ9+rpZXg3YO0+aKdL
cwGd37/IPHJJBN99FJAUALrj3PIiNSyTGTV6J2EHr6hsDHzMz4AXFxHgNNcoGfqufUVqFqinLTWn
mvwYiY9fGxuUpORigyhYb6o0cB5+CnmgxtBI5EVOKN1rGKkpBQ/o8PZxITrn8isJlZAGE0iBzZjK
abxyvWtBgOa2S2HL5mfmx15VOMDr66+AS3PqI3WePt5QkDLy20mBr3+r3mZNiRSN8ujU1H5waA0+
W1QLIYVuP5J7UmlZDvC4ObhF9tiC1QXa+6kWSu/bxxjNFjC7/gMaRxarzA4uZ4pO3fZzA6p3uE0O
FcbxrR8q/wGn1HIS7UbJkxrK/t0GZ40Re/dVy4aW6XuLOHb83kDBbEe1Ax+s1b1kUmPPfNmdUq7R
TMd96mbcaohFSdTuIjbYW9XDm84bf3/TRY7UegRsa1ruDW/FNzFFGOhRfeAk9EZ/s943AxnLLNpb
uIj9VkI6qtzEVhwxMnXoKqNG4+uLrB3mr/4O172QQt5MpZ6vWt/1UIFZTYO+zGkZfu74/bkkgctS
DsbAs+/926ZF53aFksTvrgoFbj+NHDNhu19iRuuZRq14XX0NHw/5Sg+6wXfIjTHVQVipdwLT4deh
U7+imGo+FC0PSwu3t+22QtJxhDLf0NtswoH9BEBLbawRFIyS1e8oOMX3JDGNMhw/EUbLyljOhEan
BjSTbkwydc5kq63JOifEa09jTHSs4T+FReHNEqBO0W5SA2L8aZRzS56Pip3zRx8BYTqUVF0+oexG
E2d+LfB4MpojgWHgpzPi6Wgqlo47FXU63xtXEsDzJyoADa9AJi4/AeBtilQ8rPSwlqA/WRFliRB5
fwCaDvK29zwLtuxFtt/SlsygA+Dq0xiloCUQLy5QAujlqGaucCiPT3qUjtJg1brGibpSzcAkX7Yk
bqlMdS/dmq4Z96G9v0lPKYnMW2En86EjN6GvINDHRYjRVNl/UOGq0/YC09rxfF8/kig1RdzOQMHB
KmJ9Szf6btAq8wdY3KnZSKO/nAejBoa8IVNi567omdImPxlepkn2StmZsjd2Wo/xVbd1JgD/RcBA
6FcGOoiZouYqLQ+GfKoAD85NWJ+dqYPiMBzibZ8O4iOO/9zo2U8XQvVRDAK7w58OsChjeI5e7gnV
M+6zzz5W46xjMaYpB48+yPcBJxkY9nbDq0r3JuHyy134EhqF7ytsNvM5Rbj+Jtb7zXvsMYTc6Fyz
ajuSDDbSGWCCtvl9gFhb6CYcQnmdKgSNv/eb95ZqxJOvjDAcPvzD++tr+LDbm6e5xgyQq0erc76W
DLwhOGDiXMaDAj0iz+HmJu1rCZDBcfOyr+CE0iCJU1VrJhBDtkwx098DdhvF3JEyPUmzKOCE7YU4
vyL3AWGVX63IWuMfOgcPlkUL7JZNuhbnfDIPYhfGcSJ53xvJ4NiH9MCgsZasAMcSC3dLfxI4gJJf
nCMvkcle//MDVX7YqWp2fRy0+lgGEUqKmidlH2JocmLhHVTw1J0OtkMnR6f0TlQ2BWOGgO4pqQRe
c6MG2oqqLlZRtVgo86alT+nSDT6hsdPC6OZws0BZmIxTJNoYvWEet8avn88DkWsznUfet2+7zslN
JAIgKCuSXHxNREAdovFCw9wy1rK+K68WxzEeIESedZwwgxqAdYJr795lTiYijQhA/CapCddPZqvK
f7zjGkhdnW/HRe8zd5GiHxAhxtIdAjd17A7QACSSZYYZruQDPanQDZRjCr2NkLontFTubCu6+Ru6
sUrjQtMHV2YArwPnrsGtWi6CxPX0C2zTIkoP5kBg0CrPAQWgT8uIpn0CBff/IXKD47xeX+YBkpaX
csSEeyKbLvxClWhZX4C7N0//aENjtmERlQT9RL7KFO8UfmTGTHGn+qSd3sWapK1OqT6scZ35WAVN
WvE6QqSU10wgiq7M0Ztfub4xVBzsEnoTEKgNmcdTqpX/K6dhocd7v/1XU27gaD5nzNIOQZIv/R6q
Qa8wCMqc1HkB3Vbyw5bTQBvXQH7N2qs1R2Q9TtXaQw10eVfbWh5R8f63E9B5oW139r/YN6c2TWG5
inUj9b2TshSryeVs6nzoXcYH0jefeFhHPk5x/IqwLEr5eWwtMSlRTmYWxsgfk6ApK0pTKis2EvMP
4BPqg49hw6jybUihIgFDNr9KoDa1AIy8C3jyKsRD/NforQzMUQ5DwczgYcisJpTP5BXfWPgOXwKn
+tc0/MZGWxLRW28qSRVEuB9qcnyJ0cSItjE0QqxtQSxSxdei3eoBM4AyBLyezyZmADcPQbJDJV0l
gnGVz+qILuvYYUXA2mBZTST+7WnI00k4QYTAG+Mjn9kHt+aUjpCey2JamH/i4Z2AtfXXU7IbfBbQ
D4DZXWqicTz+5Q5AuLbwhSrsTZ6OxJseOrQ6xGvcbQgum2fQC7Mup8zmmnjqORv8eyhzuA6fjc8W
mHaXoaw2JPdn0y/shCitEyza48SFvSjXYTwir5kecMBG42+XmfJdTRdaGNehAhWG+ZbwI6MThA1g
vVrTWIb6K2b72sVaVx1/IN/UHXE5QDb8FFZPLf79qILEd6mkEty2Err/5x8Z4OpxtMyPCQFm86h9
clK4uWS8quZ8D18PNy/CtfCrLuL3S2zJGBj71XXtWQFtPu2NIn6zzuijJSnSoBWvgbHGGOqwEzNp
wf2DyJbo70jcwV42Bv3wfMqKXgnBQECZd/G+yEgyTN5n9X0VXy17HW7QbPtmx0coYuU+URMAqt6I
RwApJjrQNPi+GO1WSv969fNWbAleQVkXi1kUY+WqZSDTB8x99c0u1nW/QqyV1Ehh9zoln7gcgZ7N
wr5ju1Xo1KM9WDLnvkNXZJzazlDy4eKHdDJ9Gxxlb8Iu1/0nhjXUrIlxXvoulZh6Pg/KzuQnkIXd
Dz1XkpdlTsPUfT/LxCj3nv7d2wnat9KSIrYdlGtYadeABUkxF8xS0Smqz9mbbIaB8w2YITw7t0bt
cqTpTc74k7ilPbM5wrcPXW6v4Pkc3x5a4g/TFFcP+9zL9dXdWqw1RJH0C7077Z7/emGUVzsQ3aSy
dqJM1PG/wXrl8rDJXHeVHQp/y3LeUdjfmpkvLBmU/95zyIJPYgA1lFl+0MWNmAY+lUNWKqdS1fhR
Gk4KeXsO67fkqrkTQRFd0q1tFtrzGnFZfeeyZkVcxlXEVaGnf8Z4zo9pXRDnx+K0pTMwyavltoHo
vHig7XMdk0sz/UlVe3VrUgWER0vJs7jLlr8Qk0ygnReZvyHQEFoJbR+laJmJ/h5Xy4lBuU0/jg3V
HhpmqoiTKeH44jh0gYqxSQTjnMzWrsM0jq6e0UQ885f6jEpKLgz1vVbhlxS8TeTBllPql2MqLRCN
6RNCr4GW6Kn2D345ancBj2mz7KEAhUlua3yZN4iiIBdngqaHZkzwCaA6hT0Lth33FikSH3h+m93k
CH0UCiEcXBY5lPS3BshKvolYCiuWikirobAkPLI4H+Buod5qZGH2HvmP05zfiCI9cVPqmqsY5Uq+
BpF0moHPA1Ma8ZV6Am8m8HjmCDcYx7JjPA+wvMrFv8v8BX6EvHOn6FiejNooLAgteUvGlJqpYPEX
1/DNyibl3Ybh5kltXqb00tS3ZKMEw8c6nxNQRSTyVmSmoioIBfIM8RJLfeKMAiEb6+vNsSSlFL92
oLkRkvPJsPY7IdwIRZNHES+6y624vGmhd6xFGptMlMixF2u97McIt2AOQ/5nmQfJYYtlWdK8unXx
w5UPzr0g8pkk7iu8IgsIDdNJFY0wS2+kOQVbzxs97YAt1dRAQmWGS2JCz2CM9uD+RbOzbC58OkqU
mqeisJap5CSx8l3iWH3ptVsXSQk513NXDAcezPzsNDabaXGK6Yvh61PiSnrQWnG0cq42dieRNZ4k
XMZ7V6tRSRTatbBwXd9PdvvXCRhVQvKRJBRgo9GgLh2FiCzMrooFSocsx80RPrBsat0RDXNqEZJj
AmTh4Dr0jeLzzlzRB9UlYWsbX3eF7SDiGEozeBwa+aJ9O32ESzVQDDyIMrhywYxtJiYc3cJeXqlc
xehNK3sJe+YrxBwPwQ83tHpakVSB2Moxzw9E4qbtOr7rqBywxPAQSmOvFl1SxVNm+dXyIzvq05ry
c/CRO/cRi8B/OqTnSWSJ0BtvkVMyR9RvtXN7mtfs5r86JtYfdNlo2TRRGWwzz5X3fOJTTJhO3/nb
84GEDyjZ1wJs0qEpx6hgRAnxKPRr3FBUt04PUNSIg07IFUl4UQJFKkicerQtEREIDkYC+u6Xo906
6Dov5IwQs597VckHInYoUcxwNtKDTv9kFFaK75mz7ZPUfX+vM4qrM6w9Mh4B8EiEaECdgzWBzWTQ
ClbnVmXZtkQqy8njdDmH90eQdajD+aCsf3gBg/bYWid9+BgOqsZwguGndLHGNTxJSbJh59HE2/Th
KDwyvftLOvuMfxoQcQdgS9uQLOy7+xMvXRYnqFREdkk7VDztB+4orqXBpeEwJqcEfKVCABamc74q
TvrRbn7S+P/e4qTCg/kjgVc92M3oFDYbQ9J9ct2uDgXsze+xSFPUWGNGlcAWt3W7BgJGkr2xUkSw
wVSPo9R4Pmv5jTDKWQynymdOe2tm6w8u/JsMptxPoPCqy4k/m8+kGiC81TL3/cJlRI+qNC1EOFzP
JxgkLleTCAPG6MOkF5+71GO1p0FNXgHD+7WSWGnehWLbrKBbpqJTczFaZjwlsmPRiOt45ZX8570l
HPEQ8XE4o9Jt4zDGiXi/7P0tKIbuR/uunDb+/50s7kL5oi/XbBnclYbnyVve/5F6Cf0B9C+8DHql
nat5Rf7xZBgbH+ngpUb+RBnI3YwihQeTOpMMZWHIpifj8ZVNqd5PyQQLI1iTbrCeL7nQh7vGMNtg
nJWuW3SKSsMKYhwiBiRmEOIP6ffqSLXeTMDIM42m5m3FiOW/MZYH/YSnFpOyTFuWlLRR8lu3yTt+
NUbW08/OaBMS1Ps9BtosBoCF9odp7Dh1vk8ROMEiohZEqcvfu3gJ5jjREhcHlPsJVE6pvsHj6sOR
K8rX+73+QLSaw0WvPpJVPhLc8+7Ob0bO2Km/nCjIlbh7iVjKy8BlXVdPpsSjffGlJa2ad1BEqS8D
PjelsOVsxVpq11QCdPDzUvT1+dMxh9tzTYFAw4P+HrHV6tGdzdmBeghy+oQEFK1hipW1PIfw3e+E
oAX0Ig29M2bR/AUDgAaPsvLZWrBkZkg8GjAcfJIk+EB1yIcAdJIQqUoe/FHmmqHaI2yuvXJwvLu2
kb1I/iPk+biP7KIvzBXLmSVtkfwFG71UYskUuRPXDH+639qs4K9btNNqQt98QZYSAlQK
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
