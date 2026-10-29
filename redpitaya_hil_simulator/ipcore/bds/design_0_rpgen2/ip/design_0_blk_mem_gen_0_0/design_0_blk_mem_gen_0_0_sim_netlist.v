// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:18:19 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_blk_mem_gen_0_0/design_0_blk_mem_gen_0_0_sim_netlist.v
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
