// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:dma_channel_mapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_0_dma_channel_mapper_0_0 (
  lqg_uk_0,
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
  dma_channel_h
);

input wire [13 : 0] lqg_uk_0;
input wire [13 : 0] lqg_uk_1;
input wire [13 : 0] lqg_yk_0;
input wire [13 : 0] lqg_yk_1;
input wire [24 : 0] lqg_xkhat_0;
input wire [24 : 0] lqg_xkhat_1;
input wire [24 : 0] lqg_xkhat_2;
input wire [24 : 0] lqg_xkhat_3;
input wire [24 : 0] lqg_xkhat_4;
input wire [24 : 0] lqg_xkhat_5;
input wire [24 : 0] lqg_xkhat_6;
output wire [31 : 0] dma_channel_a;
output wire [31 : 0] dma_channel_b;
output wire [31 : 0] dma_channel_c;
output wire [31 : 0] dma_channel_d;
output wire [31 : 0] dma_channel_e;
output wire [31 : 0] dma_channel_f;
output wire [31 : 0] dma_channel_g;
output wire [31 : 0] dma_channel_h;

  dma_channel_mapper inst (
    .lqg_uk_0(lqg_uk_0),
    .lqg_uk_1(lqg_uk_1),
    .lqg_yk_0(lqg_yk_0),
    .lqg_yk_1(lqg_yk_1),
    .lqg_xkhat_0(lqg_xkhat_0),
    .lqg_xkhat_1(lqg_xkhat_1),
    .lqg_xkhat_2(lqg_xkhat_2),
    .lqg_xkhat_3(lqg_xkhat_3),
    .lqg_xkhat_4(lqg_xkhat_4),
    .lqg_xkhat_5(lqg_xkhat_5),
    .lqg_xkhat_6(lqg_xkhat_6),
    .dma_channel_a(dma_channel_a),
    .dma_channel_b(dma_channel_b),
    .dma_channel_c(dma_channel_c),
    .dma_channel_d(dma_channel_d),
    .dma_channel_e(dma_channel_e),
    .dma_channel_f(dma_channel_f),
    .dma_channel_g(dma_channel_g),
    .dma_channel_h(dma_channel_h)
  );
endmodule
