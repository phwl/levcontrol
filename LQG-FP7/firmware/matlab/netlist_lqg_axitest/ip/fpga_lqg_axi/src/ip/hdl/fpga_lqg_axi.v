`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/axi_sys
module fpga_lqg_axi_axi_sys (
  input [8-1:0] led_out_value,
  input [8-1:0] axi_led_mask,
  input [1-1:0] axi_state_reset
);
  wire [8-1:0] axi_led_mask_net;
  wire [1-1:0] axi_state_reset_net;
  wire [8-1:0] led_mask_cdc_2_q_net;
  assign led_mask_cdc_2_q_net = led_out_value;
  assign axi_led_mask_net = axi_led_mask;
  assign axi_state_reset_net = axi_state_reset;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_F_res_gw
module fpga_lqg_axi_lqg_f_res_gw (
  input [18-1:0] lqg_f_res_gw_0,
  input [18-1:0] lqg_f_res_gw_1,
  input [18-1:0] lqg_f_res_gw_2,
  input [18-1:0] lqg_f_res_gw_3,
  input [18-1:0] lqg_f_res_gw_4,
  input [18-1:0] lqg_f_res_gw_5,
  input [18-1:0] lqg_f_res_gw_6,
  input [18-1:0] lqg_f_res_gw_7,
  input [18-1:0] lqg_f_res_gw_8,
  input [18-1:0] lqg_f_res_gw_9,
  input [18-1:0] lqg_f_res_gw_10,
  input [18-1:0] lqg_f_res_gw_11,
  input [18-1:0] lqg_f_res_gw_12,
  input [18-1:0] lqg_f_res_gw_13,
  input [18-1:0] lqg_f_res_gw_14,
  input [18-1:0] lqg_f_res_gw_15,
  input [18-1:0] lqg_f_res_gw_16,
  input [18-1:0] lqg_f_res_gw_17,
  input [18-1:0] lqg_f_res_gw_18,
  input [18-1:0] lqg_f_res_gw_19,
  input [18-1:0] lqg_f_res_gw_20,
  input [18-1:0] lqg_f_res_gw_21,
  input [18-1:0] lqg_f_res_gw_22,
  input [18-1:0] lqg_f_res_gw_23,
  input [18-1:0] lqg_f_res_gw_24,
  input [18-1:0] lqg_f_res_gw_25,
  input [18-1:0] lqg_f_res_gw_26,
  input [18-1:0] lqg_f_res_gw_27,
  input [18-1:0] lqg_f_res_gw_28,
  input [18-1:0] lqg_f_res_gw_29,
  input [18-1:0] lqg_f_res_gw_30,
  input [18-1:0] lqg_f_res_gw_31,
  input [18-1:0] lqg_f_res_gw_32,
  input [18-1:0] lqg_f_res_gw_33,
  input [18-1:0] lqg_f_res_gw_34,
  input [18-1:0] lqg_f_res_gw_35,
  input [18-1:0] lqg_f_res_gw_36,
  input [18-1:0] lqg_f_res_gw_37,
  input [18-1:0] lqg_f_res_gw_38,
  input [18-1:0] lqg_f_res_gw_39,
  input [18-1:0] lqg_f_res_gw_40,
  input [18-1:0] lqg_f_res_gw_41,
  input [18-1:0] lqg_f_res_gw_42,
  input [18-1:0] lqg_f_res_gw_43,
  input [18-1:0] lqg_f_res_gw_44,
  input [18-1:0] lqg_f_res_gw_45,
  input [18-1:0] lqg_f_res_gw_46,
  input [18-1:0] lqg_f_res_gw_47,
  input [18-1:0] lqg_f_res_gw_48
);
  wire [18-1:0] lqg_f_res_gw_0_net;
  wire [18-1:0] lqg_f_res_gw_1_net;
  wire [18-1:0] lqg_f_res_gw_2_net;
  wire [18-1:0] lqg_f_res_gw_3_net;
  wire [18-1:0] lqg_f_res_gw_4_net;
  wire [18-1:0] lqg_f_res_gw_5_net;
  wire [18-1:0] lqg_f_res_gw_6_net;
  wire [18-1:0] lqg_f_res_gw_7_net;
  wire [18-1:0] lqg_f_res_gw_8_net;
  wire [18-1:0] lqg_f_res_gw_9_net;
  wire [18-1:0] lqg_f_res_gw_10_net;
  wire [18-1:0] lqg_f_res_gw_11_net;
  wire [18-1:0] lqg_f_res_gw_12_net;
  wire [18-1:0] lqg_f_res_gw_13_net;
  wire [18-1:0] lqg_f_res_gw_14_net;
  wire [18-1:0] lqg_f_res_gw_15_net;
  wire [18-1:0] lqg_f_res_gw_16_net;
  wire [18-1:0] lqg_f_res_gw_17_net;
  wire [18-1:0] lqg_f_res_gw_39_net;
  wire [18-1:0] lqg_f_res_gw_40_net;
  wire [18-1:0] lqg_f_res_gw_18_net;
  wire [18-1:0] lqg_f_res_gw_19_net;
  wire [18-1:0] lqg_f_res_gw_20_net;
  wire [18-1:0] lqg_f_res_gw_21_net;
  wire [18-1:0] lqg_f_res_gw_22_net;
  wire [18-1:0] lqg_f_res_gw_23_net;
  wire [18-1:0] lqg_f_res_gw_24_net;
  wire [18-1:0] lqg_f_res_gw_25_net;
  wire [18-1:0] lqg_f_res_gw_26_net;
  wire [18-1:0] lqg_f_res_gw_27_net;
  wire [18-1:0] lqg_f_res_gw_28_net;
  wire [18-1:0] lqg_f_res_gw_29_net;
  wire [18-1:0] lqg_f_res_gw_30_net;
  wire [18-1:0] lqg_f_res_gw_31_net;
  wire [18-1:0] lqg_f_res_gw_32_net;
  wire [18-1:0] lqg_f_res_gw_33_net;
  wire [18-1:0] lqg_f_res_gw_34_net;
  wire [18-1:0] lqg_f_res_gw_35_net;
  wire [18-1:0] lqg_f_res_gw_36_net;
  wire [18-1:0] lqg_f_res_gw_37_net;
  wire [18-1:0] lqg_f_res_gw_38_net;
  wire [18-1:0] lqg_f_res_gw_41_net;
  wire [18-1:0] lqg_f_res_gw_42_net;
  wire [18-1:0] lqg_f_res_gw_43_net;
  wire [18-1:0] lqg_f_res_gw_44_net;
  wire [18-1:0] lqg_f_res_gw_45_net;
  wire [18-1:0] lqg_f_res_gw_46_net;
  wire [18-1:0] lqg_f_res_gw_47_net;
  wire [18-1:0] lqg_f_res_gw_48_net;
  assign lqg_f_res_gw_0_net = lqg_f_res_gw_0;
  assign lqg_f_res_gw_1_net = lqg_f_res_gw_1;
  assign lqg_f_res_gw_2_net = lqg_f_res_gw_2;
  assign lqg_f_res_gw_3_net = lqg_f_res_gw_3;
  assign lqg_f_res_gw_4_net = lqg_f_res_gw_4;
  assign lqg_f_res_gw_5_net = lqg_f_res_gw_5;
  assign lqg_f_res_gw_6_net = lqg_f_res_gw_6;
  assign lqg_f_res_gw_7_net = lqg_f_res_gw_7;
  assign lqg_f_res_gw_8_net = lqg_f_res_gw_8;
  assign lqg_f_res_gw_9_net = lqg_f_res_gw_9;
  assign lqg_f_res_gw_10_net = lqg_f_res_gw_10;
  assign lqg_f_res_gw_11_net = lqg_f_res_gw_11;
  assign lqg_f_res_gw_12_net = lqg_f_res_gw_12;
  assign lqg_f_res_gw_13_net = lqg_f_res_gw_13;
  assign lqg_f_res_gw_14_net = lqg_f_res_gw_14;
  assign lqg_f_res_gw_15_net = lqg_f_res_gw_15;
  assign lqg_f_res_gw_16_net = lqg_f_res_gw_16;
  assign lqg_f_res_gw_17_net = lqg_f_res_gw_17;
  assign lqg_f_res_gw_18_net = lqg_f_res_gw_18;
  assign lqg_f_res_gw_19_net = lqg_f_res_gw_19;
  assign lqg_f_res_gw_20_net = lqg_f_res_gw_20;
  assign lqg_f_res_gw_21_net = lqg_f_res_gw_21;
  assign lqg_f_res_gw_22_net = lqg_f_res_gw_22;
  assign lqg_f_res_gw_23_net = lqg_f_res_gw_23;
  assign lqg_f_res_gw_24_net = lqg_f_res_gw_24;
  assign lqg_f_res_gw_25_net = lqg_f_res_gw_25;
  assign lqg_f_res_gw_26_net = lqg_f_res_gw_26;
  assign lqg_f_res_gw_27_net = lqg_f_res_gw_27;
  assign lqg_f_res_gw_28_net = lqg_f_res_gw_28;
  assign lqg_f_res_gw_29_net = lqg_f_res_gw_29;
  assign lqg_f_res_gw_30_net = lqg_f_res_gw_30;
  assign lqg_f_res_gw_31_net = lqg_f_res_gw_31;
  assign lqg_f_res_gw_32_net = lqg_f_res_gw_32;
  assign lqg_f_res_gw_33_net = lqg_f_res_gw_33;
  assign lqg_f_res_gw_34_net = lqg_f_res_gw_34;
  assign lqg_f_res_gw_35_net = lqg_f_res_gw_35;
  assign lqg_f_res_gw_36_net = lqg_f_res_gw_36;
  assign lqg_f_res_gw_37_net = lqg_f_res_gw_37;
  assign lqg_f_res_gw_38_net = lqg_f_res_gw_38;
  assign lqg_f_res_gw_39_net = lqg_f_res_gw_39;
  assign lqg_f_res_gw_40_net = lqg_f_res_gw_40;
  assign lqg_f_res_gw_41_net = lqg_f_res_gw_41;
  assign lqg_f_res_gw_42_net = lqg_f_res_gw_42;
  assign lqg_f_res_gw_43_net = lqg_f_res_gw_43;
  assign lqg_f_res_gw_44_net = lqg_f_res_gw_44;
  assign lqg_f_res_gw_45_net = lqg_f_res_gw_45;
  assign lqg_f_res_gw_46_net = lqg_f_res_gw_46;
  assign lqg_f_res_gw_47_net = lqg_f_res_gw_47;
  assign lqg_f_res_gw_48_net = lqg_f_res_gw_48;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_F_shift_gw
module fpga_lqg_axi_lqg_f_shift_gw (
  input [5-1:0] lqg_f_shift_gw_0,
  input [5-1:0] lqg_f_shift_gw_1,
  input [5-1:0] lqg_f_shift_gw_2,
  input [5-1:0] lqg_f_shift_gw_3,
  input [5-1:0] lqg_f_shift_gw_4,
  input [5-1:0] lqg_f_shift_gw_5,
  input [5-1:0] lqg_f_shift_gw_6,
  input [5-1:0] lqg_f_shift_gw_7,
  input [5-1:0] lqg_f_shift_gw_8,
  input [5-1:0] lqg_f_shift_gw_9,
  input [5-1:0] lqg_f_shift_gw_10,
  input [5-1:0] lqg_f_shift_gw_11,
  input [5-1:0] lqg_f_shift_gw_12,
  input [5-1:0] lqg_f_shift_gw_13,
  input [5-1:0] lqg_f_shift_gw_14,
  input [5-1:0] lqg_f_shift_gw_15,
  input [5-1:0] lqg_f_shift_gw_16,
  input [5-1:0] lqg_f_shift_gw_17,
  input [5-1:0] lqg_f_shift_gw_18,
  input [5-1:0] lqg_f_shift_gw_19,
  input [5-1:0] lqg_f_shift_gw_20,
  input [5-1:0] lqg_f_shift_gw_21,
  input [5-1:0] lqg_f_shift_gw_22,
  input [5-1:0] lqg_f_shift_gw_23,
  input [5-1:0] lqg_f_shift_gw_24,
  input [5-1:0] lqg_f_shift_gw_25,
  input [5-1:0] lqg_f_shift_gw_26,
  input [5-1:0] lqg_f_shift_gw_27,
  input [5-1:0] lqg_f_shift_gw_28,
  input [5-1:0] lqg_f_shift_gw_29,
  input [5-1:0] lqg_f_shift_gw_30,
  input [5-1:0] lqg_f_shift_gw_31,
  input [5-1:0] lqg_f_shift_gw_32,
  input [5-1:0] lqg_f_shift_gw_33,
  input [5-1:0] lqg_f_shift_gw_34,
  input [5-1:0] lqg_f_shift_gw_35,
  input [5-1:0] lqg_f_shift_gw_36,
  input [5-1:0] lqg_f_shift_gw_37,
  input [5-1:0] lqg_f_shift_gw_38,
  input [5-1:0] lqg_f_shift_gw_39,
  input [5-1:0] lqg_f_shift_gw_40,
  input [5-1:0] lqg_f_shift_gw_41,
  input [5-1:0] lqg_f_shift_gw_42,
  input [5-1:0] lqg_f_shift_gw_43,
  input [5-1:0] lqg_f_shift_gw_44,
  input [5-1:0] lqg_f_shift_gw_45,
  input [5-1:0] lqg_f_shift_gw_46,
  input [5-1:0] lqg_f_shift_gw_47,
  input [5-1:0] lqg_f_shift_gw_48
);
  wire [5-1:0] lqg_f_shift_gw_32_net;
  wire [5-1:0] lqg_f_shift_gw_33_net;
  wire [5-1:0] lqg_f_shift_gw_34_net;
  wire [5-1:0] lqg_f_shift_gw_35_net;
  wire [5-1:0] lqg_f_shift_gw_0_net;
  wire [5-1:0] lqg_f_shift_gw_1_net;
  wire [5-1:0] lqg_f_shift_gw_2_net;
  wire [5-1:0] lqg_f_shift_gw_3_net;
  wire [5-1:0] lqg_f_shift_gw_4_net;
  wire [5-1:0] lqg_f_shift_gw_5_net;
  wire [5-1:0] lqg_f_shift_gw_6_net;
  wire [5-1:0] lqg_f_shift_gw_7_net;
  wire [5-1:0] lqg_f_shift_gw_8_net;
  wire [5-1:0] lqg_f_shift_gw_9_net;
  wire [5-1:0] lqg_f_shift_gw_10_net;
  wire [5-1:0] lqg_f_shift_gw_11_net;
  wire [5-1:0] lqg_f_shift_gw_12_net;
  wire [5-1:0] lqg_f_shift_gw_13_net;
  wire [5-1:0] lqg_f_shift_gw_14_net;
  wire [5-1:0] lqg_f_shift_gw_15_net;
  wire [5-1:0] lqg_f_shift_gw_16_net;
  wire [5-1:0] lqg_f_shift_gw_17_net;
  wire [5-1:0] lqg_f_shift_gw_18_net;
  wire [5-1:0] lqg_f_shift_gw_19_net;
  wire [5-1:0] lqg_f_shift_gw_20_net;
  wire [5-1:0] lqg_f_shift_gw_21_net;
  wire [5-1:0] lqg_f_shift_gw_22_net;
  wire [5-1:0] lqg_f_shift_gw_23_net;
  wire [5-1:0] lqg_f_shift_gw_24_net;
  wire [5-1:0] lqg_f_shift_gw_25_net;
  wire [5-1:0] lqg_f_shift_gw_26_net;
  wire [5-1:0] lqg_f_shift_gw_27_net;
  wire [5-1:0] lqg_f_shift_gw_28_net;
  wire [5-1:0] lqg_f_shift_gw_29_net;
  wire [5-1:0] lqg_f_shift_gw_30_net;
  wire [5-1:0] lqg_f_shift_gw_31_net;
  wire [5-1:0] lqg_f_shift_gw_36_net;
  wire [5-1:0] lqg_f_shift_gw_37_net;
  wire [5-1:0] lqg_f_shift_gw_38_net;
  wire [5-1:0] lqg_f_shift_gw_39_net;
  wire [5-1:0] lqg_f_shift_gw_40_net;
  wire [5-1:0] lqg_f_shift_gw_41_net;
  wire [5-1:0] lqg_f_shift_gw_42_net;
  wire [5-1:0] lqg_f_shift_gw_43_net;
  wire [5-1:0] lqg_f_shift_gw_44_net;
  wire [5-1:0] lqg_f_shift_gw_45_net;
  wire [5-1:0] lqg_f_shift_gw_46_net;
  wire [5-1:0] lqg_f_shift_gw_47_net;
  wire [5-1:0] lqg_f_shift_gw_48_net;
  assign lqg_f_shift_gw_0_net = lqg_f_shift_gw_0;
  assign lqg_f_shift_gw_1_net = lqg_f_shift_gw_1;
  assign lqg_f_shift_gw_2_net = lqg_f_shift_gw_2;
  assign lqg_f_shift_gw_3_net = lqg_f_shift_gw_3;
  assign lqg_f_shift_gw_4_net = lqg_f_shift_gw_4;
  assign lqg_f_shift_gw_5_net = lqg_f_shift_gw_5;
  assign lqg_f_shift_gw_6_net = lqg_f_shift_gw_6;
  assign lqg_f_shift_gw_7_net = lqg_f_shift_gw_7;
  assign lqg_f_shift_gw_8_net = lqg_f_shift_gw_8;
  assign lqg_f_shift_gw_9_net = lqg_f_shift_gw_9;
  assign lqg_f_shift_gw_10_net = lqg_f_shift_gw_10;
  assign lqg_f_shift_gw_11_net = lqg_f_shift_gw_11;
  assign lqg_f_shift_gw_12_net = lqg_f_shift_gw_12;
  assign lqg_f_shift_gw_13_net = lqg_f_shift_gw_13;
  assign lqg_f_shift_gw_14_net = lqg_f_shift_gw_14;
  assign lqg_f_shift_gw_15_net = lqg_f_shift_gw_15;
  assign lqg_f_shift_gw_16_net = lqg_f_shift_gw_16;
  assign lqg_f_shift_gw_17_net = lqg_f_shift_gw_17;
  assign lqg_f_shift_gw_18_net = lqg_f_shift_gw_18;
  assign lqg_f_shift_gw_19_net = lqg_f_shift_gw_19;
  assign lqg_f_shift_gw_20_net = lqg_f_shift_gw_20;
  assign lqg_f_shift_gw_21_net = lqg_f_shift_gw_21;
  assign lqg_f_shift_gw_22_net = lqg_f_shift_gw_22;
  assign lqg_f_shift_gw_23_net = lqg_f_shift_gw_23;
  assign lqg_f_shift_gw_24_net = lqg_f_shift_gw_24;
  assign lqg_f_shift_gw_25_net = lqg_f_shift_gw_25;
  assign lqg_f_shift_gw_26_net = lqg_f_shift_gw_26;
  assign lqg_f_shift_gw_27_net = lqg_f_shift_gw_27;
  assign lqg_f_shift_gw_28_net = lqg_f_shift_gw_28;
  assign lqg_f_shift_gw_29_net = lqg_f_shift_gw_29;
  assign lqg_f_shift_gw_30_net = lqg_f_shift_gw_30;
  assign lqg_f_shift_gw_31_net = lqg_f_shift_gw_31;
  assign lqg_f_shift_gw_32_net = lqg_f_shift_gw_32;
  assign lqg_f_shift_gw_33_net = lqg_f_shift_gw_33;
  assign lqg_f_shift_gw_34_net = lqg_f_shift_gw_34;
  assign lqg_f_shift_gw_35_net = lqg_f_shift_gw_35;
  assign lqg_f_shift_gw_36_net = lqg_f_shift_gw_36;
  assign lqg_f_shift_gw_37_net = lqg_f_shift_gw_37;
  assign lqg_f_shift_gw_38_net = lqg_f_shift_gw_38;
  assign lqg_f_shift_gw_39_net = lqg_f_shift_gw_39;
  assign lqg_f_shift_gw_40_net = lqg_f_shift_gw_40;
  assign lqg_f_shift_gw_41_net = lqg_f_shift_gw_41;
  assign lqg_f_shift_gw_42_net = lqg_f_shift_gw_42;
  assign lqg_f_shift_gw_43_net = lqg_f_shift_gw_43;
  assign lqg_f_shift_gw_44_net = lqg_f_shift_gw_44;
  assign lqg_f_shift_gw_45_net = lqg_f_shift_gw_45;
  assign lqg_f_shift_gw_46_net = lqg_f_shift_gw_46;
  assign lqg_f_shift_gw_47_net = lqg_f_shift_gw_47;
  assign lqg_f_shift_gw_48_net = lqg_f_shift_gw_48;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_Gamma_res_gw
module fpga_lqg_axi_lqg_gamma_res_gw (
  input [18-1:0] lqg_gamma_res_gw_0,
  input [18-1:0] lqg_gamma_res_gw_1,
  input [18-1:0] lqg_gamma_res_gw_2,
  input [18-1:0] lqg_gamma_res_gw_3,
  input [18-1:0] lqg_gamma_res_gw_4,
  input [18-1:0] lqg_gamma_res_gw_5,
  input [18-1:0] lqg_gamma_res_gw_6,
  input [18-1:0] lqg_gamma_res_gw_7,
  input [18-1:0] lqg_gamma_res_gw_8,
  input [18-1:0] lqg_gamma_res_gw_9,
  input [18-1:0] lqg_gamma_res_gw_10,
  input [18-1:0] lqg_gamma_res_gw_11,
  input [18-1:0] lqg_gamma_res_gw_12,
  input [18-1:0] lqg_gamma_res_gw_13
);
  wire [18-1:0] lqg_gamma_res_gw_0_net;
  wire [18-1:0] lqg_gamma_res_gw_1_net;
  wire [18-1:0] lqg_gamma_res_gw_2_net;
  wire [18-1:0] lqg_gamma_res_gw_3_net;
  wire [18-1:0] lqg_gamma_res_gw_4_net;
  wire [18-1:0] lqg_gamma_res_gw_5_net;
  wire [18-1:0] lqg_gamma_res_gw_6_net;
  wire [18-1:0] lqg_gamma_res_gw_7_net;
  wire [18-1:0] lqg_gamma_res_gw_8_net;
  wire [18-1:0] lqg_gamma_res_gw_9_net;
  wire [18-1:0] lqg_gamma_res_gw_10_net;
  wire [18-1:0] lqg_gamma_res_gw_11_net;
  wire [18-1:0] lqg_gamma_res_gw_12_net;
  wire [18-1:0] lqg_gamma_res_gw_13_net;
  assign lqg_gamma_res_gw_0_net = lqg_gamma_res_gw_0;
  assign lqg_gamma_res_gw_1_net = lqg_gamma_res_gw_1;
  assign lqg_gamma_res_gw_2_net = lqg_gamma_res_gw_2;
  assign lqg_gamma_res_gw_3_net = lqg_gamma_res_gw_3;
  assign lqg_gamma_res_gw_4_net = lqg_gamma_res_gw_4;
  assign lqg_gamma_res_gw_5_net = lqg_gamma_res_gw_5;
  assign lqg_gamma_res_gw_6_net = lqg_gamma_res_gw_6;
  assign lqg_gamma_res_gw_7_net = lqg_gamma_res_gw_7;
  assign lqg_gamma_res_gw_8_net = lqg_gamma_res_gw_8;
  assign lqg_gamma_res_gw_9_net = lqg_gamma_res_gw_9;
  assign lqg_gamma_res_gw_10_net = lqg_gamma_res_gw_10;
  assign lqg_gamma_res_gw_11_net = lqg_gamma_res_gw_11;
  assign lqg_gamma_res_gw_12_net = lqg_gamma_res_gw_12;
  assign lqg_gamma_res_gw_13_net = lqg_gamma_res_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_Gamma_shift_gw
module fpga_lqg_axi_lqg_gamma_shift_gw (
  input [5-1:0] lqg_gamma_shift_gw_0,
  input [5-1:0] lqg_gamma_shift_gw_1,
  input [5-1:0] lqg_gamma_shift_gw_2,
  input [5-1:0] lqg_gamma_shift_gw_3,
  input [5-1:0] lqg_gamma_shift_gw_4,
  input [5-1:0] lqg_gamma_shift_gw_5,
  input [5-1:0] lqg_gamma_shift_gw_6,
  input [5-1:0] lqg_gamma_shift_gw_7,
  input [5-1:0] lqg_gamma_shift_gw_8,
  input [5-1:0] lqg_gamma_shift_gw_9,
  input [5-1:0] lqg_gamma_shift_gw_10,
  input [5-1:0] lqg_gamma_shift_gw_11,
  input [5-1:0] lqg_gamma_shift_gw_12,
  input [5-1:0] lqg_gamma_shift_gw_13
);
  wire [5-1:0] lqg_gamma_shift_gw_13_net;
  wire [5-1:0] lqg_gamma_shift_gw_0_net;
  wire [5-1:0] lqg_gamma_shift_gw_1_net;
  wire [5-1:0] lqg_gamma_shift_gw_2_net;
  wire [5-1:0] lqg_gamma_shift_gw_3_net;
  wire [5-1:0] lqg_gamma_shift_gw_4_net;
  wire [5-1:0] lqg_gamma_shift_gw_5_net;
  wire [5-1:0] lqg_gamma_shift_gw_6_net;
  wire [5-1:0] lqg_gamma_shift_gw_7_net;
  wire [5-1:0] lqg_gamma_shift_gw_8_net;
  wire [5-1:0] lqg_gamma_shift_gw_9_net;
  wire [5-1:0] lqg_gamma_shift_gw_10_net;
  wire [5-1:0] lqg_gamma_shift_gw_11_net;
  wire [5-1:0] lqg_gamma_shift_gw_12_net;
  assign lqg_gamma_shift_gw_0_net = lqg_gamma_shift_gw_0;
  assign lqg_gamma_shift_gw_1_net = lqg_gamma_shift_gw_1;
  assign lqg_gamma_shift_gw_2_net = lqg_gamma_shift_gw_2;
  assign lqg_gamma_shift_gw_3_net = lqg_gamma_shift_gw_3;
  assign lqg_gamma_shift_gw_4_net = lqg_gamma_shift_gw_4;
  assign lqg_gamma_shift_gw_5_net = lqg_gamma_shift_gw_5;
  assign lqg_gamma_shift_gw_6_net = lqg_gamma_shift_gw_6;
  assign lqg_gamma_shift_gw_7_net = lqg_gamma_shift_gw_7;
  assign lqg_gamma_shift_gw_8_net = lqg_gamma_shift_gw_8;
  assign lqg_gamma_shift_gw_9_net = lqg_gamma_shift_gw_9;
  assign lqg_gamma_shift_gw_10_net = lqg_gamma_shift_gw_10;
  assign lqg_gamma_shift_gw_11_net = lqg_gamma_shift_gw_11;
  assign lqg_gamma_shift_gw_12_net = lqg_gamma_shift_gw_12;
  assign lqg_gamma_shift_gw_13_net = lqg_gamma_shift_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_K_res_gw
module fpga_lqg_axi_lqg_k_res_gw (
  input [18-1:0] lqg_k_res_gw_0,
  input [18-1:0] lqg_k_res_gw_1,
  input [18-1:0] lqg_k_res_gw_2,
  input [18-1:0] lqg_k_res_gw_3,
  input [18-1:0] lqg_k_res_gw_4,
  input [18-1:0] lqg_k_res_gw_5,
  input [18-1:0] lqg_k_res_gw_6,
  input [18-1:0] lqg_k_res_gw_7,
  input [18-1:0] lqg_k_res_gw_8,
  input [18-1:0] lqg_k_res_gw_9,
  input [18-1:0] lqg_k_res_gw_10,
  input [18-1:0] lqg_k_res_gw_11,
  input [18-1:0] lqg_k_res_gw_12,
  input [18-1:0] lqg_k_res_gw_13
);
  wire [18-1:0] lqg_k_res_gw_0_net;
  wire [18-1:0] lqg_k_res_gw_1_net;
  wire [18-1:0] lqg_k_res_gw_2_net;
  wire [18-1:0] lqg_k_res_gw_3_net;
  wire [18-1:0] lqg_k_res_gw_4_net;
  wire [18-1:0] lqg_k_res_gw_5_net;
  wire [18-1:0] lqg_k_res_gw_6_net;
  wire [18-1:0] lqg_k_res_gw_7_net;
  wire [18-1:0] lqg_k_res_gw_8_net;
  wire [18-1:0] lqg_k_res_gw_9_net;
  wire [18-1:0] lqg_k_res_gw_10_net;
  wire [18-1:0] lqg_k_res_gw_11_net;
  wire [18-1:0] lqg_k_res_gw_12_net;
  wire [18-1:0] lqg_k_res_gw_13_net;
  assign lqg_k_res_gw_0_net = lqg_k_res_gw_0;
  assign lqg_k_res_gw_1_net = lqg_k_res_gw_1;
  assign lqg_k_res_gw_2_net = lqg_k_res_gw_2;
  assign lqg_k_res_gw_3_net = lqg_k_res_gw_3;
  assign lqg_k_res_gw_4_net = lqg_k_res_gw_4;
  assign lqg_k_res_gw_5_net = lqg_k_res_gw_5;
  assign lqg_k_res_gw_6_net = lqg_k_res_gw_6;
  assign lqg_k_res_gw_7_net = lqg_k_res_gw_7;
  assign lqg_k_res_gw_8_net = lqg_k_res_gw_8;
  assign lqg_k_res_gw_9_net = lqg_k_res_gw_9;
  assign lqg_k_res_gw_10_net = lqg_k_res_gw_10;
  assign lqg_k_res_gw_11_net = lqg_k_res_gw_11;
  assign lqg_k_res_gw_12_net = lqg_k_res_gw_12;
  assign lqg_k_res_gw_13_net = lqg_k_res_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_K_shift_gw
module fpga_lqg_axi_lqg_k_shift_gw (
  input [6-1:0] lqg_k_shift_gw_0,
  input [6-1:0] lqg_k_shift_gw_1,
  input [6-1:0] lqg_k_shift_gw_2,
  input [6-1:0] lqg_k_shift_gw_3,
  input [6-1:0] lqg_k_shift_gw_4,
  input [6-1:0] lqg_k_shift_gw_5,
  input [6-1:0] lqg_k_shift_gw_6,
  input [6-1:0] lqg_k_shift_gw_7,
  input [6-1:0] lqg_k_shift_gw_8,
  input [6-1:0] lqg_k_shift_gw_9,
  input [6-1:0] lqg_k_shift_gw_10,
  input [6-1:0] lqg_k_shift_gw_11,
  input [6-1:0] lqg_k_shift_gw_12,
  input [6-1:0] lqg_k_shift_gw_13
);
  wire [6-1:0] lqg_k_shift_gw_0_net;
  wire [6-1:0] lqg_k_shift_gw_1_net;
  wire [6-1:0] lqg_k_shift_gw_2_net;
  wire [6-1:0] lqg_k_shift_gw_3_net;
  wire [6-1:0] lqg_k_shift_gw_4_net;
  wire [6-1:0] lqg_k_shift_gw_5_net;
  wire [6-1:0] lqg_k_shift_gw_6_net;
  wire [6-1:0] lqg_k_shift_gw_7_net;
  wire [6-1:0] lqg_k_shift_gw_8_net;
  wire [6-1:0] lqg_k_shift_gw_9_net;
  wire [6-1:0] lqg_k_shift_gw_10_net;
  wire [6-1:0] lqg_k_shift_gw_11_net;
  wire [6-1:0] lqg_k_shift_gw_12_net;
  wire [6-1:0] lqg_k_shift_gw_13_net;
  assign lqg_k_shift_gw_0_net = lqg_k_shift_gw_0;
  assign lqg_k_shift_gw_1_net = lqg_k_shift_gw_1;
  assign lqg_k_shift_gw_2_net = lqg_k_shift_gw_2;
  assign lqg_k_shift_gw_3_net = lqg_k_shift_gw_3;
  assign lqg_k_shift_gw_4_net = lqg_k_shift_gw_4;
  assign lqg_k_shift_gw_5_net = lqg_k_shift_gw_5;
  assign lqg_k_shift_gw_6_net = lqg_k_shift_gw_6;
  assign lqg_k_shift_gw_7_net = lqg_k_shift_gw_7;
  assign lqg_k_shift_gw_8_net = lqg_k_shift_gw_8;
  assign lqg_k_shift_gw_9_net = lqg_k_shift_gw_9;
  assign lqg_k_shift_gw_10_net = lqg_k_shift_gw_10;
  assign lqg_k_shift_gw_11_net = lqg_k_shift_gw_11;
  assign lqg_k_shift_gw_12_net = lqg_k_shift_gw_12;
  assign lqg_k_shift_gw_13_net = lqg_k_shift_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_L_res_gw
module fpga_lqg_axi_lqg_l_res_gw (
  input [18-1:0] lqg_l_res_gw_0,
  input [18-1:0] lqg_l_res_gw_1,
  input [18-1:0] lqg_l_res_gw_2,
  input [18-1:0] lqg_l_res_gw_3,
  input [18-1:0] lqg_l_res_gw_4,
  input [18-1:0] lqg_l_res_gw_5,
  input [18-1:0] lqg_l_res_gw_6,
  input [18-1:0] lqg_l_res_gw_7,
  input [18-1:0] lqg_l_res_gw_8,
  input [18-1:0] lqg_l_res_gw_9,
  input [18-1:0] lqg_l_res_gw_10,
  input [18-1:0] lqg_l_res_gw_11,
  input [18-1:0] lqg_l_res_gw_12,
  input [18-1:0] lqg_l_res_gw_13
);
  wire [18-1:0] lqg_l_res_gw_11_net;
  wire [18-1:0] lqg_l_res_gw_12_net;
  wire [18-1:0] lqg_l_res_gw_13_net;
  wire [18-1:0] lqg_l_res_gw_0_net;
  wire [18-1:0] lqg_l_res_gw_1_net;
  wire [18-1:0] lqg_l_res_gw_2_net;
  wire [18-1:0] lqg_l_res_gw_3_net;
  wire [18-1:0] lqg_l_res_gw_4_net;
  wire [18-1:0] lqg_l_res_gw_5_net;
  wire [18-1:0] lqg_l_res_gw_6_net;
  wire [18-1:0] lqg_l_res_gw_7_net;
  wire [18-1:0] lqg_l_res_gw_8_net;
  wire [18-1:0] lqg_l_res_gw_9_net;
  wire [18-1:0] lqg_l_res_gw_10_net;
  assign lqg_l_res_gw_0_net = lqg_l_res_gw_0;
  assign lqg_l_res_gw_1_net = lqg_l_res_gw_1;
  assign lqg_l_res_gw_2_net = lqg_l_res_gw_2;
  assign lqg_l_res_gw_3_net = lqg_l_res_gw_3;
  assign lqg_l_res_gw_4_net = lqg_l_res_gw_4;
  assign lqg_l_res_gw_5_net = lqg_l_res_gw_5;
  assign lqg_l_res_gw_6_net = lqg_l_res_gw_6;
  assign lqg_l_res_gw_7_net = lqg_l_res_gw_7;
  assign lqg_l_res_gw_8_net = lqg_l_res_gw_8;
  assign lqg_l_res_gw_9_net = lqg_l_res_gw_9;
  assign lqg_l_res_gw_10_net = lqg_l_res_gw_10;
  assign lqg_l_res_gw_11_net = lqg_l_res_gw_11;
  assign lqg_l_res_gw_12_net = lqg_l_res_gw_12;
  assign lqg_l_res_gw_13_net = lqg_l_res_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/LQG_L_shift_gw
module fpga_lqg_axi_lqg_l_shift_gw (
  input [5-1:0] lqg_l_shift_gw_0,
  input [5-1:0] lqg_l_shift_gw_1,
  input [5-1:0] lqg_l_shift_gw_2,
  input [5-1:0] lqg_l_shift_gw_3,
  input [5-1:0] lqg_l_shift_gw_4,
  input [5-1:0] lqg_l_shift_gw_5,
  input [5-1:0] lqg_l_shift_gw_6,
  input [5-1:0] lqg_l_shift_gw_7,
  input [5-1:0] lqg_l_shift_gw_8,
  input [5-1:0] lqg_l_shift_gw_9,
  input [5-1:0] lqg_l_shift_gw_10,
  input [5-1:0] lqg_l_shift_gw_11,
  input [5-1:0] lqg_l_shift_gw_12,
  input [5-1:0] lqg_l_shift_gw_13
);
  wire [5-1:0] lqg_l_shift_gw_0_net;
  wire [5-1:0] lqg_l_shift_gw_1_net;
  wire [5-1:0] lqg_l_shift_gw_2_net;
  wire [5-1:0] lqg_l_shift_gw_3_net;
  wire [5-1:0] lqg_l_shift_gw_4_net;
  wire [5-1:0] lqg_l_shift_gw_5_net;
  wire [5-1:0] lqg_l_shift_gw_6_net;
  wire [5-1:0] lqg_l_shift_gw_7_net;
  wire [5-1:0] lqg_l_shift_gw_8_net;
  wire [5-1:0] lqg_l_shift_gw_9_net;
  wire [5-1:0] lqg_l_shift_gw_10_net;
  wire [5-1:0] lqg_l_shift_gw_11_net;
  wire [5-1:0] lqg_l_shift_gw_12_net;
  wire [5-1:0] lqg_l_shift_gw_13_net;
  assign lqg_l_shift_gw_0_net = lqg_l_shift_gw_0;
  assign lqg_l_shift_gw_1_net = lqg_l_shift_gw_1;
  assign lqg_l_shift_gw_2_net = lqg_l_shift_gw_2;
  assign lqg_l_shift_gw_3_net = lqg_l_shift_gw_3;
  assign lqg_l_shift_gw_4_net = lqg_l_shift_gw_4;
  assign lqg_l_shift_gw_5_net = lqg_l_shift_gw_5;
  assign lqg_l_shift_gw_6_net = lqg_l_shift_gw_6;
  assign lqg_l_shift_gw_7_net = lqg_l_shift_gw_7;
  assign lqg_l_shift_gw_8_net = lqg_l_shift_gw_8;
  assign lqg_l_shift_gw_9_net = lqg_l_shift_gw_9;
  assign lqg_l_shift_gw_10_net = lqg_l_shift_gw_10;
  assign lqg_l_shift_gw_11_net = lqg_l_shift_gw_11;
  assign lqg_l_shift_gw_12_net = lqg_l_shift_gw_12;
  assign lqg_l_shift_gw_13_net = lqg_l_shift_gw_13;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/WTF_simulink_get_your_types_correct
module fpga_lqg_axi_wtf_simulink_get_your_types_correct (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  sysgen_reinterpret_74f17bf17a reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/WTF_simulink_get_your_types_correct1
module fpga_lqg_axi_wtf_simulink_get_your_types_correct1_x0 (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  output [14-1:0] out_1,
  output [14-1:0] out_2
);
  wire [14-1:0] reinterpret0_output_port_net;
  wire [14-1:0] reinterpret1_output_port_net;
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] convert1_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  sysgen_reinterpret_b65f09bc7c reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_b65f09bc7c reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/WTF_simulink_get_your_types_correct2
module fpga_lqg_axi_wtf_simulink_get_your_types_correct2_x0 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  sysgen_reinterpret_74f17bf17a reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct
module fpga_lqg_axi_wtf_simulink_get_your_types_correct_x0 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [25-1:0] convert2_dout_net;
  wire [25-1:0] convert3_dout_net;
  wire [25-1:0] convert4_dout_net;
  wire [25-1:0] convert5_dout_net;
  wire [25-1:0] convert6_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign convert4_dout_net = in_5;
  assign convert5_dout_net = in_6;
  assign convert6_dout_net = in_7;
  sysgen_reinterpret_74f17bf17a reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert3_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert4_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert5_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_74f17bf17a reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert6_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct1
module fpga_lqg_axi_wtf_simulink_get_your_types_correct1 (
  input [28-1:0] in_1,
  input [28-1:0] in_2,
  input [28-1:0] in_3,
  input [28-1:0] in_4,
  input [28-1:0] in_5,
  input [28-1:0] in_6,
  input [28-1:0] in_7,
  output [28-1:0] out_1,
  output [28-1:0] out_2,
  output [28-1:0] out_3,
  output [28-1:0] out_4,
  output [28-1:0] out_5,
  output [28-1:0] out_6,
  output [28-1:0] out_7
);
  wire [28-1:0] reinterpret0_output_port_net;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net;
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign convert4_dout_net = in_5;
  assign convert5_dout_net = in_6;
  assign convert6_dout_net = in_7;
  sysgen_reinterpret_e18e0698e0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert3_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert4_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert5_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert6_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct2
module fpga_lqg_axi_wtf_simulink_get_your_types_correct2 (
  input [28-1:0] in_1,
  input [28-1:0] in_2,
  input [28-1:0] in_3,
  input [28-1:0] in_4,
  input [28-1:0] in_5,
  input [28-1:0] in_6,
  input [28-1:0] in_7,
  output [28-1:0] out_1,
  output [28-1:0] out_2,
  output [28-1:0] out_3,
  output [28-1:0] out_4,
  output [28-1:0] out_5,
  output [28-1:0] out_6,
  output [28-1:0] out_7
);
  wire [28-1:0] reinterpret0_output_port_net;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net;
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign convert4_dout_net = in_5;
  assign convert5_dout_net = in_6;
  assign convert6_dout_net = in_7;
  sysgen_reinterpret_e18e0698e0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert3_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert4_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert5_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert6_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct3
module fpga_lqg_axi_wtf_simulink_get_your_types_correct3 (
  input [28-1:0] in_1,
  input [28-1:0] in_2,
  input [28-1:0] in_3,
  input [28-1:0] in_4,
  input [28-1:0] in_5,
  input [28-1:0] in_6,
  input [28-1:0] in_7,
  output [28-1:0] out_1,
  output [28-1:0] out_2,
  output [28-1:0] out_3,
  output [28-1:0] out_4,
  output [28-1:0] out_5,
  output [28-1:0] out_6,
  output [28-1:0] out_7
);
  wire [28-1:0] reinterpret0_output_port_net;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net;
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign convert4_dout_net = in_5;
  assign convert5_dout_net = in_6;
  assign convert6_dout_net = in_7;
  sysgen_reinterpret_e18e0698e0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert0_dout_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert3_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert4_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert5_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_e18e0698e0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert6_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct4
module fpga_lqg_axi_wtf_simulink_get_your_types_correct4 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net_x0;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net_x0;
  wire [43-1:0] reinterpret3_output_port_net_x0;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net_x0;
  wire [43-1:0] reinterpret6_output_port_net_x0;
  assign out_1 = reinterpret0_output_port_net_x0;
  assign out_2 = reinterpret1_output_port_net_x0;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign reinterpret0_output_port_net = in_1;
  assign reinterpret1_output_port_net = in_2;
  assign reinterpret2_output_port_net_x0 = in_3;
  assign reinterpret3_output_port_net_x0 = in_4;
  assign reinterpret4_output_port_net_x0 = in_5;
  assign reinterpret5_output_port_net_x0 = in_6;
  assign reinterpret6_output_port_net_x0 = in_7;
  sysgen_reinterpret_0954554b5b reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net),
    .output_port(reinterpret0_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net),
    .output_port(reinterpret1_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret3_output_port_net_x0),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net_x0),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret5_output_port_net_x0),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret6_output_port_net_x0),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct5
module fpga_lqg_axi_wtf_simulink_get_your_types_correct5 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net_x0;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net_x0;
  wire [43-1:0] reinterpret3_output_port_net_x0;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net_x0;
  wire [43-1:0] reinterpret6_output_port_net_x0;
  assign out_1 = reinterpret0_output_port_net_x0;
  assign out_2 = reinterpret1_output_port_net_x0;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign reinterpret0_output_port_net = in_1;
  assign reinterpret1_output_port_net = in_2;
  assign reinterpret2_output_port_net_x0 = in_3;
  assign reinterpret3_output_port_net_x0 = in_4;
  assign reinterpret4_output_port_net_x0 = in_5;
  assign reinterpret5_output_port_net_x0 = in_6;
  assign reinterpret6_output_port_net_x0 = in_7;
  sysgen_reinterpret_0954554b5b reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net),
    .output_port(reinterpret0_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net),
    .output_port(reinterpret1_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret3_output_port_net_x0),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net_x0),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret5_output_port_net_x0),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret6_output_port_net_x0),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/WTF_simulink_get_your_types_correct6
module fpga_lqg_axi_wtf_simulink_get_your_types_correct6 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net_x0;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net_x0;
  wire [43-1:0] reinterpret3_output_port_net_x0;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net_x0;
  wire [43-1:0] reinterpret6_output_port_net_x0;
  assign out_1 = reinterpret0_output_port_net_x0;
  assign out_2 = reinterpret1_output_port_net_x0;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign reinterpret0_output_port_net = in_1;
  assign reinterpret1_output_port_net = in_2;
  assign reinterpret2_output_port_net_x0 = in_3;
  assign reinterpret3_output_port_net_x0 = in_4;
  assign reinterpret4_output_port_net_x0 = in_5;
  assign reinterpret5_output_port_net_x0 = in_6;
  assign reinterpret6_output_port_net_x0 = in_7;
  sysgen_reinterpret_0954554b5b reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net),
    .output_port(reinterpret0_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net),
    .output_port(reinterpret1_output_port_net_x0)
  );
  sysgen_reinterpret_0954554b5b reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret3_output_port_net_x0),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net_x0),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret5_output_port_net_x0),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_0954554b5b reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret6_output_port_net_x0),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/cast_7Fix25-22
module fpga_lqg_axi_cast_7fix25_22 (
  input [28-1:0] i_1,
  input [28-1:0] i_2,
  input [28-1:0] i_3,
  input [28-1:0] i_4,
  input [28-1:0] i_5,
  input [28-1:0] i_6,
  input [28-1:0] i_7,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7
);
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [25-1:0] convert2_dout_net;
  wire [25-1:0] convert3_dout_net;
  wire [25-1:0] convert4_dout_net;
  wire [25-1:0] convert5_dout_net;
  wire [25-1:0] convert6_dout_net;
  wire [28-1:0] addsub0_s_net;
  wire [28-1:0] addsub1_s_net;
  wire [28-1:0] addsub2_s_net;
  wire [28-1:0] addsub3_s_net;
  wire [28-1:0] addsub4_s_net;
  wire [28-1:0] addsub5_s_net;
  wire [28-1:0] addsub6_s_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign o_5 = convert4_dout_net;
  assign o_6 = convert5_dout_net;
  assign o_7 = convert6_dout_net;
  assign addsub0_s_net = i_1;
  assign addsub1_s_net = i_2;
  assign addsub2_s_net = i_3;
  assign addsub3_s_net = i_4;
  assign addsub4_s_net = i_5;
  assign addsub5_s_net = i_6;
  assign addsub6_s_net = i_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub0_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub3_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(28),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub6_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/cast_7Fix28-22_B
module fpga_lqg_axi_cast_7fix28_22_b (
  input [43-1:0] i_1,
  input [43-1:0] i_2,
  input [43-1:0] i_3,
  input [43-1:0] i_4,
  input [43-1:0] i_5,
  input [43-1:0] i_6,
  input [43-1:0] i_7,
  input clk_1,
  input ce_1,
  output [28-1:0] o_1,
  output [28-1:0] o_2,
  output [28-1:0] o_3,
  output [28-1:0] o_4,
  output [28-1:0] o_5,
  output [28-1:0] o_6,
  output [28-1:0] o_7
);
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign o_5 = convert4_dout_net;
  assign o_6 = convert5_dout_net;
  assign o_7 = convert6_dout_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret2_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret5_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret6_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/cast_7Fix28-22_F
module fpga_lqg_axi_cast_7fix28_22_f (
  input [43-1:0] i_1,
  input [43-1:0] i_2,
  input [43-1:0] i_3,
  input [43-1:0] i_4,
  input [43-1:0] i_5,
  input [43-1:0] i_6,
  input [43-1:0] i_7,
  input clk_1,
  input ce_1,
  output [28-1:0] o_1,
  output [28-1:0] o_2,
  output [28-1:0] o_3,
  output [28-1:0] o_4,
  output [28-1:0] o_5,
  output [28-1:0] o_6,
  output [28-1:0] o_7
);
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign o_5 = convert4_dout_net;
  assign o_6 = convert5_dout_net;
  assign o_7 = convert6_dout_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret2_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret5_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret6_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/cast_7Fix28-22_L
module fpga_lqg_axi_cast_7fix28_22_l (
  input [43-1:0] i_1,
  input [43-1:0] i_2,
  input [43-1:0] i_3,
  input [43-1:0] i_4,
  input [43-1:0] i_5,
  input [43-1:0] i_6,
  input [43-1:0] i_7,
  input clk_1,
  input ce_1,
  output [28-1:0] o_1,
  output [28-1:0] o_2,
  output [28-1:0] o_3,
  output [28-1:0] o_4,
  output [28-1:0] o_5,
  output [28-1:0] o_6,
  output [28-1:0] o_7
);
  wire [28-1:0] convert0_dout_net;
  wire [28-1:0] convert1_dout_net;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign o_5 = convert4_dout_net;
  assign o_6 = convert5_dout_net;
  assign o_7 = convert6_dout_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret2_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret5_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret6_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_B/Scalar to Vector
module fpga_lqg_axi_scalar_to_vector_x3 (
  input [301-1:0] i,
  output [43-1:0] o_1,
  output [43-1:0] o_2,
  output [43-1:0] o_3,
  output [43-1:0] o_4,
  output [43-1:0] o_5,
  output [43-1:0] o_6,
  output [43-1:0] o_7
);
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign reinterpret1_output_port_net = i;
  fpga_lqg_axi_xlslice #(
    .new_lsb(0),
    .new_msb(42),
    .x_width(301),
    .y_width(43)
  )
  slice0 (
    .x(reinterpret1_output_port_net),
    .y(slice0_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(43),
    .new_msb(85),
    .x_width(301),
    .y_width(43)
  )
  slice1 (
    .x(reinterpret1_output_port_net),
    .y(slice1_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(86),
    .new_msb(128),
    .x_width(301),
    .y_width(43)
  )
  slice2 (
    .x(reinterpret1_output_port_net),
    .y(slice2_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(129),
    .new_msb(171),
    .x_width(301),
    .y_width(43)
  )
  slice3 (
    .x(reinterpret1_output_port_net),
    .y(slice3_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(172),
    .new_msb(214),
    .x_width(301),
    .y_width(43)
  )
  slice4 (
    .x(reinterpret1_output_port_net),
    .y(slice4_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(215),
    .new_msb(257),
    .x_width(301),
    .y_width(43)
  )
  slice5 (
    .x(reinterpret1_output_port_net),
    .y(slice5_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(258),
    .new_msb(300),
    .x_width(301),
    .y_width(43)
  )
  slice6 (
    .x(reinterpret1_output_port_net),
    .y(slice6_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_B/Vector Reinterpret3
module fpga_lqg_axi_vector_reinterpret3_x3 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  sysgen_reinterpret_37187b1f41 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_B
module fpga_lqg_axi_repr2vec_7fix43_37_b (
  input [301-1:0] rowmaj_in,
  output [43-1:0] vec_out_1,
  output [43-1:0] vec_out_2,
  output [43-1:0] vec_out_3,
  output [43-1:0] vec_out_4,
  output [43-1:0] vec_out_5,
  output [43-1:0] vec_out_6,
  output [43-1:0] vec_out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [301-1:0] reinterpret4_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign vec_out_1 = reinterpret0_output_port_net;
  assign vec_out_2 = reinterpret1_output_port_net_x0;
  assign vec_out_3 = reinterpret2_output_port_net;
  assign vec_out_4 = reinterpret3_output_port_net;
  assign vec_out_5 = reinterpret4_output_port_net_x0;
  assign vec_out_6 = reinterpret5_output_port_net;
  assign vec_out_7 = reinterpret6_output_port_net;
  assign reinterpret4_output_port_net = rowmaj_in;
  fpga_lqg_axi_scalar_to_vector_x3 scalar_to_vector (
    .i(reinterpret1_output_port_net),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net),
    .o_3(slice2_y_net),
    .o_4(slice3_y_net),
    .o_5(slice4_y_net),
    .o_6(slice5_y_net),
    .o_7(slice6_y_net)
  );
  fpga_lqg_axi_vector_reinterpret3_x3 vector_reinterpret3 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net),
    .in_3(slice2_y_net),
    .in_4(slice3_y_net),
    .in_5(slice4_y_net),
    .in_6(slice5_y_net),
    .in_7(slice6_y_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_F/Scalar to Vector
module fpga_lqg_axi_scalar_to_vector_x2 (
  input [301-1:0] i,
  output [43-1:0] o_1,
  output [43-1:0] o_2,
  output [43-1:0] o_3,
  output [43-1:0] o_4,
  output [43-1:0] o_5,
  output [43-1:0] o_6,
  output [43-1:0] o_7
);
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign reinterpret1_output_port_net = i;
  fpga_lqg_axi_xlslice #(
    .new_lsb(0),
    .new_msb(42),
    .x_width(301),
    .y_width(43)
  )
  slice0 (
    .x(reinterpret1_output_port_net),
    .y(slice0_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(43),
    .new_msb(85),
    .x_width(301),
    .y_width(43)
  )
  slice1 (
    .x(reinterpret1_output_port_net),
    .y(slice1_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(86),
    .new_msb(128),
    .x_width(301),
    .y_width(43)
  )
  slice2 (
    .x(reinterpret1_output_port_net),
    .y(slice2_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(129),
    .new_msb(171),
    .x_width(301),
    .y_width(43)
  )
  slice3 (
    .x(reinterpret1_output_port_net),
    .y(slice3_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(172),
    .new_msb(214),
    .x_width(301),
    .y_width(43)
  )
  slice4 (
    .x(reinterpret1_output_port_net),
    .y(slice4_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(215),
    .new_msb(257),
    .x_width(301),
    .y_width(43)
  )
  slice5 (
    .x(reinterpret1_output_port_net),
    .y(slice5_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(258),
    .new_msb(300),
    .x_width(301),
    .y_width(43)
  )
  slice6 (
    .x(reinterpret1_output_port_net),
    .y(slice6_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_F/Vector Reinterpret3
module fpga_lqg_axi_vector_reinterpret3_x2 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  sysgen_reinterpret_37187b1f41 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_F
module fpga_lqg_axi_repr2vec_7fix43_37_f (
  input [301-1:0] rowmaj_in,
  output [43-1:0] vec_out_1,
  output [43-1:0] vec_out_2,
  output [43-1:0] vec_out_3,
  output [43-1:0] vec_out_4,
  output [43-1:0] vec_out_5,
  output [43-1:0] vec_out_6,
  output [43-1:0] vec_out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [301-1:0] reinterpret4_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign vec_out_1 = reinterpret0_output_port_net;
  assign vec_out_2 = reinterpret1_output_port_net_x0;
  assign vec_out_3 = reinterpret2_output_port_net;
  assign vec_out_4 = reinterpret3_output_port_net;
  assign vec_out_5 = reinterpret4_output_port_net_x0;
  assign vec_out_6 = reinterpret5_output_port_net;
  assign vec_out_7 = reinterpret6_output_port_net;
  assign reinterpret4_output_port_net = rowmaj_in;
  fpga_lqg_axi_scalar_to_vector_x2 scalar_to_vector (
    .i(reinterpret1_output_port_net),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net),
    .o_3(slice2_y_net),
    .o_4(slice3_y_net),
    .o_5(slice4_y_net),
    .o_6(slice5_y_net),
    .o_7(slice6_y_net)
  );
  fpga_lqg_axi_vector_reinterpret3_x2 vector_reinterpret3 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net),
    .in_3(slice2_y_net),
    .in_4(slice3_y_net),
    .in_5(slice4_y_net),
    .in_6(slice5_y_net),
    .in_7(slice6_y_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_L/Scalar to Vector
module fpga_lqg_axi_scalar_to_vector_x1 (
  input [301-1:0] i,
  output [43-1:0] o_1,
  output [43-1:0] o_2,
  output [43-1:0] o_3,
  output [43-1:0] o_4,
  output [43-1:0] o_5,
  output [43-1:0] o_6,
  output [43-1:0] o_7
);
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign reinterpret1_output_port_net = i;
  fpga_lqg_axi_xlslice #(
    .new_lsb(0),
    .new_msb(42),
    .x_width(301),
    .y_width(43)
  )
  slice0 (
    .x(reinterpret1_output_port_net),
    .y(slice0_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(43),
    .new_msb(85),
    .x_width(301),
    .y_width(43)
  )
  slice1 (
    .x(reinterpret1_output_port_net),
    .y(slice1_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(86),
    .new_msb(128),
    .x_width(301),
    .y_width(43)
  )
  slice2 (
    .x(reinterpret1_output_port_net),
    .y(slice2_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(129),
    .new_msb(171),
    .x_width(301),
    .y_width(43)
  )
  slice3 (
    .x(reinterpret1_output_port_net),
    .y(slice3_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(172),
    .new_msb(214),
    .x_width(301),
    .y_width(43)
  )
  slice4 (
    .x(reinterpret1_output_port_net),
    .y(slice4_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(215),
    .new_msb(257),
    .x_width(301),
    .y_width(43)
  )
  slice5 (
    .x(reinterpret1_output_port_net),
    .y(slice5_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(258),
    .new_msb(300),
    .x_width(301),
    .y_width(43)
  )
  slice6 (
    .x(reinterpret1_output_port_net),
    .y(slice6_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_L/Vector Reinterpret3
module fpga_lqg_axi_vector_reinterpret3_x1 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  input [43-1:0] in_3,
  input [43-1:0] in_4,
  input [43-1:0] in_5,
  input [43-1:0] in_6,
  input [43-1:0] in_7,
  output [43-1:0] out_1,
  output [43-1:0] out_2,
  output [43-1:0] out_3,
  output [43-1:0] out_4,
  output [43-1:0] out_5,
  output [43-1:0] out_6,
  output [43-1:0] out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  sysgen_reinterpret_37187b1f41 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/repr2vec_7Fix43-37_L
module fpga_lqg_axi_repr2vec_7fix43_37_l (
  input [301-1:0] rowmaj_in,
  output [43-1:0] vec_out_1,
  output [43-1:0] vec_out_2,
  output [43-1:0] vec_out_3,
  output [43-1:0] vec_out_4,
  output [43-1:0] vec_out_5,
  output [43-1:0] vec_out_6,
  output [43-1:0] vec_out_7
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net_x0;
  wire [43-1:0] reinterpret2_output_port_net;
  wire [43-1:0] reinterpret3_output_port_net;
  wire [43-1:0] reinterpret4_output_port_net_x0;
  wire [43-1:0] reinterpret5_output_port_net;
  wire [43-1:0] reinterpret6_output_port_net;
  wire [301-1:0] reinterpret4_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [43-1:0] slice2_y_net;
  wire [43-1:0] slice3_y_net;
  wire [43-1:0] slice4_y_net;
  wire [43-1:0] slice5_y_net;
  wire [43-1:0] slice6_y_net;
  wire [301-1:0] reinterpret1_output_port_net;
  assign vec_out_1 = reinterpret0_output_port_net;
  assign vec_out_2 = reinterpret1_output_port_net_x0;
  assign vec_out_3 = reinterpret2_output_port_net;
  assign vec_out_4 = reinterpret3_output_port_net;
  assign vec_out_5 = reinterpret4_output_port_net_x0;
  assign vec_out_6 = reinterpret5_output_port_net;
  assign vec_out_7 = reinterpret6_output_port_net;
  assign reinterpret4_output_port_net = rowmaj_in;
  fpga_lqg_axi_scalar_to_vector_x1 scalar_to_vector (
    .i(reinterpret1_output_port_net),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net),
    .o_3(slice2_y_net),
    .o_4(slice3_y_net),
    .o_5(slice4_y_net),
    .o_6(slice5_y_net),
    .o_7(slice6_y_net)
  );
  fpga_lqg_axi_vector_reinterpret3_x1 vector_reinterpret3 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net),
    .in_3(slice2_y_net),
    .in_4(slice3_y_net),
    .in_5(slice4_y_net),
    .in_6(slice5_y_net),
    .in_7(slice6_y_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/vec2repr_7/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x9 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net_x0;
  wire [25-1:0] reinterpret3_output_port_net_x0;
  wire [25-1:0] reinterpret4_output_port_net_x0;
  wire [25-1:0] reinterpret5_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net_x0;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net_x0;
  assign out_4 = reinterpret3_output_port_net_x0;
  assign out_5 = reinterpret4_output_port_net_x0;
  assign out_6 = reinterpret5_output_port_net_x0;
  assign out_7 = reinterpret6_output_port_net_x0;
  assign reinterpret0_output_port_net_x0 = in_1;
  assign reinterpret1_output_port_net_x0 = in_2;
  assign reinterpret2_output_port_net = in_3;
  assign reinterpret3_output_port_net = in_4;
  assign reinterpret4_output_port_net = in_5;
  assign reinterpret5_output_port_net = in_6;
  assign reinterpret6_output_port_net = in_7;
  sysgen_reinterpret_b399b75fa4 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net_x0),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net_x0),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net),
    .output_port(reinterpret2_output_port_net_x0)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret3_output_port_net),
    .output_port(reinterpret3_output_port_net_x0)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net),
    .output_port(reinterpret4_output_port_net_x0)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret5_output_port_net),
    .output_port(reinterpret5_output_port_net_x0)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret6_output_port_net),
    .output_port(reinterpret6_output_port_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/vec2repr_7/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x9 (
  input [25-1:0] i_1,
  input [25-1:0] i_2,
  input [25-1:0] i_3,
  input [25-1:0] i_4,
  input [25-1:0] i_5,
  input [25-1:0] i_6,
  input [25-1:0] i_7,
  output [175-1:0] o
);
  wire [175-1:0] concat1_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  sysgen_concat_c06fd4d404 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret6_output_port_net),
    .in1(reinterpret5_output_port_net),
    .in2(reinterpret4_output_port_net),
    .in3(reinterpret3_output_port_net),
    .in4(reinterpret2_output_port_net),
    .in5(reinterpret1_output_port_net),
    .in6(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/vec2repr_7
module fpga_lqg_axi_vec2repr_7 (
  input [25-1:0] vec_in_1,
  input [25-1:0] vec_in_2,
  input [25-1:0] vec_in_3,
  input [25-1:0] vec_in_4,
  input [25-1:0] vec_in_5,
  input [25-1:0] vec_in_6,
  input [25-1:0] vec_in_7,
  output [175-1:0] rowmaj_out
);
  wire [175-1:0] reinterpret2_output_port_net_x0;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net_x0;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net_x1;
  wire [25-1:0] reinterpret3_output_port_net_x0;
  wire [25-1:0] reinterpret4_output_port_net_x0;
  wire [25-1:0] reinterpret5_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [175-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net_x0;
  assign reinterpret0_output_port_net = vec_in_1;
  assign reinterpret1_output_port_net = vec_in_2;
  assign reinterpret2_output_port_net = vec_in_3;
  assign reinterpret3_output_port_net = vec_in_4;
  assign reinterpret4_output_port_net = vec_in_5;
  assign reinterpret5_output_port_net = vec_in_6;
  assign reinterpret6_output_port_net_x0 = vec_in_7;
  fpga_lqg_axi_vector_reinterpret2_x9 vector_reinterpret2 (
    .in_1(reinterpret0_output_port_net),
    .in_2(reinterpret1_output_port_net),
    .in_3(reinterpret2_output_port_net),
    .in_4(reinterpret3_output_port_net),
    .in_5(reinterpret4_output_port_net),
    .in_6(reinterpret5_output_port_net),
    .in_7(reinterpret6_output_port_net_x0),
    .out_1(reinterpret0_output_port_net_x0),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net_x1),
    .out_4(reinterpret3_output_port_net_x0),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net_x0),
    .out_7(reinterpret6_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x9 vector_to_scalar (
    .i_1(reinterpret0_output_port_net_x0),
    .i_2(reinterpret1_output_port_net_x0),
    .i_3(reinterpret2_output_port_net_x1),
    .i_4(reinterpret3_output_port_net_x0),
    .i_5(reinterpret4_output_port_net_x0),
    .i_6(reinterpret5_output_port_net_x0),
    .i_7(reinterpret6_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_61ca92b88e reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/vecadd_F_B
module fpga_lqg_axi_vecadd_f_b (
  input [28-1:0] a_1,
  input [28-1:0] b_1,
  input [28-1:0] a_2,
  input [28-1:0] a_3,
  input [28-1:0] a_4,
  input [28-1:0] a_5,
  input [28-1:0] a_6,
  input [28-1:0] a_7,
  input [28-1:0] b_2,
  input [28-1:0] b_3,
  input [28-1:0] b_4,
  input [28-1:0] b_5,
  input [28-1:0] b_6,
  input [28-1:0] b_7,
  input clk_1,
  input ce_1,
  output [28-1:0] a_b_1,
  output [28-1:0] a_b_2,
  output [28-1:0] a_b_3,
  output [28-1:0] a_b_4,
  output [28-1:0] a_b_5,
  output [28-1:0] a_b_6,
  output [28-1:0] a_b_7
);
  wire [28-1:0] addsub0_s_net;
  wire [28-1:0] addsub1_s_net;
  wire [28-1:0] addsub2_s_net;
  wire [28-1:0] addsub3_s_net;
  wire [28-1:0] addsub4_s_net;
  wire [28-1:0] addsub5_s_net;
  wire [28-1:0] addsub6_s_net;
  wire [28-1:0] reinterpret0_output_port_net_x0;
  wire [28-1:0] reinterpret0_output_port_net;
  wire [28-1:0] reinterpret1_output_port_net_x0;
  wire [28-1:0] reinterpret2_output_port_net_x0;
  wire [28-1:0] reinterpret3_output_port_net_x0;
  wire [28-1:0] reinterpret4_output_port_net_x0;
  wire [28-1:0] reinterpret5_output_port_net_x0;
  wire [28-1:0] reinterpret6_output_port_net_x0;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net;
  wire clk_net;
  wire ce_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign a_b_3 = addsub2_s_net;
  assign a_b_4 = addsub3_s_net;
  assign a_b_5 = addsub4_s_net;
  assign a_b_6 = addsub5_s_net;
  assign a_b_7 = addsub6_s_net;
  assign reinterpret0_output_port_net_x0 = a_1;
  assign reinterpret0_output_port_net = b_1;
  assign reinterpret1_output_port_net_x0 = a_2;
  assign reinterpret2_output_port_net_x0 = a_3;
  assign reinterpret3_output_port_net_x0 = a_4;
  assign reinterpret4_output_port_net_x0 = a_5;
  assign reinterpret5_output_port_net_x0 = a_6;
  assign reinterpret6_output_port_net_x0 = a_7;
  assign reinterpret1_output_port_net = b_2;
  assign reinterpret2_output_port_net = b_3;
  assign reinterpret3_output_port_net = b_4;
  assign reinterpret4_output_port_net = b_5;
  assign reinterpret5_output_port_net = b_6;
  assign reinterpret6_output_port_net = b_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_addsub_660b30c429 addsub0 (
    .clr(1'b0),
    .a(reinterpret0_output_port_net_x0),
    .b(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_660b30c429 addsub1 (
    .clr(1'b0),
    .a(reinterpret1_output_port_net_x0),
    .b(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_660b30c429 addsub2 (
    .clr(1'b0),
    .a(reinterpret2_output_port_net_x0),
    .b(reinterpret2_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_660b30c429 addsub3 (
    .clr(1'b0),
    .a(reinterpret3_output_port_net_x0),
    .b(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_660b30c429 addsub4 (
    .clr(1'b0),
    .a(reinterpret4_output_port_net_x0),
    .b(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_660b30c429 addsub5 (
    .clr(1'b0),
    .a(reinterpret5_output_port_net_x0),
    .b(reinterpret5_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_660b30c429 addsub6 (
    .clr(1'b0),
    .a(reinterpret6_output_port_net_x0),
    .b(reinterpret6_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls/vecadd_F_B_L
module fpga_lqg_axi_vecadd_f_b_l (
  input [28-1:0] a_1,
  input [28-1:0] b_1,
  input [28-1:0] a_2,
  input [28-1:0] a_3,
  input [28-1:0] a_4,
  input [28-1:0] a_5,
  input [28-1:0] a_6,
  input [28-1:0] a_7,
  input [28-1:0] b_2,
  input [28-1:0] b_3,
  input [28-1:0] b_4,
  input [28-1:0] b_5,
  input [28-1:0] b_6,
  input [28-1:0] b_7,
  input clk_1,
  input ce_1,
  output [28-1:0] a_b_1,
  output [28-1:0] a_b_2,
  output [28-1:0] a_b_3,
  output [28-1:0] a_b_4,
  output [28-1:0] a_b_5,
  output [28-1:0] a_b_6,
  output [28-1:0] a_b_7
);
  wire [28-1:0] addsub0_s_net_x0;
  wire [28-1:0] addsub1_s_net_x0;
  wire [28-1:0] addsub2_s_net_x0;
  wire [28-1:0] addsub3_s_net_x0;
  wire [28-1:0] addsub4_s_net_x0;
  wire [28-1:0] addsub5_s_net_x0;
  wire [28-1:0] addsub6_s_net_x0;
  wire [28-1:0] addsub0_s_net;
  wire [28-1:0] reinterpret0_output_port_net;
  wire [28-1:0] addsub1_s_net;
  wire [28-1:0] addsub2_s_net;
  wire [28-1:0] addsub3_s_net;
  wire [28-1:0] addsub4_s_net;
  wire [28-1:0] addsub5_s_net;
  wire [28-1:0] addsub6_s_net;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net;
  wire clk_net;
  wire ce_net;
  assign a_b_1 = addsub0_s_net_x0;
  assign a_b_2 = addsub1_s_net_x0;
  assign a_b_3 = addsub2_s_net_x0;
  assign a_b_4 = addsub3_s_net_x0;
  assign a_b_5 = addsub4_s_net_x0;
  assign a_b_6 = addsub5_s_net_x0;
  assign a_b_7 = addsub6_s_net_x0;
  assign addsub0_s_net = a_1;
  assign reinterpret0_output_port_net = b_1;
  assign addsub1_s_net = a_2;
  assign addsub2_s_net = a_3;
  assign addsub3_s_net = a_4;
  assign addsub4_s_net = a_5;
  assign addsub5_s_net = a_6;
  assign addsub6_s_net = a_7;
  assign reinterpret1_output_port_net = b_2;
  assign reinterpret2_output_port_net = b_3;
  assign reinterpret3_output_port_net = b_4;
  assign reinterpret4_output_port_net = b_5;
  assign reinterpret5_output_port_net = b_6;
  assign reinterpret6_output_port_net = b_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_addsub_660b30c429 addsub0 (
    .clr(1'b0),
    .a(addsub0_s_net),
    .b(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub1 (
    .clr(1'b0),
    .a(addsub1_s_net),
    .b(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub2 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(reinterpret2_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub3 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub4 (
    .clr(1'b0),
    .a(addsub4_s_net),
    .b(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub5 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(reinterpret5_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net_x0)
  );
  sysgen_addsub_660b30c429 addsub6 (
    .clr(1'b0),
    .a(addsub6_s_net),
    .b(reinterpret6_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/accumulate_matmuls
module fpga_lqg_axi_accumulate_matmuls (
  input [301-1:0] f_xk,
  input [301-1:0] gamma_uk,
  input [301-1:0] l_yk,
  input clk_1,
  input ce_1,
  output [175-1:0] out1
);
  wire [175-1:0] reinterpret2_output_port_net_x8;
  wire [301-1:0] reinterpret4_output_port_net_x3;
  wire [301-1:0] reinterpret4_output_port_net_x5;
  wire [301-1:0] reinterpret4_output_port_net_x4;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] reinterpret0_output_port_net_x3;
  wire [25-1:0] reinterpret1_output_port_net_x3;
  wire [25-1:0] reinterpret2_output_port_net_x3;
  wire [25-1:0] reinterpret3_output_port_net_x3;
  wire [25-1:0] reinterpret4_output_port_net_x6;
  wire [25-1:0] reinterpret5_output_port_net_x4;
  wire [25-1:0] reinterpret6_output_port_net_x3;
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [25-1:0] convert2_dout_net_x0;
  wire [25-1:0] convert3_dout_net_x0;
  wire [25-1:0] convert4_dout_net_x0;
  wire [25-1:0] convert5_dout_net_x0;
  wire [25-1:0] convert6_dout_net_x0;
  wire [28-1:0] reinterpret0_output_port_net_x5;
  wire [28-1:0] reinterpret1_output_port_net_x4;
  wire [28-1:0] reinterpret2_output_port_net_x4;
  wire [28-1:0] reinterpret3_output_port_net_x4;
  wire [28-1:0] reinterpret4_output_port_net_x7;
  wire [28-1:0] reinterpret5_output_port_net_x1;
  wire [28-1:0] reinterpret6_output_port_net_x4;
  wire [28-1:0] convert0_dout_net_x2;
  wire [28-1:0] convert1_dout_net_x2;
  wire [28-1:0] convert2_dout_net_x2;
  wire [28-1:0] convert3_dout_net;
  wire [28-1:0] convert4_dout_net;
  wire [28-1:0] convert5_dout_net;
  wire [28-1:0] convert6_dout_net;
  wire [28-1:0] reinterpret0_output_port_net_x4;
  wire [28-1:0] reinterpret1_output_port_net_x0;
  wire [28-1:0] reinterpret2_output_port_net_x0;
  wire [28-1:0] reinterpret3_output_port_net_x1;
  wire [28-1:0] reinterpret4_output_port_net_x0;
  wire [28-1:0] reinterpret5_output_port_net;
  wire [28-1:0] reinterpret6_output_port_net_x0;
  wire [28-1:0] convert0_dout_net_x0;
  wire [28-1:0] convert1_dout_net_x0;
  wire [28-1:0] convert2_dout_net;
  wire [28-1:0] convert3_dout_net_x1;
  wire [28-1:0] convert4_dout_net_x1;
  wire [28-1:0] convert5_dout_net_x1;
  wire [28-1:0] convert6_dout_net_x1;
  wire [28-1:0] reinterpret0_output_port_net_x0;
  wire [28-1:0] reinterpret1_output_port_net;
  wire [28-1:0] reinterpret2_output_port_net;
  wire [28-1:0] reinterpret3_output_port_net;
  wire [28-1:0] reinterpret4_output_port_net;
  wire [28-1:0] reinterpret5_output_port_net_x0;
  wire [28-1:0] reinterpret6_output_port_net;
  wire [28-1:0] convert0_dout_net_x1;
  wire [28-1:0] convert1_dout_net_x1;
  wire [28-1:0] convert2_dout_net_x1;
  wire [28-1:0] convert3_dout_net_x2;
  wire [28-1:0] convert4_dout_net_x2;
  wire [28-1:0] convert5_dout_net_x2;
  wire [28-1:0] convert6_dout_net_x2;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net_x1;
  wire [43-1:0] reinterpret2_output_port_net_x1;
  wire [43-1:0] reinterpret3_output_port_net_x0;
  wire [43-1:0] reinterpret4_output_port_net_x1;
  wire [43-1:0] reinterpret5_output_port_net_x2;
  wire [43-1:0] reinterpret6_output_port_net_x1;
  wire [43-1:0] reinterpret0_output_port_net_x8;
  wire [43-1:0] reinterpret1_output_port_net_x8;
  wire [43-1:0] reinterpret2_output_port_net_x7;
  wire [43-1:0] reinterpret3_output_port_net_x7;
  wire [43-1:0] reinterpret4_output_port_net_x10;
  wire [43-1:0] reinterpret5_output_port_net_x7;
  wire [43-1:0] reinterpret6_output_port_net_x7;
  wire [43-1:0] reinterpret0_output_port_net_x1;
  wire [43-1:0] reinterpret1_output_port_net_x2;
  wire [43-1:0] reinterpret2_output_port_net_x2;
  wire [43-1:0] reinterpret3_output_port_net_x2;
  wire [43-1:0] reinterpret4_output_port_net_x2;
  wire [43-1:0] reinterpret5_output_port_net_x3;
  wire [43-1:0] reinterpret6_output_port_net_x2;
  wire [43-1:0] reinterpret0_output_port_net_x6;
  wire [43-1:0] reinterpret1_output_port_net_x6;
  wire [43-1:0] reinterpret2_output_port_net_x5;
  wire [43-1:0] reinterpret3_output_port_net_x5;
  wire [43-1:0] reinterpret4_output_port_net_x8;
  wire [43-1:0] reinterpret5_output_port_net_x6;
  wire [43-1:0] reinterpret6_output_port_net_x5;
  wire [43-1:0] reinterpret0_output_port_net_x2;
  wire [43-1:0] reinterpret1_output_port_net_x5;
  wire [43-1:0] reinterpret2_output_port_net_x9;
  wire [43-1:0] reinterpret3_output_port_net_x8;
  wire [43-1:0] reinterpret4_output_port_net_x11;
  wire [43-1:0] reinterpret5_output_port_net_x8;
  wire [43-1:0] reinterpret6_output_port_net_x8;
  wire [43-1:0] reinterpret0_output_port_net_x7;
  wire [43-1:0] reinterpret1_output_port_net_x7;
  wire [43-1:0] reinterpret2_output_port_net_x6;
  wire [43-1:0] reinterpret3_output_port_net_x6;
  wire [43-1:0] reinterpret4_output_port_net_x9;
  wire [43-1:0] reinterpret5_output_port_net_x5;
  wire [43-1:0] reinterpret6_output_port_net_x6;
  wire [28-1:0] addsub0_s_net;
  wire [28-1:0] addsub1_s_net;
  wire [28-1:0] addsub2_s_net;
  wire [28-1:0] addsub3_s_net;
  wire [28-1:0] addsub4_s_net;
  wire [28-1:0] addsub5_s_net;
  wire [28-1:0] addsub6_s_net;
  wire [28-1:0] addsub0_s_net_x0;
  wire [28-1:0] addsub1_s_net_x0;
  wire [28-1:0] addsub2_s_net_x0;
  wire [28-1:0] addsub3_s_net_x0;
  wire [28-1:0] addsub4_s_net_x0;
  wire [28-1:0] addsub5_s_net_x0;
  wire [28-1:0] addsub6_s_net_x0;
  assign out1 = reinterpret2_output_port_net_x8;
  assign reinterpret4_output_port_net_x3 = f_xk;
  assign reinterpret4_output_port_net_x5 = gamma_uk;
  assign reinterpret4_output_port_net_x4 = l_yk;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_wtf_simulink_get_your_types_correct_x0 wtf_simulink_get_your_types_correct (
    .in_1(convert0_dout_net),
    .in_2(convert1_dout_net),
    .in_3(convert2_dout_net_x0),
    .in_4(convert3_dout_net_x0),
    .in_5(convert4_dout_net_x0),
    .in_6(convert5_dout_net_x0),
    .in_7(convert6_dout_net_x0),
    .out_1(reinterpret0_output_port_net_x3),
    .out_2(reinterpret1_output_port_net_x3),
    .out_3(reinterpret2_output_port_net_x3),
    .out_4(reinterpret3_output_port_net_x3),
    .out_5(reinterpret4_output_port_net_x6),
    .out_6(reinterpret5_output_port_net_x4),
    .out_7(reinterpret6_output_port_net_x3)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct1 wtf_simulink_get_your_types_correct1 (
    .in_1(convert0_dout_net_x2),
    .in_2(convert1_dout_net_x2),
    .in_3(convert2_dout_net_x2),
    .in_4(convert3_dout_net),
    .in_5(convert4_dout_net),
    .in_6(convert5_dout_net),
    .in_7(convert6_dout_net),
    .out_1(reinterpret0_output_port_net_x5),
    .out_2(reinterpret1_output_port_net_x4),
    .out_3(reinterpret2_output_port_net_x4),
    .out_4(reinterpret3_output_port_net_x4),
    .out_5(reinterpret4_output_port_net_x7),
    .out_6(reinterpret5_output_port_net_x1),
    .out_7(reinterpret6_output_port_net_x4)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct2 wtf_simulink_get_your_types_correct2 (
    .in_1(convert0_dout_net_x0),
    .in_2(convert1_dout_net_x0),
    .in_3(convert2_dout_net),
    .in_4(convert3_dout_net_x1),
    .in_5(convert4_dout_net_x1),
    .in_6(convert5_dout_net_x1),
    .in_7(convert6_dout_net_x1),
    .out_1(reinterpret0_output_port_net_x4),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net_x1),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net_x0)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct3 wtf_simulink_get_your_types_correct3 (
    .in_1(convert0_dout_net_x1),
    .in_2(convert1_dout_net_x1),
    .in_3(convert2_dout_net_x1),
    .in_4(convert3_dout_net_x2),
    .in_5(convert4_dout_net_x2),
    .in_6(convert5_dout_net_x2),
    .in_7(convert6_dout_net_x2),
    .out_1(reinterpret0_output_port_net_x0),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net_x0),
    .out_7(reinterpret6_output_port_net)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct4 wtf_simulink_get_your_types_correct4 (
    .in_1(reinterpret0_output_port_net_x8),
    .in_2(reinterpret1_output_port_net_x8),
    .in_3(reinterpret2_output_port_net_x7),
    .in_4(reinterpret3_output_port_net_x7),
    .in_5(reinterpret4_output_port_net_x10),
    .in_6(reinterpret5_output_port_net_x7),
    .in_7(reinterpret6_output_port_net_x7),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net_x1),
    .out_3(reinterpret2_output_port_net_x1),
    .out_4(reinterpret3_output_port_net_x0),
    .out_5(reinterpret4_output_port_net_x1),
    .out_6(reinterpret5_output_port_net_x2),
    .out_7(reinterpret6_output_port_net_x1)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct5 wtf_simulink_get_your_types_correct5 (
    .in_1(reinterpret0_output_port_net_x6),
    .in_2(reinterpret1_output_port_net_x6),
    .in_3(reinterpret2_output_port_net_x5),
    .in_4(reinterpret3_output_port_net_x5),
    .in_5(reinterpret4_output_port_net_x8),
    .in_6(reinterpret5_output_port_net_x6),
    .in_7(reinterpret6_output_port_net_x5),
    .out_1(reinterpret0_output_port_net_x1),
    .out_2(reinterpret1_output_port_net_x2),
    .out_3(reinterpret2_output_port_net_x2),
    .out_4(reinterpret3_output_port_net_x2),
    .out_5(reinterpret4_output_port_net_x2),
    .out_6(reinterpret5_output_port_net_x3),
    .out_7(reinterpret6_output_port_net_x2)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct6 wtf_simulink_get_your_types_correct6 (
    .in_1(reinterpret0_output_port_net_x7),
    .in_2(reinterpret1_output_port_net_x7),
    .in_3(reinterpret2_output_port_net_x6),
    .in_4(reinterpret3_output_port_net_x6),
    .in_5(reinterpret4_output_port_net_x9),
    .in_6(reinterpret5_output_port_net_x5),
    .in_7(reinterpret6_output_port_net_x6),
    .out_1(reinterpret0_output_port_net_x2),
    .out_2(reinterpret1_output_port_net_x5),
    .out_3(reinterpret2_output_port_net_x9),
    .out_4(reinterpret3_output_port_net_x8),
    .out_5(reinterpret4_output_port_net_x11),
    .out_6(reinterpret5_output_port_net_x8),
    .out_7(reinterpret6_output_port_net_x8)
  );
  fpga_lqg_axi_cast_7fix25_22 cast_7fix25_22 (
    .i_1(addsub0_s_net),
    .i_2(addsub1_s_net),
    .i_3(addsub2_s_net),
    .i_4(addsub3_s_net),
    .i_5(addsub4_s_net),
    .i_6(addsub5_s_net),
    .i_7(addsub6_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net),
    .o_2(convert1_dout_net),
    .o_3(convert2_dout_net_x0),
    .o_4(convert3_dout_net_x0),
    .o_5(convert4_dout_net_x0),
    .o_6(convert5_dout_net_x0),
    .o_7(convert6_dout_net_x0)
  );
  fpga_lqg_axi_cast_7fix28_22_b cast_7fix28_22_b (
    .i_1(reinterpret0_output_port_net_x1),
    .i_2(reinterpret1_output_port_net_x2),
    .i_3(reinterpret2_output_port_net_x2),
    .i_4(reinterpret3_output_port_net_x2),
    .i_5(reinterpret4_output_port_net_x2),
    .i_6(reinterpret5_output_port_net_x3),
    .i_7(reinterpret6_output_port_net_x2),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net_x0),
    .o_2(convert1_dout_net_x0),
    .o_3(convert2_dout_net),
    .o_4(convert3_dout_net_x1),
    .o_5(convert4_dout_net_x1),
    .o_6(convert5_dout_net_x1),
    .o_7(convert6_dout_net_x1)
  );
  fpga_lqg_axi_cast_7fix28_22_f cast_7fix28_22_f (
    .i_1(reinterpret0_output_port_net_x2),
    .i_2(reinterpret1_output_port_net_x5),
    .i_3(reinterpret2_output_port_net_x9),
    .i_4(reinterpret3_output_port_net_x8),
    .i_5(reinterpret4_output_port_net_x11),
    .i_6(reinterpret5_output_port_net_x8),
    .i_7(reinterpret6_output_port_net_x8),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net_x1),
    .o_2(convert1_dout_net_x1),
    .o_3(convert2_dout_net_x1),
    .o_4(convert3_dout_net_x2),
    .o_5(convert4_dout_net_x2),
    .o_6(convert5_dout_net_x2),
    .o_7(convert6_dout_net_x2)
  );
  fpga_lqg_axi_cast_7fix28_22_l cast_7fix28_22_l (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net_x1),
    .i_3(reinterpret2_output_port_net_x1),
    .i_4(reinterpret3_output_port_net_x0),
    .i_5(reinterpret4_output_port_net_x1),
    .i_6(reinterpret5_output_port_net_x2),
    .i_7(reinterpret6_output_port_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net_x2),
    .o_2(convert1_dout_net_x2),
    .o_3(convert2_dout_net_x2),
    .o_4(convert3_dout_net),
    .o_5(convert4_dout_net),
    .o_6(convert5_dout_net),
    .o_7(convert6_dout_net)
  );
  fpga_lqg_axi_repr2vec_7fix43_37_b repr2vec_7fix43_37_b (
    .rowmaj_in(reinterpret4_output_port_net_x5),
    .vec_out_1(reinterpret0_output_port_net_x6),
    .vec_out_2(reinterpret1_output_port_net_x6),
    .vec_out_3(reinterpret2_output_port_net_x5),
    .vec_out_4(reinterpret3_output_port_net_x5),
    .vec_out_5(reinterpret4_output_port_net_x8),
    .vec_out_6(reinterpret5_output_port_net_x6),
    .vec_out_7(reinterpret6_output_port_net_x5)
  );
  fpga_lqg_axi_repr2vec_7fix43_37_f repr2vec_7fix43_37_f (
    .rowmaj_in(reinterpret4_output_port_net_x3),
    .vec_out_1(reinterpret0_output_port_net_x7),
    .vec_out_2(reinterpret1_output_port_net_x7),
    .vec_out_3(reinterpret2_output_port_net_x6),
    .vec_out_4(reinterpret3_output_port_net_x6),
    .vec_out_5(reinterpret4_output_port_net_x9),
    .vec_out_6(reinterpret5_output_port_net_x5),
    .vec_out_7(reinterpret6_output_port_net_x6)
  );
  fpga_lqg_axi_repr2vec_7fix43_37_l repr2vec_7fix43_37_l (
    .rowmaj_in(reinterpret4_output_port_net_x4),
    .vec_out_1(reinterpret0_output_port_net_x8),
    .vec_out_2(reinterpret1_output_port_net_x8),
    .vec_out_3(reinterpret2_output_port_net_x7),
    .vec_out_4(reinterpret3_output_port_net_x7),
    .vec_out_5(reinterpret4_output_port_net_x10),
    .vec_out_6(reinterpret5_output_port_net_x7),
    .vec_out_7(reinterpret6_output_port_net_x7)
  );
  fpga_lqg_axi_vec2repr_7 vec2repr_7 (
    .vec_in_1(reinterpret0_output_port_net_x3),
    .vec_in_2(reinterpret1_output_port_net_x3),
    .vec_in_3(reinterpret2_output_port_net_x3),
    .vec_in_4(reinterpret3_output_port_net_x3),
    .vec_in_5(reinterpret4_output_port_net_x6),
    .vec_in_6(reinterpret5_output_port_net_x4),
    .vec_in_7(reinterpret6_output_port_net_x3),
    .rowmaj_out(reinterpret2_output_port_net_x8)
  );
  fpga_lqg_axi_vecadd_f_b vecadd_f_b (
    .a_1(reinterpret0_output_port_net_x0),
    .b_1(reinterpret0_output_port_net_x4),
    .a_2(reinterpret1_output_port_net),
    .a_3(reinterpret2_output_port_net),
    .a_4(reinterpret3_output_port_net),
    .a_5(reinterpret4_output_port_net),
    .a_6(reinterpret5_output_port_net_x0),
    .a_7(reinterpret6_output_port_net),
    .b_2(reinterpret1_output_port_net_x0),
    .b_3(reinterpret2_output_port_net_x0),
    .b_4(reinterpret3_output_port_net_x1),
    .b_5(reinterpret4_output_port_net_x0),
    .b_6(reinterpret5_output_port_net),
    .b_7(reinterpret6_output_port_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_b_1(addsub0_s_net_x0),
    .a_b_2(addsub1_s_net_x0),
    .a_b_3(addsub2_s_net_x0),
    .a_b_4(addsub3_s_net_x0),
    .a_b_5(addsub4_s_net_x0),
    .a_b_6(addsub5_s_net_x0),
    .a_b_7(addsub6_s_net_x0)
  );
  fpga_lqg_axi_vecadd_f_b_l vecadd_f_b_l (
    .a_1(addsub0_s_net_x0),
    .b_1(reinterpret0_output_port_net_x5),
    .a_2(addsub1_s_net_x0),
    .a_3(addsub2_s_net_x0),
    .a_4(addsub3_s_net_x0),
    .a_5(addsub4_s_net_x0),
    .a_6(addsub5_s_net_x0),
    .a_7(addsub6_s_net_x0),
    .b_2(reinterpret1_output_port_net_x4),
    .b_3(reinterpret2_output_port_net_x4),
    .b_4(reinterpret3_output_port_net_x4),
    .b_5(reinterpret4_output_port_net_x7),
    .b_6(reinterpret5_output_port_net_x1),
    .b_7(reinterpret6_output_port_net_x4),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_b_1(addsub0_s_net),
    .a_b_2(addsub1_s_net),
    .a_b_3(addsub2_s_net),
    .a_b_4(addsub3_s_net),
    .a_b_5(addsub4_s_net),
    .a_b_6(addsub5_s_net),
    .a_b_7(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/add_yk_offset
module fpga_lqg_axi_add_yk_offset (
  input [14-1:0] a_1,
  input [14-1:0] b_1,
  input [14-1:0] a_2,
  input [14-1:0] b_2,
  input clk_1,
  input ce_1,
  output [14-1:0] a_b_1,
  output [14-1:0] a_b_2
);
  wire [14-1:0] addsub0_s_net;
  wire [14-1:0] addsub1_s_net;
  wire [14-1:0] yk_gw_0_net;
  wire [14-1:0] yk_offset_gw_0_net;
  wire [14-1:0] yk_gw_1_net;
  wire [14-1:0] yk_offset_gw_1_net;
  wire clk_net;
  wire ce_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign yk_gw_0_net = a_1;
  assign yk_offset_gw_0_net = b_1;
  assign yk_gw_1_net = a_2;
  assign yk_offset_gw_1_net = b_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_addsub_784db07fc7 addsub0 (
    .clr(1'b0),
    .a(yk_gw_0_net),
    .b(yk_offset_gw_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_784db07fc7 addsub1 (
    .clr(1'b0),
    .a(yk_gw_1_net),
    .b(yk_offset_gw_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/add_yk_offset1
module fpga_lqg_axi_add_yk_offset1 (
  input [14-1:0] a_1,
  input [14-1:0] b_1,
  input [14-1:0] a_2,
  input [14-1:0] b_2,
  input clk_1,
  input ce_1,
  output [14-1:0] a_b_1,
  output [14-1:0] a_b_2
);
  wire [14-1:0] addsub0_s_net;
  wire [14-1:0] addsub1_s_net;
  wire [14-1:0] mult0_p_net;
  wire [14-1:0] uk_offset_gw_0_net;
  wire [14-1:0] mult1_p_net;
  wire [14-1:0] uk_offset_gw_1_net;
  wire clk_net;
  wire ce_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign mult0_p_net = a_1;
  assign uk_offset_gw_0_net = b_1;
  assign mult1_p_net = a_2;
  assign uk_offset_gw_1_net = b_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_addsub_784db07fc7 addsub0 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(uk_offset_gw_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_784db07fc7 addsub1 (
    .clr(1'b0),
    .a(mult1_p_net),
    .b(uk_offset_gw_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/cast_2Fix25-22
module fpga_lqg_axi_cast_2fix25_22 (
  input [43-1:0] i_1,
  input [43-1:0] i_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(37),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/conv_uk_14_12
module fpga_lqg_axi_conv_uk_14_12 (
  input [25-1:0] i_1,
  input [25-1:0] i_2,
  input clk_1,
  input ce_1,
  output [14-1:0] o_1,
  output [14-1:0] o_2
);
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] convert1_dout_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(12),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret0_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(22),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(12),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/conv_yk_25_22
module fpga_lqg_axi_conv_yk_25_22 (
  input [14-1:0] i_1,
  input [14-1:0] i_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [14-1:0] mult0_p_net;
  wire [14-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign mult0_p_net = i_1;
  assign mult1_p_net = i_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(12),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(mult0_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(12),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(25),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/matmul_2x7_7x1_0
module fpga_lqg_axi_matmul_2x7_7x1_0 (
  input [252-1:0] lmat_residue,
  input [84-1:0] lmat_shift,
  input [175-1:0] rmat,
  input clk_1,
  input ce_1,
  output [86-1:0] omat
);
  wire [86-1:0] reinterpret4_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x0;
  wire [84-1:0] reinterpret2_output_port_net;
  wire [175-1:0] delay_q_net;
  wire clk_net;
  wire ce_net;
  wire [84-1:0] reinterpret1_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x1;
  wire [175-1:0] reinterpret3_output_port_net;
  wire [86-1:0] matmul_core_res_net;
  assign omat = reinterpret4_output_port_net;
  assign reinterpret2_output_port_net_x0 = lmat_residue;
  assign reinterpret2_output_port_net = lmat_shift;
  assign delay_q_net = rmat;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_reinterpret_7eccc075dd reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret2_output_port_net_x1)
  );
  sysgen_reinterpret_61ca92b88e reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(delay_q_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_0e3dc18d80 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(matmul_core_res_net),
    .output_port(reinterpret4_output_port_net)
  );
  matmul_shiftfix_bidir #(
    .LMAT_COLS(7),
    .LMAT_RESIDUE_BINPT(14),
    .LMAT_RESIDUE_WIDTH(18),
    .LMAT_ROWS(2),
    .LMAT_SHIFT_BITS(6),
    .OMAT_BINPT(37),
    .OMAT_COLS(1),
    .OMAT_ROWS(2),
    .OMAT_WIDTH(43),
    .RMAT_BINPT(22),
    .RMAT_COLS(1),
    .RMAT_ROWS(7),
    .RMAT_WIDTH(25)
  )
  matmul_core (
    .lmat_residue(reinterpret2_output_port_net_x1),
    .lmat_shift(reinterpret1_output_port_net),
    .rmat(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .res(matmul_core_res_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/matmul_7x2_2x1_0
module fpga_lqg_axi_matmul_7x2_2x1_0 (
  input [252-1:0] lmat_residue,
  input [70-1:0] lmat_shift,
  input [50-1:0] rmat,
  input clk_1,
  input ce_1,
  output [301-1:0] omat
);
  wire [301-1:0] reinterpret4_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x1;
  wire [70-1:0] reinterpret2_output_port_net_x0;
  wire [50-1:0] reinterpret2_output_port_net;
  wire clk_net;
  wire ce_net;
  wire [70-1:0] reinterpret1_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x2;
  wire [50-1:0] reinterpret3_output_port_net;
  wire [301-1:0] matmul_core_res_net;
  assign omat = reinterpret4_output_port_net;
  assign reinterpret2_output_port_net_x1 = lmat_residue;
  assign reinterpret2_output_port_net_x0 = lmat_shift;
  assign reinterpret2_output_port_net = rmat;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_reinterpret_926fff82fc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x1),
    .output_port(reinterpret2_output_port_net_x2)
  );
  sysgen_reinterpret_3c4ed3b7a4 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(matmul_core_res_net),
    .output_port(reinterpret4_output_port_net)
  );
  matmul_shiftfix #(
    .LMAT_COLS(2),
    .LMAT_RESIDUE_BINPT(14),
    .LMAT_RESIDUE_WIDTH(18),
    .LMAT_ROWS(7),
    .LMAT_SHIFT_BITS(5),
    .OMAT_BINPT(37),
    .OMAT_COLS(1),
    .OMAT_ROWS(7),
    .OMAT_WIDTH(43),
    .RMAT_BINPT(22),
    .RMAT_COLS(1),
    .RMAT_ROWS(2),
    .RMAT_WIDTH(25)
  )
  matmul_core (
    .lmat_residue(reinterpret2_output_port_net_x2),
    .lmat_shift(reinterpret1_output_port_net),
    .rmat(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .res(matmul_core_res_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/matmul_7x2_2x1_1
module fpga_lqg_axi_matmul_7x2_2x1_1 (
  input [252-1:0] lmat_residue,
  input [70-1:0] lmat_shift,
  input [50-1:0] rmat,
  input clk_1,
  input ce_1,
  output [301-1:0] omat
);
  wire [301-1:0] reinterpret4_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x1;
  wire [70-1:0] reinterpret2_output_port_net_x0;
  wire [50-1:0] reinterpret2_output_port_net;
  wire clk_net;
  wire ce_net;
  wire [70-1:0] reinterpret1_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x2;
  wire [50-1:0] reinterpret3_output_port_net;
  wire [301-1:0] matmul_core_res_net;
  assign omat = reinterpret4_output_port_net;
  assign reinterpret2_output_port_net_x1 = lmat_residue;
  assign reinterpret2_output_port_net_x0 = lmat_shift;
  assign reinterpret2_output_port_net = rmat;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_reinterpret_926fff82fc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x1),
    .output_port(reinterpret2_output_port_net_x2)
  );
  sysgen_reinterpret_3c4ed3b7a4 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(matmul_core_res_net),
    .output_port(reinterpret4_output_port_net)
  );
  matmul_shiftfix #(
    .LMAT_COLS(2),
    .LMAT_RESIDUE_BINPT(14),
    .LMAT_RESIDUE_WIDTH(18),
    .LMAT_ROWS(7),
    .LMAT_SHIFT_BITS(5),
    .OMAT_BINPT(37),
    .OMAT_COLS(1),
    .OMAT_ROWS(7),
    .OMAT_WIDTH(43),
    .RMAT_BINPT(22),
    .RMAT_COLS(1),
    .RMAT_ROWS(2),
    .RMAT_WIDTH(25)
  )
  matmul_core (
    .lmat_residue(reinterpret2_output_port_net_x2),
    .lmat_shift(reinterpret1_output_port_net),
    .rmat(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .res(matmul_core_res_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/matmul_7x7_7x1_0
module fpga_lqg_axi_matmul_7x7_7x1_0 (
  input [882-1:0] lmat_residue,
  input [245-1:0] lmat_shift,
  input [175-1:0] rmat,
  input clk_1,
  input ce_1,
  output [301-1:0] omat
);
  wire [301-1:0] reinterpret4_output_port_net;
  wire [882-1:0] reinterpret2_output_port_net_x0;
  wire [245-1:0] reinterpret2_output_port_net;
  wire [175-1:0] delay_q_net;
  wire clk_net;
  wire ce_net;
  wire [245-1:0] reinterpret1_output_port_net;
  wire [882-1:0] reinterpret2_output_port_net_x1;
  wire [175-1:0] reinterpret3_output_port_net;
  wire [301-1:0] matmul_core_res_net;
  assign omat = reinterpret4_output_port_net;
  assign reinterpret2_output_port_net_x0 = lmat_residue;
  assign reinterpret2_output_port_net = lmat_shift;
  assign delay_q_net = rmat;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_reinterpret_0d903385e5 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_74245ac531 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret2_output_port_net_x0),
    .output_port(reinterpret2_output_port_net_x1)
  );
  sysgen_reinterpret_61ca92b88e reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(delay_q_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_fc49fc24ac reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(matmul_core_res_net),
    .output_port(reinterpret4_output_port_net)
  );
  matmul_shiftfix #(
    .LMAT_COLS(7),
    .LMAT_RESIDUE_BINPT(14),
    .LMAT_RESIDUE_WIDTH(18),
    .LMAT_ROWS(7),
    .LMAT_SHIFT_BITS(5),
    .OMAT_BINPT(37),
    .OMAT_COLS(1),
    .OMAT_ROWS(7),
    .OMAT_WIDTH(43),
    .RMAT_BINPT(22),
    .RMAT_COLS(1),
    .RMAT_ROWS(7),
    .RMAT_WIDTH(25)
  )
  matmul_core (
    .lmat_residue(reinterpret2_output_port_net_x1),
    .lmat_shift(reinterpret1_output_port_net),
    .rmat(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .res(matmul_core_res_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/mul_yk_factor
module fpga_lqg_axi_mul_yk_factor (
  input [14-1:0] a_1,
  input [18-1:0] b_1,
  input [14-1:0] a_2,
  input [18-1:0] b_2,
  input clk_1,
  input ce_1,
  output [14-1:0] a_x_b_1,
  output [14-1:0] a_x_b_2
);
  wire [14-1:0] mult0_p_net;
  wire [14-1:0] mult1_p_net;
  wire [14-1:0] addsub0_s_net;
  wire [18-1:0] yk_factor_gw_0_net;
  wire [14-1:0] addsub1_s_net;
  wire [18-1:0] yk_factor_gw_1_net;
  wire clk_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign addsub0_s_net = a_1;
  assign yk_factor_gw_0_net = b_1;
  assign addsub1_s_net = a_2;
  assign yk_factor_gw_1_net = b_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mult_325bc34c11 mult0 (
    .clr(1'b0),
    .a(addsub0_s_net),
    .b(yk_factor_gw_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .p(mult0_p_net)
  );
  sysgen_mult_325bc34c11 mult1 (
    .clr(1'b0),
    .a(addsub1_s_net),
    .b(yk_factor_gw_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/mul_yk_factor1
module fpga_lqg_axi_mul_yk_factor1 (
  input [14-1:0] a_1,
  input [18-1:0] b_1,
  input [14-1:0] a_2,
  input [18-1:0] b_2,
  input clk_1,
  input ce_1,
  output [14-1:0] a_x_b_1,
  output [14-1:0] a_x_b_2
);
  wire [14-1:0] mult0_p_net;
  wire [14-1:0] mult1_p_net;
  wire [14-1:0] reinterpret0_output_port_net;
  wire [18-1:0] uk_factor_gw_0_net;
  wire [14-1:0] reinterpret1_output_port_net;
  wire [18-1:0] uk_factor_gw_1_net;
  wire clk_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign reinterpret0_output_port_net = a_1;
  assign uk_factor_gw_0_net = b_1;
  assign reinterpret1_output_port_net = a_2;
  assign uk_factor_gw_1_net = b_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mult_325bc34c11 mult0 (
    .clr(1'b0),
    .a(reinterpret0_output_port_net),
    .b(uk_factor_gw_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .p(mult0_p_net)
  );
  sysgen_mult_325bc34c11 mult1 (
    .clr(1'b0),
    .a(reinterpret1_output_port_net),
    .b(uk_factor_gw_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_2Fix43-37_uk/Scalar to Vector
module fpga_lqg_axi_scalar_to_vector_x0 (
  input [86-1:0] i,
  output [43-1:0] o_1,
  output [43-1:0] o_2
);
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [86-1:0] reinterpret1_output_port_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign reinterpret1_output_port_net = i;
  fpga_lqg_axi_xlslice #(
    .new_lsb(0),
    .new_msb(42),
    .x_width(86),
    .y_width(43)
  )
  slice0 (
    .x(reinterpret1_output_port_net),
    .y(slice0_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(43),
    .new_msb(85),
    .x_width(86),
    .y_width(43)
  )
  slice1 (
    .x(reinterpret1_output_port_net),
    .y(slice1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_2Fix43-37_uk/Vector Reinterpret3
module fpga_lqg_axi_vector_reinterpret3_x0 (
  input [43-1:0] in_1,
  input [43-1:0] in_2,
  output [43-1:0] out_1,
  output [43-1:0] out_2
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  sysgen_reinterpret_37187b1f41 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_37187b1f41 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_2Fix43-37_uk
module fpga_lqg_axi_repr2vec_2fix43_37_uk (
  input [86-1:0] rowmaj_in,
  output [43-1:0] vec_out_1,
  output [43-1:0] vec_out_2
);
  wire [43-1:0] reinterpret0_output_port_net;
  wire [43-1:0] reinterpret1_output_port_net;
  wire [86-1:0] reinterpret4_output_port_net;
  wire [43-1:0] slice0_y_net;
  wire [43-1:0] slice1_y_net;
  wire [86-1:0] reinterpret1_output_port_net_x0;
  assign vec_out_1 = reinterpret0_output_port_net;
  assign vec_out_2 = reinterpret1_output_port_net;
  assign reinterpret4_output_port_net = rowmaj_in;
  fpga_lqg_axi_scalar_to_vector_x0 scalar_to_vector (
    .i(reinterpret1_output_port_net_x0),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net)
  );
  fpga_lqg_axi_vector_reinterpret3_x0 vector_reinterpret3 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_0e3dc18d80 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret4_output_port_net),
    .output_port(reinterpret1_output_port_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_7Fix25-22_xkhat/Scalar to Vector
module fpga_lqg_axi_scalar_to_vector (
  input [175-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7
);
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [175-1:0] reinterpret1_output_port_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign reinterpret1_output_port_net = i;
  fpga_lqg_axi_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(175),
    .y_width(25)
  )
  slice0 (
    .x(reinterpret1_output_port_net),
    .y(slice0_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(175),
    .y_width(25)
  )
  slice1 (
    .x(reinterpret1_output_port_net),
    .y(slice1_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(175),
    .y_width(25)
  )
  slice2 (
    .x(reinterpret1_output_port_net),
    .y(slice2_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(175),
    .y_width(25)
  )
  slice3 (
    .x(reinterpret1_output_port_net),
    .y(slice3_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(175),
    .y_width(25)
  )
  slice4 (
    .x(reinterpret1_output_port_net),
    .y(slice4_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(175),
    .y_width(25)
  )
  slice5 (
    .x(reinterpret1_output_port_net),
    .y(slice5_y_net)
  );
  fpga_lqg_axi_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(175),
    .y_width(25)
  )
  slice6 (
    .x(reinterpret1_output_port_net),
    .y(slice6_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_7Fix25-22_xkhat/Vector Reinterpret3
module fpga_lqg_axi_vector_reinterpret3 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  sysgen_reinterpret_f7a2ae8f54 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_f7a2ae8f54 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/repr2vec_7Fix25-22_xkhat
module fpga_lqg_axi_repr2vec_7fix25_22_xkhat (
  input [175-1:0] rowmaj_in,
  output [25-1:0] vec_out_1,
  output [25-1:0] vec_out_2,
  output [25-1:0] vec_out_3,
  output [25-1:0] vec_out_4,
  output [25-1:0] vec_out_5,
  output [25-1:0] vec_out_6,
  output [25-1:0] vec_out_7
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [175-1:0] delay_q_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [175-1:0] reinterpret1_output_port_net;
  assign vec_out_1 = reinterpret0_output_port_net;
  assign vec_out_2 = reinterpret1_output_port_net_x0;
  assign vec_out_3 = reinterpret2_output_port_net;
  assign vec_out_4 = reinterpret3_output_port_net;
  assign vec_out_5 = reinterpret4_output_port_net;
  assign vec_out_6 = reinterpret5_output_port_net;
  assign vec_out_7 = reinterpret6_output_port_net;
  assign delay_q_net = rowmaj_in;
  fpga_lqg_axi_scalar_to_vector scalar_to_vector (
    .i(reinterpret1_output_port_net),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net),
    .o_3(slice2_y_net),
    .o_4(slice3_y_net),
    .o_5(slice4_y_net),
    .o_6(slice5_y_net),
    .o_7(slice6_y_net)
  );
  fpga_lqg_axi_vector_reinterpret3 vector_reinterpret3 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net),
    .in_3(slice2_y_net),
    .in_4(slice3_y_net),
    .in_5(slice4_y_net),
    .in_6(slice5_y_net),
    .in_7(slice6_y_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_61ca92b88e reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(delay_q_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/uk_factor_gw
module fpga_lqg_axi_uk_factor_gw (
  input [18-1:0] uk_factor_gw_0,
  input [18-1:0] uk_factor_gw_1
);
  wire [18-1:0] uk_factor_gw_0_net;
  wire [18-1:0] uk_factor_gw_1_net;
  assign uk_factor_gw_0_net = uk_factor_gw_0;
  assign uk_factor_gw_1_net = uk_factor_gw_1;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/uk_offset_gw
module fpga_lqg_axi_uk_offset_gw (
  input [14-1:0] uk_offset_gw_0,
  input [14-1:0] uk_offset_gw_1
);
  wire [14-1:0] uk_offset_gw_0_net;
  wire [14-1:0] uk_offset_gw_1_net;
  assign uk_offset_gw_0_net = uk_offset_gw_0;
  assign uk_offset_gw_1_net = uk_offset_gw_1;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_res/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x1 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input [18-1:0] in_3,
  input [18-1:0] in_4,
  input [18-1:0] in_5,
  input [18-1:0] in_6,
  input [18-1:0] in_7,
  input [18-1:0] in_8,
  input [18-1:0] in_9,
  input [18-1:0] in_10,
  input [18-1:0] in_11,
  input [18-1:0] in_12,
  input [18-1:0] in_13,
  input [18-1:0] in_14,
  output [18-1:0] out_1,
  output [18-1:0] out_2,
  output [18-1:0] out_3,
  output [18-1:0] out_4,
  output [18-1:0] out_5,
  output [18-1:0] out_6,
  output [18-1:0] out_7,
  output [18-1:0] out_8,
  output [18-1:0] out_9,
  output [18-1:0] out_10,
  output [18-1:0] out_11,
  output [18-1:0] out_12,
  output [18-1:0] out_13,
  output [18-1:0] out_14
);
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] lqg_gamma_res_gw_0_net;
  wire [18-1:0] lqg_gamma_res_gw_1_net;
  wire [18-1:0] lqg_gamma_res_gw_2_net;
  wire [18-1:0] lqg_gamma_res_gw_3_net;
  wire [18-1:0] lqg_gamma_res_gw_4_net;
  wire [18-1:0] lqg_gamma_res_gw_5_net;
  wire [18-1:0] lqg_gamma_res_gw_6_net;
  wire [18-1:0] lqg_gamma_res_gw_7_net;
  wire [18-1:0] lqg_gamma_res_gw_8_net;
  wire [18-1:0] lqg_gamma_res_gw_9_net;
  wire [18-1:0] lqg_gamma_res_gw_10_net;
  wire [18-1:0] lqg_gamma_res_gw_11_net;
  wire [18-1:0] lqg_gamma_res_gw_12_net;
  wire [18-1:0] lqg_gamma_res_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_gamma_res_gw_0_net = in_1;
  assign lqg_gamma_res_gw_1_net = in_2;
  assign lqg_gamma_res_gw_2_net = in_3;
  assign lqg_gamma_res_gw_3_net = in_4;
  assign lqg_gamma_res_gw_4_net = in_5;
  assign lqg_gamma_res_gw_5_net = in_6;
  assign lqg_gamma_res_gw_6_net = in_7;
  assign lqg_gamma_res_gw_7_net = in_8;
  assign lqg_gamma_res_gw_8_net = in_9;
  assign lqg_gamma_res_gw_9_net = in_10;
  assign lqg_gamma_res_gw_10_net = in_11;
  assign lqg_gamma_res_gw_11_net = in_12;
  assign lqg_gamma_res_gw_12_net = in_13;
  assign lqg_gamma_res_gw_13_net = in_14;
  sysgen_reinterpret_cf3690c5d0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_res_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_res/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x1 (
  input [18-1:0] i_1,
  input [18-1:0] i_2,
  input [18-1:0] i_3,
  input [18-1:0] i_4,
  input [18-1:0] i_5,
  input [18-1:0] i_6,
  input [18-1:0] i_7,
  input [18-1:0] i_8,
  input [18-1:0] i_9,
  input [18-1:0] i_10,
  input [18-1:0] i_11,
  input [18-1:0] i_12,
  input [18-1:0] i_13,
  input [18-1:0] i_14,
  output [252-1:0] o
);
  wire [252-1:0] concat1_y_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_76e9577ce4 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_res
module fpga_lqg_axi_vec2repr_14_gamma_res (
  input [18-1:0] vec_in_1,
  input [18-1:0] vec_in_2,
  input [18-1:0] vec_in_3,
  input [18-1:0] vec_in_4,
  input [18-1:0] vec_in_5,
  input [18-1:0] vec_in_6,
  input [18-1:0] vec_in_7,
  input [18-1:0] vec_in_8,
  input [18-1:0] vec_in_9,
  input [18-1:0] vec_in_10,
  input [18-1:0] vec_in_11,
  input [18-1:0] vec_in_12,
  input [18-1:0] vec_in_13,
  input [18-1:0] vec_in_14,
  output [252-1:0] rowmaj_out
);
  wire [252-1:0] reinterpret2_output_port_net;
  wire [18-1:0] lqg_gamma_res_gw_0_net;
  wire [18-1:0] lqg_gamma_res_gw_1_net;
  wire [18-1:0] lqg_gamma_res_gw_2_net;
  wire [18-1:0] lqg_gamma_res_gw_3_net;
  wire [18-1:0] lqg_gamma_res_gw_4_net;
  wire [18-1:0] lqg_gamma_res_gw_5_net;
  wire [18-1:0] lqg_gamma_res_gw_6_net;
  wire [18-1:0] lqg_gamma_res_gw_7_net;
  wire [18-1:0] lqg_gamma_res_gw_8_net;
  wire [18-1:0] lqg_gamma_res_gw_9_net;
  wire [18-1:0] lqg_gamma_res_gw_10_net;
  wire [18-1:0] lqg_gamma_res_gw_11_net;
  wire [18-1:0] lqg_gamma_res_gw_12_net;
  wire [18-1:0] lqg_gamma_res_gw_13_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net_x0;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [252-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_gamma_res_gw_0_net = vec_in_1;
  assign lqg_gamma_res_gw_1_net = vec_in_2;
  assign lqg_gamma_res_gw_2_net = vec_in_3;
  assign lqg_gamma_res_gw_3_net = vec_in_4;
  assign lqg_gamma_res_gw_4_net = vec_in_5;
  assign lqg_gamma_res_gw_5_net = vec_in_6;
  assign lqg_gamma_res_gw_6_net = vec_in_7;
  assign lqg_gamma_res_gw_7_net = vec_in_8;
  assign lqg_gamma_res_gw_8_net = vec_in_9;
  assign lqg_gamma_res_gw_9_net = vec_in_10;
  assign lqg_gamma_res_gw_10_net = vec_in_11;
  assign lqg_gamma_res_gw_11_net = vec_in_12;
  assign lqg_gamma_res_gw_12_net = vec_in_13;
  assign lqg_gamma_res_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2_x1 vector_reinterpret2 (
    .in_1(lqg_gamma_res_gw_0_net),
    .in_2(lqg_gamma_res_gw_1_net),
    .in_3(lqg_gamma_res_gw_2_net),
    .in_4(lqg_gamma_res_gw_3_net),
    .in_5(lqg_gamma_res_gw_4_net),
    .in_6(lqg_gamma_res_gw_5_net),
    .in_7(lqg_gamma_res_gw_6_net),
    .in_8(lqg_gamma_res_gw_7_net),
    .in_9(lqg_gamma_res_gw_8_net),
    .in_10(lqg_gamma_res_gw_9_net),
    .in_11(lqg_gamma_res_gw_10_net),
    .in_12(lqg_gamma_res_gw_11_net),
    .in_13(lqg_gamma_res_gw_12_net),
    .in_14(lqg_gamma_res_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x1 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_shift/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x0 (
  input [5-1:0] in_1,
  input [5-1:0] in_2,
  input [5-1:0] in_3,
  input [5-1:0] in_4,
  input [5-1:0] in_5,
  input [5-1:0] in_6,
  input [5-1:0] in_7,
  input [5-1:0] in_8,
  input [5-1:0] in_9,
  input [5-1:0] in_10,
  input [5-1:0] in_11,
  input [5-1:0] in_12,
  input [5-1:0] in_13,
  input [5-1:0] in_14,
  output [5-1:0] out_1,
  output [5-1:0] out_2,
  output [5-1:0] out_3,
  output [5-1:0] out_4,
  output [5-1:0] out_5,
  output [5-1:0] out_6,
  output [5-1:0] out_7,
  output [5-1:0] out_8,
  output [5-1:0] out_9,
  output [5-1:0] out_10,
  output [5-1:0] out_11,
  output [5-1:0] out_12,
  output [5-1:0] out_13,
  output [5-1:0] out_14
);
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [5-1:0] lqg_gamma_shift_gw_0_net;
  wire [5-1:0] lqg_gamma_shift_gw_1_net;
  wire [5-1:0] lqg_gamma_shift_gw_2_net;
  wire [5-1:0] lqg_gamma_shift_gw_3_net;
  wire [5-1:0] lqg_gamma_shift_gw_4_net;
  wire [5-1:0] lqg_gamma_shift_gw_5_net;
  wire [5-1:0] lqg_gamma_shift_gw_6_net;
  wire [5-1:0] lqg_gamma_shift_gw_7_net;
  wire [5-1:0] lqg_gamma_shift_gw_8_net;
  wire [5-1:0] lqg_gamma_shift_gw_9_net;
  wire [5-1:0] lqg_gamma_shift_gw_10_net;
  wire [5-1:0] lqg_gamma_shift_gw_11_net;
  wire [5-1:0] lqg_gamma_shift_gw_12_net;
  wire [5-1:0] lqg_gamma_shift_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_gamma_shift_gw_0_net = in_1;
  assign lqg_gamma_shift_gw_1_net = in_2;
  assign lqg_gamma_shift_gw_2_net = in_3;
  assign lqg_gamma_shift_gw_3_net = in_4;
  assign lqg_gamma_shift_gw_4_net = in_5;
  assign lqg_gamma_shift_gw_5_net = in_6;
  assign lqg_gamma_shift_gw_6_net = in_7;
  assign lqg_gamma_shift_gw_7_net = in_8;
  assign lqg_gamma_shift_gw_8_net = in_9;
  assign lqg_gamma_shift_gw_9_net = in_10;
  assign lqg_gamma_shift_gw_10_net = in_11;
  assign lqg_gamma_shift_gw_11_net = in_12;
  assign lqg_gamma_shift_gw_12_net = in_13;
  assign lqg_gamma_shift_gw_13_net = in_14;
  sysgen_reinterpret_bdd4b54fb3 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_gamma_shift_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_shift/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x0 (
  input [5-1:0] i_1,
  input [5-1:0] i_2,
  input [5-1:0] i_3,
  input [5-1:0] i_4,
  input [5-1:0] i_5,
  input [5-1:0] i_6,
  input [5-1:0] i_7,
  input [5-1:0] i_8,
  input [5-1:0] i_9,
  input [5-1:0] i_10,
  input [5-1:0] i_11,
  input [5-1:0] i_12,
  input [5-1:0] i_13,
  input [5-1:0] i_14,
  output [70-1:0] o
);
  wire [70-1:0] concat1_y_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_e94a693d6e concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_Gamma_shift
module fpga_lqg_axi_vec2repr_14_gamma_shift (
  input [5-1:0] vec_in_1,
  input [5-1:0] vec_in_2,
  input [5-1:0] vec_in_3,
  input [5-1:0] vec_in_4,
  input [5-1:0] vec_in_5,
  input [5-1:0] vec_in_6,
  input [5-1:0] vec_in_7,
  input [5-1:0] vec_in_8,
  input [5-1:0] vec_in_9,
  input [5-1:0] vec_in_10,
  input [5-1:0] vec_in_11,
  input [5-1:0] vec_in_12,
  input [5-1:0] vec_in_13,
  input [5-1:0] vec_in_14,
  output [70-1:0] rowmaj_out
);
  wire [70-1:0] reinterpret2_output_port_net;
  wire [5-1:0] lqg_gamma_shift_gw_0_net;
  wire [5-1:0] lqg_gamma_shift_gw_1_net;
  wire [5-1:0] lqg_gamma_shift_gw_2_net;
  wire [5-1:0] lqg_gamma_shift_gw_3_net;
  wire [5-1:0] lqg_gamma_shift_gw_4_net;
  wire [5-1:0] lqg_gamma_shift_gw_5_net;
  wire [5-1:0] lqg_gamma_shift_gw_6_net;
  wire [5-1:0] lqg_gamma_shift_gw_7_net;
  wire [5-1:0] lqg_gamma_shift_gw_8_net;
  wire [5-1:0] lqg_gamma_shift_gw_9_net;
  wire [5-1:0] lqg_gamma_shift_gw_10_net;
  wire [5-1:0] lqg_gamma_shift_gw_11_net;
  wire [5-1:0] lqg_gamma_shift_gw_12_net;
  wire [5-1:0] lqg_gamma_shift_gw_13_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net_x0;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [70-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_gamma_shift_gw_0_net = vec_in_1;
  assign lqg_gamma_shift_gw_1_net = vec_in_2;
  assign lqg_gamma_shift_gw_2_net = vec_in_3;
  assign lqg_gamma_shift_gw_3_net = vec_in_4;
  assign lqg_gamma_shift_gw_4_net = vec_in_5;
  assign lqg_gamma_shift_gw_5_net = vec_in_6;
  assign lqg_gamma_shift_gw_6_net = vec_in_7;
  assign lqg_gamma_shift_gw_7_net = vec_in_8;
  assign lqg_gamma_shift_gw_8_net = vec_in_9;
  assign lqg_gamma_shift_gw_9_net = vec_in_10;
  assign lqg_gamma_shift_gw_10_net = vec_in_11;
  assign lqg_gamma_shift_gw_11_net = vec_in_12;
  assign lqg_gamma_shift_gw_12_net = vec_in_13;
  assign lqg_gamma_shift_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2_x0 vector_reinterpret2 (
    .in_1(lqg_gamma_shift_gw_0_net),
    .in_2(lqg_gamma_shift_gw_1_net),
    .in_3(lqg_gamma_shift_gw_2_net),
    .in_4(lqg_gamma_shift_gw_3_net),
    .in_5(lqg_gamma_shift_gw_4_net),
    .in_6(lqg_gamma_shift_gw_5_net),
    .in_7(lqg_gamma_shift_gw_6_net),
    .in_8(lqg_gamma_shift_gw_7_net),
    .in_9(lqg_gamma_shift_gw_8_net),
    .in_10(lqg_gamma_shift_gw_9_net),
    .in_11(lqg_gamma_shift_gw_10_net),
    .in_12(lqg_gamma_shift_gw_11_net),
    .in_13(lqg_gamma_shift_gw_12_net),
    .in_14(lqg_gamma_shift_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x0 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_926fff82fc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_res/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input [18-1:0] in_3,
  input [18-1:0] in_4,
  input [18-1:0] in_5,
  input [18-1:0] in_6,
  input [18-1:0] in_7,
  input [18-1:0] in_8,
  input [18-1:0] in_9,
  input [18-1:0] in_10,
  input [18-1:0] in_11,
  input [18-1:0] in_12,
  input [18-1:0] in_13,
  input [18-1:0] in_14,
  output [18-1:0] out_1,
  output [18-1:0] out_2,
  output [18-1:0] out_3,
  output [18-1:0] out_4,
  output [18-1:0] out_5,
  output [18-1:0] out_6,
  output [18-1:0] out_7,
  output [18-1:0] out_8,
  output [18-1:0] out_9,
  output [18-1:0] out_10,
  output [18-1:0] out_11,
  output [18-1:0] out_12,
  output [18-1:0] out_13,
  output [18-1:0] out_14
);
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] lqg_k_res_gw_0_net;
  wire [18-1:0] lqg_k_res_gw_1_net;
  wire [18-1:0] lqg_k_res_gw_2_net;
  wire [18-1:0] lqg_k_res_gw_3_net;
  wire [18-1:0] lqg_k_res_gw_4_net;
  wire [18-1:0] lqg_k_res_gw_5_net;
  wire [18-1:0] lqg_k_res_gw_6_net;
  wire [18-1:0] lqg_k_res_gw_7_net;
  wire [18-1:0] lqg_k_res_gw_8_net;
  wire [18-1:0] lqg_k_res_gw_9_net;
  wire [18-1:0] lqg_k_res_gw_10_net;
  wire [18-1:0] lqg_k_res_gw_11_net;
  wire [18-1:0] lqg_k_res_gw_12_net;
  wire [18-1:0] lqg_k_res_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_k_res_gw_0_net = in_1;
  assign lqg_k_res_gw_1_net = in_2;
  assign lqg_k_res_gw_2_net = in_3;
  assign lqg_k_res_gw_3_net = in_4;
  assign lqg_k_res_gw_4_net = in_5;
  assign lqg_k_res_gw_5_net = in_6;
  assign lqg_k_res_gw_6_net = in_7;
  assign lqg_k_res_gw_7_net = in_8;
  assign lqg_k_res_gw_8_net = in_9;
  assign lqg_k_res_gw_9_net = in_10;
  assign lqg_k_res_gw_10_net = in_11;
  assign lqg_k_res_gw_11_net = in_12;
  assign lqg_k_res_gw_12_net = in_13;
  assign lqg_k_res_gw_13_net = in_14;
  sysgen_reinterpret_cf3690c5d0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_res_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_res/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar (
  input [18-1:0] i_1,
  input [18-1:0] i_2,
  input [18-1:0] i_3,
  input [18-1:0] i_4,
  input [18-1:0] i_5,
  input [18-1:0] i_6,
  input [18-1:0] i_7,
  input [18-1:0] i_8,
  input [18-1:0] i_9,
  input [18-1:0] i_10,
  input [18-1:0] i_11,
  input [18-1:0] i_12,
  input [18-1:0] i_13,
  input [18-1:0] i_14,
  output [252-1:0] o
);
  wire [252-1:0] concat1_y_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_76e9577ce4 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_res
module fpga_lqg_axi_vec2repr_14_k_res (
  input [18-1:0] vec_in_1,
  input [18-1:0] vec_in_2,
  input [18-1:0] vec_in_3,
  input [18-1:0] vec_in_4,
  input [18-1:0] vec_in_5,
  input [18-1:0] vec_in_6,
  input [18-1:0] vec_in_7,
  input [18-1:0] vec_in_8,
  input [18-1:0] vec_in_9,
  input [18-1:0] vec_in_10,
  input [18-1:0] vec_in_11,
  input [18-1:0] vec_in_12,
  input [18-1:0] vec_in_13,
  input [18-1:0] vec_in_14,
  output [252-1:0] rowmaj_out
);
  wire [252-1:0] reinterpret2_output_port_net;
  wire [18-1:0] lqg_k_res_gw_0_net;
  wire [18-1:0] lqg_k_res_gw_1_net;
  wire [18-1:0] lqg_k_res_gw_2_net;
  wire [18-1:0] lqg_k_res_gw_3_net;
  wire [18-1:0] lqg_k_res_gw_4_net;
  wire [18-1:0] lqg_k_res_gw_5_net;
  wire [18-1:0] lqg_k_res_gw_6_net;
  wire [18-1:0] lqg_k_res_gw_7_net;
  wire [18-1:0] lqg_k_res_gw_8_net;
  wire [18-1:0] lqg_k_res_gw_9_net;
  wire [18-1:0] lqg_k_res_gw_10_net;
  wire [18-1:0] lqg_k_res_gw_11_net;
  wire [18-1:0] lqg_k_res_gw_12_net;
  wire [18-1:0] lqg_k_res_gw_13_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net_x0;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [252-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_k_res_gw_0_net = vec_in_1;
  assign lqg_k_res_gw_1_net = vec_in_2;
  assign lqg_k_res_gw_2_net = vec_in_3;
  assign lqg_k_res_gw_3_net = vec_in_4;
  assign lqg_k_res_gw_4_net = vec_in_5;
  assign lqg_k_res_gw_5_net = vec_in_6;
  assign lqg_k_res_gw_6_net = vec_in_7;
  assign lqg_k_res_gw_7_net = vec_in_8;
  assign lqg_k_res_gw_8_net = vec_in_9;
  assign lqg_k_res_gw_9_net = vec_in_10;
  assign lqg_k_res_gw_10_net = vec_in_11;
  assign lqg_k_res_gw_11_net = vec_in_12;
  assign lqg_k_res_gw_12_net = vec_in_13;
  assign lqg_k_res_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2 vector_reinterpret2 (
    .in_1(lqg_k_res_gw_0_net),
    .in_2(lqg_k_res_gw_1_net),
    .in_3(lqg_k_res_gw_2_net),
    .in_4(lqg_k_res_gw_3_net),
    .in_5(lqg_k_res_gw_4_net),
    .in_6(lqg_k_res_gw_5_net),
    .in_7(lqg_k_res_gw_6_net),
    .in_8(lqg_k_res_gw_7_net),
    .in_9(lqg_k_res_gw_8_net),
    .in_10(lqg_k_res_gw_9_net),
    .in_11(lqg_k_res_gw_10_net),
    .in_12(lqg_k_res_gw_11_net),
    .in_13(lqg_k_res_gw_12_net),
    .in_14(lqg_k_res_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_shift/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x5 (
  input [6-1:0] in_1,
  input [6-1:0] in_2,
  input [6-1:0] in_3,
  input [6-1:0] in_4,
  input [6-1:0] in_5,
  input [6-1:0] in_6,
  input [6-1:0] in_7,
  input [6-1:0] in_8,
  input [6-1:0] in_9,
  input [6-1:0] in_10,
  input [6-1:0] in_11,
  input [6-1:0] in_12,
  input [6-1:0] in_13,
  input [6-1:0] in_14,
  output [6-1:0] out_1,
  output [6-1:0] out_2,
  output [6-1:0] out_3,
  output [6-1:0] out_4,
  output [6-1:0] out_5,
  output [6-1:0] out_6,
  output [6-1:0] out_7,
  output [6-1:0] out_8,
  output [6-1:0] out_9,
  output [6-1:0] out_10,
  output [6-1:0] out_11,
  output [6-1:0] out_12,
  output [6-1:0] out_13,
  output [6-1:0] out_14
);
  wire [6-1:0] reinterpret0_output_port_net;
  wire [6-1:0] reinterpret1_output_port_net;
  wire [6-1:0] reinterpret2_output_port_net;
  wire [6-1:0] reinterpret3_output_port_net;
  wire [6-1:0] reinterpret4_output_port_net;
  wire [6-1:0] reinterpret5_output_port_net;
  wire [6-1:0] reinterpret6_output_port_net;
  wire [6-1:0] reinterpret7_output_port_net;
  wire [6-1:0] reinterpret8_output_port_net;
  wire [6-1:0] reinterpret9_output_port_net;
  wire [6-1:0] reinterpret10_output_port_net;
  wire [6-1:0] reinterpret11_output_port_net;
  wire [6-1:0] reinterpret12_output_port_net;
  wire [6-1:0] reinterpret13_output_port_net;
  wire [6-1:0] lqg_k_shift_gw_0_net;
  wire [6-1:0] lqg_k_shift_gw_1_net;
  wire [6-1:0] lqg_k_shift_gw_2_net;
  wire [6-1:0] lqg_k_shift_gw_3_net;
  wire [6-1:0] lqg_k_shift_gw_4_net;
  wire [6-1:0] lqg_k_shift_gw_5_net;
  wire [6-1:0] lqg_k_shift_gw_6_net;
  wire [6-1:0] lqg_k_shift_gw_7_net;
  wire [6-1:0] lqg_k_shift_gw_8_net;
  wire [6-1:0] lqg_k_shift_gw_9_net;
  wire [6-1:0] lqg_k_shift_gw_10_net;
  wire [6-1:0] lqg_k_shift_gw_11_net;
  wire [6-1:0] lqg_k_shift_gw_12_net;
  wire [6-1:0] lqg_k_shift_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_k_shift_gw_0_net = in_1;
  assign lqg_k_shift_gw_1_net = in_2;
  assign lqg_k_shift_gw_2_net = in_3;
  assign lqg_k_shift_gw_3_net = in_4;
  assign lqg_k_shift_gw_4_net = in_5;
  assign lqg_k_shift_gw_5_net = in_6;
  assign lqg_k_shift_gw_6_net = in_7;
  assign lqg_k_shift_gw_7_net = in_8;
  assign lqg_k_shift_gw_8_net = in_9;
  assign lqg_k_shift_gw_9_net = in_10;
  assign lqg_k_shift_gw_10_net = in_11;
  assign lqg_k_shift_gw_11_net = in_12;
  assign lqg_k_shift_gw_12_net = in_13;
  assign lqg_k_shift_gw_13_net = in_14;
  sysgen_reinterpret_6938eead6d reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_6938eead6d reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_k_shift_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_shift/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x8 (
  input [6-1:0] i_1,
  input [6-1:0] i_2,
  input [6-1:0] i_3,
  input [6-1:0] i_4,
  input [6-1:0] i_5,
  input [6-1:0] i_6,
  input [6-1:0] i_7,
  input [6-1:0] i_8,
  input [6-1:0] i_9,
  input [6-1:0] i_10,
  input [6-1:0] i_11,
  input [6-1:0] i_12,
  input [6-1:0] i_13,
  input [6-1:0] i_14,
  output [84-1:0] o
);
  wire [84-1:0] concat1_y_net;
  wire [6-1:0] reinterpret0_output_port_net;
  wire [6-1:0] reinterpret1_output_port_net;
  wire [6-1:0] reinterpret2_output_port_net;
  wire [6-1:0] reinterpret3_output_port_net;
  wire [6-1:0] reinterpret4_output_port_net;
  wire [6-1:0] reinterpret5_output_port_net;
  wire [6-1:0] reinterpret6_output_port_net;
  wire [6-1:0] reinterpret7_output_port_net;
  wire [6-1:0] reinterpret8_output_port_net;
  wire [6-1:0] reinterpret9_output_port_net;
  wire [6-1:0] reinterpret10_output_port_net;
  wire [6-1:0] reinterpret11_output_port_net;
  wire [6-1:0] reinterpret12_output_port_net;
  wire [6-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_f496012fb5 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_K_shift
module fpga_lqg_axi_vec2repr_14_k_shift (
  input [6-1:0] vec_in_1,
  input [6-1:0] vec_in_2,
  input [6-1:0] vec_in_3,
  input [6-1:0] vec_in_4,
  input [6-1:0] vec_in_5,
  input [6-1:0] vec_in_6,
  input [6-1:0] vec_in_7,
  input [6-1:0] vec_in_8,
  input [6-1:0] vec_in_9,
  input [6-1:0] vec_in_10,
  input [6-1:0] vec_in_11,
  input [6-1:0] vec_in_12,
  input [6-1:0] vec_in_13,
  input [6-1:0] vec_in_14,
  output [84-1:0] rowmaj_out
);
  wire [84-1:0] reinterpret2_output_port_net;
  wire [6-1:0] lqg_k_shift_gw_0_net;
  wire [6-1:0] lqg_k_shift_gw_1_net;
  wire [6-1:0] lqg_k_shift_gw_2_net;
  wire [6-1:0] lqg_k_shift_gw_3_net;
  wire [6-1:0] lqg_k_shift_gw_4_net;
  wire [6-1:0] lqg_k_shift_gw_5_net;
  wire [6-1:0] lqg_k_shift_gw_6_net;
  wire [6-1:0] lqg_k_shift_gw_7_net;
  wire [6-1:0] lqg_k_shift_gw_8_net;
  wire [6-1:0] lqg_k_shift_gw_9_net;
  wire [6-1:0] lqg_k_shift_gw_10_net;
  wire [6-1:0] lqg_k_shift_gw_11_net;
  wire [6-1:0] lqg_k_shift_gw_12_net;
  wire [6-1:0] lqg_k_shift_gw_13_net;
  wire [6-1:0] reinterpret0_output_port_net;
  wire [6-1:0] reinterpret1_output_port_net;
  wire [6-1:0] reinterpret2_output_port_net_x0;
  wire [6-1:0] reinterpret3_output_port_net;
  wire [6-1:0] reinterpret4_output_port_net;
  wire [6-1:0] reinterpret5_output_port_net;
  wire [6-1:0] reinterpret6_output_port_net;
  wire [6-1:0] reinterpret7_output_port_net;
  wire [6-1:0] reinterpret8_output_port_net;
  wire [6-1:0] reinterpret9_output_port_net;
  wire [6-1:0] reinterpret10_output_port_net;
  wire [6-1:0] reinterpret11_output_port_net;
  wire [6-1:0] reinterpret12_output_port_net;
  wire [6-1:0] reinterpret13_output_port_net;
  wire [84-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_k_shift_gw_0_net = vec_in_1;
  assign lqg_k_shift_gw_1_net = vec_in_2;
  assign lqg_k_shift_gw_2_net = vec_in_3;
  assign lqg_k_shift_gw_3_net = vec_in_4;
  assign lqg_k_shift_gw_4_net = vec_in_5;
  assign lqg_k_shift_gw_5_net = vec_in_6;
  assign lqg_k_shift_gw_6_net = vec_in_7;
  assign lqg_k_shift_gw_7_net = vec_in_8;
  assign lqg_k_shift_gw_8_net = vec_in_9;
  assign lqg_k_shift_gw_9_net = vec_in_10;
  assign lqg_k_shift_gw_10_net = vec_in_11;
  assign lqg_k_shift_gw_11_net = vec_in_12;
  assign lqg_k_shift_gw_12_net = vec_in_13;
  assign lqg_k_shift_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2_x5 vector_reinterpret2 (
    .in_1(lqg_k_shift_gw_0_net),
    .in_2(lqg_k_shift_gw_1_net),
    .in_3(lqg_k_shift_gw_2_net),
    .in_4(lqg_k_shift_gw_3_net),
    .in_5(lqg_k_shift_gw_4_net),
    .in_6(lqg_k_shift_gw_5_net),
    .in_7(lqg_k_shift_gw_6_net),
    .in_8(lqg_k_shift_gw_7_net),
    .in_9(lqg_k_shift_gw_8_net),
    .in_10(lqg_k_shift_gw_9_net),
    .in_11(lqg_k_shift_gw_10_net),
    .in_12(lqg_k_shift_gw_11_net),
    .in_13(lqg_k_shift_gw_12_net),
    .in_14(lqg_k_shift_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x8 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_7eccc075dd reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_res/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x8 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input [18-1:0] in_3,
  input [18-1:0] in_4,
  input [18-1:0] in_5,
  input [18-1:0] in_6,
  input [18-1:0] in_7,
  input [18-1:0] in_8,
  input [18-1:0] in_9,
  input [18-1:0] in_10,
  input [18-1:0] in_11,
  input [18-1:0] in_12,
  input [18-1:0] in_13,
  input [18-1:0] in_14,
  output [18-1:0] out_1,
  output [18-1:0] out_2,
  output [18-1:0] out_3,
  output [18-1:0] out_4,
  output [18-1:0] out_5,
  output [18-1:0] out_6,
  output [18-1:0] out_7,
  output [18-1:0] out_8,
  output [18-1:0] out_9,
  output [18-1:0] out_10,
  output [18-1:0] out_11,
  output [18-1:0] out_12,
  output [18-1:0] out_13,
  output [18-1:0] out_14
);
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] lqg_l_res_gw_0_net;
  wire [18-1:0] lqg_l_res_gw_1_net;
  wire [18-1:0] lqg_l_res_gw_2_net;
  wire [18-1:0] lqg_l_res_gw_3_net;
  wire [18-1:0] lqg_l_res_gw_4_net;
  wire [18-1:0] lqg_l_res_gw_5_net;
  wire [18-1:0] lqg_l_res_gw_6_net;
  wire [18-1:0] lqg_l_res_gw_7_net;
  wire [18-1:0] lqg_l_res_gw_8_net;
  wire [18-1:0] lqg_l_res_gw_9_net;
  wire [18-1:0] lqg_l_res_gw_10_net;
  wire [18-1:0] lqg_l_res_gw_11_net;
  wire [18-1:0] lqg_l_res_gw_12_net;
  wire [18-1:0] lqg_l_res_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_l_res_gw_0_net = in_1;
  assign lqg_l_res_gw_1_net = in_2;
  assign lqg_l_res_gw_2_net = in_3;
  assign lqg_l_res_gw_3_net = in_4;
  assign lqg_l_res_gw_4_net = in_5;
  assign lqg_l_res_gw_5_net = in_6;
  assign lqg_l_res_gw_6_net = in_7;
  assign lqg_l_res_gw_7_net = in_8;
  assign lqg_l_res_gw_8_net = in_9;
  assign lqg_l_res_gw_9_net = in_10;
  assign lqg_l_res_gw_10_net = in_11;
  assign lqg_l_res_gw_11_net = in_12;
  assign lqg_l_res_gw_12_net = in_13;
  assign lqg_l_res_gw_13_net = in_14;
  sysgen_reinterpret_cf3690c5d0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_res_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_res/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x7 (
  input [18-1:0] i_1,
  input [18-1:0] i_2,
  input [18-1:0] i_3,
  input [18-1:0] i_4,
  input [18-1:0] i_5,
  input [18-1:0] i_6,
  input [18-1:0] i_7,
  input [18-1:0] i_8,
  input [18-1:0] i_9,
  input [18-1:0] i_10,
  input [18-1:0] i_11,
  input [18-1:0] i_12,
  input [18-1:0] i_13,
  input [18-1:0] i_14,
  output [252-1:0] o
);
  wire [252-1:0] concat1_y_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_76e9577ce4 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_res
module fpga_lqg_axi_vec2repr_14_l_res (
  input [18-1:0] vec_in_1,
  input [18-1:0] vec_in_2,
  input [18-1:0] vec_in_3,
  input [18-1:0] vec_in_4,
  input [18-1:0] vec_in_5,
  input [18-1:0] vec_in_6,
  input [18-1:0] vec_in_7,
  input [18-1:0] vec_in_8,
  input [18-1:0] vec_in_9,
  input [18-1:0] vec_in_10,
  input [18-1:0] vec_in_11,
  input [18-1:0] vec_in_12,
  input [18-1:0] vec_in_13,
  input [18-1:0] vec_in_14,
  output [252-1:0] rowmaj_out
);
  wire [252-1:0] reinterpret2_output_port_net;
  wire [18-1:0] lqg_l_res_gw_0_net;
  wire [18-1:0] lqg_l_res_gw_1_net;
  wire [18-1:0] lqg_l_res_gw_2_net;
  wire [18-1:0] lqg_l_res_gw_3_net;
  wire [18-1:0] lqg_l_res_gw_4_net;
  wire [18-1:0] lqg_l_res_gw_5_net;
  wire [18-1:0] lqg_l_res_gw_6_net;
  wire [18-1:0] lqg_l_res_gw_7_net;
  wire [18-1:0] lqg_l_res_gw_8_net;
  wire [18-1:0] lqg_l_res_gw_9_net;
  wire [18-1:0] lqg_l_res_gw_10_net;
  wire [18-1:0] lqg_l_res_gw_11_net;
  wire [18-1:0] lqg_l_res_gw_12_net;
  wire [18-1:0] lqg_l_res_gw_13_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net_x0;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [252-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_l_res_gw_0_net = vec_in_1;
  assign lqg_l_res_gw_1_net = vec_in_2;
  assign lqg_l_res_gw_2_net = vec_in_3;
  assign lqg_l_res_gw_3_net = vec_in_4;
  assign lqg_l_res_gw_4_net = vec_in_5;
  assign lqg_l_res_gw_5_net = vec_in_6;
  assign lqg_l_res_gw_6_net = vec_in_7;
  assign lqg_l_res_gw_7_net = vec_in_8;
  assign lqg_l_res_gw_8_net = vec_in_9;
  assign lqg_l_res_gw_9_net = vec_in_10;
  assign lqg_l_res_gw_10_net = vec_in_11;
  assign lqg_l_res_gw_11_net = vec_in_12;
  assign lqg_l_res_gw_12_net = vec_in_13;
  assign lqg_l_res_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2_x8 vector_reinterpret2 (
    .in_1(lqg_l_res_gw_0_net),
    .in_2(lqg_l_res_gw_1_net),
    .in_3(lqg_l_res_gw_2_net),
    .in_4(lqg_l_res_gw_3_net),
    .in_5(lqg_l_res_gw_4_net),
    .in_6(lqg_l_res_gw_5_net),
    .in_7(lqg_l_res_gw_6_net),
    .in_8(lqg_l_res_gw_7_net),
    .in_9(lqg_l_res_gw_8_net),
    .in_10(lqg_l_res_gw_9_net),
    .in_11(lqg_l_res_gw_10_net),
    .in_12(lqg_l_res_gw_11_net),
    .in_13(lqg_l_res_gw_12_net),
    .in_14(lqg_l_res_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x7 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_8f09a1c7a2 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_shift/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x7 (
  input [5-1:0] in_1,
  input [5-1:0] in_2,
  input [5-1:0] in_3,
  input [5-1:0] in_4,
  input [5-1:0] in_5,
  input [5-1:0] in_6,
  input [5-1:0] in_7,
  input [5-1:0] in_8,
  input [5-1:0] in_9,
  input [5-1:0] in_10,
  input [5-1:0] in_11,
  input [5-1:0] in_12,
  input [5-1:0] in_13,
  input [5-1:0] in_14,
  output [5-1:0] out_1,
  output [5-1:0] out_2,
  output [5-1:0] out_3,
  output [5-1:0] out_4,
  output [5-1:0] out_5,
  output [5-1:0] out_6,
  output [5-1:0] out_7,
  output [5-1:0] out_8,
  output [5-1:0] out_9,
  output [5-1:0] out_10,
  output [5-1:0] out_11,
  output [5-1:0] out_12,
  output [5-1:0] out_13,
  output [5-1:0] out_14
);
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [5-1:0] lqg_l_shift_gw_0_net;
  wire [5-1:0] lqg_l_shift_gw_1_net;
  wire [5-1:0] lqg_l_shift_gw_2_net;
  wire [5-1:0] lqg_l_shift_gw_3_net;
  wire [5-1:0] lqg_l_shift_gw_4_net;
  wire [5-1:0] lqg_l_shift_gw_5_net;
  wire [5-1:0] lqg_l_shift_gw_6_net;
  wire [5-1:0] lqg_l_shift_gw_7_net;
  wire [5-1:0] lqg_l_shift_gw_8_net;
  wire [5-1:0] lqg_l_shift_gw_9_net;
  wire [5-1:0] lqg_l_shift_gw_10_net;
  wire [5-1:0] lqg_l_shift_gw_11_net;
  wire [5-1:0] lqg_l_shift_gw_12_net;
  wire [5-1:0] lqg_l_shift_gw_13_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign lqg_l_shift_gw_0_net = in_1;
  assign lqg_l_shift_gw_1_net = in_2;
  assign lqg_l_shift_gw_2_net = in_3;
  assign lqg_l_shift_gw_3_net = in_4;
  assign lqg_l_shift_gw_4_net = in_5;
  assign lqg_l_shift_gw_5_net = in_6;
  assign lqg_l_shift_gw_6_net = in_7;
  assign lqg_l_shift_gw_7_net = in_8;
  assign lqg_l_shift_gw_8_net = in_9;
  assign lqg_l_shift_gw_9_net = in_10;
  assign lqg_l_shift_gw_10_net = in_11;
  assign lqg_l_shift_gw_11_net = in_12;
  assign lqg_l_shift_gw_12_net = in_13;
  assign lqg_l_shift_gw_13_net = in_14;
  sysgen_reinterpret_bdd4b54fb3 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_l_shift_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_shift/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x6 (
  input [5-1:0] i_1,
  input [5-1:0] i_2,
  input [5-1:0] i_3,
  input [5-1:0] i_4,
  input [5-1:0] i_5,
  input [5-1:0] i_6,
  input [5-1:0] i_7,
  input [5-1:0] i_8,
  input [5-1:0] i_9,
  input [5-1:0] i_10,
  input [5-1:0] i_11,
  input [5-1:0] i_12,
  input [5-1:0] i_13,
  input [5-1:0] i_14,
  output [70-1:0] o
);
  wire [70-1:0] concat1_y_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  sysgen_concat_e94a693d6e concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret13_output_port_net),
    .in1(reinterpret12_output_port_net),
    .in2(reinterpret11_output_port_net),
    .in3(reinterpret10_output_port_net),
    .in4(reinterpret9_output_port_net),
    .in5(reinterpret8_output_port_net),
    .in6(reinterpret7_output_port_net),
    .in7(reinterpret6_output_port_net),
    .in8(reinterpret5_output_port_net),
    .in9(reinterpret4_output_port_net),
    .in10(reinterpret3_output_port_net),
    .in11(reinterpret2_output_port_net),
    .in12(reinterpret1_output_port_net),
    .in13(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_14_L_shift
module fpga_lqg_axi_vec2repr_14_l_shift (
  input [5-1:0] vec_in_1,
  input [5-1:0] vec_in_2,
  input [5-1:0] vec_in_3,
  input [5-1:0] vec_in_4,
  input [5-1:0] vec_in_5,
  input [5-1:0] vec_in_6,
  input [5-1:0] vec_in_7,
  input [5-1:0] vec_in_8,
  input [5-1:0] vec_in_9,
  input [5-1:0] vec_in_10,
  input [5-1:0] vec_in_11,
  input [5-1:0] vec_in_12,
  input [5-1:0] vec_in_13,
  input [5-1:0] vec_in_14,
  output [70-1:0] rowmaj_out
);
  wire [70-1:0] reinterpret2_output_port_net;
  wire [5-1:0] lqg_l_shift_gw_0_net;
  wire [5-1:0] lqg_l_shift_gw_1_net;
  wire [5-1:0] lqg_l_shift_gw_2_net;
  wire [5-1:0] lqg_l_shift_gw_3_net;
  wire [5-1:0] lqg_l_shift_gw_4_net;
  wire [5-1:0] lqg_l_shift_gw_5_net;
  wire [5-1:0] lqg_l_shift_gw_6_net;
  wire [5-1:0] lqg_l_shift_gw_7_net;
  wire [5-1:0] lqg_l_shift_gw_8_net;
  wire [5-1:0] lqg_l_shift_gw_9_net;
  wire [5-1:0] lqg_l_shift_gw_10_net;
  wire [5-1:0] lqg_l_shift_gw_11_net;
  wire [5-1:0] lqg_l_shift_gw_12_net;
  wire [5-1:0] lqg_l_shift_gw_13_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net_x0;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [70-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_l_shift_gw_0_net = vec_in_1;
  assign lqg_l_shift_gw_1_net = vec_in_2;
  assign lqg_l_shift_gw_2_net = vec_in_3;
  assign lqg_l_shift_gw_3_net = vec_in_4;
  assign lqg_l_shift_gw_4_net = vec_in_5;
  assign lqg_l_shift_gw_5_net = vec_in_6;
  assign lqg_l_shift_gw_6_net = vec_in_7;
  assign lqg_l_shift_gw_7_net = vec_in_8;
  assign lqg_l_shift_gw_8_net = vec_in_9;
  assign lqg_l_shift_gw_9_net = vec_in_10;
  assign lqg_l_shift_gw_10_net = vec_in_11;
  assign lqg_l_shift_gw_11_net = vec_in_12;
  assign lqg_l_shift_gw_12_net = vec_in_13;
  assign lqg_l_shift_gw_13_net = vec_in_14;
  fpga_lqg_axi_vector_reinterpret2_x7 vector_reinterpret2 (
    .in_1(lqg_l_shift_gw_0_net),
    .in_2(lqg_l_shift_gw_1_net),
    .in_3(lqg_l_shift_gw_2_net),
    .in_4(lqg_l_shift_gw_3_net),
    .in_5(lqg_l_shift_gw_4_net),
    .in_6(lqg_l_shift_gw_5_net),
    .in_7(lqg_l_shift_gw_6_net),
    .in_8(lqg_l_shift_gw_7_net),
    .in_9(lqg_l_shift_gw_8_net),
    .in_10(lqg_l_shift_gw_9_net),
    .in_11(lqg_l_shift_gw_10_net),
    .in_12(lqg_l_shift_gw_11_net),
    .in_13(lqg_l_shift_gw_12_net),
    .in_14(lqg_l_shift_gw_13_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x6 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_926fff82fc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x6 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign reinterpret0_output_port_net_x0 = in_1;
  assign reinterpret1_output_port_net_x0 = in_2;
  sysgen_reinterpret_b399b75fa4 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net_x0),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net_x0),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x5 (
  input [25-1:0] i_1,
  input [25-1:0] i_2,
  output [50-1:0] o
);
  wire [50-1:0] concat1_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  sysgen_concat_a10c538352 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2
module fpga_lqg_axi_vec2repr_2 (
  input [25-1:0] vec_in_1,
  input [25-1:0] vec_in_2,
  output [50-1:0] rowmaj_out
);
  wire [50-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [50-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign reinterpret0_output_port_net_x0 = vec_in_1;
  assign reinterpret1_output_port_net_x0 = vec_in_2;
  fpga_lqg_axi_vector_reinterpret2_x6 vector_reinterpret2 (
    .in_1(reinterpret0_output_port_net_x0),
    .in_2(reinterpret1_output_port_net_x0),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x5 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_3c4ed3b7a4 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2_uk/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x4 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign reinterpret0_output_port_net_x0 = in_1;
  assign reinterpret1_output_port_net_x0 = in_2;
  sysgen_reinterpret_b399b75fa4 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret0_output_port_net_x0),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_b399b75fa4 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(reinterpret1_output_port_net_x0),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2_uk/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x4 (
  input [25-1:0] i_1,
  input [25-1:0] i_2,
  output [50-1:0] o
);
  wire [50-1:0] concat1_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  sysgen_concat_a10c538352 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_2_uk
module fpga_lqg_axi_vec2repr_2_uk (
  input [25-1:0] vec_in_1,
  input [25-1:0] vec_in_2,
  output [50-1:0] rowmaj_out
);
  wire [50-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [50-1:0] concat1_y_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign reinterpret0_output_port_net_x0 = vec_in_1;
  assign reinterpret1_output_port_net_x0 = vec_in_2;
  fpga_lqg_axi_vector_reinterpret2_x4 vector_reinterpret2 (
    .in_1(reinterpret0_output_port_net_x0),
    .in_2(reinterpret1_output_port_net_x0),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x4 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_3c4ed3b7a4 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_res/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x3 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input [18-1:0] in_3,
  input [18-1:0] in_4,
  input [18-1:0] in_5,
  input [18-1:0] in_6,
  input [18-1:0] in_7,
  input [18-1:0] in_8,
  input [18-1:0] in_9,
  input [18-1:0] in_10,
  input [18-1:0] in_11,
  input [18-1:0] in_12,
  input [18-1:0] in_13,
  input [18-1:0] in_14,
  input [18-1:0] in_15,
  input [18-1:0] in_16,
  input [18-1:0] in_17,
  input [18-1:0] in_18,
  input [18-1:0] in_19,
  input [18-1:0] in_20,
  input [18-1:0] in_21,
  input [18-1:0] in_22,
  input [18-1:0] in_23,
  input [18-1:0] in_24,
  input [18-1:0] in_25,
  input [18-1:0] in_26,
  input [18-1:0] in_27,
  input [18-1:0] in_28,
  input [18-1:0] in_29,
  input [18-1:0] in_30,
  input [18-1:0] in_31,
  input [18-1:0] in_32,
  input [18-1:0] in_33,
  input [18-1:0] in_34,
  input [18-1:0] in_35,
  input [18-1:0] in_36,
  input [18-1:0] in_37,
  input [18-1:0] in_38,
  input [18-1:0] in_39,
  input [18-1:0] in_40,
  input [18-1:0] in_41,
  input [18-1:0] in_42,
  input [18-1:0] in_43,
  input [18-1:0] in_44,
  input [18-1:0] in_45,
  input [18-1:0] in_46,
  input [18-1:0] in_47,
  input [18-1:0] in_48,
  input [18-1:0] in_49,
  output [18-1:0] out_1,
  output [18-1:0] out_2,
  output [18-1:0] out_3,
  output [18-1:0] out_4,
  output [18-1:0] out_5,
  output [18-1:0] out_6,
  output [18-1:0] out_7,
  output [18-1:0] out_8,
  output [18-1:0] out_9,
  output [18-1:0] out_10,
  output [18-1:0] out_11,
  output [18-1:0] out_12,
  output [18-1:0] out_13,
  output [18-1:0] out_14,
  output [18-1:0] out_15,
  output [18-1:0] out_16,
  output [18-1:0] out_17,
  output [18-1:0] out_18,
  output [18-1:0] out_19,
  output [18-1:0] out_20,
  output [18-1:0] out_21,
  output [18-1:0] out_22,
  output [18-1:0] out_23,
  output [18-1:0] out_24,
  output [18-1:0] out_25,
  output [18-1:0] out_26,
  output [18-1:0] out_27,
  output [18-1:0] out_28,
  output [18-1:0] out_29,
  output [18-1:0] out_30,
  output [18-1:0] out_31,
  output [18-1:0] out_32,
  output [18-1:0] out_33,
  output [18-1:0] out_34,
  output [18-1:0] out_35,
  output [18-1:0] out_36,
  output [18-1:0] out_37,
  output [18-1:0] out_38,
  output [18-1:0] out_39,
  output [18-1:0] out_40,
  output [18-1:0] out_41,
  output [18-1:0] out_42,
  output [18-1:0] out_43,
  output [18-1:0] out_44,
  output [18-1:0] out_45,
  output [18-1:0] out_46,
  output [18-1:0] out_47,
  output [18-1:0] out_48,
  output [18-1:0] out_49
);
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] reinterpret14_output_port_net;
  wire [18-1:0] reinterpret15_output_port_net;
  wire [18-1:0] reinterpret16_output_port_net;
  wire [18-1:0] reinterpret17_output_port_net;
  wire [18-1:0] reinterpret18_output_port_net;
  wire [18-1:0] reinterpret19_output_port_net;
  wire [18-1:0] reinterpret20_output_port_net;
  wire [18-1:0] reinterpret21_output_port_net;
  wire [18-1:0] reinterpret22_output_port_net;
  wire [18-1:0] reinterpret23_output_port_net;
  wire [18-1:0] reinterpret24_output_port_net;
  wire [18-1:0] reinterpret25_output_port_net;
  wire [18-1:0] reinterpret26_output_port_net;
  wire [18-1:0] reinterpret27_output_port_net;
  wire [18-1:0] reinterpret28_output_port_net;
  wire [18-1:0] reinterpret29_output_port_net;
  wire [18-1:0] reinterpret30_output_port_net;
  wire [18-1:0] reinterpret31_output_port_net;
  wire [18-1:0] reinterpret32_output_port_net;
  wire [18-1:0] reinterpret33_output_port_net;
  wire [18-1:0] reinterpret34_output_port_net;
  wire [18-1:0] reinterpret35_output_port_net;
  wire [18-1:0] reinterpret36_output_port_net;
  wire [18-1:0] reinterpret37_output_port_net;
  wire [18-1:0] reinterpret38_output_port_net;
  wire [18-1:0] reinterpret39_output_port_net;
  wire [18-1:0] reinterpret40_output_port_net;
  wire [18-1:0] reinterpret41_output_port_net;
  wire [18-1:0] reinterpret42_output_port_net;
  wire [18-1:0] reinterpret43_output_port_net;
  wire [18-1:0] reinterpret44_output_port_net;
  wire [18-1:0] reinterpret45_output_port_net;
  wire [18-1:0] reinterpret46_output_port_net;
  wire [18-1:0] reinterpret47_output_port_net;
  wire [18-1:0] reinterpret48_output_port_net;
  wire [18-1:0] lqg_f_res_gw_0_net;
  wire [18-1:0] lqg_f_res_gw_1_net;
  wire [18-1:0] lqg_f_res_gw_2_net;
  wire [18-1:0] lqg_f_res_gw_3_net;
  wire [18-1:0] lqg_f_res_gw_4_net;
  wire [18-1:0] lqg_f_res_gw_5_net;
  wire [18-1:0] lqg_f_res_gw_6_net;
  wire [18-1:0] lqg_f_res_gw_7_net;
  wire [18-1:0] lqg_f_res_gw_8_net;
  wire [18-1:0] lqg_f_res_gw_9_net;
  wire [18-1:0] lqg_f_res_gw_10_net;
  wire [18-1:0] lqg_f_res_gw_11_net;
  wire [18-1:0] lqg_f_res_gw_12_net;
  wire [18-1:0] lqg_f_res_gw_13_net;
  wire [18-1:0] lqg_f_res_gw_14_net;
  wire [18-1:0] lqg_f_res_gw_15_net;
  wire [18-1:0] lqg_f_res_gw_16_net;
  wire [18-1:0] lqg_f_res_gw_17_net;
  wire [18-1:0] lqg_f_res_gw_18_net;
  wire [18-1:0] lqg_f_res_gw_19_net;
  wire [18-1:0] lqg_f_res_gw_20_net;
  wire [18-1:0] lqg_f_res_gw_21_net;
  wire [18-1:0] lqg_f_res_gw_22_net;
  wire [18-1:0] lqg_f_res_gw_23_net;
  wire [18-1:0] lqg_f_res_gw_24_net;
  wire [18-1:0] lqg_f_res_gw_25_net;
  wire [18-1:0] lqg_f_res_gw_26_net;
  wire [18-1:0] lqg_f_res_gw_27_net;
  wire [18-1:0] lqg_f_res_gw_28_net;
  wire [18-1:0] lqg_f_res_gw_29_net;
  wire [18-1:0] lqg_f_res_gw_30_net;
  wire [18-1:0] lqg_f_res_gw_31_net;
  wire [18-1:0] lqg_f_res_gw_32_net;
  wire [18-1:0] lqg_f_res_gw_33_net;
  wire [18-1:0] lqg_f_res_gw_34_net;
  wire [18-1:0] lqg_f_res_gw_35_net;
  wire [18-1:0] lqg_f_res_gw_36_net;
  wire [18-1:0] lqg_f_res_gw_37_net;
  wire [18-1:0] lqg_f_res_gw_38_net;
  wire [18-1:0] lqg_f_res_gw_39_net;
  wire [18-1:0] lqg_f_res_gw_40_net;
  wire [18-1:0] lqg_f_res_gw_41_net;
  wire [18-1:0] lqg_f_res_gw_42_net;
  wire [18-1:0] lqg_f_res_gw_43_net;
  wire [18-1:0] lqg_f_res_gw_44_net;
  wire [18-1:0] lqg_f_res_gw_45_net;
  wire [18-1:0] lqg_f_res_gw_46_net;
  wire [18-1:0] lqg_f_res_gw_47_net;
  wire [18-1:0] lqg_f_res_gw_48_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign out_15 = reinterpret14_output_port_net;
  assign out_16 = reinterpret15_output_port_net;
  assign out_17 = reinterpret16_output_port_net;
  assign out_18 = reinterpret17_output_port_net;
  assign out_19 = reinterpret18_output_port_net;
  assign out_20 = reinterpret19_output_port_net;
  assign out_21 = reinterpret20_output_port_net;
  assign out_22 = reinterpret21_output_port_net;
  assign out_23 = reinterpret22_output_port_net;
  assign out_24 = reinterpret23_output_port_net;
  assign out_25 = reinterpret24_output_port_net;
  assign out_26 = reinterpret25_output_port_net;
  assign out_27 = reinterpret26_output_port_net;
  assign out_28 = reinterpret27_output_port_net;
  assign out_29 = reinterpret28_output_port_net;
  assign out_30 = reinterpret29_output_port_net;
  assign out_31 = reinterpret30_output_port_net;
  assign out_32 = reinterpret31_output_port_net;
  assign out_33 = reinterpret32_output_port_net;
  assign out_34 = reinterpret33_output_port_net;
  assign out_35 = reinterpret34_output_port_net;
  assign out_36 = reinterpret35_output_port_net;
  assign out_37 = reinterpret36_output_port_net;
  assign out_38 = reinterpret37_output_port_net;
  assign out_39 = reinterpret38_output_port_net;
  assign out_40 = reinterpret39_output_port_net;
  assign out_41 = reinterpret40_output_port_net;
  assign out_42 = reinterpret41_output_port_net;
  assign out_43 = reinterpret42_output_port_net;
  assign out_44 = reinterpret43_output_port_net;
  assign out_45 = reinterpret44_output_port_net;
  assign out_46 = reinterpret45_output_port_net;
  assign out_47 = reinterpret46_output_port_net;
  assign out_48 = reinterpret47_output_port_net;
  assign out_49 = reinterpret48_output_port_net;
  assign lqg_f_res_gw_0_net = in_1;
  assign lqg_f_res_gw_1_net = in_2;
  assign lqg_f_res_gw_2_net = in_3;
  assign lqg_f_res_gw_3_net = in_4;
  assign lqg_f_res_gw_4_net = in_5;
  assign lqg_f_res_gw_5_net = in_6;
  assign lqg_f_res_gw_6_net = in_7;
  assign lqg_f_res_gw_7_net = in_8;
  assign lqg_f_res_gw_8_net = in_9;
  assign lqg_f_res_gw_9_net = in_10;
  assign lqg_f_res_gw_10_net = in_11;
  assign lqg_f_res_gw_11_net = in_12;
  assign lqg_f_res_gw_12_net = in_13;
  assign lqg_f_res_gw_13_net = in_14;
  assign lqg_f_res_gw_14_net = in_15;
  assign lqg_f_res_gw_15_net = in_16;
  assign lqg_f_res_gw_16_net = in_17;
  assign lqg_f_res_gw_17_net = in_18;
  assign lqg_f_res_gw_18_net = in_19;
  assign lqg_f_res_gw_19_net = in_20;
  assign lqg_f_res_gw_20_net = in_21;
  assign lqg_f_res_gw_21_net = in_22;
  assign lqg_f_res_gw_22_net = in_23;
  assign lqg_f_res_gw_23_net = in_24;
  assign lqg_f_res_gw_24_net = in_25;
  assign lqg_f_res_gw_25_net = in_26;
  assign lqg_f_res_gw_26_net = in_27;
  assign lqg_f_res_gw_27_net = in_28;
  assign lqg_f_res_gw_28_net = in_29;
  assign lqg_f_res_gw_29_net = in_30;
  assign lqg_f_res_gw_30_net = in_31;
  assign lqg_f_res_gw_31_net = in_32;
  assign lqg_f_res_gw_32_net = in_33;
  assign lqg_f_res_gw_33_net = in_34;
  assign lqg_f_res_gw_34_net = in_35;
  assign lqg_f_res_gw_35_net = in_36;
  assign lqg_f_res_gw_36_net = in_37;
  assign lqg_f_res_gw_37_net = in_38;
  assign lqg_f_res_gw_38_net = in_39;
  assign lqg_f_res_gw_39_net = in_40;
  assign lqg_f_res_gw_40_net = in_41;
  assign lqg_f_res_gw_41_net = in_42;
  assign lqg_f_res_gw_42_net = in_43;
  assign lqg_f_res_gw_43_net = in_44;
  assign lqg_f_res_gw_44_net = in_45;
  assign lqg_f_res_gw_45_net = in_46;
  assign lqg_f_res_gw_46_net = in_47;
  assign lqg_f_res_gw_47_net = in_48;
  assign lqg_f_res_gw_48_net = in_49;
  sysgen_reinterpret_cf3690c5d0 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_14_net),
    .output_port(reinterpret14_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_15_net),
    .output_port(reinterpret15_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_16_net),
    .output_port(reinterpret16_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret17 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_17_net),
    .output_port(reinterpret17_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret18 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_18_net),
    .output_port(reinterpret18_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret19 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_19_net),
    .output_port(reinterpret19_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret20 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_20_net),
    .output_port(reinterpret20_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret21 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_21_net),
    .output_port(reinterpret21_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret22 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_22_net),
    .output_port(reinterpret22_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret23 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_23_net),
    .output_port(reinterpret23_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret24 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_24_net),
    .output_port(reinterpret24_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret25 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_25_net),
    .output_port(reinterpret25_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret26 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_26_net),
    .output_port(reinterpret26_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret27 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_27_net),
    .output_port(reinterpret27_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret28 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_28_net),
    .output_port(reinterpret28_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret29 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_29_net),
    .output_port(reinterpret29_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret30 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_30_net),
    .output_port(reinterpret30_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret31 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_31_net),
    .output_port(reinterpret31_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret32 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_32_net),
    .output_port(reinterpret32_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret33 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_33_net),
    .output_port(reinterpret33_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret34 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_34_net),
    .output_port(reinterpret34_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret35 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_35_net),
    .output_port(reinterpret35_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret36 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_36_net),
    .output_port(reinterpret36_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret37 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_37_net),
    .output_port(reinterpret37_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret38 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_38_net),
    .output_port(reinterpret38_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret39 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_39_net),
    .output_port(reinterpret39_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret40 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_40_net),
    .output_port(reinterpret40_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret41 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_41_net),
    .output_port(reinterpret41_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret42 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_42_net),
    .output_port(reinterpret42_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret43 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_43_net),
    .output_port(reinterpret43_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret44 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_44_net),
    .output_port(reinterpret44_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret45 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_45_net),
    .output_port(reinterpret45_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret46 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_46_net),
    .output_port(reinterpret46_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret47 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_47_net),
    .output_port(reinterpret47_output_port_net)
  );
  sysgen_reinterpret_cf3690c5d0 reinterpret48 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_res_gw_48_net),
    .output_port(reinterpret48_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_res/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x3 (
  input [18-1:0] i_1,
  input [18-1:0] i_2,
  input [18-1:0] i_3,
  input [18-1:0] i_4,
  input [18-1:0] i_5,
  input [18-1:0] i_6,
  input [18-1:0] i_7,
  input [18-1:0] i_8,
  input [18-1:0] i_9,
  input [18-1:0] i_10,
  input [18-1:0] i_11,
  input [18-1:0] i_12,
  input [18-1:0] i_13,
  input [18-1:0] i_14,
  input [18-1:0] i_15,
  input [18-1:0] i_16,
  input [18-1:0] i_17,
  input [18-1:0] i_18,
  input [18-1:0] i_19,
  input [18-1:0] i_20,
  input [18-1:0] i_21,
  input [18-1:0] i_22,
  input [18-1:0] i_23,
  input [18-1:0] i_24,
  input [18-1:0] i_25,
  input [18-1:0] i_26,
  input [18-1:0] i_27,
  input [18-1:0] i_28,
  input [18-1:0] i_29,
  input [18-1:0] i_30,
  input [18-1:0] i_31,
  input [18-1:0] i_32,
  input [18-1:0] i_33,
  input [18-1:0] i_34,
  input [18-1:0] i_35,
  input [18-1:0] i_36,
  input [18-1:0] i_37,
  input [18-1:0] i_38,
  input [18-1:0] i_39,
  input [18-1:0] i_40,
  input [18-1:0] i_41,
  input [18-1:0] i_42,
  input [18-1:0] i_43,
  input [18-1:0] i_44,
  input [18-1:0] i_45,
  input [18-1:0] i_46,
  input [18-1:0] i_47,
  input [18-1:0] i_48,
  input [18-1:0] i_49,
  output [882-1:0] o
);
  wire [882-1:0] concat1_y_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] reinterpret14_output_port_net;
  wire [18-1:0] reinterpret15_output_port_net;
  wire [18-1:0] reinterpret16_output_port_net;
  wire [18-1:0] reinterpret17_output_port_net;
  wire [18-1:0] reinterpret18_output_port_net;
  wire [18-1:0] reinterpret19_output_port_net;
  wire [18-1:0] reinterpret20_output_port_net;
  wire [18-1:0] reinterpret21_output_port_net;
  wire [18-1:0] reinterpret22_output_port_net;
  wire [18-1:0] reinterpret23_output_port_net;
  wire [18-1:0] reinterpret24_output_port_net;
  wire [18-1:0] reinterpret25_output_port_net;
  wire [18-1:0] reinterpret26_output_port_net;
  wire [18-1:0] reinterpret27_output_port_net;
  wire [18-1:0] reinterpret28_output_port_net;
  wire [18-1:0] reinterpret29_output_port_net;
  wire [18-1:0] reinterpret30_output_port_net;
  wire [18-1:0] reinterpret31_output_port_net;
  wire [18-1:0] reinterpret32_output_port_net;
  wire [18-1:0] reinterpret33_output_port_net;
  wire [18-1:0] reinterpret34_output_port_net;
  wire [18-1:0] reinterpret35_output_port_net;
  wire [18-1:0] reinterpret36_output_port_net;
  wire [18-1:0] reinterpret37_output_port_net;
  wire [18-1:0] reinterpret38_output_port_net;
  wire [18-1:0] reinterpret39_output_port_net;
  wire [18-1:0] reinterpret40_output_port_net;
  wire [18-1:0] reinterpret41_output_port_net;
  wire [18-1:0] reinterpret42_output_port_net;
  wire [18-1:0] reinterpret43_output_port_net;
  wire [18-1:0] reinterpret44_output_port_net;
  wire [18-1:0] reinterpret45_output_port_net;
  wire [18-1:0] reinterpret46_output_port_net;
  wire [18-1:0] reinterpret47_output_port_net;
  wire [18-1:0] reinterpret48_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  assign reinterpret14_output_port_net = i_15;
  assign reinterpret15_output_port_net = i_16;
  assign reinterpret16_output_port_net = i_17;
  assign reinterpret17_output_port_net = i_18;
  assign reinterpret18_output_port_net = i_19;
  assign reinterpret19_output_port_net = i_20;
  assign reinterpret20_output_port_net = i_21;
  assign reinterpret21_output_port_net = i_22;
  assign reinterpret22_output_port_net = i_23;
  assign reinterpret23_output_port_net = i_24;
  assign reinterpret24_output_port_net = i_25;
  assign reinterpret25_output_port_net = i_26;
  assign reinterpret26_output_port_net = i_27;
  assign reinterpret27_output_port_net = i_28;
  assign reinterpret28_output_port_net = i_29;
  assign reinterpret29_output_port_net = i_30;
  assign reinterpret30_output_port_net = i_31;
  assign reinterpret31_output_port_net = i_32;
  assign reinterpret32_output_port_net = i_33;
  assign reinterpret33_output_port_net = i_34;
  assign reinterpret34_output_port_net = i_35;
  assign reinterpret35_output_port_net = i_36;
  assign reinterpret36_output_port_net = i_37;
  assign reinterpret37_output_port_net = i_38;
  assign reinterpret38_output_port_net = i_39;
  assign reinterpret39_output_port_net = i_40;
  assign reinterpret40_output_port_net = i_41;
  assign reinterpret41_output_port_net = i_42;
  assign reinterpret42_output_port_net = i_43;
  assign reinterpret43_output_port_net = i_44;
  assign reinterpret44_output_port_net = i_45;
  assign reinterpret45_output_port_net = i_46;
  assign reinterpret46_output_port_net = i_47;
  assign reinterpret47_output_port_net = i_48;
  assign reinterpret48_output_port_net = i_49;
  sysgen_concat_3b291b5690 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret48_output_port_net),
    .in1(reinterpret47_output_port_net),
    .in2(reinterpret46_output_port_net),
    .in3(reinterpret45_output_port_net),
    .in4(reinterpret44_output_port_net),
    .in5(reinterpret43_output_port_net),
    .in6(reinterpret42_output_port_net),
    .in7(reinterpret41_output_port_net),
    .in8(reinterpret40_output_port_net),
    .in9(reinterpret39_output_port_net),
    .in10(reinterpret38_output_port_net),
    .in11(reinterpret37_output_port_net),
    .in12(reinterpret36_output_port_net),
    .in13(reinterpret35_output_port_net),
    .in14(reinterpret34_output_port_net),
    .in15(reinterpret33_output_port_net),
    .in16(reinterpret32_output_port_net),
    .in17(reinterpret31_output_port_net),
    .in18(reinterpret30_output_port_net),
    .in19(reinterpret29_output_port_net),
    .in20(reinterpret28_output_port_net),
    .in21(reinterpret27_output_port_net),
    .in22(reinterpret26_output_port_net),
    .in23(reinterpret25_output_port_net),
    .in24(reinterpret24_output_port_net),
    .in25(reinterpret23_output_port_net),
    .in26(reinterpret22_output_port_net),
    .in27(reinterpret21_output_port_net),
    .in28(reinterpret20_output_port_net),
    .in29(reinterpret19_output_port_net),
    .in30(reinterpret18_output_port_net),
    .in31(reinterpret17_output_port_net),
    .in32(reinterpret16_output_port_net),
    .in33(reinterpret15_output_port_net),
    .in34(reinterpret14_output_port_net),
    .in35(reinterpret13_output_port_net),
    .in36(reinterpret12_output_port_net),
    .in37(reinterpret11_output_port_net),
    .in38(reinterpret10_output_port_net),
    .in39(reinterpret9_output_port_net),
    .in40(reinterpret8_output_port_net),
    .in41(reinterpret7_output_port_net),
    .in42(reinterpret6_output_port_net),
    .in43(reinterpret5_output_port_net),
    .in44(reinterpret4_output_port_net),
    .in45(reinterpret3_output_port_net),
    .in46(reinterpret2_output_port_net),
    .in47(reinterpret1_output_port_net),
    .in48(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_res
module fpga_lqg_axi_vec2repr_49_f_res (
  input [18-1:0] vec_in_1,
  input [18-1:0] vec_in_2,
  input [18-1:0] vec_in_3,
  input [18-1:0] vec_in_4,
  input [18-1:0] vec_in_5,
  input [18-1:0] vec_in_6,
  input [18-1:0] vec_in_7,
  input [18-1:0] vec_in_8,
  input [18-1:0] vec_in_9,
  input [18-1:0] vec_in_10,
  input [18-1:0] vec_in_11,
  input [18-1:0] vec_in_12,
  input [18-1:0] vec_in_13,
  input [18-1:0] vec_in_14,
  input [18-1:0] vec_in_15,
  input [18-1:0] vec_in_16,
  input [18-1:0] vec_in_17,
  input [18-1:0] vec_in_18,
  input [18-1:0] vec_in_19,
  input [18-1:0] vec_in_20,
  input [18-1:0] vec_in_21,
  input [18-1:0] vec_in_22,
  input [18-1:0] vec_in_23,
  input [18-1:0] vec_in_24,
  input [18-1:0] vec_in_25,
  input [18-1:0] vec_in_26,
  input [18-1:0] vec_in_27,
  input [18-1:0] vec_in_28,
  input [18-1:0] vec_in_29,
  input [18-1:0] vec_in_30,
  input [18-1:0] vec_in_31,
  input [18-1:0] vec_in_32,
  input [18-1:0] vec_in_33,
  input [18-1:0] vec_in_34,
  input [18-1:0] vec_in_35,
  input [18-1:0] vec_in_36,
  input [18-1:0] vec_in_37,
  input [18-1:0] vec_in_38,
  input [18-1:0] vec_in_39,
  input [18-1:0] vec_in_40,
  input [18-1:0] vec_in_41,
  input [18-1:0] vec_in_42,
  input [18-1:0] vec_in_43,
  input [18-1:0] vec_in_44,
  input [18-1:0] vec_in_45,
  input [18-1:0] vec_in_46,
  input [18-1:0] vec_in_47,
  input [18-1:0] vec_in_48,
  input [18-1:0] vec_in_49,
  output [882-1:0] rowmaj_out
);
  wire [882-1:0] reinterpret2_output_port_net;
  wire [18-1:0] lqg_f_res_gw_0_net;
  wire [18-1:0] lqg_f_res_gw_1_net;
  wire [18-1:0] lqg_f_res_gw_2_net;
  wire [18-1:0] lqg_f_res_gw_3_net;
  wire [18-1:0] lqg_f_res_gw_4_net;
  wire [18-1:0] lqg_f_res_gw_5_net;
  wire [18-1:0] lqg_f_res_gw_6_net;
  wire [18-1:0] lqg_f_res_gw_7_net;
  wire [18-1:0] lqg_f_res_gw_8_net;
  wire [18-1:0] lqg_f_res_gw_9_net;
  wire [18-1:0] lqg_f_res_gw_10_net;
  wire [18-1:0] lqg_f_res_gw_11_net;
  wire [18-1:0] lqg_f_res_gw_12_net;
  wire [18-1:0] lqg_f_res_gw_13_net;
  wire [18-1:0] lqg_f_res_gw_14_net;
  wire [18-1:0] lqg_f_res_gw_15_net;
  wire [18-1:0] lqg_f_res_gw_16_net;
  wire [18-1:0] lqg_f_res_gw_17_net;
  wire [18-1:0] lqg_f_res_gw_18_net;
  wire [18-1:0] lqg_f_res_gw_19_net;
  wire [18-1:0] lqg_f_res_gw_20_net;
  wire [18-1:0] lqg_f_res_gw_21_net;
  wire [18-1:0] lqg_f_res_gw_22_net;
  wire [18-1:0] lqg_f_res_gw_23_net;
  wire [18-1:0] lqg_f_res_gw_24_net;
  wire [18-1:0] lqg_f_res_gw_25_net;
  wire [18-1:0] lqg_f_res_gw_26_net;
  wire [18-1:0] lqg_f_res_gw_27_net;
  wire [18-1:0] lqg_f_res_gw_28_net;
  wire [18-1:0] lqg_f_res_gw_29_net;
  wire [18-1:0] lqg_f_res_gw_30_net;
  wire [18-1:0] lqg_f_res_gw_31_net;
  wire [18-1:0] lqg_f_res_gw_32_net;
  wire [18-1:0] lqg_f_res_gw_33_net;
  wire [18-1:0] lqg_f_res_gw_34_net;
  wire [18-1:0] lqg_f_res_gw_35_net;
  wire [18-1:0] lqg_f_res_gw_36_net;
  wire [18-1:0] lqg_f_res_gw_37_net;
  wire [18-1:0] lqg_f_res_gw_38_net;
  wire [18-1:0] lqg_f_res_gw_39_net;
  wire [18-1:0] lqg_f_res_gw_40_net;
  wire [18-1:0] lqg_f_res_gw_41_net;
  wire [18-1:0] lqg_f_res_gw_42_net;
  wire [18-1:0] lqg_f_res_gw_43_net;
  wire [18-1:0] lqg_f_res_gw_44_net;
  wire [18-1:0] lqg_f_res_gw_45_net;
  wire [18-1:0] lqg_f_res_gw_46_net;
  wire [18-1:0] lqg_f_res_gw_47_net;
  wire [18-1:0] lqg_f_res_gw_48_net;
  wire [18-1:0] reinterpret0_output_port_net;
  wire [18-1:0] reinterpret1_output_port_net;
  wire [18-1:0] reinterpret2_output_port_net_x0;
  wire [18-1:0] reinterpret3_output_port_net;
  wire [18-1:0] reinterpret4_output_port_net;
  wire [18-1:0] reinterpret5_output_port_net;
  wire [882-1:0] concat1_y_net;
  wire [18-1:0] reinterpret6_output_port_net;
  wire [18-1:0] reinterpret7_output_port_net;
  wire [18-1:0] reinterpret8_output_port_net;
  wire [18-1:0] reinterpret9_output_port_net;
  wire [18-1:0] reinterpret10_output_port_net;
  wire [18-1:0] reinterpret11_output_port_net;
  wire [18-1:0] reinterpret12_output_port_net;
  wire [18-1:0] reinterpret13_output_port_net;
  wire [18-1:0] reinterpret14_output_port_net;
  wire [18-1:0] reinterpret15_output_port_net;
  wire [18-1:0] reinterpret16_output_port_net;
  wire [18-1:0] reinterpret17_output_port_net;
  wire [18-1:0] reinterpret18_output_port_net;
  wire [18-1:0] reinterpret19_output_port_net;
  wire [18-1:0] reinterpret20_output_port_net;
  wire [18-1:0] reinterpret21_output_port_net;
  wire [18-1:0] reinterpret22_output_port_net;
  wire [18-1:0] reinterpret23_output_port_net;
  wire [18-1:0] reinterpret24_output_port_net;
  wire [18-1:0] reinterpret25_output_port_net;
  wire [18-1:0] reinterpret26_output_port_net;
  wire [18-1:0] reinterpret27_output_port_net;
  wire [18-1:0] reinterpret28_output_port_net;
  wire [18-1:0] reinterpret29_output_port_net;
  wire [18-1:0] reinterpret30_output_port_net;
  wire [18-1:0] reinterpret31_output_port_net;
  wire [18-1:0] reinterpret32_output_port_net;
  wire [18-1:0] reinterpret33_output_port_net;
  wire [18-1:0] reinterpret34_output_port_net;
  wire [18-1:0] reinterpret35_output_port_net;
  wire [18-1:0] reinterpret36_output_port_net;
  wire [18-1:0] reinterpret37_output_port_net;
  wire [18-1:0] reinterpret38_output_port_net;
  wire [18-1:0] reinterpret39_output_port_net;
  wire [18-1:0] reinterpret40_output_port_net;
  wire [18-1:0] reinterpret41_output_port_net;
  wire [18-1:0] reinterpret42_output_port_net;
  wire [18-1:0] reinterpret43_output_port_net;
  wire [18-1:0] reinterpret44_output_port_net;
  wire [18-1:0] reinterpret45_output_port_net;
  wire [18-1:0] reinterpret46_output_port_net;
  wire [18-1:0] reinterpret47_output_port_net;
  wire [18-1:0] reinterpret48_output_port_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_f_res_gw_0_net = vec_in_1;
  assign lqg_f_res_gw_1_net = vec_in_2;
  assign lqg_f_res_gw_2_net = vec_in_3;
  assign lqg_f_res_gw_3_net = vec_in_4;
  assign lqg_f_res_gw_4_net = vec_in_5;
  assign lqg_f_res_gw_5_net = vec_in_6;
  assign lqg_f_res_gw_6_net = vec_in_7;
  assign lqg_f_res_gw_7_net = vec_in_8;
  assign lqg_f_res_gw_8_net = vec_in_9;
  assign lqg_f_res_gw_9_net = vec_in_10;
  assign lqg_f_res_gw_10_net = vec_in_11;
  assign lqg_f_res_gw_11_net = vec_in_12;
  assign lqg_f_res_gw_12_net = vec_in_13;
  assign lqg_f_res_gw_13_net = vec_in_14;
  assign lqg_f_res_gw_14_net = vec_in_15;
  assign lqg_f_res_gw_15_net = vec_in_16;
  assign lqg_f_res_gw_16_net = vec_in_17;
  assign lqg_f_res_gw_17_net = vec_in_18;
  assign lqg_f_res_gw_18_net = vec_in_19;
  assign lqg_f_res_gw_19_net = vec_in_20;
  assign lqg_f_res_gw_20_net = vec_in_21;
  assign lqg_f_res_gw_21_net = vec_in_22;
  assign lqg_f_res_gw_22_net = vec_in_23;
  assign lqg_f_res_gw_23_net = vec_in_24;
  assign lqg_f_res_gw_24_net = vec_in_25;
  assign lqg_f_res_gw_25_net = vec_in_26;
  assign lqg_f_res_gw_26_net = vec_in_27;
  assign lqg_f_res_gw_27_net = vec_in_28;
  assign lqg_f_res_gw_28_net = vec_in_29;
  assign lqg_f_res_gw_29_net = vec_in_30;
  assign lqg_f_res_gw_30_net = vec_in_31;
  assign lqg_f_res_gw_31_net = vec_in_32;
  assign lqg_f_res_gw_32_net = vec_in_33;
  assign lqg_f_res_gw_33_net = vec_in_34;
  assign lqg_f_res_gw_34_net = vec_in_35;
  assign lqg_f_res_gw_35_net = vec_in_36;
  assign lqg_f_res_gw_36_net = vec_in_37;
  assign lqg_f_res_gw_37_net = vec_in_38;
  assign lqg_f_res_gw_38_net = vec_in_39;
  assign lqg_f_res_gw_39_net = vec_in_40;
  assign lqg_f_res_gw_40_net = vec_in_41;
  assign lqg_f_res_gw_41_net = vec_in_42;
  assign lqg_f_res_gw_42_net = vec_in_43;
  assign lqg_f_res_gw_43_net = vec_in_44;
  assign lqg_f_res_gw_44_net = vec_in_45;
  assign lqg_f_res_gw_45_net = vec_in_46;
  assign lqg_f_res_gw_46_net = vec_in_47;
  assign lqg_f_res_gw_47_net = vec_in_48;
  assign lqg_f_res_gw_48_net = vec_in_49;
  fpga_lqg_axi_vector_reinterpret2_x3 vector_reinterpret2 (
    .in_1(lqg_f_res_gw_0_net),
    .in_2(lqg_f_res_gw_1_net),
    .in_3(lqg_f_res_gw_2_net),
    .in_4(lqg_f_res_gw_3_net),
    .in_5(lqg_f_res_gw_4_net),
    .in_6(lqg_f_res_gw_5_net),
    .in_7(lqg_f_res_gw_6_net),
    .in_8(lqg_f_res_gw_7_net),
    .in_9(lqg_f_res_gw_8_net),
    .in_10(lqg_f_res_gw_9_net),
    .in_11(lqg_f_res_gw_10_net),
    .in_12(lqg_f_res_gw_11_net),
    .in_13(lqg_f_res_gw_12_net),
    .in_14(lqg_f_res_gw_13_net),
    .in_15(lqg_f_res_gw_14_net),
    .in_16(lqg_f_res_gw_15_net),
    .in_17(lqg_f_res_gw_16_net),
    .in_18(lqg_f_res_gw_17_net),
    .in_19(lqg_f_res_gw_18_net),
    .in_20(lqg_f_res_gw_19_net),
    .in_21(lqg_f_res_gw_20_net),
    .in_22(lqg_f_res_gw_21_net),
    .in_23(lqg_f_res_gw_22_net),
    .in_24(lqg_f_res_gw_23_net),
    .in_25(lqg_f_res_gw_24_net),
    .in_26(lqg_f_res_gw_25_net),
    .in_27(lqg_f_res_gw_26_net),
    .in_28(lqg_f_res_gw_27_net),
    .in_29(lqg_f_res_gw_28_net),
    .in_30(lqg_f_res_gw_29_net),
    .in_31(lqg_f_res_gw_30_net),
    .in_32(lqg_f_res_gw_31_net),
    .in_33(lqg_f_res_gw_32_net),
    .in_34(lqg_f_res_gw_33_net),
    .in_35(lqg_f_res_gw_34_net),
    .in_36(lqg_f_res_gw_35_net),
    .in_37(lqg_f_res_gw_36_net),
    .in_38(lqg_f_res_gw_37_net),
    .in_39(lqg_f_res_gw_38_net),
    .in_40(lqg_f_res_gw_39_net),
    .in_41(lqg_f_res_gw_40_net),
    .in_42(lqg_f_res_gw_41_net),
    .in_43(lqg_f_res_gw_42_net),
    .in_44(lqg_f_res_gw_43_net),
    .in_45(lqg_f_res_gw_44_net),
    .in_46(lqg_f_res_gw_45_net),
    .in_47(lqg_f_res_gw_46_net),
    .in_48(lqg_f_res_gw_47_net),
    .in_49(lqg_f_res_gw_48_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net),
    .out_15(reinterpret14_output_port_net),
    .out_16(reinterpret15_output_port_net),
    .out_17(reinterpret16_output_port_net),
    .out_18(reinterpret17_output_port_net),
    .out_19(reinterpret18_output_port_net),
    .out_20(reinterpret19_output_port_net),
    .out_21(reinterpret20_output_port_net),
    .out_22(reinterpret21_output_port_net),
    .out_23(reinterpret22_output_port_net),
    .out_24(reinterpret23_output_port_net),
    .out_25(reinterpret24_output_port_net),
    .out_26(reinterpret25_output_port_net),
    .out_27(reinterpret26_output_port_net),
    .out_28(reinterpret27_output_port_net),
    .out_29(reinterpret28_output_port_net),
    .out_30(reinterpret29_output_port_net),
    .out_31(reinterpret30_output_port_net),
    .out_32(reinterpret31_output_port_net),
    .out_33(reinterpret32_output_port_net),
    .out_34(reinterpret33_output_port_net),
    .out_35(reinterpret34_output_port_net),
    .out_36(reinterpret35_output_port_net),
    .out_37(reinterpret36_output_port_net),
    .out_38(reinterpret37_output_port_net),
    .out_39(reinterpret38_output_port_net),
    .out_40(reinterpret39_output_port_net),
    .out_41(reinterpret40_output_port_net),
    .out_42(reinterpret41_output_port_net),
    .out_43(reinterpret42_output_port_net),
    .out_44(reinterpret43_output_port_net),
    .out_45(reinterpret44_output_port_net),
    .out_46(reinterpret45_output_port_net),
    .out_47(reinterpret46_output_port_net),
    .out_48(reinterpret47_output_port_net),
    .out_49(reinterpret48_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x3 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .i_15(reinterpret14_output_port_net),
    .i_16(reinterpret15_output_port_net),
    .i_17(reinterpret16_output_port_net),
    .i_18(reinterpret17_output_port_net),
    .i_19(reinterpret18_output_port_net),
    .i_20(reinterpret19_output_port_net),
    .i_21(reinterpret20_output_port_net),
    .i_22(reinterpret21_output_port_net),
    .i_23(reinterpret22_output_port_net),
    .i_24(reinterpret23_output_port_net),
    .i_25(reinterpret24_output_port_net),
    .i_26(reinterpret25_output_port_net),
    .i_27(reinterpret26_output_port_net),
    .i_28(reinterpret27_output_port_net),
    .i_29(reinterpret28_output_port_net),
    .i_30(reinterpret29_output_port_net),
    .i_31(reinterpret30_output_port_net),
    .i_32(reinterpret31_output_port_net),
    .i_33(reinterpret32_output_port_net),
    .i_34(reinterpret33_output_port_net),
    .i_35(reinterpret34_output_port_net),
    .i_36(reinterpret35_output_port_net),
    .i_37(reinterpret36_output_port_net),
    .i_38(reinterpret37_output_port_net),
    .i_39(reinterpret38_output_port_net),
    .i_40(reinterpret39_output_port_net),
    .i_41(reinterpret40_output_port_net),
    .i_42(reinterpret41_output_port_net),
    .i_43(reinterpret42_output_port_net),
    .i_44(reinterpret43_output_port_net),
    .i_45(reinterpret44_output_port_net),
    .i_46(reinterpret45_output_port_net),
    .i_47(reinterpret46_output_port_net),
    .i_48(reinterpret47_output_port_net),
    .i_49(reinterpret48_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_74245ac531 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_shift/Vector Reinterpret2
module fpga_lqg_axi_vector_reinterpret2_x2 (
  input [5-1:0] in_1,
  input [5-1:0] in_2,
  input [5-1:0] in_3,
  input [5-1:0] in_4,
  input [5-1:0] in_5,
  input [5-1:0] in_6,
  input [5-1:0] in_7,
  input [5-1:0] in_8,
  input [5-1:0] in_9,
  input [5-1:0] in_10,
  input [5-1:0] in_11,
  input [5-1:0] in_12,
  input [5-1:0] in_13,
  input [5-1:0] in_14,
  input [5-1:0] in_15,
  input [5-1:0] in_16,
  input [5-1:0] in_17,
  input [5-1:0] in_18,
  input [5-1:0] in_19,
  input [5-1:0] in_20,
  input [5-1:0] in_21,
  input [5-1:0] in_22,
  input [5-1:0] in_23,
  input [5-1:0] in_24,
  input [5-1:0] in_25,
  input [5-1:0] in_26,
  input [5-1:0] in_27,
  input [5-1:0] in_28,
  input [5-1:0] in_29,
  input [5-1:0] in_30,
  input [5-1:0] in_31,
  input [5-1:0] in_32,
  input [5-1:0] in_33,
  input [5-1:0] in_34,
  input [5-1:0] in_35,
  input [5-1:0] in_36,
  input [5-1:0] in_37,
  input [5-1:0] in_38,
  input [5-1:0] in_39,
  input [5-1:0] in_40,
  input [5-1:0] in_41,
  input [5-1:0] in_42,
  input [5-1:0] in_43,
  input [5-1:0] in_44,
  input [5-1:0] in_45,
  input [5-1:0] in_46,
  input [5-1:0] in_47,
  input [5-1:0] in_48,
  input [5-1:0] in_49,
  output [5-1:0] out_1,
  output [5-1:0] out_2,
  output [5-1:0] out_3,
  output [5-1:0] out_4,
  output [5-1:0] out_5,
  output [5-1:0] out_6,
  output [5-1:0] out_7,
  output [5-1:0] out_8,
  output [5-1:0] out_9,
  output [5-1:0] out_10,
  output [5-1:0] out_11,
  output [5-1:0] out_12,
  output [5-1:0] out_13,
  output [5-1:0] out_14,
  output [5-1:0] out_15,
  output [5-1:0] out_16,
  output [5-1:0] out_17,
  output [5-1:0] out_18,
  output [5-1:0] out_19,
  output [5-1:0] out_20,
  output [5-1:0] out_21,
  output [5-1:0] out_22,
  output [5-1:0] out_23,
  output [5-1:0] out_24,
  output [5-1:0] out_25,
  output [5-1:0] out_26,
  output [5-1:0] out_27,
  output [5-1:0] out_28,
  output [5-1:0] out_29,
  output [5-1:0] out_30,
  output [5-1:0] out_31,
  output [5-1:0] out_32,
  output [5-1:0] out_33,
  output [5-1:0] out_34,
  output [5-1:0] out_35,
  output [5-1:0] out_36,
  output [5-1:0] out_37,
  output [5-1:0] out_38,
  output [5-1:0] out_39,
  output [5-1:0] out_40,
  output [5-1:0] out_41,
  output [5-1:0] out_42,
  output [5-1:0] out_43,
  output [5-1:0] out_44,
  output [5-1:0] out_45,
  output [5-1:0] out_46,
  output [5-1:0] out_47,
  output [5-1:0] out_48,
  output [5-1:0] out_49
);
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [5-1:0] reinterpret14_output_port_net;
  wire [5-1:0] reinterpret15_output_port_net;
  wire [5-1:0] reinterpret16_output_port_net;
  wire [5-1:0] reinterpret17_output_port_net;
  wire [5-1:0] reinterpret18_output_port_net;
  wire [5-1:0] reinterpret19_output_port_net;
  wire [5-1:0] reinterpret20_output_port_net;
  wire [5-1:0] reinterpret21_output_port_net;
  wire [5-1:0] reinterpret22_output_port_net;
  wire [5-1:0] reinterpret23_output_port_net;
  wire [5-1:0] reinterpret24_output_port_net;
  wire [5-1:0] reinterpret25_output_port_net;
  wire [5-1:0] reinterpret26_output_port_net;
  wire [5-1:0] reinterpret27_output_port_net;
  wire [5-1:0] reinterpret28_output_port_net;
  wire [5-1:0] reinterpret29_output_port_net;
  wire [5-1:0] reinterpret30_output_port_net;
  wire [5-1:0] reinterpret31_output_port_net;
  wire [5-1:0] reinterpret32_output_port_net;
  wire [5-1:0] reinterpret33_output_port_net;
  wire [5-1:0] reinterpret34_output_port_net;
  wire [5-1:0] reinterpret35_output_port_net;
  wire [5-1:0] reinterpret36_output_port_net;
  wire [5-1:0] reinterpret37_output_port_net;
  wire [5-1:0] reinterpret38_output_port_net;
  wire [5-1:0] reinterpret39_output_port_net;
  wire [5-1:0] reinterpret40_output_port_net;
  wire [5-1:0] reinterpret41_output_port_net;
  wire [5-1:0] reinterpret42_output_port_net;
  wire [5-1:0] reinterpret43_output_port_net;
  wire [5-1:0] reinterpret44_output_port_net;
  wire [5-1:0] reinterpret45_output_port_net;
  wire [5-1:0] reinterpret46_output_port_net;
  wire [5-1:0] reinterpret47_output_port_net;
  wire [5-1:0] reinterpret48_output_port_net;
  wire [5-1:0] lqg_f_shift_gw_0_net;
  wire [5-1:0] lqg_f_shift_gw_1_net;
  wire [5-1:0] lqg_f_shift_gw_2_net;
  wire [5-1:0] lqg_f_shift_gw_3_net;
  wire [5-1:0] lqg_f_shift_gw_4_net;
  wire [5-1:0] lqg_f_shift_gw_5_net;
  wire [5-1:0] lqg_f_shift_gw_6_net;
  wire [5-1:0] lqg_f_shift_gw_7_net;
  wire [5-1:0] lqg_f_shift_gw_8_net;
  wire [5-1:0] lqg_f_shift_gw_9_net;
  wire [5-1:0] lqg_f_shift_gw_10_net;
  wire [5-1:0] lqg_f_shift_gw_11_net;
  wire [5-1:0] lqg_f_shift_gw_12_net;
  wire [5-1:0] lqg_f_shift_gw_13_net;
  wire [5-1:0] lqg_f_shift_gw_14_net;
  wire [5-1:0] lqg_f_shift_gw_15_net;
  wire [5-1:0] lqg_f_shift_gw_16_net;
  wire [5-1:0] lqg_f_shift_gw_17_net;
  wire [5-1:0] lqg_f_shift_gw_18_net;
  wire [5-1:0] lqg_f_shift_gw_19_net;
  wire [5-1:0] lqg_f_shift_gw_20_net;
  wire [5-1:0] lqg_f_shift_gw_21_net;
  wire [5-1:0] lqg_f_shift_gw_22_net;
  wire [5-1:0] lqg_f_shift_gw_23_net;
  wire [5-1:0] lqg_f_shift_gw_24_net;
  wire [5-1:0] lqg_f_shift_gw_25_net;
  wire [5-1:0] lqg_f_shift_gw_26_net;
  wire [5-1:0] lqg_f_shift_gw_27_net;
  wire [5-1:0] lqg_f_shift_gw_28_net;
  wire [5-1:0] lqg_f_shift_gw_29_net;
  wire [5-1:0] lqg_f_shift_gw_30_net;
  wire [5-1:0] lqg_f_shift_gw_31_net;
  wire [5-1:0] lqg_f_shift_gw_32_net;
  wire [5-1:0] lqg_f_shift_gw_33_net;
  wire [5-1:0] lqg_f_shift_gw_34_net;
  wire [5-1:0] lqg_f_shift_gw_35_net;
  wire [5-1:0] lqg_f_shift_gw_36_net;
  wire [5-1:0] lqg_f_shift_gw_37_net;
  wire [5-1:0] lqg_f_shift_gw_38_net;
  wire [5-1:0] lqg_f_shift_gw_39_net;
  wire [5-1:0] lqg_f_shift_gw_40_net;
  wire [5-1:0] lqg_f_shift_gw_41_net;
  wire [5-1:0] lqg_f_shift_gw_42_net;
  wire [5-1:0] lqg_f_shift_gw_43_net;
  wire [5-1:0] lqg_f_shift_gw_44_net;
  wire [5-1:0] lqg_f_shift_gw_45_net;
  wire [5-1:0] lqg_f_shift_gw_46_net;
  wire [5-1:0] lqg_f_shift_gw_47_net;
  wire [5-1:0] lqg_f_shift_gw_48_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign out_15 = reinterpret14_output_port_net;
  assign out_16 = reinterpret15_output_port_net;
  assign out_17 = reinterpret16_output_port_net;
  assign out_18 = reinterpret17_output_port_net;
  assign out_19 = reinterpret18_output_port_net;
  assign out_20 = reinterpret19_output_port_net;
  assign out_21 = reinterpret20_output_port_net;
  assign out_22 = reinterpret21_output_port_net;
  assign out_23 = reinterpret22_output_port_net;
  assign out_24 = reinterpret23_output_port_net;
  assign out_25 = reinterpret24_output_port_net;
  assign out_26 = reinterpret25_output_port_net;
  assign out_27 = reinterpret26_output_port_net;
  assign out_28 = reinterpret27_output_port_net;
  assign out_29 = reinterpret28_output_port_net;
  assign out_30 = reinterpret29_output_port_net;
  assign out_31 = reinterpret30_output_port_net;
  assign out_32 = reinterpret31_output_port_net;
  assign out_33 = reinterpret32_output_port_net;
  assign out_34 = reinterpret33_output_port_net;
  assign out_35 = reinterpret34_output_port_net;
  assign out_36 = reinterpret35_output_port_net;
  assign out_37 = reinterpret36_output_port_net;
  assign out_38 = reinterpret37_output_port_net;
  assign out_39 = reinterpret38_output_port_net;
  assign out_40 = reinterpret39_output_port_net;
  assign out_41 = reinterpret40_output_port_net;
  assign out_42 = reinterpret41_output_port_net;
  assign out_43 = reinterpret42_output_port_net;
  assign out_44 = reinterpret43_output_port_net;
  assign out_45 = reinterpret44_output_port_net;
  assign out_46 = reinterpret45_output_port_net;
  assign out_47 = reinterpret46_output_port_net;
  assign out_48 = reinterpret47_output_port_net;
  assign out_49 = reinterpret48_output_port_net;
  assign lqg_f_shift_gw_0_net = in_1;
  assign lqg_f_shift_gw_1_net = in_2;
  assign lqg_f_shift_gw_2_net = in_3;
  assign lqg_f_shift_gw_3_net = in_4;
  assign lqg_f_shift_gw_4_net = in_5;
  assign lqg_f_shift_gw_5_net = in_6;
  assign lqg_f_shift_gw_6_net = in_7;
  assign lqg_f_shift_gw_7_net = in_8;
  assign lqg_f_shift_gw_8_net = in_9;
  assign lqg_f_shift_gw_9_net = in_10;
  assign lqg_f_shift_gw_10_net = in_11;
  assign lqg_f_shift_gw_11_net = in_12;
  assign lqg_f_shift_gw_12_net = in_13;
  assign lqg_f_shift_gw_13_net = in_14;
  assign lqg_f_shift_gw_14_net = in_15;
  assign lqg_f_shift_gw_15_net = in_16;
  assign lqg_f_shift_gw_16_net = in_17;
  assign lqg_f_shift_gw_17_net = in_18;
  assign lqg_f_shift_gw_18_net = in_19;
  assign lqg_f_shift_gw_19_net = in_20;
  assign lqg_f_shift_gw_20_net = in_21;
  assign lqg_f_shift_gw_21_net = in_22;
  assign lqg_f_shift_gw_22_net = in_23;
  assign lqg_f_shift_gw_23_net = in_24;
  assign lqg_f_shift_gw_24_net = in_25;
  assign lqg_f_shift_gw_25_net = in_26;
  assign lqg_f_shift_gw_26_net = in_27;
  assign lqg_f_shift_gw_27_net = in_28;
  assign lqg_f_shift_gw_28_net = in_29;
  assign lqg_f_shift_gw_29_net = in_30;
  assign lqg_f_shift_gw_30_net = in_31;
  assign lqg_f_shift_gw_31_net = in_32;
  assign lqg_f_shift_gw_32_net = in_33;
  assign lqg_f_shift_gw_33_net = in_34;
  assign lqg_f_shift_gw_34_net = in_35;
  assign lqg_f_shift_gw_35_net = in_36;
  assign lqg_f_shift_gw_36_net = in_37;
  assign lqg_f_shift_gw_37_net = in_38;
  assign lqg_f_shift_gw_38_net = in_39;
  assign lqg_f_shift_gw_39_net = in_40;
  assign lqg_f_shift_gw_40_net = in_41;
  assign lqg_f_shift_gw_41_net = in_42;
  assign lqg_f_shift_gw_42_net = in_43;
  assign lqg_f_shift_gw_43_net = in_44;
  assign lqg_f_shift_gw_44_net = in_45;
  assign lqg_f_shift_gw_45_net = in_46;
  assign lqg_f_shift_gw_46_net = in_47;
  assign lqg_f_shift_gw_47_net = in_48;
  assign lqg_f_shift_gw_48_net = in_49;
  sysgen_reinterpret_bdd4b54fb3 reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_0_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_1_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_2_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_3_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_4_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_5_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_6_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_7_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_8_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_9_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_10_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_11_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_12_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_13_net),
    .output_port(reinterpret13_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_14_net),
    .output_port(reinterpret14_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_15_net),
    .output_port(reinterpret15_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_16_net),
    .output_port(reinterpret16_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret17 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_17_net),
    .output_port(reinterpret17_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret18 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_18_net),
    .output_port(reinterpret18_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret19 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_19_net),
    .output_port(reinterpret19_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret20 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_20_net),
    .output_port(reinterpret20_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret21 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_21_net),
    .output_port(reinterpret21_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret22 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_22_net),
    .output_port(reinterpret22_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret23 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_23_net),
    .output_port(reinterpret23_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret24 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_24_net),
    .output_port(reinterpret24_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret25 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_25_net),
    .output_port(reinterpret25_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret26 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_26_net),
    .output_port(reinterpret26_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret27 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_27_net),
    .output_port(reinterpret27_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret28 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_28_net),
    .output_port(reinterpret28_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret29 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_29_net),
    .output_port(reinterpret29_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret30 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_30_net),
    .output_port(reinterpret30_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret31 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_31_net),
    .output_port(reinterpret31_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret32 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_32_net),
    .output_port(reinterpret32_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret33 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_33_net),
    .output_port(reinterpret33_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret34 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_34_net),
    .output_port(reinterpret34_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret35 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_35_net),
    .output_port(reinterpret35_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret36 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_36_net),
    .output_port(reinterpret36_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret37 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_37_net),
    .output_port(reinterpret37_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret38 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_38_net),
    .output_port(reinterpret38_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret39 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_39_net),
    .output_port(reinterpret39_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret40 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_40_net),
    .output_port(reinterpret40_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret41 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_41_net),
    .output_port(reinterpret41_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret42 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_42_net),
    .output_port(reinterpret42_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret43 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_43_net),
    .output_port(reinterpret43_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret44 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_44_net),
    .output_port(reinterpret44_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret45 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_45_net),
    .output_port(reinterpret45_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret46 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_46_net),
    .output_port(reinterpret46_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret47 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_47_net),
    .output_port(reinterpret47_output_port_net)
  );
  sysgen_reinterpret_bdd4b54fb3 reinterpret48 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lqg_f_shift_gw_48_net),
    .output_port(reinterpret48_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_shift/Vector to Scalar
module fpga_lqg_axi_vector_to_scalar_x2 (
  input [5-1:0] i_1,
  input [5-1:0] i_2,
  input [5-1:0] i_3,
  input [5-1:0] i_4,
  input [5-1:0] i_5,
  input [5-1:0] i_6,
  input [5-1:0] i_7,
  input [5-1:0] i_8,
  input [5-1:0] i_9,
  input [5-1:0] i_10,
  input [5-1:0] i_11,
  input [5-1:0] i_12,
  input [5-1:0] i_13,
  input [5-1:0] i_14,
  input [5-1:0] i_15,
  input [5-1:0] i_16,
  input [5-1:0] i_17,
  input [5-1:0] i_18,
  input [5-1:0] i_19,
  input [5-1:0] i_20,
  input [5-1:0] i_21,
  input [5-1:0] i_22,
  input [5-1:0] i_23,
  input [5-1:0] i_24,
  input [5-1:0] i_25,
  input [5-1:0] i_26,
  input [5-1:0] i_27,
  input [5-1:0] i_28,
  input [5-1:0] i_29,
  input [5-1:0] i_30,
  input [5-1:0] i_31,
  input [5-1:0] i_32,
  input [5-1:0] i_33,
  input [5-1:0] i_34,
  input [5-1:0] i_35,
  input [5-1:0] i_36,
  input [5-1:0] i_37,
  input [5-1:0] i_38,
  input [5-1:0] i_39,
  input [5-1:0] i_40,
  input [5-1:0] i_41,
  input [5-1:0] i_42,
  input [5-1:0] i_43,
  input [5-1:0] i_44,
  input [5-1:0] i_45,
  input [5-1:0] i_46,
  input [5-1:0] i_47,
  input [5-1:0] i_48,
  input [5-1:0] i_49,
  output [245-1:0] o
);
  wire [245-1:0] concat1_y_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [5-1:0] reinterpret14_output_port_net;
  wire [5-1:0] reinterpret15_output_port_net;
  wire [5-1:0] reinterpret16_output_port_net;
  wire [5-1:0] reinterpret17_output_port_net;
  wire [5-1:0] reinterpret18_output_port_net;
  wire [5-1:0] reinterpret19_output_port_net;
  wire [5-1:0] reinterpret20_output_port_net;
  wire [5-1:0] reinterpret21_output_port_net;
  wire [5-1:0] reinterpret22_output_port_net;
  wire [5-1:0] reinterpret23_output_port_net;
  wire [5-1:0] reinterpret24_output_port_net;
  wire [5-1:0] reinterpret25_output_port_net;
  wire [5-1:0] reinterpret26_output_port_net;
  wire [5-1:0] reinterpret27_output_port_net;
  wire [5-1:0] reinterpret28_output_port_net;
  wire [5-1:0] reinterpret29_output_port_net;
  wire [5-1:0] reinterpret30_output_port_net;
  wire [5-1:0] reinterpret31_output_port_net;
  wire [5-1:0] reinterpret32_output_port_net;
  wire [5-1:0] reinterpret33_output_port_net;
  wire [5-1:0] reinterpret34_output_port_net;
  wire [5-1:0] reinterpret35_output_port_net;
  wire [5-1:0] reinterpret36_output_port_net;
  wire [5-1:0] reinterpret37_output_port_net;
  wire [5-1:0] reinterpret38_output_port_net;
  wire [5-1:0] reinterpret39_output_port_net;
  wire [5-1:0] reinterpret40_output_port_net;
  wire [5-1:0] reinterpret41_output_port_net;
  wire [5-1:0] reinterpret42_output_port_net;
  wire [5-1:0] reinterpret43_output_port_net;
  wire [5-1:0] reinterpret44_output_port_net;
  wire [5-1:0] reinterpret45_output_port_net;
  wire [5-1:0] reinterpret46_output_port_net;
  wire [5-1:0] reinterpret47_output_port_net;
  wire [5-1:0] reinterpret48_output_port_net;
  assign o = concat1_y_net;
  assign reinterpret0_output_port_net = i_1;
  assign reinterpret1_output_port_net = i_2;
  assign reinterpret2_output_port_net = i_3;
  assign reinterpret3_output_port_net = i_4;
  assign reinterpret4_output_port_net = i_5;
  assign reinterpret5_output_port_net = i_6;
  assign reinterpret6_output_port_net = i_7;
  assign reinterpret7_output_port_net = i_8;
  assign reinterpret8_output_port_net = i_9;
  assign reinterpret9_output_port_net = i_10;
  assign reinterpret10_output_port_net = i_11;
  assign reinterpret11_output_port_net = i_12;
  assign reinterpret12_output_port_net = i_13;
  assign reinterpret13_output_port_net = i_14;
  assign reinterpret14_output_port_net = i_15;
  assign reinterpret15_output_port_net = i_16;
  assign reinterpret16_output_port_net = i_17;
  assign reinterpret17_output_port_net = i_18;
  assign reinterpret18_output_port_net = i_19;
  assign reinterpret19_output_port_net = i_20;
  assign reinterpret20_output_port_net = i_21;
  assign reinterpret21_output_port_net = i_22;
  assign reinterpret22_output_port_net = i_23;
  assign reinterpret23_output_port_net = i_24;
  assign reinterpret24_output_port_net = i_25;
  assign reinterpret25_output_port_net = i_26;
  assign reinterpret26_output_port_net = i_27;
  assign reinterpret27_output_port_net = i_28;
  assign reinterpret28_output_port_net = i_29;
  assign reinterpret29_output_port_net = i_30;
  assign reinterpret30_output_port_net = i_31;
  assign reinterpret31_output_port_net = i_32;
  assign reinterpret32_output_port_net = i_33;
  assign reinterpret33_output_port_net = i_34;
  assign reinterpret34_output_port_net = i_35;
  assign reinterpret35_output_port_net = i_36;
  assign reinterpret36_output_port_net = i_37;
  assign reinterpret37_output_port_net = i_38;
  assign reinterpret38_output_port_net = i_39;
  assign reinterpret39_output_port_net = i_40;
  assign reinterpret40_output_port_net = i_41;
  assign reinterpret41_output_port_net = i_42;
  assign reinterpret42_output_port_net = i_43;
  assign reinterpret43_output_port_net = i_44;
  assign reinterpret44_output_port_net = i_45;
  assign reinterpret45_output_port_net = i_46;
  assign reinterpret46_output_port_net = i_47;
  assign reinterpret47_output_port_net = i_48;
  assign reinterpret48_output_port_net = i_49;
  sysgen_concat_071745e870 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret48_output_port_net),
    .in1(reinterpret47_output_port_net),
    .in2(reinterpret46_output_port_net),
    .in3(reinterpret45_output_port_net),
    .in4(reinterpret44_output_port_net),
    .in5(reinterpret43_output_port_net),
    .in6(reinterpret42_output_port_net),
    .in7(reinterpret41_output_port_net),
    .in8(reinterpret40_output_port_net),
    .in9(reinterpret39_output_port_net),
    .in10(reinterpret38_output_port_net),
    .in11(reinterpret37_output_port_net),
    .in12(reinterpret36_output_port_net),
    .in13(reinterpret35_output_port_net),
    .in14(reinterpret34_output_port_net),
    .in15(reinterpret33_output_port_net),
    .in16(reinterpret32_output_port_net),
    .in17(reinterpret31_output_port_net),
    .in18(reinterpret30_output_port_net),
    .in19(reinterpret29_output_port_net),
    .in20(reinterpret28_output_port_net),
    .in21(reinterpret27_output_port_net),
    .in22(reinterpret26_output_port_net),
    .in23(reinterpret25_output_port_net),
    .in24(reinterpret24_output_port_net),
    .in25(reinterpret23_output_port_net),
    .in26(reinterpret22_output_port_net),
    .in27(reinterpret21_output_port_net),
    .in28(reinterpret20_output_port_net),
    .in29(reinterpret19_output_port_net),
    .in30(reinterpret18_output_port_net),
    .in31(reinterpret17_output_port_net),
    .in32(reinterpret16_output_port_net),
    .in33(reinterpret15_output_port_net),
    .in34(reinterpret14_output_port_net),
    .in35(reinterpret13_output_port_net),
    .in36(reinterpret12_output_port_net),
    .in37(reinterpret11_output_port_net),
    .in38(reinterpret10_output_port_net),
    .in39(reinterpret9_output_port_net),
    .in40(reinterpret8_output_port_net),
    .in41(reinterpret7_output_port_net),
    .in42(reinterpret6_output_port_net),
    .in43(reinterpret5_output_port_net),
    .in44(reinterpret4_output_port_net),
    .in45(reinterpret3_output_port_net),
    .in46(reinterpret2_output_port_net),
    .in47(reinterpret1_output_port_net),
    .in48(reinterpret0_output_port_net),
    .y(concat1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/vec2repr_49_F_shift
module fpga_lqg_axi_vec2repr_49_f_shift (
  input [5-1:0] vec_in_1,
  input [5-1:0] vec_in_2,
  input [5-1:0] vec_in_3,
  input [5-1:0] vec_in_4,
  input [5-1:0] vec_in_5,
  input [5-1:0] vec_in_6,
  input [5-1:0] vec_in_7,
  input [5-1:0] vec_in_8,
  input [5-1:0] vec_in_9,
  input [5-1:0] vec_in_10,
  input [5-1:0] vec_in_11,
  input [5-1:0] vec_in_12,
  input [5-1:0] vec_in_13,
  input [5-1:0] vec_in_14,
  input [5-1:0] vec_in_15,
  input [5-1:0] vec_in_16,
  input [5-1:0] vec_in_17,
  input [5-1:0] vec_in_18,
  input [5-1:0] vec_in_19,
  input [5-1:0] vec_in_20,
  input [5-1:0] vec_in_21,
  input [5-1:0] vec_in_22,
  input [5-1:0] vec_in_23,
  input [5-1:0] vec_in_24,
  input [5-1:0] vec_in_25,
  input [5-1:0] vec_in_26,
  input [5-1:0] vec_in_27,
  input [5-1:0] vec_in_28,
  input [5-1:0] vec_in_29,
  input [5-1:0] vec_in_30,
  input [5-1:0] vec_in_31,
  input [5-1:0] vec_in_32,
  input [5-1:0] vec_in_33,
  input [5-1:0] vec_in_34,
  input [5-1:0] vec_in_35,
  input [5-1:0] vec_in_36,
  input [5-1:0] vec_in_37,
  input [5-1:0] vec_in_38,
  input [5-1:0] vec_in_39,
  input [5-1:0] vec_in_40,
  input [5-1:0] vec_in_41,
  input [5-1:0] vec_in_42,
  input [5-1:0] vec_in_43,
  input [5-1:0] vec_in_44,
  input [5-1:0] vec_in_45,
  input [5-1:0] vec_in_46,
  input [5-1:0] vec_in_47,
  input [5-1:0] vec_in_48,
  input [5-1:0] vec_in_49,
  output [245-1:0] rowmaj_out
);
  wire [5-1:0] lqg_f_shift_gw_18_net;
  wire [5-1:0] lqg_f_shift_gw_19_net;
  wire [5-1:0] lqg_f_shift_gw_20_net;
  wire [5-1:0] lqg_f_shift_gw_21_net;
  wire [5-1:0] lqg_f_shift_gw_22_net;
  wire [5-1:0] lqg_f_shift_gw_23_net;
  wire [5-1:0] lqg_f_shift_gw_24_net;
  wire [5-1:0] lqg_f_shift_gw_25_net;
  wire [5-1:0] lqg_f_shift_gw_26_net;
  wire [5-1:0] lqg_f_shift_gw_27_net;
  wire [5-1:0] lqg_f_shift_gw_28_net;
  wire [5-1:0] lqg_f_shift_gw_29_net;
  wire [5-1:0] lqg_f_shift_gw_30_net;
  wire [5-1:0] lqg_f_shift_gw_31_net;
  wire [5-1:0] lqg_f_shift_gw_32_net;
  wire [5-1:0] lqg_f_shift_gw_33_net;
  wire [5-1:0] lqg_f_shift_gw_34_net;
  wire [5-1:0] lqg_f_shift_gw_35_net;
  wire [5-1:0] lqg_f_shift_gw_36_net;
  wire [5-1:0] lqg_f_shift_gw_37_net;
  wire [5-1:0] lqg_f_shift_gw_38_net;
  wire [5-1:0] lqg_f_shift_gw_39_net;
  wire [5-1:0] lqg_f_shift_gw_40_net;
  wire [5-1:0] lqg_f_shift_gw_41_net;
  wire [5-1:0] lqg_f_shift_gw_42_net;
  wire [5-1:0] lqg_f_shift_gw_43_net;
  wire [5-1:0] lqg_f_shift_gw_44_net;
  wire [5-1:0] lqg_f_shift_gw_45_net;
  wire [5-1:0] lqg_f_shift_gw_46_net;
  wire [5-1:0] lqg_f_shift_gw_47_net;
  wire [5-1:0] lqg_f_shift_gw_48_net;
  wire [5-1:0] reinterpret0_output_port_net;
  wire [5-1:0] reinterpret1_output_port_net;
  wire [5-1:0] reinterpret2_output_port_net_x0;
  wire [5-1:0] reinterpret3_output_port_net;
  wire [5-1:0] reinterpret4_output_port_net;
  wire [5-1:0] reinterpret5_output_port_net;
  wire [245-1:0] concat1_y_net;
  wire [5-1:0] reinterpret6_output_port_net;
  wire [5-1:0] reinterpret7_output_port_net;
  wire [5-1:0] reinterpret8_output_port_net;
  wire [5-1:0] reinterpret9_output_port_net;
  wire [5-1:0] reinterpret10_output_port_net;
  wire [5-1:0] reinterpret11_output_port_net;
  wire [5-1:0] reinterpret12_output_port_net;
  wire [5-1:0] reinterpret13_output_port_net;
  wire [5-1:0] reinterpret14_output_port_net;
  wire [5-1:0] reinterpret15_output_port_net;
  wire [5-1:0] reinterpret16_output_port_net;
  wire [5-1:0] reinterpret17_output_port_net;
  wire [5-1:0] reinterpret18_output_port_net;
  wire [5-1:0] reinterpret19_output_port_net;
  wire [5-1:0] reinterpret20_output_port_net;
  wire [5-1:0] reinterpret21_output_port_net;
  wire [5-1:0] reinterpret22_output_port_net;
  wire [5-1:0] reinterpret23_output_port_net;
  wire [5-1:0] reinterpret24_output_port_net;
  wire [5-1:0] reinterpret25_output_port_net;
  wire [5-1:0] reinterpret26_output_port_net;
  wire [5-1:0] reinterpret27_output_port_net;
  wire [5-1:0] reinterpret28_output_port_net;
  wire [5-1:0] reinterpret29_output_port_net;
  wire [5-1:0] reinterpret30_output_port_net;
  wire [5-1:0] reinterpret31_output_port_net;
  wire [5-1:0] reinterpret32_output_port_net;
  wire [5-1:0] reinterpret33_output_port_net;
  wire [5-1:0] reinterpret34_output_port_net;
  wire [5-1:0] reinterpret35_output_port_net;
  wire [5-1:0] reinterpret36_output_port_net;
  wire [5-1:0] reinterpret37_output_port_net;
  wire [5-1:0] reinterpret38_output_port_net;
  wire [5-1:0] reinterpret39_output_port_net;
  wire [5-1:0] reinterpret40_output_port_net;
  wire [5-1:0] reinterpret41_output_port_net;
  wire [5-1:0] reinterpret42_output_port_net;
  wire [5-1:0] reinterpret43_output_port_net;
  wire [5-1:0] reinterpret44_output_port_net;
  wire [5-1:0] reinterpret45_output_port_net;
  wire [5-1:0] reinterpret46_output_port_net;
  wire [5-1:0] reinterpret47_output_port_net;
  wire [5-1:0] reinterpret48_output_port_net;
  wire [245-1:0] reinterpret2_output_port_net;
  wire [5-1:0] lqg_f_shift_gw_0_net;
  wire [5-1:0] lqg_f_shift_gw_1_net;
  wire [5-1:0] lqg_f_shift_gw_2_net;
  wire [5-1:0] lqg_f_shift_gw_3_net;
  wire [5-1:0] lqg_f_shift_gw_4_net;
  wire [5-1:0] lqg_f_shift_gw_5_net;
  wire [5-1:0] lqg_f_shift_gw_6_net;
  wire [5-1:0] lqg_f_shift_gw_7_net;
  wire [5-1:0] lqg_f_shift_gw_8_net;
  wire [5-1:0] lqg_f_shift_gw_9_net;
  wire [5-1:0] lqg_f_shift_gw_10_net;
  wire [5-1:0] lqg_f_shift_gw_11_net;
  wire [5-1:0] lqg_f_shift_gw_12_net;
  wire [5-1:0] lqg_f_shift_gw_13_net;
  wire [5-1:0] lqg_f_shift_gw_14_net;
  wire [5-1:0] lqg_f_shift_gw_15_net;
  wire [5-1:0] lqg_f_shift_gw_16_net;
  wire [5-1:0] lqg_f_shift_gw_17_net;
  assign rowmaj_out = reinterpret2_output_port_net;
  assign lqg_f_shift_gw_0_net = vec_in_1;
  assign lqg_f_shift_gw_1_net = vec_in_2;
  assign lqg_f_shift_gw_2_net = vec_in_3;
  assign lqg_f_shift_gw_3_net = vec_in_4;
  assign lqg_f_shift_gw_4_net = vec_in_5;
  assign lqg_f_shift_gw_5_net = vec_in_6;
  assign lqg_f_shift_gw_6_net = vec_in_7;
  assign lqg_f_shift_gw_7_net = vec_in_8;
  assign lqg_f_shift_gw_8_net = vec_in_9;
  assign lqg_f_shift_gw_9_net = vec_in_10;
  assign lqg_f_shift_gw_10_net = vec_in_11;
  assign lqg_f_shift_gw_11_net = vec_in_12;
  assign lqg_f_shift_gw_12_net = vec_in_13;
  assign lqg_f_shift_gw_13_net = vec_in_14;
  assign lqg_f_shift_gw_14_net = vec_in_15;
  assign lqg_f_shift_gw_15_net = vec_in_16;
  assign lqg_f_shift_gw_16_net = vec_in_17;
  assign lqg_f_shift_gw_17_net = vec_in_18;
  assign lqg_f_shift_gw_18_net = vec_in_19;
  assign lqg_f_shift_gw_19_net = vec_in_20;
  assign lqg_f_shift_gw_20_net = vec_in_21;
  assign lqg_f_shift_gw_21_net = vec_in_22;
  assign lqg_f_shift_gw_22_net = vec_in_23;
  assign lqg_f_shift_gw_23_net = vec_in_24;
  assign lqg_f_shift_gw_24_net = vec_in_25;
  assign lqg_f_shift_gw_25_net = vec_in_26;
  assign lqg_f_shift_gw_26_net = vec_in_27;
  assign lqg_f_shift_gw_27_net = vec_in_28;
  assign lqg_f_shift_gw_28_net = vec_in_29;
  assign lqg_f_shift_gw_29_net = vec_in_30;
  assign lqg_f_shift_gw_30_net = vec_in_31;
  assign lqg_f_shift_gw_31_net = vec_in_32;
  assign lqg_f_shift_gw_32_net = vec_in_33;
  assign lqg_f_shift_gw_33_net = vec_in_34;
  assign lqg_f_shift_gw_34_net = vec_in_35;
  assign lqg_f_shift_gw_35_net = vec_in_36;
  assign lqg_f_shift_gw_36_net = vec_in_37;
  assign lqg_f_shift_gw_37_net = vec_in_38;
  assign lqg_f_shift_gw_38_net = vec_in_39;
  assign lqg_f_shift_gw_39_net = vec_in_40;
  assign lqg_f_shift_gw_40_net = vec_in_41;
  assign lqg_f_shift_gw_41_net = vec_in_42;
  assign lqg_f_shift_gw_42_net = vec_in_43;
  assign lqg_f_shift_gw_43_net = vec_in_44;
  assign lqg_f_shift_gw_44_net = vec_in_45;
  assign lqg_f_shift_gw_45_net = vec_in_46;
  assign lqg_f_shift_gw_46_net = vec_in_47;
  assign lqg_f_shift_gw_47_net = vec_in_48;
  assign lqg_f_shift_gw_48_net = vec_in_49;
  fpga_lqg_axi_vector_reinterpret2_x2 vector_reinterpret2 (
    .in_1(lqg_f_shift_gw_0_net),
    .in_2(lqg_f_shift_gw_1_net),
    .in_3(lqg_f_shift_gw_2_net),
    .in_4(lqg_f_shift_gw_3_net),
    .in_5(lqg_f_shift_gw_4_net),
    .in_6(lqg_f_shift_gw_5_net),
    .in_7(lqg_f_shift_gw_6_net),
    .in_8(lqg_f_shift_gw_7_net),
    .in_9(lqg_f_shift_gw_8_net),
    .in_10(lqg_f_shift_gw_9_net),
    .in_11(lqg_f_shift_gw_10_net),
    .in_12(lqg_f_shift_gw_11_net),
    .in_13(lqg_f_shift_gw_12_net),
    .in_14(lqg_f_shift_gw_13_net),
    .in_15(lqg_f_shift_gw_14_net),
    .in_16(lqg_f_shift_gw_15_net),
    .in_17(lqg_f_shift_gw_16_net),
    .in_18(lqg_f_shift_gw_17_net),
    .in_19(lqg_f_shift_gw_18_net),
    .in_20(lqg_f_shift_gw_19_net),
    .in_21(lqg_f_shift_gw_20_net),
    .in_22(lqg_f_shift_gw_21_net),
    .in_23(lqg_f_shift_gw_22_net),
    .in_24(lqg_f_shift_gw_23_net),
    .in_25(lqg_f_shift_gw_24_net),
    .in_26(lqg_f_shift_gw_25_net),
    .in_27(lqg_f_shift_gw_26_net),
    .in_28(lqg_f_shift_gw_27_net),
    .in_29(lqg_f_shift_gw_28_net),
    .in_30(lqg_f_shift_gw_29_net),
    .in_31(lqg_f_shift_gw_30_net),
    .in_32(lqg_f_shift_gw_31_net),
    .in_33(lqg_f_shift_gw_32_net),
    .in_34(lqg_f_shift_gw_33_net),
    .in_35(lqg_f_shift_gw_34_net),
    .in_36(lqg_f_shift_gw_35_net),
    .in_37(lqg_f_shift_gw_36_net),
    .in_38(lqg_f_shift_gw_37_net),
    .in_39(lqg_f_shift_gw_38_net),
    .in_40(lqg_f_shift_gw_39_net),
    .in_41(lqg_f_shift_gw_40_net),
    .in_42(lqg_f_shift_gw_41_net),
    .in_43(lqg_f_shift_gw_42_net),
    .in_44(lqg_f_shift_gw_43_net),
    .in_45(lqg_f_shift_gw_44_net),
    .in_46(lqg_f_shift_gw_45_net),
    .in_47(lqg_f_shift_gw_46_net),
    .in_48(lqg_f_shift_gw_47_net),
    .in_49(lqg_f_shift_gw_48_net),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net),
    .out_15(reinterpret14_output_port_net),
    .out_16(reinterpret15_output_port_net),
    .out_17(reinterpret16_output_port_net),
    .out_18(reinterpret17_output_port_net),
    .out_19(reinterpret18_output_port_net),
    .out_20(reinterpret19_output_port_net),
    .out_21(reinterpret20_output_port_net),
    .out_22(reinterpret21_output_port_net),
    .out_23(reinterpret22_output_port_net),
    .out_24(reinterpret23_output_port_net),
    .out_25(reinterpret24_output_port_net),
    .out_26(reinterpret25_output_port_net),
    .out_27(reinterpret26_output_port_net),
    .out_28(reinterpret27_output_port_net),
    .out_29(reinterpret28_output_port_net),
    .out_30(reinterpret29_output_port_net),
    .out_31(reinterpret30_output_port_net),
    .out_32(reinterpret31_output_port_net),
    .out_33(reinterpret32_output_port_net),
    .out_34(reinterpret33_output_port_net),
    .out_35(reinterpret34_output_port_net),
    .out_36(reinterpret35_output_port_net),
    .out_37(reinterpret36_output_port_net),
    .out_38(reinterpret37_output_port_net),
    .out_39(reinterpret38_output_port_net),
    .out_40(reinterpret39_output_port_net),
    .out_41(reinterpret40_output_port_net),
    .out_42(reinterpret41_output_port_net),
    .out_43(reinterpret42_output_port_net),
    .out_44(reinterpret43_output_port_net),
    .out_45(reinterpret44_output_port_net),
    .out_46(reinterpret45_output_port_net),
    .out_47(reinterpret46_output_port_net),
    .out_48(reinterpret47_output_port_net),
    .out_49(reinterpret48_output_port_net)
  );
  fpga_lqg_axi_vector_to_scalar_x2 vector_to_scalar (
    .i_1(reinterpret0_output_port_net),
    .i_2(reinterpret1_output_port_net),
    .i_3(reinterpret2_output_port_net_x0),
    .i_4(reinterpret3_output_port_net),
    .i_5(reinterpret4_output_port_net),
    .i_6(reinterpret5_output_port_net),
    .i_7(reinterpret6_output_port_net),
    .i_8(reinterpret7_output_port_net),
    .i_9(reinterpret8_output_port_net),
    .i_10(reinterpret9_output_port_net),
    .i_11(reinterpret10_output_port_net),
    .i_12(reinterpret11_output_port_net),
    .i_13(reinterpret12_output_port_net),
    .i_14(reinterpret13_output_port_net),
    .i_15(reinterpret14_output_port_net),
    .i_16(reinterpret15_output_port_net),
    .i_17(reinterpret16_output_port_net),
    .i_18(reinterpret17_output_port_net),
    .i_19(reinterpret18_output_port_net),
    .i_20(reinterpret19_output_port_net),
    .i_21(reinterpret20_output_port_net),
    .i_22(reinterpret21_output_port_net),
    .i_23(reinterpret22_output_port_net),
    .i_24(reinterpret23_output_port_net),
    .i_25(reinterpret24_output_port_net),
    .i_26(reinterpret25_output_port_net),
    .i_27(reinterpret26_output_port_net),
    .i_28(reinterpret27_output_port_net),
    .i_29(reinterpret28_output_port_net),
    .i_30(reinterpret29_output_port_net),
    .i_31(reinterpret30_output_port_net),
    .i_32(reinterpret31_output_port_net),
    .i_33(reinterpret32_output_port_net),
    .i_34(reinterpret33_output_port_net),
    .i_35(reinterpret34_output_port_net),
    .i_36(reinterpret35_output_port_net),
    .i_37(reinterpret36_output_port_net),
    .i_38(reinterpret37_output_port_net),
    .i_39(reinterpret38_output_port_net),
    .i_40(reinterpret39_output_port_net),
    .i_41(reinterpret40_output_port_net),
    .i_42(reinterpret41_output_port_net),
    .i_43(reinterpret42_output_port_net),
    .i_44(reinterpret43_output_port_net),
    .i_45(reinterpret44_output_port_net),
    .i_46(reinterpret45_output_port_net),
    .i_47(reinterpret46_output_port_net),
    .i_48(reinterpret47_output_port_net),
    .i_49(reinterpret48_output_port_net),
    .o(concat1_y_net)
  );
  sysgen_reinterpret_0d903385e5 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(concat1_y_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/yk_factor_gw
module fpga_lqg_axi_yk_factor_gw (
  input [18-1:0] yk_factor_gw_0,
  input [18-1:0] yk_factor_gw_1
);
  wire [18-1:0] yk_factor_gw_0_net;
  wire [18-1:0] yk_factor_gw_1_net;
  assign yk_factor_gw_0_net = yk_factor_gw_0;
  assign yk_factor_gw_1_net = yk_factor_gw_1;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/yk_gw
module fpga_lqg_axi_yk_gw (
  input [14-1:0] yk_gw_0,
  input [14-1:0] yk_gw_1
);
  wire [14-1:0] yk_gw_0_net;
  wire [14-1:0] yk_gw_1_net;
  assign yk_gw_0_net = yk_gw_0;
  assign yk_gw_1_net = yk_gw_1;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys/yk_offset_gw
module fpga_lqg_axi_yk_offset_gw (
  input [14-1:0] yk_offset_gw_0,
  input [14-1:0] yk_offset_gw_1
);
  wire [14-1:0] yk_offset_gw_0_net;
  wire [14-1:0] yk_offset_gw_1_net;
  assign yk_offset_gw_0_net = yk_offset_gw_0;
  assign yk_offset_gw_1_net = yk_offset_gw_1;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi/proc_sys
module fpga_lqg_axi_proc_sys (
  input [8-1:0] led_mask,
  input [1-1:0] state_reset,
  input [8-1:0] lqg_led_in,
  input [18-1:0] lqg_f_res_gw_0,
  input [18-1:0] lqg_f_res_gw_1,
  input [18-1:0] lqg_f_res_gw_2,
  input [18-1:0] lqg_f_res_gw_3,
  input [18-1:0] lqg_f_res_gw_4,
  input [18-1:0] lqg_f_res_gw_5,
  input [18-1:0] lqg_f_res_gw_6,
  input [18-1:0] lqg_f_res_gw_7,
  input [18-1:0] lqg_f_res_gw_8,
  input [18-1:0] lqg_f_res_gw_9,
  input [18-1:0] lqg_f_res_gw_10,
  input [18-1:0] lqg_f_res_gw_11,
  input [18-1:0] lqg_f_res_gw_12,
  input [18-1:0] lqg_f_res_gw_13,
  input [18-1:0] lqg_f_res_gw_14,
  input [18-1:0] lqg_f_res_gw_15,
  input [18-1:0] lqg_f_res_gw_16,
  input [18-1:0] lqg_f_res_gw_17,
  input [18-1:0] lqg_f_res_gw_18,
  input [18-1:0] lqg_f_res_gw_19,
  input [18-1:0] lqg_f_res_gw_20,
  input [18-1:0] lqg_f_res_gw_21,
  input [18-1:0] lqg_f_res_gw_22,
  input [18-1:0] lqg_f_res_gw_23,
  input [18-1:0] lqg_f_res_gw_24,
  input [18-1:0] lqg_f_res_gw_25,
  input [18-1:0] lqg_f_res_gw_26,
  input [18-1:0] lqg_f_res_gw_27,
  input [18-1:0] lqg_f_res_gw_28,
  input [18-1:0] lqg_f_res_gw_29,
  input [18-1:0] lqg_f_res_gw_30,
  input [18-1:0] lqg_f_res_gw_31,
  input [18-1:0] lqg_f_res_gw_32,
  input [18-1:0] lqg_f_res_gw_33,
  input [18-1:0] lqg_f_res_gw_34,
  input [18-1:0] lqg_f_res_gw_35,
  input [18-1:0] lqg_f_res_gw_36,
  input [18-1:0] lqg_f_res_gw_37,
  input [18-1:0] lqg_f_res_gw_38,
  input [18-1:0] lqg_f_res_gw_39,
  input [18-1:0] lqg_f_res_gw_40,
  input [18-1:0] lqg_f_res_gw_41,
  input [18-1:0] lqg_f_res_gw_42,
  input [18-1:0] lqg_f_res_gw_43,
  input [18-1:0] lqg_f_res_gw_44,
  input [18-1:0] lqg_f_res_gw_45,
  input [18-1:0] lqg_f_res_gw_46,
  input [18-1:0] lqg_f_res_gw_47,
  input [18-1:0] lqg_f_res_gw_48,
  input [5-1:0] lqg_f_shift_gw_0,
  input [5-1:0] lqg_f_shift_gw_1,
  input [5-1:0] lqg_f_shift_gw_2,
  input [5-1:0] lqg_f_shift_gw_3,
  input [5-1:0] lqg_f_shift_gw_4,
  input [5-1:0] lqg_f_shift_gw_5,
  input [5-1:0] lqg_f_shift_gw_6,
  input [5-1:0] lqg_f_shift_gw_7,
  input [5-1:0] lqg_f_shift_gw_8,
  input [5-1:0] lqg_f_shift_gw_9,
  input [5-1:0] lqg_f_shift_gw_10,
  input [5-1:0] lqg_f_shift_gw_11,
  input [5-1:0] lqg_f_shift_gw_12,
  input [5-1:0] lqg_f_shift_gw_13,
  input [5-1:0] lqg_f_shift_gw_14,
  input [5-1:0] lqg_f_shift_gw_15,
  input [5-1:0] lqg_f_shift_gw_16,
  input [5-1:0] lqg_f_shift_gw_17,
  input [5-1:0] lqg_f_shift_gw_18,
  input [5-1:0] lqg_f_shift_gw_19,
  input [5-1:0] lqg_f_shift_gw_20,
  input [5-1:0] lqg_f_shift_gw_21,
  input [5-1:0] lqg_f_shift_gw_22,
  input [5-1:0] lqg_f_shift_gw_23,
  input [5-1:0] lqg_f_shift_gw_24,
  input [5-1:0] lqg_f_shift_gw_25,
  input [5-1:0] lqg_f_shift_gw_26,
  input [5-1:0] lqg_f_shift_gw_27,
  input [5-1:0] lqg_f_shift_gw_28,
  input [5-1:0] lqg_f_shift_gw_29,
  input [5-1:0] lqg_f_shift_gw_30,
  input [5-1:0] lqg_f_shift_gw_31,
  input [5-1:0] lqg_f_shift_gw_32,
  input [5-1:0] lqg_f_shift_gw_33,
  input [5-1:0] lqg_f_shift_gw_34,
  input [5-1:0] lqg_f_shift_gw_35,
  input [5-1:0] lqg_f_shift_gw_36,
  input [5-1:0] lqg_f_shift_gw_37,
  input [5-1:0] lqg_f_shift_gw_38,
  input [5-1:0] lqg_f_shift_gw_39,
  input [5-1:0] lqg_f_shift_gw_40,
  input [5-1:0] lqg_f_shift_gw_41,
  input [5-1:0] lqg_f_shift_gw_42,
  input [5-1:0] lqg_f_shift_gw_43,
  input [5-1:0] lqg_f_shift_gw_44,
  input [5-1:0] lqg_f_shift_gw_45,
  input [5-1:0] lqg_f_shift_gw_46,
  input [5-1:0] lqg_f_shift_gw_47,
  input [5-1:0] lqg_f_shift_gw_48,
  input [18-1:0] lqg_gamma_res_gw_0,
  input [18-1:0] lqg_gamma_res_gw_1,
  input [18-1:0] lqg_gamma_res_gw_2,
  input [18-1:0] lqg_gamma_res_gw_3,
  input [18-1:0] lqg_gamma_res_gw_4,
  input [18-1:0] lqg_gamma_res_gw_5,
  input [18-1:0] lqg_gamma_res_gw_6,
  input [18-1:0] lqg_gamma_res_gw_7,
  input [18-1:0] lqg_gamma_res_gw_8,
  input [18-1:0] lqg_gamma_res_gw_9,
  input [18-1:0] lqg_gamma_res_gw_10,
  input [18-1:0] lqg_gamma_res_gw_11,
  input [18-1:0] lqg_gamma_res_gw_12,
  input [18-1:0] lqg_gamma_res_gw_13,
  input [5-1:0] lqg_gamma_shift_gw_0,
  input [5-1:0] lqg_gamma_shift_gw_1,
  input [5-1:0] lqg_gamma_shift_gw_2,
  input [5-1:0] lqg_gamma_shift_gw_3,
  input [5-1:0] lqg_gamma_shift_gw_4,
  input [5-1:0] lqg_gamma_shift_gw_5,
  input [5-1:0] lqg_gamma_shift_gw_6,
  input [5-1:0] lqg_gamma_shift_gw_7,
  input [5-1:0] lqg_gamma_shift_gw_8,
  input [5-1:0] lqg_gamma_shift_gw_9,
  input [5-1:0] lqg_gamma_shift_gw_10,
  input [5-1:0] lqg_gamma_shift_gw_11,
  input [5-1:0] lqg_gamma_shift_gw_12,
  input [5-1:0] lqg_gamma_shift_gw_13,
  input [18-1:0] lqg_k_res_gw_0,
  input [18-1:0] lqg_k_res_gw_1,
  input [18-1:0] lqg_k_res_gw_2,
  input [18-1:0] lqg_k_res_gw_3,
  input [18-1:0] lqg_k_res_gw_4,
  input [18-1:0] lqg_k_res_gw_5,
  input [18-1:0] lqg_k_res_gw_6,
  input [18-1:0] lqg_k_res_gw_7,
  input [18-1:0] lqg_k_res_gw_8,
  input [18-1:0] lqg_k_res_gw_9,
  input [18-1:0] lqg_k_res_gw_10,
  input [18-1:0] lqg_k_res_gw_11,
  input [18-1:0] lqg_k_res_gw_12,
  input [18-1:0] lqg_k_res_gw_13,
  input [6-1:0] lqg_k_shift_gw_0,
  input [6-1:0] lqg_k_shift_gw_1,
  input [6-1:0] lqg_k_shift_gw_2,
  input [6-1:0] lqg_k_shift_gw_3,
  input [6-1:0] lqg_k_shift_gw_4,
  input [6-1:0] lqg_k_shift_gw_5,
  input [6-1:0] lqg_k_shift_gw_6,
  input [6-1:0] lqg_k_shift_gw_7,
  input [6-1:0] lqg_k_shift_gw_8,
  input [6-1:0] lqg_k_shift_gw_9,
  input [6-1:0] lqg_k_shift_gw_10,
  input [6-1:0] lqg_k_shift_gw_11,
  input [6-1:0] lqg_k_shift_gw_12,
  input [6-1:0] lqg_k_shift_gw_13,
  input [18-1:0] lqg_l_res_gw_0,
  input [18-1:0] lqg_l_res_gw_1,
  input [18-1:0] lqg_l_res_gw_2,
  input [18-1:0] lqg_l_res_gw_3,
  input [18-1:0] lqg_l_res_gw_4,
  input [18-1:0] lqg_l_res_gw_5,
  input [18-1:0] lqg_l_res_gw_6,
  input [18-1:0] lqg_l_res_gw_7,
  input [18-1:0] lqg_l_res_gw_8,
  input [18-1:0] lqg_l_res_gw_9,
  input [18-1:0] lqg_l_res_gw_10,
  input [18-1:0] lqg_l_res_gw_11,
  input [18-1:0] lqg_l_res_gw_12,
  input [18-1:0] lqg_l_res_gw_13,
  input [5-1:0] lqg_l_shift_gw_0,
  input [5-1:0] lqg_l_shift_gw_1,
  input [5-1:0] lqg_l_shift_gw_2,
  input [5-1:0] lqg_l_shift_gw_3,
  input [5-1:0] lqg_l_shift_gw_4,
  input [5-1:0] lqg_l_shift_gw_5,
  input [5-1:0] lqg_l_shift_gw_6,
  input [5-1:0] lqg_l_shift_gw_7,
  input [5-1:0] lqg_l_shift_gw_8,
  input [5-1:0] lqg_l_shift_gw_9,
  input [5-1:0] lqg_l_shift_gw_10,
  input [5-1:0] lqg_l_shift_gw_11,
  input [5-1:0] lqg_l_shift_gw_12,
  input [5-1:0] lqg_l_shift_gw_13,
  input [18-1:0] uk_factor_gw_0,
  input [18-1:0] uk_factor_gw_1,
  input [14-1:0] uk_offset_gw_0,
  input [14-1:0] uk_offset_gw_1,
  input [18-1:0] yk_factor_gw_0,
  input [18-1:0] yk_factor_gw_1,
  input [14-1:0] yk_gw_0,
  input [14-1:0] yk_gw_1,
  input [14-1:0] yk_offset_gw_0,
  input [14-1:0] yk_offset_gw_1,
  input clk_1,
  input ce_1,
  output [8-1:0] led_output,
  output [8-1:0] lqg_led_out,
  output [14-1:0] uk_gw_0,
  output [14-1:0] uk_gw_1,
  output [25-1:0] xkhat_gw_0,
  output [25-1:0] xkhat_gw_1,
  output [25-1:0] xkhat_gw_2,
  output [25-1:0] xkhat_gw_3,
  output [25-1:0] xkhat_gw_4,
  output [25-1:0] xkhat_gw_5,
  output [25-1:0] xkhat_gw_6
);
  wire [8-1:0] logical_y_net;
  wire [8-1:0] led_mask_cdc_1_q_net;
  wire [1-1:0] state_reset_cdc_q_net;
  wire [8-1:0] lqg_led_in_net;
  wire [18-1:0] lqg_f_res_gw_0_net;
  wire [18-1:0] lqg_f_res_gw_1_net;
  wire [18-1:0] lqg_f_res_gw_2_net;
  wire [18-1:0] lqg_f_res_gw_3_net;
  wire [18-1:0] lqg_f_res_gw_4_net;
  wire [18-1:0] lqg_f_res_gw_5_net;
  wire [18-1:0] lqg_f_res_gw_6_net;
  wire [18-1:0] lqg_f_res_gw_7_net;
  wire [18-1:0] lqg_f_res_gw_8_net;
  wire [18-1:0] lqg_f_res_gw_9_net;
  wire [18-1:0] lqg_f_res_gw_10_net;
  wire [18-1:0] lqg_f_res_gw_11_net;
  wire [18-1:0] lqg_f_res_gw_12_net;
  wire [18-1:0] lqg_f_res_gw_13_net;
  wire [18-1:0] lqg_f_res_gw_14_net;
  wire [18-1:0] lqg_f_res_gw_15_net;
  wire [18-1:0] lqg_f_res_gw_16_net;
  wire [18-1:0] lqg_f_res_gw_17_net;
  wire [18-1:0] lqg_f_res_gw_18_net;
  wire [18-1:0] lqg_f_res_gw_19_net;
  wire [18-1:0] lqg_f_res_gw_20_net;
  wire [18-1:0] lqg_f_res_gw_21_net;
  wire [18-1:0] lqg_f_res_gw_22_net;
  wire [18-1:0] lqg_f_res_gw_23_net;
  wire [18-1:0] lqg_f_res_gw_24_net;
  wire [18-1:0] lqg_f_res_gw_25_net;
  wire [18-1:0] lqg_f_res_gw_26_net;
  wire [18-1:0] lqg_f_res_gw_27_net;
  wire [18-1:0] lqg_f_res_gw_28_net;
  wire [18-1:0] lqg_f_res_gw_29_net;
  wire [18-1:0] lqg_f_res_gw_30_net;
  wire [18-1:0] lqg_f_res_gw_31_net;
  wire [18-1:0] lqg_f_res_gw_32_net;
  wire [18-1:0] lqg_f_res_gw_33_net;
  wire [18-1:0] lqg_f_res_gw_34_net;
  wire [18-1:0] lqg_f_res_gw_35_net;
  wire [18-1:0] lqg_f_res_gw_36_net;
  wire [18-1:0] lqg_f_res_gw_37_net;
  wire [18-1:0] lqg_f_res_gw_38_net;
  wire [18-1:0] lqg_f_res_gw_39_net;
  wire [18-1:0] lqg_f_res_gw_40_net;
  wire [18-1:0] lqg_f_res_gw_41_net;
  wire [18-1:0] lqg_f_res_gw_42_net;
  wire [18-1:0] lqg_f_res_gw_43_net;
  wire [18-1:0] lqg_f_res_gw_44_net;
  wire [18-1:0] lqg_f_res_gw_45_net;
  wire [18-1:0] lqg_f_res_gw_46_net;
  wire [18-1:0] lqg_f_res_gw_47_net;
  wire [18-1:0] lqg_f_res_gw_48_net;
  wire [5-1:0] lqg_f_shift_gw_0_net;
  wire [5-1:0] lqg_f_shift_gw_1_net;
  wire [5-1:0] lqg_f_shift_gw_2_net;
  wire [5-1:0] lqg_f_shift_gw_3_net;
  wire [5-1:0] lqg_f_shift_gw_4_net;
  wire [5-1:0] lqg_f_shift_gw_5_net;
  wire [5-1:0] lqg_f_shift_gw_6_net;
  wire [5-1:0] lqg_f_shift_gw_7_net;
  wire [5-1:0] lqg_f_shift_gw_8_net;
  wire [5-1:0] lqg_f_shift_gw_9_net;
  wire [5-1:0] lqg_f_shift_gw_10_net;
  wire [5-1:0] lqg_f_shift_gw_11_net;
  wire [5-1:0] lqg_f_shift_gw_12_net;
  wire [5-1:0] lqg_f_shift_gw_13_net;
  wire [5-1:0] lqg_f_shift_gw_14_net;
  wire [5-1:0] lqg_f_shift_gw_15_net;
  wire [5-1:0] lqg_f_shift_gw_16_net;
  wire [5-1:0] lqg_f_shift_gw_17_net;
  wire [5-1:0] lqg_f_shift_gw_18_net;
  wire [5-1:0] lqg_f_shift_gw_19_net;
  wire [5-1:0] lqg_f_shift_gw_20_net;
  wire [5-1:0] lqg_f_shift_gw_21_net;
  wire [5-1:0] lqg_f_shift_gw_22_net;
  wire [5-1:0] lqg_f_shift_gw_23_net;
  wire [5-1:0] lqg_f_shift_gw_24_net;
  wire [5-1:0] lqg_f_shift_gw_25_net;
  wire [5-1:0] lqg_f_shift_gw_26_net;
  wire [5-1:0] lqg_f_shift_gw_27_net;
  wire [5-1:0] lqg_f_shift_gw_28_net;
  wire [5-1:0] lqg_f_shift_gw_29_net;
  wire [5-1:0] lqg_f_shift_gw_30_net;
  wire [5-1:0] lqg_f_shift_gw_31_net;
  wire [5-1:0] lqg_f_shift_gw_32_net;
  wire [5-1:0] lqg_f_shift_gw_33_net;
  wire [5-1:0] lqg_f_shift_gw_34_net;
  wire [5-1:0] lqg_f_shift_gw_35_net;
  wire [5-1:0] lqg_f_shift_gw_36_net;
  wire [5-1:0] lqg_f_shift_gw_37_net;
  wire [5-1:0] lqg_f_shift_gw_38_net;
  wire [5-1:0] lqg_f_shift_gw_39_net;
  wire [5-1:0] lqg_f_shift_gw_40_net;
  wire [5-1:0] lqg_f_shift_gw_41_net;
  wire [5-1:0] lqg_f_shift_gw_42_net;
  wire [5-1:0] lqg_f_shift_gw_43_net;
  wire [5-1:0] lqg_f_shift_gw_44_net;
  wire [5-1:0] lqg_f_shift_gw_45_net;
  wire [5-1:0] lqg_f_shift_gw_46_net;
  wire [5-1:0] lqg_f_shift_gw_47_net;
  wire [5-1:0] lqg_f_shift_gw_48_net;
  wire [18-1:0] lqg_gamma_res_gw_0_net;
  wire [18-1:0] lqg_gamma_res_gw_1_net;
  wire [18-1:0] lqg_gamma_res_gw_2_net;
  wire [18-1:0] lqg_gamma_res_gw_3_net;
  wire [18-1:0] lqg_gamma_res_gw_4_net;
  wire [18-1:0] lqg_gamma_res_gw_5_net;
  wire [18-1:0] lqg_gamma_res_gw_6_net;
  wire [18-1:0] lqg_gamma_res_gw_7_net;
  wire [18-1:0] lqg_gamma_res_gw_8_net;
  wire [18-1:0] lqg_gamma_res_gw_9_net;
  wire [18-1:0] lqg_gamma_res_gw_10_net;
  wire [18-1:0] lqg_gamma_res_gw_11_net;
  wire [18-1:0] lqg_gamma_res_gw_12_net;
  wire [18-1:0] lqg_gamma_res_gw_13_net;
  wire [5-1:0] lqg_gamma_shift_gw_0_net;
  wire [5-1:0] lqg_gamma_shift_gw_1_net;
  wire [5-1:0] lqg_gamma_shift_gw_2_net;
  wire [5-1:0] lqg_gamma_shift_gw_3_net;
  wire [5-1:0] lqg_gamma_shift_gw_4_net;
  wire [5-1:0] lqg_gamma_shift_gw_5_net;
  wire [5-1:0] lqg_gamma_shift_gw_6_net;
  wire [5-1:0] lqg_gamma_shift_gw_7_net;
  wire [5-1:0] lqg_gamma_shift_gw_8_net;
  wire [5-1:0] lqg_gamma_shift_gw_9_net;
  wire [5-1:0] lqg_gamma_shift_gw_10_net;
  wire [5-1:0] lqg_gamma_shift_gw_11_net;
  wire [5-1:0] lqg_gamma_shift_gw_12_net;
  wire [5-1:0] lqg_gamma_shift_gw_13_net;
  wire [18-1:0] lqg_k_res_gw_0_net;
  wire [18-1:0] lqg_k_res_gw_1_net;
  wire [18-1:0] lqg_k_res_gw_2_net;
  wire [18-1:0] lqg_k_res_gw_3_net;
  wire [18-1:0] lqg_k_res_gw_4_net;
  wire [18-1:0] lqg_k_res_gw_5_net;
  wire [18-1:0] lqg_k_res_gw_6_net;
  wire [18-1:0] lqg_k_res_gw_7_net;
  wire [18-1:0] lqg_k_res_gw_8_net;
  wire [18-1:0] lqg_k_res_gw_9_net;
  wire [18-1:0] lqg_k_res_gw_10_net;
  wire [18-1:0] lqg_k_res_gw_11_net;
  wire [18-1:0] lqg_k_res_gw_12_net;
  wire [18-1:0] lqg_k_res_gw_13_net;
  wire [6-1:0] lqg_k_shift_gw_0_net;
  wire [6-1:0] lqg_k_shift_gw_1_net;
  wire [6-1:0] lqg_k_shift_gw_2_net;
  wire [6-1:0] lqg_k_shift_gw_3_net;
  wire [6-1:0] lqg_k_shift_gw_4_net;
  wire [6-1:0] lqg_k_shift_gw_5_net;
  wire [6-1:0] lqg_k_shift_gw_6_net;
  wire [6-1:0] lqg_k_shift_gw_7_net;
  wire [6-1:0] lqg_k_shift_gw_8_net;
  wire [6-1:0] lqg_k_shift_gw_9_net;
  wire [6-1:0] lqg_k_shift_gw_10_net;
  wire [6-1:0] lqg_k_shift_gw_11_net;
  wire [6-1:0] lqg_k_shift_gw_12_net;
  wire [6-1:0] lqg_k_shift_gw_13_net;
  wire [18-1:0] lqg_l_res_gw_0_net;
  wire [18-1:0] lqg_l_res_gw_1_net;
  wire [18-1:0] lqg_l_res_gw_2_net;
  wire [18-1:0] lqg_l_res_gw_3_net;
  wire [18-1:0] lqg_l_res_gw_4_net;
  wire [18-1:0] lqg_l_res_gw_5_net;
  wire [18-1:0] lqg_l_res_gw_6_net;
  wire [18-1:0] lqg_l_res_gw_7_net;
  wire [18-1:0] lqg_l_res_gw_8_net;
  wire [18-1:0] lqg_l_res_gw_9_net;
  wire [18-1:0] lqg_l_res_gw_10_net;
  wire [18-1:0] lqg_l_res_gw_11_net;
  wire [18-1:0] lqg_l_res_gw_12_net;
  wire [18-1:0] lqg_l_res_gw_13_net;
  wire [5-1:0] lqg_l_shift_gw_0_net;
  wire [5-1:0] lqg_l_shift_gw_1_net;
  wire [5-1:0] lqg_l_shift_gw_2_net;
  wire [5-1:0] lqg_l_shift_gw_3_net;
  wire [5-1:0] lqg_l_shift_gw_4_net;
  wire [5-1:0] lqg_l_shift_gw_5_net;
  wire [5-1:0] lqg_l_shift_gw_6_net;
  wire [5-1:0] lqg_l_shift_gw_7_net;
  wire [5-1:0] lqg_l_shift_gw_8_net;
  wire [5-1:0] lqg_l_shift_gw_9_net;
  wire [5-1:0] lqg_l_shift_gw_10_net;
  wire [5-1:0] lqg_l_shift_gw_11_net;
  wire [5-1:0] lqg_l_shift_gw_12_net;
  wire [5-1:0] lqg_l_shift_gw_13_net;
  wire [18-1:0] uk_factor_gw_0_net;
  wire [18-1:0] uk_factor_gw_1_net;
  wire [14-1:0] addsub0_s_net_x0;
  wire [14-1:0] addsub1_s_net;
  wire [14-1:0] uk_offset_gw_0_net;
  wire [14-1:0] uk_offset_gw_1_net;
  wire [25-1:0] reinterpret0_output_port_net_x3;
  wire [25-1:0] reinterpret1_output_port_net_x2;
  wire [25-1:0] reinterpret2_output_port_net_x10;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x3;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [18-1:0] yk_factor_gw_0_net;
  wire [18-1:0] yk_factor_gw_1_net;
  wire [14-1:0] yk_gw_0_net;
  wire [14-1:0] yk_gw_1_net;
  wire [14-1:0] yk_offset_gw_0_net;
  wire [14-1:0] yk_offset_gw_1_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] reinterpret0_output_port_net_x1;
  wire [25-1:0] reinterpret1_output_port_net_x1;
  wire [25-1:0] convert0_dout_net;
  wire [25-1:0] convert1_dout_net;
  wire [14-1:0] reinterpret0_output_port_net;
  wire [14-1:0] reinterpret1_output_port_net;
  wire [14-1:0] convert0_dout_net_x0;
  wire [14-1:0] convert1_dout_net_x0;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] convert0_dout_net_x1;
  wire [25-1:0] convert1_dout_net_x1;
  wire [175-1:0] reinterpret2_output_port_net;
  wire [301-1:0] reinterpret4_output_port_net_x2;
  wire [301-1:0] reinterpret4_output_port_net_x0;
  wire [301-1:0] reinterpret4_output_port_net_x1;
  wire [14-1:0] addsub0_s_net;
  wire [14-1:0] addsub1_s_net_x0;
  wire [14-1:0] mult0_p_net_x0;
  wire [14-1:0] mult1_p_net_x0;
  wire [43-1:0] reinterpret0_output_port_net_x2;
  wire [43-1:0] reinterpret1_output_port_net_x3;
  wire [14-1:0] mult0_p_net;
  wire [14-1:0] mult1_p_net;
  wire [86-1:0] reinterpret4_output_port_net;
  wire [252-1:0] reinterpret2_output_port_net_x3;
  wire [84-1:0] reinterpret2_output_port_net_x4;
  wire [175-1:0] delay_q_net;
  wire [252-1:0] reinterpret2_output_port_net_x1;
  wire [70-1:0] reinterpret2_output_port_net_x2;
  wire [50-1:0] reinterpret2_output_port_net_x8;
  wire [252-1:0] reinterpret2_output_port_net_x5;
  wire [70-1:0] reinterpret2_output_port_net_x6;
  wire [50-1:0] reinterpret2_output_port_net_x7;
  wire [882-1:0] reinterpret2_output_port_net_x0;
  wire [245-1:0] reinterpret2_output_port_net_x9;
  wire [1-1:0] convert_dout_net;
  assign led_output = logical_y_net;
  assign led_mask_cdc_1_q_net = led_mask;
  assign state_reset_cdc_q_net = state_reset;
  assign lqg_led_in_net = lqg_led_in;
  assign lqg_led_out = logical_y_net;
  assign lqg_f_res_gw_0_net = lqg_f_res_gw_0;
  assign lqg_f_res_gw_1_net = lqg_f_res_gw_1;
  assign lqg_f_res_gw_2_net = lqg_f_res_gw_2;
  assign lqg_f_res_gw_3_net = lqg_f_res_gw_3;
  assign lqg_f_res_gw_4_net = lqg_f_res_gw_4;
  assign lqg_f_res_gw_5_net = lqg_f_res_gw_5;
  assign lqg_f_res_gw_6_net = lqg_f_res_gw_6;
  assign lqg_f_res_gw_7_net = lqg_f_res_gw_7;
  assign lqg_f_res_gw_8_net = lqg_f_res_gw_8;
  assign lqg_f_res_gw_9_net = lqg_f_res_gw_9;
  assign lqg_f_res_gw_10_net = lqg_f_res_gw_10;
  assign lqg_f_res_gw_11_net = lqg_f_res_gw_11;
  assign lqg_f_res_gw_12_net = lqg_f_res_gw_12;
  assign lqg_f_res_gw_13_net = lqg_f_res_gw_13;
  assign lqg_f_res_gw_14_net = lqg_f_res_gw_14;
  assign lqg_f_res_gw_15_net = lqg_f_res_gw_15;
  assign lqg_f_res_gw_16_net = lqg_f_res_gw_16;
  assign lqg_f_res_gw_17_net = lqg_f_res_gw_17;
  assign lqg_f_res_gw_18_net = lqg_f_res_gw_18;
  assign lqg_f_res_gw_19_net = lqg_f_res_gw_19;
  assign lqg_f_res_gw_20_net = lqg_f_res_gw_20;
  assign lqg_f_res_gw_21_net = lqg_f_res_gw_21;
  assign lqg_f_res_gw_22_net = lqg_f_res_gw_22;
  assign lqg_f_res_gw_23_net = lqg_f_res_gw_23;
  assign lqg_f_res_gw_24_net = lqg_f_res_gw_24;
  assign lqg_f_res_gw_25_net = lqg_f_res_gw_25;
  assign lqg_f_res_gw_26_net = lqg_f_res_gw_26;
  assign lqg_f_res_gw_27_net = lqg_f_res_gw_27;
  assign lqg_f_res_gw_28_net = lqg_f_res_gw_28;
  assign lqg_f_res_gw_29_net = lqg_f_res_gw_29;
  assign lqg_f_res_gw_30_net = lqg_f_res_gw_30;
  assign lqg_f_res_gw_31_net = lqg_f_res_gw_31;
  assign lqg_f_res_gw_32_net = lqg_f_res_gw_32;
  assign lqg_f_res_gw_33_net = lqg_f_res_gw_33;
  assign lqg_f_res_gw_34_net = lqg_f_res_gw_34;
  assign lqg_f_res_gw_35_net = lqg_f_res_gw_35;
  assign lqg_f_res_gw_36_net = lqg_f_res_gw_36;
  assign lqg_f_res_gw_37_net = lqg_f_res_gw_37;
  assign lqg_f_res_gw_38_net = lqg_f_res_gw_38;
  assign lqg_f_res_gw_39_net = lqg_f_res_gw_39;
  assign lqg_f_res_gw_40_net = lqg_f_res_gw_40;
  assign lqg_f_res_gw_41_net = lqg_f_res_gw_41;
  assign lqg_f_res_gw_42_net = lqg_f_res_gw_42;
  assign lqg_f_res_gw_43_net = lqg_f_res_gw_43;
  assign lqg_f_res_gw_44_net = lqg_f_res_gw_44;
  assign lqg_f_res_gw_45_net = lqg_f_res_gw_45;
  assign lqg_f_res_gw_46_net = lqg_f_res_gw_46;
  assign lqg_f_res_gw_47_net = lqg_f_res_gw_47;
  assign lqg_f_res_gw_48_net = lqg_f_res_gw_48;
  assign lqg_f_shift_gw_0_net = lqg_f_shift_gw_0;
  assign lqg_f_shift_gw_1_net = lqg_f_shift_gw_1;
  assign lqg_f_shift_gw_2_net = lqg_f_shift_gw_2;
  assign lqg_f_shift_gw_3_net = lqg_f_shift_gw_3;
  assign lqg_f_shift_gw_4_net = lqg_f_shift_gw_4;
  assign lqg_f_shift_gw_5_net = lqg_f_shift_gw_5;
  assign lqg_f_shift_gw_6_net = lqg_f_shift_gw_6;
  assign lqg_f_shift_gw_7_net = lqg_f_shift_gw_7;
  assign lqg_f_shift_gw_8_net = lqg_f_shift_gw_8;
  assign lqg_f_shift_gw_9_net = lqg_f_shift_gw_9;
  assign lqg_f_shift_gw_10_net = lqg_f_shift_gw_10;
  assign lqg_f_shift_gw_11_net = lqg_f_shift_gw_11;
  assign lqg_f_shift_gw_12_net = lqg_f_shift_gw_12;
  assign lqg_f_shift_gw_13_net = lqg_f_shift_gw_13;
  assign lqg_f_shift_gw_14_net = lqg_f_shift_gw_14;
  assign lqg_f_shift_gw_15_net = lqg_f_shift_gw_15;
  assign lqg_f_shift_gw_16_net = lqg_f_shift_gw_16;
  assign lqg_f_shift_gw_17_net = lqg_f_shift_gw_17;
  assign lqg_f_shift_gw_18_net = lqg_f_shift_gw_18;
  assign lqg_f_shift_gw_19_net = lqg_f_shift_gw_19;
  assign lqg_f_shift_gw_20_net = lqg_f_shift_gw_20;
  assign lqg_f_shift_gw_21_net = lqg_f_shift_gw_21;
  assign lqg_f_shift_gw_22_net = lqg_f_shift_gw_22;
  assign lqg_f_shift_gw_23_net = lqg_f_shift_gw_23;
  assign lqg_f_shift_gw_24_net = lqg_f_shift_gw_24;
  assign lqg_f_shift_gw_25_net = lqg_f_shift_gw_25;
  assign lqg_f_shift_gw_26_net = lqg_f_shift_gw_26;
  assign lqg_f_shift_gw_27_net = lqg_f_shift_gw_27;
  assign lqg_f_shift_gw_28_net = lqg_f_shift_gw_28;
  assign lqg_f_shift_gw_29_net = lqg_f_shift_gw_29;
  assign lqg_f_shift_gw_30_net = lqg_f_shift_gw_30;
  assign lqg_f_shift_gw_31_net = lqg_f_shift_gw_31;
  assign lqg_f_shift_gw_32_net = lqg_f_shift_gw_32;
  assign lqg_f_shift_gw_33_net = lqg_f_shift_gw_33;
  assign lqg_f_shift_gw_34_net = lqg_f_shift_gw_34;
  assign lqg_f_shift_gw_35_net = lqg_f_shift_gw_35;
  assign lqg_f_shift_gw_36_net = lqg_f_shift_gw_36;
  assign lqg_f_shift_gw_37_net = lqg_f_shift_gw_37;
  assign lqg_f_shift_gw_38_net = lqg_f_shift_gw_38;
  assign lqg_f_shift_gw_39_net = lqg_f_shift_gw_39;
  assign lqg_f_shift_gw_40_net = lqg_f_shift_gw_40;
  assign lqg_f_shift_gw_41_net = lqg_f_shift_gw_41;
  assign lqg_f_shift_gw_42_net = lqg_f_shift_gw_42;
  assign lqg_f_shift_gw_43_net = lqg_f_shift_gw_43;
  assign lqg_f_shift_gw_44_net = lqg_f_shift_gw_44;
  assign lqg_f_shift_gw_45_net = lqg_f_shift_gw_45;
  assign lqg_f_shift_gw_46_net = lqg_f_shift_gw_46;
  assign lqg_f_shift_gw_47_net = lqg_f_shift_gw_47;
  assign lqg_f_shift_gw_48_net = lqg_f_shift_gw_48;
  assign lqg_gamma_res_gw_0_net = lqg_gamma_res_gw_0;
  assign lqg_gamma_res_gw_1_net = lqg_gamma_res_gw_1;
  assign lqg_gamma_res_gw_2_net = lqg_gamma_res_gw_2;
  assign lqg_gamma_res_gw_3_net = lqg_gamma_res_gw_3;
  assign lqg_gamma_res_gw_4_net = lqg_gamma_res_gw_4;
  assign lqg_gamma_res_gw_5_net = lqg_gamma_res_gw_5;
  assign lqg_gamma_res_gw_6_net = lqg_gamma_res_gw_6;
  assign lqg_gamma_res_gw_7_net = lqg_gamma_res_gw_7;
  assign lqg_gamma_res_gw_8_net = lqg_gamma_res_gw_8;
  assign lqg_gamma_res_gw_9_net = lqg_gamma_res_gw_9;
  assign lqg_gamma_res_gw_10_net = lqg_gamma_res_gw_10;
  assign lqg_gamma_res_gw_11_net = lqg_gamma_res_gw_11;
  assign lqg_gamma_res_gw_12_net = lqg_gamma_res_gw_12;
  assign lqg_gamma_res_gw_13_net = lqg_gamma_res_gw_13;
  assign lqg_gamma_shift_gw_0_net = lqg_gamma_shift_gw_0;
  assign lqg_gamma_shift_gw_1_net = lqg_gamma_shift_gw_1;
  assign lqg_gamma_shift_gw_2_net = lqg_gamma_shift_gw_2;
  assign lqg_gamma_shift_gw_3_net = lqg_gamma_shift_gw_3;
  assign lqg_gamma_shift_gw_4_net = lqg_gamma_shift_gw_4;
  assign lqg_gamma_shift_gw_5_net = lqg_gamma_shift_gw_5;
  assign lqg_gamma_shift_gw_6_net = lqg_gamma_shift_gw_6;
  assign lqg_gamma_shift_gw_7_net = lqg_gamma_shift_gw_7;
  assign lqg_gamma_shift_gw_8_net = lqg_gamma_shift_gw_8;
  assign lqg_gamma_shift_gw_9_net = lqg_gamma_shift_gw_9;
  assign lqg_gamma_shift_gw_10_net = lqg_gamma_shift_gw_10;
  assign lqg_gamma_shift_gw_11_net = lqg_gamma_shift_gw_11;
  assign lqg_gamma_shift_gw_12_net = lqg_gamma_shift_gw_12;
  assign lqg_gamma_shift_gw_13_net = lqg_gamma_shift_gw_13;
  assign lqg_k_res_gw_0_net = lqg_k_res_gw_0;
  assign lqg_k_res_gw_1_net = lqg_k_res_gw_1;
  assign lqg_k_res_gw_2_net = lqg_k_res_gw_2;
  assign lqg_k_res_gw_3_net = lqg_k_res_gw_3;
  assign lqg_k_res_gw_4_net = lqg_k_res_gw_4;
  assign lqg_k_res_gw_5_net = lqg_k_res_gw_5;
  assign lqg_k_res_gw_6_net = lqg_k_res_gw_6;
  assign lqg_k_res_gw_7_net = lqg_k_res_gw_7;
  assign lqg_k_res_gw_8_net = lqg_k_res_gw_8;
  assign lqg_k_res_gw_9_net = lqg_k_res_gw_9;
  assign lqg_k_res_gw_10_net = lqg_k_res_gw_10;
  assign lqg_k_res_gw_11_net = lqg_k_res_gw_11;
  assign lqg_k_res_gw_12_net = lqg_k_res_gw_12;
  assign lqg_k_res_gw_13_net = lqg_k_res_gw_13;
  assign lqg_k_shift_gw_0_net = lqg_k_shift_gw_0;
  assign lqg_k_shift_gw_1_net = lqg_k_shift_gw_1;
  assign lqg_k_shift_gw_2_net = lqg_k_shift_gw_2;
  assign lqg_k_shift_gw_3_net = lqg_k_shift_gw_3;
  assign lqg_k_shift_gw_4_net = lqg_k_shift_gw_4;
  assign lqg_k_shift_gw_5_net = lqg_k_shift_gw_5;
  assign lqg_k_shift_gw_6_net = lqg_k_shift_gw_6;
  assign lqg_k_shift_gw_7_net = lqg_k_shift_gw_7;
  assign lqg_k_shift_gw_8_net = lqg_k_shift_gw_8;
  assign lqg_k_shift_gw_9_net = lqg_k_shift_gw_9;
  assign lqg_k_shift_gw_10_net = lqg_k_shift_gw_10;
  assign lqg_k_shift_gw_11_net = lqg_k_shift_gw_11;
  assign lqg_k_shift_gw_12_net = lqg_k_shift_gw_12;
  assign lqg_k_shift_gw_13_net = lqg_k_shift_gw_13;
  assign lqg_l_res_gw_0_net = lqg_l_res_gw_0;
  assign lqg_l_res_gw_1_net = lqg_l_res_gw_1;
  assign lqg_l_res_gw_2_net = lqg_l_res_gw_2;
  assign lqg_l_res_gw_3_net = lqg_l_res_gw_3;
  assign lqg_l_res_gw_4_net = lqg_l_res_gw_4;
  assign lqg_l_res_gw_5_net = lqg_l_res_gw_5;
  assign lqg_l_res_gw_6_net = lqg_l_res_gw_6;
  assign lqg_l_res_gw_7_net = lqg_l_res_gw_7;
  assign lqg_l_res_gw_8_net = lqg_l_res_gw_8;
  assign lqg_l_res_gw_9_net = lqg_l_res_gw_9;
  assign lqg_l_res_gw_10_net = lqg_l_res_gw_10;
  assign lqg_l_res_gw_11_net = lqg_l_res_gw_11;
  assign lqg_l_res_gw_12_net = lqg_l_res_gw_12;
  assign lqg_l_res_gw_13_net = lqg_l_res_gw_13;
  assign lqg_l_shift_gw_0_net = lqg_l_shift_gw_0;
  assign lqg_l_shift_gw_1_net = lqg_l_shift_gw_1;
  assign lqg_l_shift_gw_2_net = lqg_l_shift_gw_2;
  assign lqg_l_shift_gw_3_net = lqg_l_shift_gw_3;
  assign lqg_l_shift_gw_4_net = lqg_l_shift_gw_4;
  assign lqg_l_shift_gw_5_net = lqg_l_shift_gw_5;
  assign lqg_l_shift_gw_6_net = lqg_l_shift_gw_6;
  assign lqg_l_shift_gw_7_net = lqg_l_shift_gw_7;
  assign lqg_l_shift_gw_8_net = lqg_l_shift_gw_8;
  assign lqg_l_shift_gw_9_net = lqg_l_shift_gw_9;
  assign lqg_l_shift_gw_10_net = lqg_l_shift_gw_10;
  assign lqg_l_shift_gw_11_net = lqg_l_shift_gw_11;
  assign lqg_l_shift_gw_12_net = lqg_l_shift_gw_12;
  assign lqg_l_shift_gw_13_net = lqg_l_shift_gw_13;
  assign uk_factor_gw_0_net = uk_factor_gw_0;
  assign uk_factor_gw_1_net = uk_factor_gw_1;
  assign uk_gw_0 = addsub0_s_net_x0;
  assign uk_gw_1 = addsub1_s_net;
  assign uk_offset_gw_0_net = uk_offset_gw_0;
  assign uk_offset_gw_1_net = uk_offset_gw_1;
  assign xkhat_gw_0 = reinterpret0_output_port_net_x3;
  assign xkhat_gw_1 = reinterpret1_output_port_net_x2;
  assign xkhat_gw_2 = reinterpret2_output_port_net_x10;
  assign xkhat_gw_3 = reinterpret3_output_port_net;
  assign xkhat_gw_4 = reinterpret4_output_port_net_x3;
  assign xkhat_gw_5 = reinterpret5_output_port_net;
  assign xkhat_gw_6 = reinterpret6_output_port_net;
  assign yk_factor_gw_0_net = yk_factor_gw_0;
  assign yk_factor_gw_1_net = yk_factor_gw_1;
  assign yk_gw_0_net = yk_gw_0;
  assign yk_gw_1_net = yk_gw_1;
  assign yk_offset_gw_0_net = yk_offset_gw_0;
  assign yk_offset_gw_1_net = yk_offset_gw_1;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_lqg_axi_lqg_f_res_gw lqg_f_res_gw (
    .lqg_f_res_gw_0(lqg_f_res_gw_0_net),
    .lqg_f_res_gw_1(lqg_f_res_gw_1_net),
    .lqg_f_res_gw_2(lqg_f_res_gw_2_net),
    .lqg_f_res_gw_3(lqg_f_res_gw_3_net),
    .lqg_f_res_gw_4(lqg_f_res_gw_4_net),
    .lqg_f_res_gw_5(lqg_f_res_gw_5_net),
    .lqg_f_res_gw_6(lqg_f_res_gw_6_net),
    .lqg_f_res_gw_7(lqg_f_res_gw_7_net),
    .lqg_f_res_gw_8(lqg_f_res_gw_8_net),
    .lqg_f_res_gw_9(lqg_f_res_gw_9_net),
    .lqg_f_res_gw_10(lqg_f_res_gw_10_net),
    .lqg_f_res_gw_11(lqg_f_res_gw_11_net),
    .lqg_f_res_gw_12(lqg_f_res_gw_12_net),
    .lqg_f_res_gw_13(lqg_f_res_gw_13_net),
    .lqg_f_res_gw_14(lqg_f_res_gw_14_net),
    .lqg_f_res_gw_15(lqg_f_res_gw_15_net),
    .lqg_f_res_gw_16(lqg_f_res_gw_16_net),
    .lqg_f_res_gw_17(lqg_f_res_gw_17_net),
    .lqg_f_res_gw_18(lqg_f_res_gw_18_net),
    .lqg_f_res_gw_19(lqg_f_res_gw_19_net),
    .lqg_f_res_gw_20(lqg_f_res_gw_20_net),
    .lqg_f_res_gw_21(lqg_f_res_gw_21_net),
    .lqg_f_res_gw_22(lqg_f_res_gw_22_net),
    .lqg_f_res_gw_23(lqg_f_res_gw_23_net),
    .lqg_f_res_gw_24(lqg_f_res_gw_24_net),
    .lqg_f_res_gw_25(lqg_f_res_gw_25_net),
    .lqg_f_res_gw_26(lqg_f_res_gw_26_net),
    .lqg_f_res_gw_27(lqg_f_res_gw_27_net),
    .lqg_f_res_gw_28(lqg_f_res_gw_28_net),
    .lqg_f_res_gw_29(lqg_f_res_gw_29_net),
    .lqg_f_res_gw_30(lqg_f_res_gw_30_net),
    .lqg_f_res_gw_31(lqg_f_res_gw_31_net),
    .lqg_f_res_gw_32(lqg_f_res_gw_32_net),
    .lqg_f_res_gw_33(lqg_f_res_gw_33_net),
    .lqg_f_res_gw_34(lqg_f_res_gw_34_net),
    .lqg_f_res_gw_35(lqg_f_res_gw_35_net),
    .lqg_f_res_gw_36(lqg_f_res_gw_36_net),
    .lqg_f_res_gw_37(lqg_f_res_gw_37_net),
    .lqg_f_res_gw_38(lqg_f_res_gw_38_net),
    .lqg_f_res_gw_39(lqg_f_res_gw_39_net),
    .lqg_f_res_gw_40(lqg_f_res_gw_40_net),
    .lqg_f_res_gw_41(lqg_f_res_gw_41_net),
    .lqg_f_res_gw_42(lqg_f_res_gw_42_net),
    .lqg_f_res_gw_43(lqg_f_res_gw_43_net),
    .lqg_f_res_gw_44(lqg_f_res_gw_44_net),
    .lqg_f_res_gw_45(lqg_f_res_gw_45_net),
    .lqg_f_res_gw_46(lqg_f_res_gw_46_net),
    .lqg_f_res_gw_47(lqg_f_res_gw_47_net),
    .lqg_f_res_gw_48(lqg_f_res_gw_48_net)
  );
  fpga_lqg_axi_lqg_f_shift_gw lqg_f_shift_gw (
    .lqg_f_shift_gw_0(lqg_f_shift_gw_0_net),
    .lqg_f_shift_gw_1(lqg_f_shift_gw_1_net),
    .lqg_f_shift_gw_2(lqg_f_shift_gw_2_net),
    .lqg_f_shift_gw_3(lqg_f_shift_gw_3_net),
    .lqg_f_shift_gw_4(lqg_f_shift_gw_4_net),
    .lqg_f_shift_gw_5(lqg_f_shift_gw_5_net),
    .lqg_f_shift_gw_6(lqg_f_shift_gw_6_net),
    .lqg_f_shift_gw_7(lqg_f_shift_gw_7_net),
    .lqg_f_shift_gw_8(lqg_f_shift_gw_8_net),
    .lqg_f_shift_gw_9(lqg_f_shift_gw_9_net),
    .lqg_f_shift_gw_10(lqg_f_shift_gw_10_net),
    .lqg_f_shift_gw_11(lqg_f_shift_gw_11_net),
    .lqg_f_shift_gw_12(lqg_f_shift_gw_12_net),
    .lqg_f_shift_gw_13(lqg_f_shift_gw_13_net),
    .lqg_f_shift_gw_14(lqg_f_shift_gw_14_net),
    .lqg_f_shift_gw_15(lqg_f_shift_gw_15_net),
    .lqg_f_shift_gw_16(lqg_f_shift_gw_16_net),
    .lqg_f_shift_gw_17(lqg_f_shift_gw_17_net),
    .lqg_f_shift_gw_18(lqg_f_shift_gw_18_net),
    .lqg_f_shift_gw_19(lqg_f_shift_gw_19_net),
    .lqg_f_shift_gw_20(lqg_f_shift_gw_20_net),
    .lqg_f_shift_gw_21(lqg_f_shift_gw_21_net),
    .lqg_f_shift_gw_22(lqg_f_shift_gw_22_net),
    .lqg_f_shift_gw_23(lqg_f_shift_gw_23_net),
    .lqg_f_shift_gw_24(lqg_f_shift_gw_24_net),
    .lqg_f_shift_gw_25(lqg_f_shift_gw_25_net),
    .lqg_f_shift_gw_26(lqg_f_shift_gw_26_net),
    .lqg_f_shift_gw_27(lqg_f_shift_gw_27_net),
    .lqg_f_shift_gw_28(lqg_f_shift_gw_28_net),
    .lqg_f_shift_gw_29(lqg_f_shift_gw_29_net),
    .lqg_f_shift_gw_30(lqg_f_shift_gw_30_net),
    .lqg_f_shift_gw_31(lqg_f_shift_gw_31_net),
    .lqg_f_shift_gw_32(lqg_f_shift_gw_32_net),
    .lqg_f_shift_gw_33(lqg_f_shift_gw_33_net),
    .lqg_f_shift_gw_34(lqg_f_shift_gw_34_net),
    .lqg_f_shift_gw_35(lqg_f_shift_gw_35_net),
    .lqg_f_shift_gw_36(lqg_f_shift_gw_36_net),
    .lqg_f_shift_gw_37(lqg_f_shift_gw_37_net),
    .lqg_f_shift_gw_38(lqg_f_shift_gw_38_net),
    .lqg_f_shift_gw_39(lqg_f_shift_gw_39_net),
    .lqg_f_shift_gw_40(lqg_f_shift_gw_40_net),
    .lqg_f_shift_gw_41(lqg_f_shift_gw_41_net),
    .lqg_f_shift_gw_42(lqg_f_shift_gw_42_net),
    .lqg_f_shift_gw_43(lqg_f_shift_gw_43_net),
    .lqg_f_shift_gw_44(lqg_f_shift_gw_44_net),
    .lqg_f_shift_gw_45(lqg_f_shift_gw_45_net),
    .lqg_f_shift_gw_46(lqg_f_shift_gw_46_net),
    .lqg_f_shift_gw_47(lqg_f_shift_gw_47_net),
    .lqg_f_shift_gw_48(lqg_f_shift_gw_48_net)
  );
  fpga_lqg_axi_lqg_gamma_res_gw lqg_gamma_res_gw (
    .lqg_gamma_res_gw_0(lqg_gamma_res_gw_0_net),
    .lqg_gamma_res_gw_1(lqg_gamma_res_gw_1_net),
    .lqg_gamma_res_gw_2(lqg_gamma_res_gw_2_net),
    .lqg_gamma_res_gw_3(lqg_gamma_res_gw_3_net),
    .lqg_gamma_res_gw_4(lqg_gamma_res_gw_4_net),
    .lqg_gamma_res_gw_5(lqg_gamma_res_gw_5_net),
    .lqg_gamma_res_gw_6(lqg_gamma_res_gw_6_net),
    .lqg_gamma_res_gw_7(lqg_gamma_res_gw_7_net),
    .lqg_gamma_res_gw_8(lqg_gamma_res_gw_8_net),
    .lqg_gamma_res_gw_9(lqg_gamma_res_gw_9_net),
    .lqg_gamma_res_gw_10(lqg_gamma_res_gw_10_net),
    .lqg_gamma_res_gw_11(lqg_gamma_res_gw_11_net),
    .lqg_gamma_res_gw_12(lqg_gamma_res_gw_12_net),
    .lqg_gamma_res_gw_13(lqg_gamma_res_gw_13_net)
  );
  fpga_lqg_axi_lqg_gamma_shift_gw lqg_gamma_shift_gw (
    .lqg_gamma_shift_gw_0(lqg_gamma_shift_gw_0_net),
    .lqg_gamma_shift_gw_1(lqg_gamma_shift_gw_1_net),
    .lqg_gamma_shift_gw_2(lqg_gamma_shift_gw_2_net),
    .lqg_gamma_shift_gw_3(lqg_gamma_shift_gw_3_net),
    .lqg_gamma_shift_gw_4(lqg_gamma_shift_gw_4_net),
    .lqg_gamma_shift_gw_5(lqg_gamma_shift_gw_5_net),
    .lqg_gamma_shift_gw_6(lqg_gamma_shift_gw_6_net),
    .lqg_gamma_shift_gw_7(lqg_gamma_shift_gw_7_net),
    .lqg_gamma_shift_gw_8(lqg_gamma_shift_gw_8_net),
    .lqg_gamma_shift_gw_9(lqg_gamma_shift_gw_9_net),
    .lqg_gamma_shift_gw_10(lqg_gamma_shift_gw_10_net),
    .lqg_gamma_shift_gw_11(lqg_gamma_shift_gw_11_net),
    .lqg_gamma_shift_gw_12(lqg_gamma_shift_gw_12_net),
    .lqg_gamma_shift_gw_13(lqg_gamma_shift_gw_13_net)
  );
  fpga_lqg_axi_lqg_k_res_gw lqg_k_res_gw (
    .lqg_k_res_gw_0(lqg_k_res_gw_0_net),
    .lqg_k_res_gw_1(lqg_k_res_gw_1_net),
    .lqg_k_res_gw_2(lqg_k_res_gw_2_net),
    .lqg_k_res_gw_3(lqg_k_res_gw_3_net),
    .lqg_k_res_gw_4(lqg_k_res_gw_4_net),
    .lqg_k_res_gw_5(lqg_k_res_gw_5_net),
    .lqg_k_res_gw_6(lqg_k_res_gw_6_net),
    .lqg_k_res_gw_7(lqg_k_res_gw_7_net),
    .lqg_k_res_gw_8(lqg_k_res_gw_8_net),
    .lqg_k_res_gw_9(lqg_k_res_gw_9_net),
    .lqg_k_res_gw_10(lqg_k_res_gw_10_net),
    .lqg_k_res_gw_11(lqg_k_res_gw_11_net),
    .lqg_k_res_gw_12(lqg_k_res_gw_12_net),
    .lqg_k_res_gw_13(lqg_k_res_gw_13_net)
  );
  fpga_lqg_axi_lqg_k_shift_gw lqg_k_shift_gw (
    .lqg_k_shift_gw_0(lqg_k_shift_gw_0_net),
    .lqg_k_shift_gw_1(lqg_k_shift_gw_1_net),
    .lqg_k_shift_gw_2(lqg_k_shift_gw_2_net),
    .lqg_k_shift_gw_3(lqg_k_shift_gw_3_net),
    .lqg_k_shift_gw_4(lqg_k_shift_gw_4_net),
    .lqg_k_shift_gw_5(lqg_k_shift_gw_5_net),
    .lqg_k_shift_gw_6(lqg_k_shift_gw_6_net),
    .lqg_k_shift_gw_7(lqg_k_shift_gw_7_net),
    .lqg_k_shift_gw_8(lqg_k_shift_gw_8_net),
    .lqg_k_shift_gw_9(lqg_k_shift_gw_9_net),
    .lqg_k_shift_gw_10(lqg_k_shift_gw_10_net),
    .lqg_k_shift_gw_11(lqg_k_shift_gw_11_net),
    .lqg_k_shift_gw_12(lqg_k_shift_gw_12_net),
    .lqg_k_shift_gw_13(lqg_k_shift_gw_13_net)
  );
  fpga_lqg_axi_lqg_l_res_gw lqg_l_res_gw (
    .lqg_l_res_gw_0(lqg_l_res_gw_0_net),
    .lqg_l_res_gw_1(lqg_l_res_gw_1_net),
    .lqg_l_res_gw_2(lqg_l_res_gw_2_net),
    .lqg_l_res_gw_3(lqg_l_res_gw_3_net),
    .lqg_l_res_gw_4(lqg_l_res_gw_4_net),
    .lqg_l_res_gw_5(lqg_l_res_gw_5_net),
    .lqg_l_res_gw_6(lqg_l_res_gw_6_net),
    .lqg_l_res_gw_7(lqg_l_res_gw_7_net),
    .lqg_l_res_gw_8(lqg_l_res_gw_8_net),
    .lqg_l_res_gw_9(lqg_l_res_gw_9_net),
    .lqg_l_res_gw_10(lqg_l_res_gw_10_net),
    .lqg_l_res_gw_11(lqg_l_res_gw_11_net),
    .lqg_l_res_gw_12(lqg_l_res_gw_12_net),
    .lqg_l_res_gw_13(lqg_l_res_gw_13_net)
  );
  fpga_lqg_axi_lqg_l_shift_gw lqg_l_shift_gw (
    .lqg_l_shift_gw_0(lqg_l_shift_gw_0_net),
    .lqg_l_shift_gw_1(lqg_l_shift_gw_1_net),
    .lqg_l_shift_gw_2(lqg_l_shift_gw_2_net),
    .lqg_l_shift_gw_3(lqg_l_shift_gw_3_net),
    .lqg_l_shift_gw_4(lqg_l_shift_gw_4_net),
    .lqg_l_shift_gw_5(lqg_l_shift_gw_5_net),
    .lqg_l_shift_gw_6(lqg_l_shift_gw_6_net),
    .lqg_l_shift_gw_7(lqg_l_shift_gw_7_net),
    .lqg_l_shift_gw_8(lqg_l_shift_gw_8_net),
    .lqg_l_shift_gw_9(lqg_l_shift_gw_9_net),
    .lqg_l_shift_gw_10(lqg_l_shift_gw_10_net),
    .lqg_l_shift_gw_11(lqg_l_shift_gw_11_net),
    .lqg_l_shift_gw_12(lqg_l_shift_gw_12_net),
    .lqg_l_shift_gw_13(lqg_l_shift_gw_13_net)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct wtf_simulink_get_your_types_correct (
    .in_1(convert0_dout_net),
    .in_2(convert1_dout_net),
    .out_1(reinterpret0_output_port_net_x1),
    .out_2(reinterpret1_output_port_net_x1)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct1_x0 wtf_simulink_get_your_types_correct1 (
    .in_1(convert0_dout_net_x0),
    .in_2(convert1_dout_net_x0),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net)
  );
  fpga_lqg_axi_wtf_simulink_get_your_types_correct2_x0 wtf_simulink_get_your_types_correct2 (
    .in_1(convert0_dout_net_x1),
    .in_2(convert1_dout_net_x1),
    .out_1(reinterpret0_output_port_net_x0),
    .out_2(reinterpret1_output_port_net_x0)
  );
  fpga_lqg_axi_accumulate_matmuls accumulate_matmuls (
    .f_xk(reinterpret4_output_port_net_x2),
    .gamma_uk(reinterpret4_output_port_net_x0),
    .l_yk(reinterpret4_output_port_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(reinterpret2_output_port_net)
  );
  fpga_lqg_axi_add_yk_offset add_yk_offset (
    .a_1(yk_gw_0_net),
    .b_1(yk_offset_gw_0_net),
    .a_2(yk_gw_1_net),
    .b_2(yk_offset_gw_1_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_b_1(addsub0_s_net),
    .a_b_2(addsub1_s_net_x0)
  );
  fpga_lqg_axi_add_yk_offset1 add_yk_offset1 (
    .a_1(mult0_p_net_x0),
    .b_1(uk_offset_gw_0_net),
    .a_2(mult1_p_net_x0),
    .b_2(uk_offset_gw_1_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_b_1(addsub0_s_net_x0),
    .a_b_2(addsub1_s_net)
  );
  fpga_lqg_axi_cast_2fix25_22 cast_2fix25_22 (
    .i_1(reinterpret0_output_port_net_x2),
    .i_2(reinterpret1_output_port_net_x3),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net),
    .o_2(convert1_dout_net)
  );
  fpga_lqg_axi_conv_uk_14_12 conv_uk_14_12 (
    .i_1(reinterpret0_output_port_net_x1),
    .i_2(reinterpret1_output_port_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net_x0),
    .o_2(convert1_dout_net_x0)
  );
  fpga_lqg_axi_conv_yk_25_22 conv_yk_25_22 (
    .i_1(mult0_p_net),
    .i_2(mult1_p_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(convert0_dout_net_x1),
    .o_2(convert1_dout_net_x1)
  );
  fpga_lqg_axi_matmul_2x7_7x1_0 matmul_2x7_7x1_0 (
    .lmat_residue(reinterpret2_output_port_net_x3),
    .lmat_shift(reinterpret2_output_port_net_x4),
    .rmat(delay_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .omat(reinterpret4_output_port_net)
  );
  fpga_lqg_axi_matmul_7x2_2x1_0 matmul_7x2_2x1_0 (
    .lmat_residue(reinterpret2_output_port_net_x1),
    .lmat_shift(reinterpret2_output_port_net_x2),
    .rmat(reinterpret2_output_port_net_x8),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .omat(reinterpret4_output_port_net_x0)
  );
  fpga_lqg_axi_matmul_7x2_2x1_1 matmul_7x2_2x1_1 (
    .lmat_residue(reinterpret2_output_port_net_x5),
    .lmat_shift(reinterpret2_output_port_net_x6),
    .rmat(reinterpret2_output_port_net_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .omat(reinterpret4_output_port_net_x1)
  );
  fpga_lqg_axi_matmul_7x7_7x1_0 matmul_7x7_7x1_0 (
    .lmat_residue(reinterpret2_output_port_net_x0),
    .lmat_shift(reinterpret2_output_port_net_x9),
    .rmat(delay_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .omat(reinterpret4_output_port_net_x2)
  );
  fpga_lqg_axi_mul_yk_factor mul_yk_factor (
    .a_1(addsub0_s_net),
    .b_1(yk_factor_gw_0_net),
    .a_2(addsub1_s_net_x0),
    .b_2(yk_factor_gw_1_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_x_b_1(mult0_p_net),
    .a_x_b_2(mult1_p_net)
  );
  fpga_lqg_axi_mul_yk_factor1 mul_yk_factor1 (
    .a_1(reinterpret0_output_port_net),
    .b_1(uk_factor_gw_0_net),
    .a_2(reinterpret1_output_port_net),
    .b_2(uk_factor_gw_1_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .a_x_b_1(mult0_p_net_x0),
    .a_x_b_2(mult1_p_net_x0)
  );
  fpga_lqg_axi_repr2vec_2fix43_37_uk repr2vec_2fix43_37_uk (
    .rowmaj_in(reinterpret4_output_port_net),
    .vec_out_1(reinterpret0_output_port_net_x2),
    .vec_out_2(reinterpret1_output_port_net_x3)
  );
  fpga_lqg_axi_repr2vec_7fix25_22_xkhat repr2vec_7fix25_22_xkhat (
    .rowmaj_in(delay_q_net),
    .vec_out_1(reinterpret0_output_port_net_x3),
    .vec_out_2(reinterpret1_output_port_net_x2),
    .vec_out_3(reinterpret2_output_port_net_x10),
    .vec_out_4(reinterpret3_output_port_net),
    .vec_out_5(reinterpret4_output_port_net_x3),
    .vec_out_6(reinterpret5_output_port_net),
    .vec_out_7(reinterpret6_output_port_net)
  );
  fpga_lqg_axi_uk_factor_gw uk_factor_gw (
    .uk_factor_gw_0(uk_factor_gw_0_net),
    .uk_factor_gw_1(uk_factor_gw_1_net)
  );
  fpga_lqg_axi_uk_offset_gw uk_offset_gw (
    .uk_offset_gw_0(uk_offset_gw_0_net),
    .uk_offset_gw_1(uk_offset_gw_1_net)
  );
  fpga_lqg_axi_vec2repr_14_gamma_res vec2repr_14_gamma_res (
    .vec_in_1(lqg_gamma_res_gw_0_net),
    .vec_in_2(lqg_gamma_res_gw_1_net),
    .vec_in_3(lqg_gamma_res_gw_2_net),
    .vec_in_4(lqg_gamma_res_gw_3_net),
    .vec_in_5(lqg_gamma_res_gw_4_net),
    .vec_in_6(lqg_gamma_res_gw_5_net),
    .vec_in_7(lqg_gamma_res_gw_6_net),
    .vec_in_8(lqg_gamma_res_gw_7_net),
    .vec_in_9(lqg_gamma_res_gw_8_net),
    .vec_in_10(lqg_gamma_res_gw_9_net),
    .vec_in_11(lqg_gamma_res_gw_10_net),
    .vec_in_12(lqg_gamma_res_gw_11_net),
    .vec_in_13(lqg_gamma_res_gw_12_net),
    .vec_in_14(lqg_gamma_res_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x1)
  );
  fpga_lqg_axi_vec2repr_14_gamma_shift vec2repr_14_gamma_shift (
    .vec_in_1(lqg_gamma_shift_gw_0_net),
    .vec_in_2(lqg_gamma_shift_gw_1_net),
    .vec_in_3(lqg_gamma_shift_gw_2_net),
    .vec_in_4(lqg_gamma_shift_gw_3_net),
    .vec_in_5(lqg_gamma_shift_gw_4_net),
    .vec_in_6(lqg_gamma_shift_gw_5_net),
    .vec_in_7(lqg_gamma_shift_gw_6_net),
    .vec_in_8(lqg_gamma_shift_gw_7_net),
    .vec_in_9(lqg_gamma_shift_gw_8_net),
    .vec_in_10(lqg_gamma_shift_gw_9_net),
    .vec_in_11(lqg_gamma_shift_gw_10_net),
    .vec_in_12(lqg_gamma_shift_gw_11_net),
    .vec_in_13(lqg_gamma_shift_gw_12_net),
    .vec_in_14(lqg_gamma_shift_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x2)
  );
  fpga_lqg_axi_vec2repr_14_k_res vec2repr_14_k_res (
    .vec_in_1(lqg_k_res_gw_0_net),
    .vec_in_2(lqg_k_res_gw_1_net),
    .vec_in_3(lqg_k_res_gw_2_net),
    .vec_in_4(lqg_k_res_gw_3_net),
    .vec_in_5(lqg_k_res_gw_4_net),
    .vec_in_6(lqg_k_res_gw_5_net),
    .vec_in_7(lqg_k_res_gw_6_net),
    .vec_in_8(lqg_k_res_gw_7_net),
    .vec_in_9(lqg_k_res_gw_8_net),
    .vec_in_10(lqg_k_res_gw_9_net),
    .vec_in_11(lqg_k_res_gw_10_net),
    .vec_in_12(lqg_k_res_gw_11_net),
    .vec_in_13(lqg_k_res_gw_12_net),
    .vec_in_14(lqg_k_res_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x3)
  );
  fpga_lqg_axi_vec2repr_14_k_shift vec2repr_14_k_shift (
    .vec_in_1(lqg_k_shift_gw_0_net),
    .vec_in_2(lqg_k_shift_gw_1_net),
    .vec_in_3(lqg_k_shift_gw_2_net),
    .vec_in_4(lqg_k_shift_gw_3_net),
    .vec_in_5(lqg_k_shift_gw_4_net),
    .vec_in_6(lqg_k_shift_gw_5_net),
    .vec_in_7(lqg_k_shift_gw_6_net),
    .vec_in_8(lqg_k_shift_gw_7_net),
    .vec_in_9(lqg_k_shift_gw_8_net),
    .vec_in_10(lqg_k_shift_gw_9_net),
    .vec_in_11(lqg_k_shift_gw_10_net),
    .vec_in_12(lqg_k_shift_gw_11_net),
    .vec_in_13(lqg_k_shift_gw_12_net),
    .vec_in_14(lqg_k_shift_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x4)
  );
  fpga_lqg_axi_vec2repr_14_l_res vec2repr_14_l_res (
    .vec_in_1(lqg_l_res_gw_0_net),
    .vec_in_2(lqg_l_res_gw_1_net),
    .vec_in_3(lqg_l_res_gw_2_net),
    .vec_in_4(lqg_l_res_gw_3_net),
    .vec_in_5(lqg_l_res_gw_4_net),
    .vec_in_6(lqg_l_res_gw_5_net),
    .vec_in_7(lqg_l_res_gw_6_net),
    .vec_in_8(lqg_l_res_gw_7_net),
    .vec_in_9(lqg_l_res_gw_8_net),
    .vec_in_10(lqg_l_res_gw_9_net),
    .vec_in_11(lqg_l_res_gw_10_net),
    .vec_in_12(lqg_l_res_gw_11_net),
    .vec_in_13(lqg_l_res_gw_12_net),
    .vec_in_14(lqg_l_res_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x5)
  );
  fpga_lqg_axi_vec2repr_14_l_shift vec2repr_14_l_shift (
    .vec_in_1(lqg_l_shift_gw_0_net),
    .vec_in_2(lqg_l_shift_gw_1_net),
    .vec_in_3(lqg_l_shift_gw_2_net),
    .vec_in_4(lqg_l_shift_gw_3_net),
    .vec_in_5(lqg_l_shift_gw_4_net),
    .vec_in_6(lqg_l_shift_gw_5_net),
    .vec_in_7(lqg_l_shift_gw_6_net),
    .vec_in_8(lqg_l_shift_gw_7_net),
    .vec_in_9(lqg_l_shift_gw_8_net),
    .vec_in_10(lqg_l_shift_gw_9_net),
    .vec_in_11(lqg_l_shift_gw_10_net),
    .vec_in_12(lqg_l_shift_gw_11_net),
    .vec_in_13(lqg_l_shift_gw_12_net),
    .vec_in_14(lqg_l_shift_gw_13_net),
    .rowmaj_out(reinterpret2_output_port_net_x6)
  );
  fpga_lqg_axi_vec2repr_2 vec2repr_2 (
    .vec_in_1(reinterpret0_output_port_net_x0),
    .vec_in_2(reinterpret1_output_port_net_x0),
    .rowmaj_out(reinterpret2_output_port_net_x7)
  );
  fpga_lqg_axi_vec2repr_2_uk vec2repr_2_uk (
    .vec_in_1(reinterpret0_output_port_net_x1),
    .vec_in_2(reinterpret1_output_port_net_x1),
    .rowmaj_out(reinterpret2_output_port_net_x8)
  );
  fpga_lqg_axi_vec2repr_49_f_res vec2repr_49_f_res (
    .vec_in_1(lqg_f_res_gw_0_net),
    .vec_in_2(lqg_f_res_gw_1_net),
    .vec_in_3(lqg_f_res_gw_2_net),
    .vec_in_4(lqg_f_res_gw_3_net),
    .vec_in_5(lqg_f_res_gw_4_net),
    .vec_in_6(lqg_f_res_gw_5_net),
    .vec_in_7(lqg_f_res_gw_6_net),
    .vec_in_8(lqg_f_res_gw_7_net),
    .vec_in_9(lqg_f_res_gw_8_net),
    .vec_in_10(lqg_f_res_gw_9_net),
    .vec_in_11(lqg_f_res_gw_10_net),
    .vec_in_12(lqg_f_res_gw_11_net),
    .vec_in_13(lqg_f_res_gw_12_net),
    .vec_in_14(lqg_f_res_gw_13_net),
    .vec_in_15(lqg_f_res_gw_14_net),
    .vec_in_16(lqg_f_res_gw_15_net),
    .vec_in_17(lqg_f_res_gw_16_net),
    .vec_in_18(lqg_f_res_gw_17_net),
    .vec_in_19(lqg_f_res_gw_18_net),
    .vec_in_20(lqg_f_res_gw_19_net),
    .vec_in_21(lqg_f_res_gw_20_net),
    .vec_in_22(lqg_f_res_gw_21_net),
    .vec_in_23(lqg_f_res_gw_22_net),
    .vec_in_24(lqg_f_res_gw_23_net),
    .vec_in_25(lqg_f_res_gw_24_net),
    .vec_in_26(lqg_f_res_gw_25_net),
    .vec_in_27(lqg_f_res_gw_26_net),
    .vec_in_28(lqg_f_res_gw_27_net),
    .vec_in_29(lqg_f_res_gw_28_net),
    .vec_in_30(lqg_f_res_gw_29_net),
    .vec_in_31(lqg_f_res_gw_30_net),
    .vec_in_32(lqg_f_res_gw_31_net),
    .vec_in_33(lqg_f_res_gw_32_net),
    .vec_in_34(lqg_f_res_gw_33_net),
    .vec_in_35(lqg_f_res_gw_34_net),
    .vec_in_36(lqg_f_res_gw_35_net),
    .vec_in_37(lqg_f_res_gw_36_net),
    .vec_in_38(lqg_f_res_gw_37_net),
    .vec_in_39(lqg_f_res_gw_38_net),
    .vec_in_40(lqg_f_res_gw_39_net),
    .vec_in_41(lqg_f_res_gw_40_net),
    .vec_in_42(lqg_f_res_gw_41_net),
    .vec_in_43(lqg_f_res_gw_42_net),
    .vec_in_44(lqg_f_res_gw_43_net),
    .vec_in_45(lqg_f_res_gw_44_net),
    .vec_in_46(lqg_f_res_gw_45_net),
    .vec_in_47(lqg_f_res_gw_46_net),
    .vec_in_48(lqg_f_res_gw_47_net),
    .vec_in_49(lqg_f_res_gw_48_net),
    .rowmaj_out(reinterpret2_output_port_net_x0)
  );
  fpga_lqg_axi_vec2repr_49_f_shift vec2repr_49_f_shift (
    .vec_in_1(lqg_f_shift_gw_0_net),
    .vec_in_2(lqg_f_shift_gw_1_net),
    .vec_in_3(lqg_f_shift_gw_2_net),
    .vec_in_4(lqg_f_shift_gw_3_net),
    .vec_in_5(lqg_f_shift_gw_4_net),
    .vec_in_6(lqg_f_shift_gw_5_net),
    .vec_in_7(lqg_f_shift_gw_6_net),
    .vec_in_8(lqg_f_shift_gw_7_net),
    .vec_in_9(lqg_f_shift_gw_8_net),
    .vec_in_10(lqg_f_shift_gw_9_net),
    .vec_in_11(lqg_f_shift_gw_10_net),
    .vec_in_12(lqg_f_shift_gw_11_net),
    .vec_in_13(lqg_f_shift_gw_12_net),
    .vec_in_14(lqg_f_shift_gw_13_net),
    .vec_in_15(lqg_f_shift_gw_14_net),
    .vec_in_16(lqg_f_shift_gw_15_net),
    .vec_in_17(lqg_f_shift_gw_16_net),
    .vec_in_18(lqg_f_shift_gw_17_net),
    .vec_in_19(lqg_f_shift_gw_18_net),
    .vec_in_20(lqg_f_shift_gw_19_net),
    .vec_in_21(lqg_f_shift_gw_20_net),
    .vec_in_22(lqg_f_shift_gw_21_net),
    .vec_in_23(lqg_f_shift_gw_22_net),
    .vec_in_24(lqg_f_shift_gw_23_net),
    .vec_in_25(lqg_f_shift_gw_24_net),
    .vec_in_26(lqg_f_shift_gw_25_net),
    .vec_in_27(lqg_f_shift_gw_26_net),
    .vec_in_28(lqg_f_shift_gw_27_net),
    .vec_in_29(lqg_f_shift_gw_28_net),
    .vec_in_30(lqg_f_shift_gw_29_net),
    .vec_in_31(lqg_f_shift_gw_30_net),
    .vec_in_32(lqg_f_shift_gw_31_net),
    .vec_in_33(lqg_f_shift_gw_32_net),
    .vec_in_34(lqg_f_shift_gw_33_net),
    .vec_in_35(lqg_f_shift_gw_34_net),
    .vec_in_36(lqg_f_shift_gw_35_net),
    .vec_in_37(lqg_f_shift_gw_36_net),
    .vec_in_38(lqg_f_shift_gw_37_net),
    .vec_in_39(lqg_f_shift_gw_38_net),
    .vec_in_40(lqg_f_shift_gw_39_net),
    .vec_in_41(lqg_f_shift_gw_40_net),
    .vec_in_42(lqg_f_shift_gw_41_net),
    .vec_in_43(lqg_f_shift_gw_42_net),
    .vec_in_44(lqg_f_shift_gw_43_net),
    .vec_in_45(lqg_f_shift_gw_44_net),
    .vec_in_46(lqg_f_shift_gw_45_net),
    .vec_in_47(lqg_f_shift_gw_46_net),
    .vec_in_48(lqg_f_shift_gw_47_net),
    .vec_in_49(lqg_f_shift_gw_48_net),
    .rowmaj_out(reinterpret2_output_port_net_x9)
  );
  fpga_lqg_axi_yk_factor_gw yk_factor_gw (
    .yk_factor_gw_0(yk_factor_gw_0_net),
    .yk_factor_gw_1(yk_factor_gw_1_net)
  );
  fpga_lqg_axi_yk_gw yk_gw (
    .yk_gw_0(yk_gw_0_net),
    .yk_gw_1(yk_gw_1_net)
  );
  fpga_lqg_axi_yk_offset_gw yk_offset_gw (
    .yk_offset_gw_0(yk_offset_gw_0_net),
    .yk_offset_gw_1(yk_offset_gw_1_net)
  );
  fpga_lqg_axi_xlconvert #(
    .bool_conversion(1),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(state_reset_cdc_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  sysgen_delay_214ecd5fb3 delay (
    .clr(1'b0),
    .d(reinterpret2_output_port_net),
    .rst(convert_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_logical_739c9129bd logical (
    .clr(1'b0),
    .d0(led_mask_cdc_1_q_net),
    .d1(lqg_led_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(logical_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block lqg_with_axi_test/fpga_lqg_axi_struct
module fpga_lqg_axi_struct (
  input [8-1:0] axi_led_mask,
  input [1-1:0] axi_state_reset,
  input [8-1:0] lqg_led_in,
  input [18-1:0] lqg_f_res_gw_0,
  input [18-1:0] lqg_f_res_gw_1,
  input [18-1:0] lqg_f_res_gw_2,
  input [18-1:0] lqg_f_res_gw_3,
  input [18-1:0] lqg_f_res_gw_4,
  input [18-1:0] lqg_f_res_gw_5,
  input [18-1:0] lqg_f_res_gw_6,
  input [18-1:0] lqg_f_res_gw_7,
  input [18-1:0] lqg_f_res_gw_8,
  input [18-1:0] lqg_f_res_gw_9,
  input [18-1:0] lqg_f_res_gw_10,
  input [18-1:0] lqg_f_res_gw_11,
  input [18-1:0] lqg_f_res_gw_12,
  input [18-1:0] lqg_f_res_gw_13,
  input [18-1:0] lqg_f_res_gw_14,
  input [18-1:0] lqg_f_res_gw_15,
  input [18-1:0] lqg_f_res_gw_16,
  input [18-1:0] lqg_f_res_gw_17,
  input [18-1:0] lqg_f_res_gw_18,
  input [18-1:0] lqg_f_res_gw_19,
  input [18-1:0] lqg_f_res_gw_20,
  input [18-1:0] lqg_f_res_gw_21,
  input [18-1:0] lqg_f_res_gw_22,
  input [18-1:0] lqg_f_res_gw_23,
  input [18-1:0] lqg_f_res_gw_24,
  input [18-1:0] lqg_f_res_gw_25,
  input [18-1:0] lqg_f_res_gw_26,
  input [18-1:0] lqg_f_res_gw_27,
  input [18-1:0] lqg_f_res_gw_28,
  input [18-1:0] lqg_f_res_gw_29,
  input [18-1:0] lqg_f_res_gw_30,
  input [18-1:0] lqg_f_res_gw_31,
  input [18-1:0] lqg_f_res_gw_32,
  input [18-1:0] lqg_f_res_gw_33,
  input [18-1:0] lqg_f_res_gw_34,
  input [18-1:0] lqg_f_res_gw_35,
  input [18-1:0] lqg_f_res_gw_36,
  input [18-1:0] lqg_f_res_gw_37,
  input [18-1:0] lqg_f_res_gw_38,
  input [18-1:0] lqg_f_res_gw_39,
  input [18-1:0] lqg_f_res_gw_40,
  input [18-1:0] lqg_f_res_gw_41,
  input [18-1:0] lqg_f_res_gw_42,
  input [18-1:0] lqg_f_res_gw_43,
  input [18-1:0] lqg_f_res_gw_44,
  input [18-1:0] lqg_f_res_gw_45,
  input [18-1:0] lqg_f_res_gw_46,
  input [18-1:0] lqg_f_res_gw_47,
  input [18-1:0] lqg_f_res_gw_48,
  input [5-1:0] lqg_f_shift_gw_0,
  input [5-1:0] lqg_f_shift_gw_1,
  input [5-1:0] lqg_f_shift_gw_2,
  input [5-1:0] lqg_f_shift_gw_3,
  input [5-1:0] lqg_f_shift_gw_4,
  input [5-1:0] lqg_f_shift_gw_5,
  input [5-1:0] lqg_f_shift_gw_6,
  input [5-1:0] lqg_f_shift_gw_7,
  input [5-1:0] lqg_f_shift_gw_8,
  input [5-1:0] lqg_f_shift_gw_9,
  input [5-1:0] lqg_f_shift_gw_10,
  input [5-1:0] lqg_f_shift_gw_11,
  input [5-1:0] lqg_f_shift_gw_12,
  input [5-1:0] lqg_f_shift_gw_13,
  input [5-1:0] lqg_f_shift_gw_14,
  input [5-1:0] lqg_f_shift_gw_15,
  input [5-1:0] lqg_f_shift_gw_16,
  input [5-1:0] lqg_f_shift_gw_17,
  input [5-1:0] lqg_f_shift_gw_18,
  input [5-1:0] lqg_f_shift_gw_19,
  input [5-1:0] lqg_f_shift_gw_20,
  input [5-1:0] lqg_f_shift_gw_21,
  input [5-1:0] lqg_f_shift_gw_22,
  input [5-1:0] lqg_f_shift_gw_23,
  input [5-1:0] lqg_f_shift_gw_24,
  input [5-1:0] lqg_f_shift_gw_25,
  input [5-1:0] lqg_f_shift_gw_26,
  input [5-1:0] lqg_f_shift_gw_27,
  input [5-1:0] lqg_f_shift_gw_28,
  input [5-1:0] lqg_f_shift_gw_29,
  input [5-1:0] lqg_f_shift_gw_30,
  input [5-1:0] lqg_f_shift_gw_31,
  input [5-1:0] lqg_f_shift_gw_32,
  input [5-1:0] lqg_f_shift_gw_33,
  input [5-1:0] lqg_f_shift_gw_34,
  input [5-1:0] lqg_f_shift_gw_35,
  input [5-1:0] lqg_f_shift_gw_36,
  input [5-1:0] lqg_f_shift_gw_37,
  input [5-1:0] lqg_f_shift_gw_38,
  input [5-1:0] lqg_f_shift_gw_39,
  input [5-1:0] lqg_f_shift_gw_40,
  input [5-1:0] lqg_f_shift_gw_41,
  input [5-1:0] lqg_f_shift_gw_42,
  input [5-1:0] lqg_f_shift_gw_43,
  input [5-1:0] lqg_f_shift_gw_44,
  input [5-1:0] lqg_f_shift_gw_45,
  input [5-1:0] lqg_f_shift_gw_46,
  input [5-1:0] lqg_f_shift_gw_47,
  input [5-1:0] lqg_f_shift_gw_48,
  input [18-1:0] lqg_gamma_res_gw_0,
  input [18-1:0] lqg_gamma_res_gw_1,
  input [18-1:0] lqg_gamma_res_gw_2,
  input [18-1:0] lqg_gamma_res_gw_3,
  input [18-1:0] lqg_gamma_res_gw_4,
  input [18-1:0] lqg_gamma_res_gw_5,
  input [18-1:0] lqg_gamma_res_gw_6,
  input [18-1:0] lqg_gamma_res_gw_7,
  input [18-1:0] lqg_gamma_res_gw_8,
  input [18-1:0] lqg_gamma_res_gw_9,
  input [18-1:0] lqg_gamma_res_gw_10,
  input [18-1:0] lqg_gamma_res_gw_11,
  input [18-1:0] lqg_gamma_res_gw_12,
  input [18-1:0] lqg_gamma_res_gw_13,
  input [5-1:0] lqg_gamma_shift_gw_0,
  input [5-1:0] lqg_gamma_shift_gw_1,
  input [5-1:0] lqg_gamma_shift_gw_2,
  input [5-1:0] lqg_gamma_shift_gw_3,
  input [5-1:0] lqg_gamma_shift_gw_4,
  input [5-1:0] lqg_gamma_shift_gw_5,
  input [5-1:0] lqg_gamma_shift_gw_6,
  input [5-1:0] lqg_gamma_shift_gw_7,
  input [5-1:0] lqg_gamma_shift_gw_8,
  input [5-1:0] lqg_gamma_shift_gw_9,
  input [5-1:0] lqg_gamma_shift_gw_10,
  input [5-1:0] lqg_gamma_shift_gw_11,
  input [5-1:0] lqg_gamma_shift_gw_12,
  input [5-1:0] lqg_gamma_shift_gw_13,
  input [18-1:0] lqg_k_res_gw_0,
  input [18-1:0] lqg_k_res_gw_1,
  input [18-1:0] lqg_k_res_gw_2,
  input [18-1:0] lqg_k_res_gw_3,
  input [18-1:0] lqg_k_res_gw_4,
  input [18-1:0] lqg_k_res_gw_5,
  input [18-1:0] lqg_k_res_gw_6,
  input [18-1:0] lqg_k_res_gw_7,
  input [18-1:0] lqg_k_res_gw_8,
  input [18-1:0] lqg_k_res_gw_9,
  input [18-1:0] lqg_k_res_gw_10,
  input [18-1:0] lqg_k_res_gw_11,
  input [18-1:0] lqg_k_res_gw_12,
  input [18-1:0] lqg_k_res_gw_13,
  input [6-1:0] lqg_k_shift_gw_0,
  input [6-1:0] lqg_k_shift_gw_1,
  input [6-1:0] lqg_k_shift_gw_2,
  input [6-1:0] lqg_k_shift_gw_3,
  input [6-1:0] lqg_k_shift_gw_4,
  input [6-1:0] lqg_k_shift_gw_5,
  input [6-1:0] lqg_k_shift_gw_6,
  input [6-1:0] lqg_k_shift_gw_7,
  input [6-1:0] lqg_k_shift_gw_8,
  input [6-1:0] lqg_k_shift_gw_9,
  input [6-1:0] lqg_k_shift_gw_10,
  input [6-1:0] lqg_k_shift_gw_11,
  input [6-1:0] lqg_k_shift_gw_12,
  input [6-1:0] lqg_k_shift_gw_13,
  input [18-1:0] lqg_l_res_gw_0,
  input [18-1:0] lqg_l_res_gw_1,
  input [18-1:0] lqg_l_res_gw_2,
  input [18-1:0] lqg_l_res_gw_3,
  input [18-1:0] lqg_l_res_gw_4,
  input [18-1:0] lqg_l_res_gw_5,
  input [18-1:0] lqg_l_res_gw_6,
  input [18-1:0] lqg_l_res_gw_7,
  input [18-1:0] lqg_l_res_gw_8,
  input [18-1:0] lqg_l_res_gw_9,
  input [18-1:0] lqg_l_res_gw_10,
  input [18-1:0] lqg_l_res_gw_11,
  input [18-1:0] lqg_l_res_gw_12,
  input [18-1:0] lqg_l_res_gw_13,
  input [5-1:0] lqg_l_shift_gw_0,
  input [5-1:0] lqg_l_shift_gw_1,
  input [5-1:0] lqg_l_shift_gw_2,
  input [5-1:0] lqg_l_shift_gw_3,
  input [5-1:0] lqg_l_shift_gw_4,
  input [5-1:0] lqg_l_shift_gw_5,
  input [5-1:0] lqg_l_shift_gw_6,
  input [5-1:0] lqg_l_shift_gw_7,
  input [5-1:0] lqg_l_shift_gw_8,
  input [5-1:0] lqg_l_shift_gw_9,
  input [5-1:0] lqg_l_shift_gw_10,
  input [5-1:0] lqg_l_shift_gw_11,
  input [5-1:0] lqg_l_shift_gw_12,
  input [5-1:0] lqg_l_shift_gw_13,
  input [18-1:0] uk_factor_gw_0,
  input [18-1:0] uk_factor_gw_1,
  input [14-1:0] uk_offset_gw_0,
  input [14-1:0] uk_offset_gw_1,
  input [18-1:0] yk_factor_gw_0,
  input [18-1:0] yk_factor_gw_1,
  input [14-1:0] yk_gw_0,
  input [14-1:0] yk_gw_1,
  input [14-1:0] yk_offset_gw_0,
  input [14-1:0] yk_offset_gw_1,
  input clk_1_x0,
  input ce_1,
  input clk_1,
  input ce_1_x0,
  output [8-1:0] axi_led_output,
  output [8-1:0] lqg_led_out,
  output [14-1:0] uk_gw_0,
  output [14-1:0] uk_gw_1,
  output [25-1:0] xkhat_gw_0,
  output [25-1:0] xkhat_gw_1,
  output [25-1:0] xkhat_gw_2,
  output [25-1:0] xkhat_gw_3,
  output [25-1:0] xkhat_gw_4,
  output [25-1:0] xkhat_gw_5,
  output [25-1:0] xkhat_gw_6
);
  wire [8-1:0] axi_led_mask_net;
  wire [8-1:0] led_mask_cdc_2_q_net;
  wire [1-1:0] axi_state_reset_net;
  wire [8-1:0] lqg_led_in_net;
  wire [8-1:0] logical_y_net;
  wire [18-1:0] lqg_f_res_gw_0_net;
  wire [18-1:0] lqg_f_res_gw_1_net;
  wire [18-1:0] lqg_f_res_gw_2_net;
  wire [18-1:0] lqg_f_res_gw_3_net;
  wire [18-1:0] lqg_f_res_gw_4_net;
  wire [18-1:0] lqg_f_res_gw_5_net;
  wire [18-1:0] lqg_f_res_gw_6_net;
  wire [18-1:0] lqg_f_res_gw_7_net;
  wire [18-1:0] lqg_f_res_gw_8_net;
  wire [18-1:0] lqg_f_res_gw_9_net;
  wire [18-1:0] lqg_f_res_gw_10_net;
  wire [18-1:0] lqg_f_res_gw_11_net;
  wire [18-1:0] lqg_f_res_gw_12_net;
  wire [18-1:0] lqg_f_res_gw_13_net;
  wire [18-1:0] lqg_f_res_gw_14_net;
  wire [18-1:0] lqg_f_res_gw_15_net;
  wire [18-1:0] lqg_f_res_gw_16_net;
  wire [18-1:0] lqg_f_res_gw_17_net;
  wire [18-1:0] lqg_f_res_gw_18_net;
  wire [18-1:0] lqg_f_res_gw_19_net;
  wire [18-1:0] lqg_f_res_gw_20_net;
  wire [18-1:0] lqg_f_res_gw_21_net;
  wire [18-1:0] lqg_f_res_gw_22_net;
  wire [18-1:0] lqg_f_res_gw_23_net;
  wire [18-1:0] lqg_f_res_gw_24_net;
  wire [18-1:0] lqg_f_res_gw_25_net;
  wire [18-1:0] lqg_f_res_gw_26_net;
  wire [18-1:0] lqg_f_res_gw_27_net;
  wire [18-1:0] lqg_f_res_gw_28_net;
  wire [18-1:0] lqg_f_res_gw_29_net;
  wire [18-1:0] lqg_f_res_gw_30_net;
  wire [18-1:0] lqg_f_res_gw_31_net;
  wire [18-1:0] lqg_f_res_gw_32_net;
  wire [18-1:0] lqg_f_res_gw_33_net;
  wire [18-1:0] lqg_f_res_gw_34_net;
  wire [18-1:0] lqg_f_res_gw_35_net;
  wire [18-1:0] lqg_f_res_gw_36_net;
  wire [18-1:0] lqg_f_res_gw_37_net;
  wire [18-1:0] lqg_f_res_gw_38_net;
  wire [18-1:0] lqg_f_res_gw_39_net;
  wire [18-1:0] lqg_f_res_gw_40_net;
  wire [18-1:0] lqg_f_res_gw_41_net;
  wire [18-1:0] lqg_f_res_gw_42_net;
  wire [18-1:0] lqg_f_res_gw_43_net;
  wire [18-1:0] lqg_f_res_gw_44_net;
  wire [18-1:0] lqg_f_res_gw_45_net;
  wire [18-1:0] lqg_f_res_gw_46_net;
  wire [18-1:0] lqg_f_res_gw_47_net;
  wire [18-1:0] lqg_f_res_gw_48_net;
  wire [5-1:0] lqg_f_shift_gw_0_net;
  wire [5-1:0] lqg_f_shift_gw_1_net;
  wire [5-1:0] lqg_f_shift_gw_2_net;
  wire [5-1:0] lqg_f_shift_gw_3_net;
  wire [5-1:0] lqg_f_shift_gw_4_net;
  wire [5-1:0] lqg_f_shift_gw_5_net;
  wire [5-1:0] lqg_f_shift_gw_6_net;
  wire [5-1:0] lqg_f_shift_gw_7_net;
  wire [5-1:0] lqg_f_shift_gw_8_net;
  wire [5-1:0] lqg_f_shift_gw_9_net;
  wire [5-1:0] lqg_f_shift_gw_10_net;
  wire [5-1:0] lqg_f_shift_gw_11_net;
  wire [5-1:0] lqg_f_shift_gw_12_net;
  wire [5-1:0] lqg_f_shift_gw_13_net;
  wire [5-1:0] lqg_f_shift_gw_14_net;
  wire [5-1:0] lqg_f_shift_gw_15_net;
  wire [5-1:0] lqg_f_shift_gw_16_net;
  wire [5-1:0] lqg_f_shift_gw_17_net;
  wire [5-1:0] lqg_f_shift_gw_18_net;
  wire [5-1:0] lqg_f_shift_gw_19_net;
  wire [5-1:0] lqg_f_shift_gw_20_net;
  wire [5-1:0] lqg_f_shift_gw_21_net;
  wire [5-1:0] lqg_f_shift_gw_22_net;
  wire [5-1:0] lqg_f_shift_gw_23_net;
  wire [5-1:0] lqg_f_shift_gw_24_net;
  wire [5-1:0] lqg_f_shift_gw_25_net;
  wire [5-1:0] lqg_f_shift_gw_26_net;
  wire [5-1:0] lqg_f_shift_gw_27_net;
  wire [5-1:0] lqg_f_shift_gw_28_net;
  wire [5-1:0] lqg_f_shift_gw_29_net;
  wire [5-1:0] lqg_f_shift_gw_30_net;
  wire [5-1:0] lqg_f_shift_gw_31_net;
  wire [5-1:0] lqg_f_shift_gw_32_net;
  wire [5-1:0] lqg_f_shift_gw_33_net;
  wire [5-1:0] lqg_f_shift_gw_34_net;
  wire [5-1:0] lqg_f_shift_gw_35_net;
  wire [5-1:0] lqg_f_shift_gw_36_net;
  wire [5-1:0] lqg_f_shift_gw_37_net;
  wire [5-1:0] lqg_f_shift_gw_38_net;
  wire [5-1:0] lqg_f_shift_gw_39_net;
  wire [5-1:0] lqg_f_shift_gw_40_net;
  wire [5-1:0] lqg_f_shift_gw_41_net;
  wire [5-1:0] lqg_f_shift_gw_42_net;
  wire [5-1:0] lqg_f_shift_gw_43_net;
  wire [5-1:0] lqg_f_shift_gw_44_net;
  wire [5-1:0] lqg_f_shift_gw_45_net;
  wire [5-1:0] lqg_f_shift_gw_46_net;
  wire [5-1:0] lqg_f_shift_gw_47_net;
  wire [5-1:0] lqg_f_shift_gw_48_net;
  wire [18-1:0] lqg_gamma_res_gw_0_net;
  wire [18-1:0] lqg_gamma_res_gw_1_net;
  wire [18-1:0] lqg_gamma_res_gw_2_net;
  wire [18-1:0] lqg_gamma_res_gw_3_net;
  wire [18-1:0] lqg_gamma_res_gw_4_net;
  wire [18-1:0] lqg_gamma_res_gw_5_net;
  wire [18-1:0] lqg_gamma_res_gw_6_net;
  wire [18-1:0] lqg_gamma_res_gw_7_net;
  wire [18-1:0] lqg_gamma_res_gw_8_net;
  wire [18-1:0] lqg_gamma_res_gw_9_net;
  wire [18-1:0] lqg_gamma_res_gw_10_net;
  wire [18-1:0] lqg_gamma_res_gw_11_net;
  wire [18-1:0] lqg_gamma_res_gw_12_net;
  wire [18-1:0] lqg_gamma_res_gw_13_net;
  wire [5-1:0] lqg_gamma_shift_gw_0_net;
  wire [5-1:0] lqg_gamma_shift_gw_1_net;
  wire [5-1:0] lqg_gamma_shift_gw_2_net;
  wire [5-1:0] lqg_gamma_shift_gw_3_net;
  wire [5-1:0] lqg_gamma_shift_gw_4_net;
  wire [5-1:0] lqg_gamma_shift_gw_5_net;
  wire [5-1:0] lqg_gamma_shift_gw_6_net;
  wire [5-1:0] lqg_gamma_shift_gw_7_net;
  wire [5-1:0] lqg_gamma_shift_gw_8_net;
  wire [5-1:0] lqg_gamma_shift_gw_9_net;
  wire [5-1:0] lqg_gamma_shift_gw_10_net;
  wire [5-1:0] lqg_gamma_shift_gw_11_net;
  wire [5-1:0] lqg_gamma_shift_gw_12_net;
  wire [5-1:0] lqg_gamma_shift_gw_13_net;
  wire [18-1:0] lqg_k_res_gw_0_net;
  wire [18-1:0] lqg_k_res_gw_1_net;
  wire [18-1:0] lqg_k_res_gw_2_net;
  wire [18-1:0] lqg_k_res_gw_3_net;
  wire [18-1:0] lqg_k_res_gw_4_net;
  wire [18-1:0] lqg_k_res_gw_5_net;
  wire [18-1:0] lqg_k_res_gw_6_net;
  wire [18-1:0] lqg_k_res_gw_7_net;
  wire [18-1:0] lqg_k_res_gw_8_net;
  wire [18-1:0] lqg_k_res_gw_9_net;
  wire [18-1:0] lqg_k_res_gw_10_net;
  wire [18-1:0] lqg_k_res_gw_11_net;
  wire [18-1:0] lqg_k_res_gw_12_net;
  wire [18-1:0] lqg_k_res_gw_13_net;
  wire [6-1:0] lqg_k_shift_gw_0_net;
  wire [6-1:0] lqg_k_shift_gw_1_net;
  wire [6-1:0] lqg_k_shift_gw_2_net;
  wire [6-1:0] lqg_k_shift_gw_3_net;
  wire [6-1:0] lqg_k_shift_gw_4_net;
  wire [6-1:0] lqg_k_shift_gw_5_net;
  wire [6-1:0] lqg_k_shift_gw_6_net;
  wire [6-1:0] lqg_k_shift_gw_7_net;
  wire [6-1:0] lqg_k_shift_gw_8_net;
  wire [6-1:0] lqg_k_shift_gw_9_net;
  wire [6-1:0] lqg_k_shift_gw_10_net;
  wire [6-1:0] lqg_k_shift_gw_11_net;
  wire [6-1:0] lqg_k_shift_gw_12_net;
  wire [6-1:0] lqg_k_shift_gw_13_net;
  wire [18-1:0] lqg_l_res_gw_0_net;
  wire [18-1:0] lqg_l_res_gw_1_net;
  wire [18-1:0] lqg_l_res_gw_2_net;
  wire [18-1:0] lqg_l_res_gw_3_net;
  wire [18-1:0] lqg_l_res_gw_4_net;
  wire [18-1:0] lqg_l_res_gw_5_net;
  wire [18-1:0] lqg_l_res_gw_6_net;
  wire [18-1:0] lqg_l_res_gw_7_net;
  wire [18-1:0] lqg_l_res_gw_8_net;
  wire [18-1:0] lqg_l_res_gw_9_net;
  wire [18-1:0] lqg_l_res_gw_10_net;
  wire [18-1:0] lqg_l_res_gw_11_net;
  wire [18-1:0] lqg_l_res_gw_12_net;
  wire [18-1:0] lqg_l_res_gw_13_net;
  wire [5-1:0] lqg_l_shift_gw_0_net;
  wire [5-1:0] lqg_l_shift_gw_1_net;
  wire [5-1:0] lqg_l_shift_gw_2_net;
  wire [5-1:0] lqg_l_shift_gw_3_net;
  wire [5-1:0] lqg_l_shift_gw_4_net;
  wire [5-1:0] lqg_l_shift_gw_5_net;
  wire [5-1:0] lqg_l_shift_gw_6_net;
  wire [5-1:0] lqg_l_shift_gw_7_net;
  wire [5-1:0] lqg_l_shift_gw_8_net;
  wire [5-1:0] lqg_l_shift_gw_9_net;
  wire [5-1:0] lqg_l_shift_gw_10_net;
  wire [5-1:0] lqg_l_shift_gw_11_net;
  wire [5-1:0] lqg_l_shift_gw_12_net;
  wire [5-1:0] lqg_l_shift_gw_13_net;
  wire [18-1:0] uk_factor_gw_0_net;
  wire [18-1:0] uk_factor_gw_1_net;
  wire [14-1:0] addsub0_s_net;
  wire [14-1:0] addsub1_s_net;
  wire [14-1:0] uk_offset_gw_0_net;
  wire [14-1:0] uk_offset_gw_1_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [18-1:0] yk_factor_gw_0_net;
  wire [18-1:0] yk_factor_gw_1_net;
  wire [14-1:0] yk_gw_0_net;
  wire [14-1:0] yk_gw_1_net;
  wire [14-1:0] yk_offset_gw_0_net;
  wire [14-1:0] yk_offset_gw_1_net;
  wire clk_net;
  wire ce_net;
  wire d_clk_net;
  wire q_ce_net;
  wire [8-1:0] led_mask_cdc_1_q_net;
  wire [1-1:0] state_reset_cdc_q_net;
  assign axi_led_mask_net = axi_led_mask;
  assign axi_led_output = led_mask_cdc_2_q_net;
  assign axi_state_reset_net = axi_state_reset;
  assign lqg_led_in_net = lqg_led_in;
  assign lqg_led_out = logical_y_net;
  assign lqg_f_res_gw_0_net = lqg_f_res_gw_0;
  assign lqg_f_res_gw_1_net = lqg_f_res_gw_1;
  assign lqg_f_res_gw_2_net = lqg_f_res_gw_2;
  assign lqg_f_res_gw_3_net = lqg_f_res_gw_3;
  assign lqg_f_res_gw_4_net = lqg_f_res_gw_4;
  assign lqg_f_res_gw_5_net = lqg_f_res_gw_5;
  assign lqg_f_res_gw_6_net = lqg_f_res_gw_6;
  assign lqg_f_res_gw_7_net = lqg_f_res_gw_7;
  assign lqg_f_res_gw_8_net = lqg_f_res_gw_8;
  assign lqg_f_res_gw_9_net = lqg_f_res_gw_9;
  assign lqg_f_res_gw_10_net = lqg_f_res_gw_10;
  assign lqg_f_res_gw_11_net = lqg_f_res_gw_11;
  assign lqg_f_res_gw_12_net = lqg_f_res_gw_12;
  assign lqg_f_res_gw_13_net = lqg_f_res_gw_13;
  assign lqg_f_res_gw_14_net = lqg_f_res_gw_14;
  assign lqg_f_res_gw_15_net = lqg_f_res_gw_15;
  assign lqg_f_res_gw_16_net = lqg_f_res_gw_16;
  assign lqg_f_res_gw_17_net = lqg_f_res_gw_17;
  assign lqg_f_res_gw_18_net = lqg_f_res_gw_18;
  assign lqg_f_res_gw_19_net = lqg_f_res_gw_19;
  assign lqg_f_res_gw_20_net = lqg_f_res_gw_20;
  assign lqg_f_res_gw_21_net = lqg_f_res_gw_21;
  assign lqg_f_res_gw_22_net = lqg_f_res_gw_22;
  assign lqg_f_res_gw_23_net = lqg_f_res_gw_23;
  assign lqg_f_res_gw_24_net = lqg_f_res_gw_24;
  assign lqg_f_res_gw_25_net = lqg_f_res_gw_25;
  assign lqg_f_res_gw_26_net = lqg_f_res_gw_26;
  assign lqg_f_res_gw_27_net = lqg_f_res_gw_27;
  assign lqg_f_res_gw_28_net = lqg_f_res_gw_28;
  assign lqg_f_res_gw_29_net = lqg_f_res_gw_29;
  assign lqg_f_res_gw_30_net = lqg_f_res_gw_30;
  assign lqg_f_res_gw_31_net = lqg_f_res_gw_31;
  assign lqg_f_res_gw_32_net = lqg_f_res_gw_32;
  assign lqg_f_res_gw_33_net = lqg_f_res_gw_33;
  assign lqg_f_res_gw_34_net = lqg_f_res_gw_34;
  assign lqg_f_res_gw_35_net = lqg_f_res_gw_35;
  assign lqg_f_res_gw_36_net = lqg_f_res_gw_36;
  assign lqg_f_res_gw_37_net = lqg_f_res_gw_37;
  assign lqg_f_res_gw_38_net = lqg_f_res_gw_38;
  assign lqg_f_res_gw_39_net = lqg_f_res_gw_39;
  assign lqg_f_res_gw_40_net = lqg_f_res_gw_40;
  assign lqg_f_res_gw_41_net = lqg_f_res_gw_41;
  assign lqg_f_res_gw_42_net = lqg_f_res_gw_42;
  assign lqg_f_res_gw_43_net = lqg_f_res_gw_43;
  assign lqg_f_res_gw_44_net = lqg_f_res_gw_44;
  assign lqg_f_res_gw_45_net = lqg_f_res_gw_45;
  assign lqg_f_res_gw_46_net = lqg_f_res_gw_46;
  assign lqg_f_res_gw_47_net = lqg_f_res_gw_47;
  assign lqg_f_res_gw_48_net = lqg_f_res_gw_48;
  assign lqg_f_shift_gw_0_net = lqg_f_shift_gw_0;
  assign lqg_f_shift_gw_1_net = lqg_f_shift_gw_1;
  assign lqg_f_shift_gw_2_net = lqg_f_shift_gw_2;
  assign lqg_f_shift_gw_3_net = lqg_f_shift_gw_3;
  assign lqg_f_shift_gw_4_net = lqg_f_shift_gw_4;
  assign lqg_f_shift_gw_5_net = lqg_f_shift_gw_5;
  assign lqg_f_shift_gw_6_net = lqg_f_shift_gw_6;
  assign lqg_f_shift_gw_7_net = lqg_f_shift_gw_7;
  assign lqg_f_shift_gw_8_net = lqg_f_shift_gw_8;
  assign lqg_f_shift_gw_9_net = lqg_f_shift_gw_9;
  assign lqg_f_shift_gw_10_net = lqg_f_shift_gw_10;
  assign lqg_f_shift_gw_11_net = lqg_f_shift_gw_11;
  assign lqg_f_shift_gw_12_net = lqg_f_shift_gw_12;
  assign lqg_f_shift_gw_13_net = lqg_f_shift_gw_13;
  assign lqg_f_shift_gw_14_net = lqg_f_shift_gw_14;
  assign lqg_f_shift_gw_15_net = lqg_f_shift_gw_15;
  assign lqg_f_shift_gw_16_net = lqg_f_shift_gw_16;
  assign lqg_f_shift_gw_17_net = lqg_f_shift_gw_17;
  assign lqg_f_shift_gw_18_net = lqg_f_shift_gw_18;
  assign lqg_f_shift_gw_19_net = lqg_f_shift_gw_19;
  assign lqg_f_shift_gw_20_net = lqg_f_shift_gw_20;
  assign lqg_f_shift_gw_21_net = lqg_f_shift_gw_21;
  assign lqg_f_shift_gw_22_net = lqg_f_shift_gw_22;
  assign lqg_f_shift_gw_23_net = lqg_f_shift_gw_23;
  assign lqg_f_shift_gw_24_net = lqg_f_shift_gw_24;
  assign lqg_f_shift_gw_25_net = lqg_f_shift_gw_25;
  assign lqg_f_shift_gw_26_net = lqg_f_shift_gw_26;
  assign lqg_f_shift_gw_27_net = lqg_f_shift_gw_27;
  assign lqg_f_shift_gw_28_net = lqg_f_shift_gw_28;
  assign lqg_f_shift_gw_29_net = lqg_f_shift_gw_29;
  assign lqg_f_shift_gw_30_net = lqg_f_shift_gw_30;
  assign lqg_f_shift_gw_31_net = lqg_f_shift_gw_31;
  assign lqg_f_shift_gw_32_net = lqg_f_shift_gw_32;
  assign lqg_f_shift_gw_33_net = lqg_f_shift_gw_33;
  assign lqg_f_shift_gw_34_net = lqg_f_shift_gw_34;
  assign lqg_f_shift_gw_35_net = lqg_f_shift_gw_35;
  assign lqg_f_shift_gw_36_net = lqg_f_shift_gw_36;
  assign lqg_f_shift_gw_37_net = lqg_f_shift_gw_37;
  assign lqg_f_shift_gw_38_net = lqg_f_shift_gw_38;
  assign lqg_f_shift_gw_39_net = lqg_f_shift_gw_39;
  assign lqg_f_shift_gw_40_net = lqg_f_shift_gw_40;
  assign lqg_f_shift_gw_41_net = lqg_f_shift_gw_41;
  assign lqg_f_shift_gw_42_net = lqg_f_shift_gw_42;
  assign lqg_f_shift_gw_43_net = lqg_f_shift_gw_43;
  assign lqg_f_shift_gw_44_net = lqg_f_shift_gw_44;
  assign lqg_f_shift_gw_45_net = lqg_f_shift_gw_45;
  assign lqg_f_shift_gw_46_net = lqg_f_shift_gw_46;
  assign lqg_f_shift_gw_47_net = lqg_f_shift_gw_47;
  assign lqg_f_shift_gw_48_net = lqg_f_shift_gw_48;
  assign lqg_gamma_res_gw_0_net = lqg_gamma_res_gw_0;
  assign lqg_gamma_res_gw_1_net = lqg_gamma_res_gw_1;
  assign lqg_gamma_res_gw_2_net = lqg_gamma_res_gw_2;
  assign lqg_gamma_res_gw_3_net = lqg_gamma_res_gw_3;
  assign lqg_gamma_res_gw_4_net = lqg_gamma_res_gw_4;
  assign lqg_gamma_res_gw_5_net = lqg_gamma_res_gw_5;
  assign lqg_gamma_res_gw_6_net = lqg_gamma_res_gw_6;
  assign lqg_gamma_res_gw_7_net = lqg_gamma_res_gw_7;
  assign lqg_gamma_res_gw_8_net = lqg_gamma_res_gw_8;
  assign lqg_gamma_res_gw_9_net = lqg_gamma_res_gw_9;
  assign lqg_gamma_res_gw_10_net = lqg_gamma_res_gw_10;
  assign lqg_gamma_res_gw_11_net = lqg_gamma_res_gw_11;
  assign lqg_gamma_res_gw_12_net = lqg_gamma_res_gw_12;
  assign lqg_gamma_res_gw_13_net = lqg_gamma_res_gw_13;
  assign lqg_gamma_shift_gw_0_net = lqg_gamma_shift_gw_0;
  assign lqg_gamma_shift_gw_1_net = lqg_gamma_shift_gw_1;
  assign lqg_gamma_shift_gw_2_net = lqg_gamma_shift_gw_2;
  assign lqg_gamma_shift_gw_3_net = lqg_gamma_shift_gw_3;
  assign lqg_gamma_shift_gw_4_net = lqg_gamma_shift_gw_4;
  assign lqg_gamma_shift_gw_5_net = lqg_gamma_shift_gw_5;
  assign lqg_gamma_shift_gw_6_net = lqg_gamma_shift_gw_6;
  assign lqg_gamma_shift_gw_7_net = lqg_gamma_shift_gw_7;
  assign lqg_gamma_shift_gw_8_net = lqg_gamma_shift_gw_8;
  assign lqg_gamma_shift_gw_9_net = lqg_gamma_shift_gw_9;
  assign lqg_gamma_shift_gw_10_net = lqg_gamma_shift_gw_10;
  assign lqg_gamma_shift_gw_11_net = lqg_gamma_shift_gw_11;
  assign lqg_gamma_shift_gw_12_net = lqg_gamma_shift_gw_12;
  assign lqg_gamma_shift_gw_13_net = lqg_gamma_shift_gw_13;
  assign lqg_k_res_gw_0_net = lqg_k_res_gw_0;
  assign lqg_k_res_gw_1_net = lqg_k_res_gw_1;
  assign lqg_k_res_gw_2_net = lqg_k_res_gw_2;
  assign lqg_k_res_gw_3_net = lqg_k_res_gw_3;
  assign lqg_k_res_gw_4_net = lqg_k_res_gw_4;
  assign lqg_k_res_gw_5_net = lqg_k_res_gw_5;
  assign lqg_k_res_gw_6_net = lqg_k_res_gw_6;
  assign lqg_k_res_gw_7_net = lqg_k_res_gw_7;
  assign lqg_k_res_gw_8_net = lqg_k_res_gw_8;
  assign lqg_k_res_gw_9_net = lqg_k_res_gw_9;
  assign lqg_k_res_gw_10_net = lqg_k_res_gw_10;
  assign lqg_k_res_gw_11_net = lqg_k_res_gw_11;
  assign lqg_k_res_gw_12_net = lqg_k_res_gw_12;
  assign lqg_k_res_gw_13_net = lqg_k_res_gw_13;
  assign lqg_k_shift_gw_0_net = lqg_k_shift_gw_0;
  assign lqg_k_shift_gw_1_net = lqg_k_shift_gw_1;
  assign lqg_k_shift_gw_2_net = lqg_k_shift_gw_2;
  assign lqg_k_shift_gw_3_net = lqg_k_shift_gw_3;
  assign lqg_k_shift_gw_4_net = lqg_k_shift_gw_4;
  assign lqg_k_shift_gw_5_net = lqg_k_shift_gw_5;
  assign lqg_k_shift_gw_6_net = lqg_k_shift_gw_6;
  assign lqg_k_shift_gw_7_net = lqg_k_shift_gw_7;
  assign lqg_k_shift_gw_8_net = lqg_k_shift_gw_8;
  assign lqg_k_shift_gw_9_net = lqg_k_shift_gw_9;
  assign lqg_k_shift_gw_10_net = lqg_k_shift_gw_10;
  assign lqg_k_shift_gw_11_net = lqg_k_shift_gw_11;
  assign lqg_k_shift_gw_12_net = lqg_k_shift_gw_12;
  assign lqg_k_shift_gw_13_net = lqg_k_shift_gw_13;
  assign lqg_l_res_gw_0_net = lqg_l_res_gw_0;
  assign lqg_l_res_gw_1_net = lqg_l_res_gw_1;
  assign lqg_l_res_gw_2_net = lqg_l_res_gw_2;
  assign lqg_l_res_gw_3_net = lqg_l_res_gw_3;
  assign lqg_l_res_gw_4_net = lqg_l_res_gw_4;
  assign lqg_l_res_gw_5_net = lqg_l_res_gw_5;
  assign lqg_l_res_gw_6_net = lqg_l_res_gw_6;
  assign lqg_l_res_gw_7_net = lqg_l_res_gw_7;
  assign lqg_l_res_gw_8_net = lqg_l_res_gw_8;
  assign lqg_l_res_gw_9_net = lqg_l_res_gw_9;
  assign lqg_l_res_gw_10_net = lqg_l_res_gw_10;
  assign lqg_l_res_gw_11_net = lqg_l_res_gw_11;
  assign lqg_l_res_gw_12_net = lqg_l_res_gw_12;
  assign lqg_l_res_gw_13_net = lqg_l_res_gw_13;
  assign lqg_l_shift_gw_0_net = lqg_l_shift_gw_0;
  assign lqg_l_shift_gw_1_net = lqg_l_shift_gw_1;
  assign lqg_l_shift_gw_2_net = lqg_l_shift_gw_2;
  assign lqg_l_shift_gw_3_net = lqg_l_shift_gw_3;
  assign lqg_l_shift_gw_4_net = lqg_l_shift_gw_4;
  assign lqg_l_shift_gw_5_net = lqg_l_shift_gw_5;
  assign lqg_l_shift_gw_6_net = lqg_l_shift_gw_6;
  assign lqg_l_shift_gw_7_net = lqg_l_shift_gw_7;
  assign lqg_l_shift_gw_8_net = lqg_l_shift_gw_8;
  assign lqg_l_shift_gw_9_net = lqg_l_shift_gw_9;
  assign lqg_l_shift_gw_10_net = lqg_l_shift_gw_10;
  assign lqg_l_shift_gw_11_net = lqg_l_shift_gw_11;
  assign lqg_l_shift_gw_12_net = lqg_l_shift_gw_12;
  assign lqg_l_shift_gw_13_net = lqg_l_shift_gw_13;
  assign uk_factor_gw_0_net = uk_factor_gw_0;
  assign uk_factor_gw_1_net = uk_factor_gw_1;
  assign uk_gw_0 = addsub0_s_net;
  assign uk_gw_1 = addsub1_s_net;
  assign uk_offset_gw_0_net = uk_offset_gw_0;
  assign uk_offset_gw_1_net = uk_offset_gw_1;
  assign xkhat_gw_0 = reinterpret0_output_port_net;
  assign xkhat_gw_1 = reinterpret1_output_port_net;
  assign xkhat_gw_2 = reinterpret2_output_port_net;
  assign xkhat_gw_3 = reinterpret3_output_port_net;
  assign xkhat_gw_4 = reinterpret4_output_port_net;
  assign xkhat_gw_5 = reinterpret5_output_port_net;
  assign xkhat_gw_6 = reinterpret6_output_port_net;
  assign yk_factor_gw_0_net = yk_factor_gw_0;
  assign yk_factor_gw_1_net = yk_factor_gw_1;
  assign yk_gw_0_net = yk_gw_0;
  assign yk_gw_1_net = yk_gw_1;
  assign yk_offset_gw_0_net = yk_offset_gw_0;
  assign yk_offset_gw_1_net = yk_offset_gw_1;
  assign clk_net = clk_1_x0;
  assign ce_net = ce_1;
  assign d_clk_net = clk_1;
  assign q_ce_net = ce_1_x0;
  fpga_lqg_axi_axi_sys axi_sys (
    .led_out_value(led_mask_cdc_2_q_net),
    .axi_led_mask(axi_led_mask_net),
    .axi_state_reset(axi_state_reset_net)
  );
  fpga_lqg_axi_proc_sys proc_sys (
    .led_mask(led_mask_cdc_1_q_net),
    .state_reset(state_reset_cdc_q_net),
    .lqg_led_in(lqg_led_in_net),
    .lqg_f_res_gw_0(lqg_f_res_gw_0_net),
    .lqg_f_res_gw_1(lqg_f_res_gw_1_net),
    .lqg_f_res_gw_2(lqg_f_res_gw_2_net),
    .lqg_f_res_gw_3(lqg_f_res_gw_3_net),
    .lqg_f_res_gw_4(lqg_f_res_gw_4_net),
    .lqg_f_res_gw_5(lqg_f_res_gw_5_net),
    .lqg_f_res_gw_6(lqg_f_res_gw_6_net),
    .lqg_f_res_gw_7(lqg_f_res_gw_7_net),
    .lqg_f_res_gw_8(lqg_f_res_gw_8_net),
    .lqg_f_res_gw_9(lqg_f_res_gw_9_net),
    .lqg_f_res_gw_10(lqg_f_res_gw_10_net),
    .lqg_f_res_gw_11(lqg_f_res_gw_11_net),
    .lqg_f_res_gw_12(lqg_f_res_gw_12_net),
    .lqg_f_res_gw_13(lqg_f_res_gw_13_net),
    .lqg_f_res_gw_14(lqg_f_res_gw_14_net),
    .lqg_f_res_gw_15(lqg_f_res_gw_15_net),
    .lqg_f_res_gw_16(lqg_f_res_gw_16_net),
    .lqg_f_res_gw_17(lqg_f_res_gw_17_net),
    .lqg_f_res_gw_18(lqg_f_res_gw_18_net),
    .lqg_f_res_gw_19(lqg_f_res_gw_19_net),
    .lqg_f_res_gw_20(lqg_f_res_gw_20_net),
    .lqg_f_res_gw_21(lqg_f_res_gw_21_net),
    .lqg_f_res_gw_22(lqg_f_res_gw_22_net),
    .lqg_f_res_gw_23(lqg_f_res_gw_23_net),
    .lqg_f_res_gw_24(lqg_f_res_gw_24_net),
    .lqg_f_res_gw_25(lqg_f_res_gw_25_net),
    .lqg_f_res_gw_26(lqg_f_res_gw_26_net),
    .lqg_f_res_gw_27(lqg_f_res_gw_27_net),
    .lqg_f_res_gw_28(lqg_f_res_gw_28_net),
    .lqg_f_res_gw_29(lqg_f_res_gw_29_net),
    .lqg_f_res_gw_30(lqg_f_res_gw_30_net),
    .lqg_f_res_gw_31(lqg_f_res_gw_31_net),
    .lqg_f_res_gw_32(lqg_f_res_gw_32_net),
    .lqg_f_res_gw_33(lqg_f_res_gw_33_net),
    .lqg_f_res_gw_34(lqg_f_res_gw_34_net),
    .lqg_f_res_gw_35(lqg_f_res_gw_35_net),
    .lqg_f_res_gw_36(lqg_f_res_gw_36_net),
    .lqg_f_res_gw_37(lqg_f_res_gw_37_net),
    .lqg_f_res_gw_38(lqg_f_res_gw_38_net),
    .lqg_f_res_gw_39(lqg_f_res_gw_39_net),
    .lqg_f_res_gw_40(lqg_f_res_gw_40_net),
    .lqg_f_res_gw_41(lqg_f_res_gw_41_net),
    .lqg_f_res_gw_42(lqg_f_res_gw_42_net),
    .lqg_f_res_gw_43(lqg_f_res_gw_43_net),
    .lqg_f_res_gw_44(lqg_f_res_gw_44_net),
    .lqg_f_res_gw_45(lqg_f_res_gw_45_net),
    .lqg_f_res_gw_46(lqg_f_res_gw_46_net),
    .lqg_f_res_gw_47(lqg_f_res_gw_47_net),
    .lqg_f_res_gw_48(lqg_f_res_gw_48_net),
    .lqg_f_shift_gw_0(lqg_f_shift_gw_0_net),
    .lqg_f_shift_gw_1(lqg_f_shift_gw_1_net),
    .lqg_f_shift_gw_2(lqg_f_shift_gw_2_net),
    .lqg_f_shift_gw_3(lqg_f_shift_gw_3_net),
    .lqg_f_shift_gw_4(lqg_f_shift_gw_4_net),
    .lqg_f_shift_gw_5(lqg_f_shift_gw_5_net),
    .lqg_f_shift_gw_6(lqg_f_shift_gw_6_net),
    .lqg_f_shift_gw_7(lqg_f_shift_gw_7_net),
    .lqg_f_shift_gw_8(lqg_f_shift_gw_8_net),
    .lqg_f_shift_gw_9(lqg_f_shift_gw_9_net),
    .lqg_f_shift_gw_10(lqg_f_shift_gw_10_net),
    .lqg_f_shift_gw_11(lqg_f_shift_gw_11_net),
    .lqg_f_shift_gw_12(lqg_f_shift_gw_12_net),
    .lqg_f_shift_gw_13(lqg_f_shift_gw_13_net),
    .lqg_f_shift_gw_14(lqg_f_shift_gw_14_net),
    .lqg_f_shift_gw_15(lqg_f_shift_gw_15_net),
    .lqg_f_shift_gw_16(lqg_f_shift_gw_16_net),
    .lqg_f_shift_gw_17(lqg_f_shift_gw_17_net),
    .lqg_f_shift_gw_18(lqg_f_shift_gw_18_net),
    .lqg_f_shift_gw_19(lqg_f_shift_gw_19_net),
    .lqg_f_shift_gw_20(lqg_f_shift_gw_20_net),
    .lqg_f_shift_gw_21(lqg_f_shift_gw_21_net),
    .lqg_f_shift_gw_22(lqg_f_shift_gw_22_net),
    .lqg_f_shift_gw_23(lqg_f_shift_gw_23_net),
    .lqg_f_shift_gw_24(lqg_f_shift_gw_24_net),
    .lqg_f_shift_gw_25(lqg_f_shift_gw_25_net),
    .lqg_f_shift_gw_26(lqg_f_shift_gw_26_net),
    .lqg_f_shift_gw_27(lqg_f_shift_gw_27_net),
    .lqg_f_shift_gw_28(lqg_f_shift_gw_28_net),
    .lqg_f_shift_gw_29(lqg_f_shift_gw_29_net),
    .lqg_f_shift_gw_30(lqg_f_shift_gw_30_net),
    .lqg_f_shift_gw_31(lqg_f_shift_gw_31_net),
    .lqg_f_shift_gw_32(lqg_f_shift_gw_32_net),
    .lqg_f_shift_gw_33(lqg_f_shift_gw_33_net),
    .lqg_f_shift_gw_34(lqg_f_shift_gw_34_net),
    .lqg_f_shift_gw_35(lqg_f_shift_gw_35_net),
    .lqg_f_shift_gw_36(lqg_f_shift_gw_36_net),
    .lqg_f_shift_gw_37(lqg_f_shift_gw_37_net),
    .lqg_f_shift_gw_38(lqg_f_shift_gw_38_net),
    .lqg_f_shift_gw_39(lqg_f_shift_gw_39_net),
    .lqg_f_shift_gw_40(lqg_f_shift_gw_40_net),
    .lqg_f_shift_gw_41(lqg_f_shift_gw_41_net),
    .lqg_f_shift_gw_42(lqg_f_shift_gw_42_net),
    .lqg_f_shift_gw_43(lqg_f_shift_gw_43_net),
    .lqg_f_shift_gw_44(lqg_f_shift_gw_44_net),
    .lqg_f_shift_gw_45(lqg_f_shift_gw_45_net),
    .lqg_f_shift_gw_46(lqg_f_shift_gw_46_net),
    .lqg_f_shift_gw_47(lqg_f_shift_gw_47_net),
    .lqg_f_shift_gw_48(lqg_f_shift_gw_48_net),
    .lqg_gamma_res_gw_0(lqg_gamma_res_gw_0_net),
    .lqg_gamma_res_gw_1(lqg_gamma_res_gw_1_net),
    .lqg_gamma_res_gw_2(lqg_gamma_res_gw_2_net),
    .lqg_gamma_res_gw_3(lqg_gamma_res_gw_3_net),
    .lqg_gamma_res_gw_4(lqg_gamma_res_gw_4_net),
    .lqg_gamma_res_gw_5(lqg_gamma_res_gw_5_net),
    .lqg_gamma_res_gw_6(lqg_gamma_res_gw_6_net),
    .lqg_gamma_res_gw_7(lqg_gamma_res_gw_7_net),
    .lqg_gamma_res_gw_8(lqg_gamma_res_gw_8_net),
    .lqg_gamma_res_gw_9(lqg_gamma_res_gw_9_net),
    .lqg_gamma_res_gw_10(lqg_gamma_res_gw_10_net),
    .lqg_gamma_res_gw_11(lqg_gamma_res_gw_11_net),
    .lqg_gamma_res_gw_12(lqg_gamma_res_gw_12_net),
    .lqg_gamma_res_gw_13(lqg_gamma_res_gw_13_net),
    .lqg_gamma_shift_gw_0(lqg_gamma_shift_gw_0_net),
    .lqg_gamma_shift_gw_1(lqg_gamma_shift_gw_1_net),
    .lqg_gamma_shift_gw_2(lqg_gamma_shift_gw_2_net),
    .lqg_gamma_shift_gw_3(lqg_gamma_shift_gw_3_net),
    .lqg_gamma_shift_gw_4(lqg_gamma_shift_gw_4_net),
    .lqg_gamma_shift_gw_5(lqg_gamma_shift_gw_5_net),
    .lqg_gamma_shift_gw_6(lqg_gamma_shift_gw_6_net),
    .lqg_gamma_shift_gw_7(lqg_gamma_shift_gw_7_net),
    .lqg_gamma_shift_gw_8(lqg_gamma_shift_gw_8_net),
    .lqg_gamma_shift_gw_9(lqg_gamma_shift_gw_9_net),
    .lqg_gamma_shift_gw_10(lqg_gamma_shift_gw_10_net),
    .lqg_gamma_shift_gw_11(lqg_gamma_shift_gw_11_net),
    .lqg_gamma_shift_gw_12(lqg_gamma_shift_gw_12_net),
    .lqg_gamma_shift_gw_13(lqg_gamma_shift_gw_13_net),
    .lqg_k_res_gw_0(lqg_k_res_gw_0_net),
    .lqg_k_res_gw_1(lqg_k_res_gw_1_net),
    .lqg_k_res_gw_2(lqg_k_res_gw_2_net),
    .lqg_k_res_gw_3(lqg_k_res_gw_3_net),
    .lqg_k_res_gw_4(lqg_k_res_gw_4_net),
    .lqg_k_res_gw_5(lqg_k_res_gw_5_net),
    .lqg_k_res_gw_6(lqg_k_res_gw_6_net),
    .lqg_k_res_gw_7(lqg_k_res_gw_7_net),
    .lqg_k_res_gw_8(lqg_k_res_gw_8_net),
    .lqg_k_res_gw_9(lqg_k_res_gw_9_net),
    .lqg_k_res_gw_10(lqg_k_res_gw_10_net),
    .lqg_k_res_gw_11(lqg_k_res_gw_11_net),
    .lqg_k_res_gw_12(lqg_k_res_gw_12_net),
    .lqg_k_res_gw_13(lqg_k_res_gw_13_net),
    .lqg_k_shift_gw_0(lqg_k_shift_gw_0_net),
    .lqg_k_shift_gw_1(lqg_k_shift_gw_1_net),
    .lqg_k_shift_gw_2(lqg_k_shift_gw_2_net),
    .lqg_k_shift_gw_3(lqg_k_shift_gw_3_net),
    .lqg_k_shift_gw_4(lqg_k_shift_gw_4_net),
    .lqg_k_shift_gw_5(lqg_k_shift_gw_5_net),
    .lqg_k_shift_gw_6(lqg_k_shift_gw_6_net),
    .lqg_k_shift_gw_7(lqg_k_shift_gw_7_net),
    .lqg_k_shift_gw_8(lqg_k_shift_gw_8_net),
    .lqg_k_shift_gw_9(lqg_k_shift_gw_9_net),
    .lqg_k_shift_gw_10(lqg_k_shift_gw_10_net),
    .lqg_k_shift_gw_11(lqg_k_shift_gw_11_net),
    .lqg_k_shift_gw_12(lqg_k_shift_gw_12_net),
    .lqg_k_shift_gw_13(lqg_k_shift_gw_13_net),
    .lqg_l_res_gw_0(lqg_l_res_gw_0_net),
    .lqg_l_res_gw_1(lqg_l_res_gw_1_net),
    .lqg_l_res_gw_2(lqg_l_res_gw_2_net),
    .lqg_l_res_gw_3(lqg_l_res_gw_3_net),
    .lqg_l_res_gw_4(lqg_l_res_gw_4_net),
    .lqg_l_res_gw_5(lqg_l_res_gw_5_net),
    .lqg_l_res_gw_6(lqg_l_res_gw_6_net),
    .lqg_l_res_gw_7(lqg_l_res_gw_7_net),
    .lqg_l_res_gw_8(lqg_l_res_gw_8_net),
    .lqg_l_res_gw_9(lqg_l_res_gw_9_net),
    .lqg_l_res_gw_10(lqg_l_res_gw_10_net),
    .lqg_l_res_gw_11(lqg_l_res_gw_11_net),
    .lqg_l_res_gw_12(lqg_l_res_gw_12_net),
    .lqg_l_res_gw_13(lqg_l_res_gw_13_net),
    .lqg_l_shift_gw_0(lqg_l_shift_gw_0_net),
    .lqg_l_shift_gw_1(lqg_l_shift_gw_1_net),
    .lqg_l_shift_gw_2(lqg_l_shift_gw_2_net),
    .lqg_l_shift_gw_3(lqg_l_shift_gw_3_net),
    .lqg_l_shift_gw_4(lqg_l_shift_gw_4_net),
    .lqg_l_shift_gw_5(lqg_l_shift_gw_5_net),
    .lqg_l_shift_gw_6(lqg_l_shift_gw_6_net),
    .lqg_l_shift_gw_7(lqg_l_shift_gw_7_net),
    .lqg_l_shift_gw_8(lqg_l_shift_gw_8_net),
    .lqg_l_shift_gw_9(lqg_l_shift_gw_9_net),
    .lqg_l_shift_gw_10(lqg_l_shift_gw_10_net),
    .lqg_l_shift_gw_11(lqg_l_shift_gw_11_net),
    .lqg_l_shift_gw_12(lqg_l_shift_gw_12_net),
    .lqg_l_shift_gw_13(lqg_l_shift_gw_13_net),
    .uk_factor_gw_0(uk_factor_gw_0_net),
    .uk_factor_gw_1(uk_factor_gw_1_net),
    .uk_offset_gw_0(uk_offset_gw_0_net),
    .uk_offset_gw_1(uk_offset_gw_1_net),
    .yk_factor_gw_0(yk_factor_gw_0_net),
    .yk_factor_gw_1(yk_factor_gw_1_net),
    .yk_gw_0(yk_gw_0_net),
    .yk_gw_1(yk_gw_1_net),
    .yk_offset_gw_0(yk_offset_gw_0_net),
    .yk_offset_gw_1(yk_offset_gw_1_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .led_output(logical_y_net),
    .lqg_led_out(logical_y_net),
    .uk_gw_0(addsub0_s_net),
    .uk_gw_1(addsub1_s_net),
    .xkhat_gw_0(reinterpret0_output_port_net),
    .xkhat_gw_1(reinterpret1_output_port_net),
    .xkhat_gw_2(reinterpret2_output_port_net),
    .xkhat_gw_3(reinterpret3_output_port_net),
    .xkhat_gw_4(reinterpret4_output_port_net),
    .xkhat_gw_5(reinterpret5_output_port_net),
    .xkhat_gw_6(reinterpret6_output_port_net)
  );
  fpga_lqg_axi_xlAsynRegister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  led_mask_cdc_1 (
    .en(1'b1),
    .rst(1'b0),
    .d(axi_led_mask_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net),
    .q(led_mask_cdc_1_q_net)
  );
  fpga_lqg_axi_xlAsynRegister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  led_mask_cdc_2 (
    .en(1'b1),
    .rst(1'b0),
    .d(logical_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(d_clk_net),
    .d_ce(q_ce_net),
    .q(led_mask_cdc_2_q_net)
  );
  fpga_lqg_axi_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  state_reset_cdc (
    .en(1'b1),
    .rst(1'b0),
    .d(axi_state_reset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net),
    .q(state_reset_cdc_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fpga_lqg_axi_default_clock_driver (
  input proc_sys_sysclk,
  input proc_sys_sysce,
  input proc_sys_sysclr,
  input axi_sys_sysclk,
  input axi_sys_sysce,
  input axi_sys_sysclr,
  output proc_sys_clk1,
  output proc_sys_ce1,
  output axi_sys_clk1,
  output axi_sys_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x0 (
    .sysclk(proc_sys_sysclk),
    .sysce(proc_sys_sysce),
    .sysclr(proc_sys_sysclr),
    .clk(proc_sys_clk1),
    .ce(proc_sys_ce1)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(axi_sys_sysclk),
    .sysce(axi_sys_sysce),
    .sysclr(axi_sys_sysclr),
    .clk(axi_sys_clk1),
    .ce(axi_sys_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "fpga_lqg_axi,sysgen_core_2024_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-2,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0004,addsub=18,blackbox2=4,concat=11,convert=35,delay=1,logical=1,mult=4,register=3,reinterpret=310,slice=30,}" *)
module fpga_lqg_axi (
  input [8-1:0] lqg_led_in,
  input [18-1:0] lqg_f_res_gw_0,
  input [18-1:0] lqg_f_res_gw_1,
  input [18-1:0] lqg_f_res_gw_2,
  input [18-1:0] lqg_f_res_gw_3,
  input [18-1:0] lqg_f_res_gw_4,
  input [18-1:0] lqg_f_res_gw_5,
  input [18-1:0] lqg_f_res_gw_6,
  input [18-1:0] lqg_f_res_gw_7,
  input [18-1:0] lqg_f_res_gw_8,
  input [18-1:0] lqg_f_res_gw_9,
  input [18-1:0] lqg_f_res_gw_10,
  input [18-1:0] lqg_f_res_gw_11,
  input [18-1:0] lqg_f_res_gw_12,
  input [18-1:0] lqg_f_res_gw_13,
  input [18-1:0] lqg_f_res_gw_14,
  input [18-1:0] lqg_f_res_gw_15,
  input [18-1:0] lqg_f_res_gw_16,
  input [18-1:0] lqg_f_res_gw_17,
  input [18-1:0] lqg_f_res_gw_18,
  input [18-1:0] lqg_f_res_gw_19,
  input [18-1:0] lqg_f_res_gw_20,
  input [18-1:0] lqg_f_res_gw_21,
  input [18-1:0] lqg_f_res_gw_22,
  input [18-1:0] lqg_f_res_gw_23,
  input [18-1:0] lqg_f_res_gw_24,
  input [18-1:0] lqg_f_res_gw_25,
  input [18-1:0] lqg_f_res_gw_26,
  input [18-1:0] lqg_f_res_gw_27,
  input [18-1:0] lqg_f_res_gw_28,
  input [18-1:0] lqg_f_res_gw_29,
  input [18-1:0] lqg_f_res_gw_30,
  input [18-1:0] lqg_f_res_gw_31,
  input [18-1:0] lqg_f_res_gw_32,
  input [18-1:0] lqg_f_res_gw_33,
  input [18-1:0] lqg_f_res_gw_34,
  input [18-1:0] lqg_f_res_gw_35,
  input [18-1:0] lqg_f_res_gw_36,
  input [18-1:0] lqg_f_res_gw_37,
  input [18-1:0] lqg_f_res_gw_38,
  input [18-1:0] lqg_f_res_gw_39,
  input [18-1:0] lqg_f_res_gw_40,
  input [18-1:0] lqg_f_res_gw_41,
  input [18-1:0] lqg_f_res_gw_42,
  input [18-1:0] lqg_f_res_gw_43,
  input [18-1:0] lqg_f_res_gw_44,
  input [18-1:0] lqg_f_res_gw_45,
  input [18-1:0] lqg_f_res_gw_46,
  input [18-1:0] lqg_f_res_gw_47,
  input [18-1:0] lqg_f_res_gw_48,
  input [5-1:0] lqg_f_shift_gw_0,
  input [5-1:0] lqg_f_shift_gw_1,
  input [5-1:0] lqg_f_shift_gw_2,
  input [5-1:0] lqg_f_shift_gw_3,
  input [5-1:0] lqg_f_shift_gw_4,
  input [5-1:0] lqg_f_shift_gw_5,
  input [5-1:0] lqg_f_shift_gw_6,
  input [5-1:0] lqg_f_shift_gw_7,
  input [5-1:0] lqg_f_shift_gw_8,
  input [5-1:0] lqg_f_shift_gw_9,
  input [5-1:0] lqg_f_shift_gw_10,
  input [5-1:0] lqg_f_shift_gw_11,
  input [5-1:0] lqg_f_shift_gw_12,
  input [5-1:0] lqg_f_shift_gw_13,
  input [5-1:0] lqg_f_shift_gw_14,
  input [5-1:0] lqg_f_shift_gw_15,
  input [5-1:0] lqg_f_shift_gw_16,
  input [5-1:0] lqg_f_shift_gw_17,
  input [5-1:0] lqg_f_shift_gw_18,
  input [5-1:0] lqg_f_shift_gw_19,
  input [5-1:0] lqg_f_shift_gw_20,
  input [5-1:0] lqg_f_shift_gw_21,
  input [5-1:0] lqg_f_shift_gw_22,
  input [5-1:0] lqg_f_shift_gw_23,
  input [5-1:0] lqg_f_shift_gw_24,
  input [5-1:0] lqg_f_shift_gw_25,
  input [5-1:0] lqg_f_shift_gw_26,
  input [5-1:0] lqg_f_shift_gw_27,
  input [5-1:0] lqg_f_shift_gw_28,
  input [5-1:0] lqg_f_shift_gw_29,
  input [5-1:0] lqg_f_shift_gw_30,
  input [5-1:0] lqg_f_shift_gw_31,
  input [5-1:0] lqg_f_shift_gw_32,
  input [5-1:0] lqg_f_shift_gw_33,
  input [5-1:0] lqg_f_shift_gw_34,
  input [5-1:0] lqg_f_shift_gw_35,
  input [5-1:0] lqg_f_shift_gw_36,
  input [5-1:0] lqg_f_shift_gw_37,
  input [5-1:0] lqg_f_shift_gw_38,
  input [5-1:0] lqg_f_shift_gw_39,
  input [5-1:0] lqg_f_shift_gw_40,
  input [5-1:0] lqg_f_shift_gw_41,
  input [5-1:0] lqg_f_shift_gw_42,
  input [5-1:0] lqg_f_shift_gw_43,
  input [5-1:0] lqg_f_shift_gw_44,
  input [5-1:0] lqg_f_shift_gw_45,
  input [5-1:0] lqg_f_shift_gw_46,
  input [5-1:0] lqg_f_shift_gw_47,
  input [5-1:0] lqg_f_shift_gw_48,
  input [18-1:0] lqg_gamma_res_gw_0,
  input [18-1:0] lqg_gamma_res_gw_1,
  input [18-1:0] lqg_gamma_res_gw_2,
  input [18-1:0] lqg_gamma_res_gw_3,
  input [18-1:0] lqg_gamma_res_gw_4,
  input [18-1:0] lqg_gamma_res_gw_5,
  input [18-1:0] lqg_gamma_res_gw_6,
  input [18-1:0] lqg_gamma_res_gw_7,
  input [18-1:0] lqg_gamma_res_gw_8,
  input [18-1:0] lqg_gamma_res_gw_9,
  input [18-1:0] lqg_gamma_res_gw_10,
  input [18-1:0] lqg_gamma_res_gw_11,
  input [18-1:0] lqg_gamma_res_gw_12,
  input [18-1:0] lqg_gamma_res_gw_13,
  input [5-1:0] lqg_gamma_shift_gw_0,
  input [5-1:0] lqg_gamma_shift_gw_1,
  input [5-1:0] lqg_gamma_shift_gw_2,
  input [5-1:0] lqg_gamma_shift_gw_3,
  input [5-1:0] lqg_gamma_shift_gw_4,
  input [5-1:0] lqg_gamma_shift_gw_5,
  input [5-1:0] lqg_gamma_shift_gw_6,
  input [5-1:0] lqg_gamma_shift_gw_7,
  input [5-1:0] lqg_gamma_shift_gw_8,
  input [5-1:0] lqg_gamma_shift_gw_9,
  input [5-1:0] lqg_gamma_shift_gw_10,
  input [5-1:0] lqg_gamma_shift_gw_11,
  input [5-1:0] lqg_gamma_shift_gw_12,
  input [5-1:0] lqg_gamma_shift_gw_13,
  input [18-1:0] lqg_k_res_gw_0,
  input [18-1:0] lqg_k_res_gw_1,
  input [18-1:0] lqg_k_res_gw_2,
  input [18-1:0] lqg_k_res_gw_3,
  input [18-1:0] lqg_k_res_gw_4,
  input [18-1:0] lqg_k_res_gw_5,
  input [18-1:0] lqg_k_res_gw_6,
  input [18-1:0] lqg_k_res_gw_7,
  input [18-1:0] lqg_k_res_gw_8,
  input [18-1:0] lqg_k_res_gw_9,
  input [18-1:0] lqg_k_res_gw_10,
  input [18-1:0] lqg_k_res_gw_11,
  input [18-1:0] lqg_k_res_gw_12,
  input [18-1:0] lqg_k_res_gw_13,
  input [6-1:0] lqg_k_shift_gw_0,
  input [6-1:0] lqg_k_shift_gw_1,
  input [6-1:0] lqg_k_shift_gw_2,
  input [6-1:0] lqg_k_shift_gw_3,
  input [6-1:0] lqg_k_shift_gw_4,
  input [6-1:0] lqg_k_shift_gw_5,
  input [6-1:0] lqg_k_shift_gw_6,
  input [6-1:0] lqg_k_shift_gw_7,
  input [6-1:0] lqg_k_shift_gw_8,
  input [6-1:0] lqg_k_shift_gw_9,
  input [6-1:0] lqg_k_shift_gw_10,
  input [6-1:0] lqg_k_shift_gw_11,
  input [6-1:0] lqg_k_shift_gw_12,
  input [6-1:0] lqg_k_shift_gw_13,
  input [18-1:0] lqg_l_res_gw_0,
  input [18-1:0] lqg_l_res_gw_1,
  input [18-1:0] lqg_l_res_gw_2,
  input [18-1:0] lqg_l_res_gw_3,
  input [18-1:0] lqg_l_res_gw_4,
  input [18-1:0] lqg_l_res_gw_5,
  input [18-1:0] lqg_l_res_gw_6,
  input [18-1:0] lqg_l_res_gw_7,
  input [18-1:0] lqg_l_res_gw_8,
  input [18-1:0] lqg_l_res_gw_9,
  input [18-1:0] lqg_l_res_gw_10,
  input [18-1:0] lqg_l_res_gw_11,
  input [18-1:0] lqg_l_res_gw_12,
  input [18-1:0] lqg_l_res_gw_13,
  input [5-1:0] lqg_l_shift_gw_0,
  input [5-1:0] lqg_l_shift_gw_1,
  input [5-1:0] lqg_l_shift_gw_2,
  input [5-1:0] lqg_l_shift_gw_3,
  input [5-1:0] lqg_l_shift_gw_4,
  input [5-1:0] lqg_l_shift_gw_5,
  input [5-1:0] lqg_l_shift_gw_6,
  input [5-1:0] lqg_l_shift_gw_7,
  input [5-1:0] lqg_l_shift_gw_8,
  input [5-1:0] lqg_l_shift_gw_9,
  input [5-1:0] lqg_l_shift_gw_10,
  input [5-1:0] lqg_l_shift_gw_11,
  input [5-1:0] lqg_l_shift_gw_12,
  input [5-1:0] lqg_l_shift_gw_13,
  input [18-1:0] uk_factor_gw_0,
  input [18-1:0] uk_factor_gw_1,
  input [14-1:0] uk_offset_gw_0,
  input [14-1:0] uk_offset_gw_1,
  input [18-1:0] yk_factor_gw_0,
  input [18-1:0] yk_factor_gw_1,
  input [14-1:0] yk_gw_0,
  input [14-1:0] yk_gw_1,
  input [14-1:0] yk_offset_gw_0,
  input [14-1:0] yk_offset_gw_1,
  input proc_sys_clk,
  input axi_sys_clk,
  input axi_sys_aresetn,
  input [4-1:0] axi_sys_s_axi_awaddr,
  input axi_sys_s_axi_awvalid,
  input [32-1:0] axi_sys_s_axi_wdata,
  input [4-1:0] axi_sys_s_axi_wstrb,
  input axi_sys_s_axi_wvalid,
  input axi_sys_s_axi_bready,
  input [4-1:0] axi_sys_s_axi_araddr,
  input axi_sys_s_axi_arvalid,
  input axi_sys_s_axi_rready,
  output [8-1:0] lqg_led_out,
  output [14-1:0] uk_gw_0,
  output [14-1:0] uk_gw_1,
  output [25-1:0] xkhat_gw_0,
  output [25-1:0] xkhat_gw_1,
  output [25-1:0] xkhat_gw_2,
  output [25-1:0] xkhat_gw_3,
  output [25-1:0] xkhat_gw_4,
  output [25-1:0] xkhat_gw_5,
  output [25-1:0] xkhat_gw_6,
  output axi_sys_s_axi_awready,
  output axi_sys_s_axi_wready,
  output [2-1:0] axi_sys_s_axi_bresp,
  output axi_sys_s_axi_bvalid,
  output axi_sys_s_axi_arready,
  output [32-1:0] axi_sys_s_axi_rdata,
  output [2-1:0] axi_sys_s_axi_rresp,
  output axi_sys_s_axi_rvalid
);
  wire [8-1:0] axi_led_mask;
  wire [8-1:0] axi_led_output;
  wire [1-1:0] axi_state_reset;
  wire clk_1_net_x0;
  wire ce_1_net_x0;
  wire clk_1_net;
  wire ce_1_net;
  wire axi_sys_clk_net;
  axi_sys_axi_lite_interface axi_sys_axi_lite_interface (
    .axi_led_output(axi_led_output),
    .axi_sys_s_axi_awaddr(axi_sys_s_axi_awaddr),
    .axi_sys_s_axi_awvalid(axi_sys_s_axi_awvalid),
    .axi_sys_s_axi_wdata(axi_sys_s_axi_wdata),
    .axi_sys_s_axi_wstrb(axi_sys_s_axi_wstrb),
    .axi_sys_s_axi_wvalid(axi_sys_s_axi_wvalid),
    .axi_sys_s_axi_bready(axi_sys_s_axi_bready),
    .axi_sys_s_axi_araddr(axi_sys_s_axi_araddr),
    .axi_sys_s_axi_arvalid(axi_sys_s_axi_arvalid),
    .axi_sys_s_axi_rready(axi_sys_s_axi_rready),
    .axi_sys_aresetn(axi_sys_aresetn),
    .axi_sys_aclk(axi_sys_clk),
    .axi_state_reset(axi_state_reset),
    .axi_led_mask(axi_led_mask),
    .axi_sys_s_axi_awready(axi_sys_s_axi_awready),
    .axi_sys_s_axi_wready(axi_sys_s_axi_wready),
    .axi_sys_s_axi_bresp(axi_sys_s_axi_bresp),
    .axi_sys_s_axi_bvalid(axi_sys_s_axi_bvalid),
    .axi_sys_s_axi_arready(axi_sys_s_axi_arready),
    .axi_sys_s_axi_rdata(axi_sys_s_axi_rdata),
    .axi_sys_s_axi_rresp(axi_sys_s_axi_rresp),
    .axi_sys_s_axi_rvalid(axi_sys_s_axi_rvalid),
    .axi_sys_clk(axi_sys_clk_net)
  );
  fpga_lqg_axi_default_clock_driver fpga_lqg_axi_default_clock_driver (
    .proc_sys_sysclk(proc_sys_clk),
    .proc_sys_sysce(1'b1),
    .proc_sys_sysclr(1'b0),
    .axi_sys_sysclk(axi_sys_clk_net),
    .axi_sys_sysce(1'b1),
    .axi_sys_sysclr(1'b0),
    .proc_sys_clk1(clk_1_net_x0),
    .proc_sys_ce1(ce_1_net_x0),
    .axi_sys_clk1(clk_1_net),
    .axi_sys_ce1(ce_1_net)
  );
  fpga_lqg_axi_struct fpga_lqg_axi_struct (
    .axi_led_mask(axi_led_mask),
    .axi_state_reset(axi_state_reset),
    .lqg_led_in(lqg_led_in),
    .lqg_f_res_gw_0(lqg_f_res_gw_0),
    .lqg_f_res_gw_1(lqg_f_res_gw_1),
    .lqg_f_res_gw_2(lqg_f_res_gw_2),
    .lqg_f_res_gw_3(lqg_f_res_gw_3),
    .lqg_f_res_gw_4(lqg_f_res_gw_4),
    .lqg_f_res_gw_5(lqg_f_res_gw_5),
    .lqg_f_res_gw_6(lqg_f_res_gw_6),
    .lqg_f_res_gw_7(lqg_f_res_gw_7),
    .lqg_f_res_gw_8(lqg_f_res_gw_8),
    .lqg_f_res_gw_9(lqg_f_res_gw_9),
    .lqg_f_res_gw_10(lqg_f_res_gw_10),
    .lqg_f_res_gw_11(lqg_f_res_gw_11),
    .lqg_f_res_gw_12(lqg_f_res_gw_12),
    .lqg_f_res_gw_13(lqg_f_res_gw_13),
    .lqg_f_res_gw_14(lqg_f_res_gw_14),
    .lqg_f_res_gw_15(lqg_f_res_gw_15),
    .lqg_f_res_gw_16(lqg_f_res_gw_16),
    .lqg_f_res_gw_17(lqg_f_res_gw_17),
    .lqg_f_res_gw_18(lqg_f_res_gw_18),
    .lqg_f_res_gw_19(lqg_f_res_gw_19),
    .lqg_f_res_gw_20(lqg_f_res_gw_20),
    .lqg_f_res_gw_21(lqg_f_res_gw_21),
    .lqg_f_res_gw_22(lqg_f_res_gw_22),
    .lqg_f_res_gw_23(lqg_f_res_gw_23),
    .lqg_f_res_gw_24(lqg_f_res_gw_24),
    .lqg_f_res_gw_25(lqg_f_res_gw_25),
    .lqg_f_res_gw_26(lqg_f_res_gw_26),
    .lqg_f_res_gw_27(lqg_f_res_gw_27),
    .lqg_f_res_gw_28(lqg_f_res_gw_28),
    .lqg_f_res_gw_29(lqg_f_res_gw_29),
    .lqg_f_res_gw_30(lqg_f_res_gw_30),
    .lqg_f_res_gw_31(lqg_f_res_gw_31),
    .lqg_f_res_gw_32(lqg_f_res_gw_32),
    .lqg_f_res_gw_33(lqg_f_res_gw_33),
    .lqg_f_res_gw_34(lqg_f_res_gw_34),
    .lqg_f_res_gw_35(lqg_f_res_gw_35),
    .lqg_f_res_gw_36(lqg_f_res_gw_36),
    .lqg_f_res_gw_37(lqg_f_res_gw_37),
    .lqg_f_res_gw_38(lqg_f_res_gw_38),
    .lqg_f_res_gw_39(lqg_f_res_gw_39),
    .lqg_f_res_gw_40(lqg_f_res_gw_40),
    .lqg_f_res_gw_41(lqg_f_res_gw_41),
    .lqg_f_res_gw_42(lqg_f_res_gw_42),
    .lqg_f_res_gw_43(lqg_f_res_gw_43),
    .lqg_f_res_gw_44(lqg_f_res_gw_44),
    .lqg_f_res_gw_45(lqg_f_res_gw_45),
    .lqg_f_res_gw_46(lqg_f_res_gw_46),
    .lqg_f_res_gw_47(lqg_f_res_gw_47),
    .lqg_f_res_gw_48(lqg_f_res_gw_48),
    .lqg_f_shift_gw_0(lqg_f_shift_gw_0),
    .lqg_f_shift_gw_1(lqg_f_shift_gw_1),
    .lqg_f_shift_gw_2(lqg_f_shift_gw_2),
    .lqg_f_shift_gw_3(lqg_f_shift_gw_3),
    .lqg_f_shift_gw_4(lqg_f_shift_gw_4),
    .lqg_f_shift_gw_5(lqg_f_shift_gw_5),
    .lqg_f_shift_gw_6(lqg_f_shift_gw_6),
    .lqg_f_shift_gw_7(lqg_f_shift_gw_7),
    .lqg_f_shift_gw_8(lqg_f_shift_gw_8),
    .lqg_f_shift_gw_9(lqg_f_shift_gw_9),
    .lqg_f_shift_gw_10(lqg_f_shift_gw_10),
    .lqg_f_shift_gw_11(lqg_f_shift_gw_11),
    .lqg_f_shift_gw_12(lqg_f_shift_gw_12),
    .lqg_f_shift_gw_13(lqg_f_shift_gw_13),
    .lqg_f_shift_gw_14(lqg_f_shift_gw_14),
    .lqg_f_shift_gw_15(lqg_f_shift_gw_15),
    .lqg_f_shift_gw_16(lqg_f_shift_gw_16),
    .lqg_f_shift_gw_17(lqg_f_shift_gw_17),
    .lqg_f_shift_gw_18(lqg_f_shift_gw_18),
    .lqg_f_shift_gw_19(lqg_f_shift_gw_19),
    .lqg_f_shift_gw_20(lqg_f_shift_gw_20),
    .lqg_f_shift_gw_21(lqg_f_shift_gw_21),
    .lqg_f_shift_gw_22(lqg_f_shift_gw_22),
    .lqg_f_shift_gw_23(lqg_f_shift_gw_23),
    .lqg_f_shift_gw_24(lqg_f_shift_gw_24),
    .lqg_f_shift_gw_25(lqg_f_shift_gw_25),
    .lqg_f_shift_gw_26(lqg_f_shift_gw_26),
    .lqg_f_shift_gw_27(lqg_f_shift_gw_27),
    .lqg_f_shift_gw_28(lqg_f_shift_gw_28),
    .lqg_f_shift_gw_29(lqg_f_shift_gw_29),
    .lqg_f_shift_gw_30(lqg_f_shift_gw_30),
    .lqg_f_shift_gw_31(lqg_f_shift_gw_31),
    .lqg_f_shift_gw_32(lqg_f_shift_gw_32),
    .lqg_f_shift_gw_33(lqg_f_shift_gw_33),
    .lqg_f_shift_gw_34(lqg_f_shift_gw_34),
    .lqg_f_shift_gw_35(lqg_f_shift_gw_35),
    .lqg_f_shift_gw_36(lqg_f_shift_gw_36),
    .lqg_f_shift_gw_37(lqg_f_shift_gw_37),
    .lqg_f_shift_gw_38(lqg_f_shift_gw_38),
    .lqg_f_shift_gw_39(lqg_f_shift_gw_39),
    .lqg_f_shift_gw_40(lqg_f_shift_gw_40),
    .lqg_f_shift_gw_41(lqg_f_shift_gw_41),
    .lqg_f_shift_gw_42(lqg_f_shift_gw_42),
    .lqg_f_shift_gw_43(lqg_f_shift_gw_43),
    .lqg_f_shift_gw_44(lqg_f_shift_gw_44),
    .lqg_f_shift_gw_45(lqg_f_shift_gw_45),
    .lqg_f_shift_gw_46(lqg_f_shift_gw_46),
    .lqg_f_shift_gw_47(lqg_f_shift_gw_47),
    .lqg_f_shift_gw_48(lqg_f_shift_gw_48),
    .lqg_gamma_res_gw_0(lqg_gamma_res_gw_0),
    .lqg_gamma_res_gw_1(lqg_gamma_res_gw_1),
    .lqg_gamma_res_gw_2(lqg_gamma_res_gw_2),
    .lqg_gamma_res_gw_3(lqg_gamma_res_gw_3),
    .lqg_gamma_res_gw_4(lqg_gamma_res_gw_4),
    .lqg_gamma_res_gw_5(lqg_gamma_res_gw_5),
    .lqg_gamma_res_gw_6(lqg_gamma_res_gw_6),
    .lqg_gamma_res_gw_7(lqg_gamma_res_gw_7),
    .lqg_gamma_res_gw_8(lqg_gamma_res_gw_8),
    .lqg_gamma_res_gw_9(lqg_gamma_res_gw_9),
    .lqg_gamma_res_gw_10(lqg_gamma_res_gw_10),
    .lqg_gamma_res_gw_11(lqg_gamma_res_gw_11),
    .lqg_gamma_res_gw_12(lqg_gamma_res_gw_12),
    .lqg_gamma_res_gw_13(lqg_gamma_res_gw_13),
    .lqg_gamma_shift_gw_0(lqg_gamma_shift_gw_0),
    .lqg_gamma_shift_gw_1(lqg_gamma_shift_gw_1),
    .lqg_gamma_shift_gw_2(lqg_gamma_shift_gw_2),
    .lqg_gamma_shift_gw_3(lqg_gamma_shift_gw_3),
    .lqg_gamma_shift_gw_4(lqg_gamma_shift_gw_4),
    .lqg_gamma_shift_gw_5(lqg_gamma_shift_gw_5),
    .lqg_gamma_shift_gw_6(lqg_gamma_shift_gw_6),
    .lqg_gamma_shift_gw_7(lqg_gamma_shift_gw_7),
    .lqg_gamma_shift_gw_8(lqg_gamma_shift_gw_8),
    .lqg_gamma_shift_gw_9(lqg_gamma_shift_gw_9),
    .lqg_gamma_shift_gw_10(lqg_gamma_shift_gw_10),
    .lqg_gamma_shift_gw_11(lqg_gamma_shift_gw_11),
    .lqg_gamma_shift_gw_12(lqg_gamma_shift_gw_12),
    .lqg_gamma_shift_gw_13(lqg_gamma_shift_gw_13),
    .lqg_k_res_gw_0(lqg_k_res_gw_0),
    .lqg_k_res_gw_1(lqg_k_res_gw_1),
    .lqg_k_res_gw_2(lqg_k_res_gw_2),
    .lqg_k_res_gw_3(lqg_k_res_gw_3),
    .lqg_k_res_gw_4(lqg_k_res_gw_4),
    .lqg_k_res_gw_5(lqg_k_res_gw_5),
    .lqg_k_res_gw_6(lqg_k_res_gw_6),
    .lqg_k_res_gw_7(lqg_k_res_gw_7),
    .lqg_k_res_gw_8(lqg_k_res_gw_8),
    .lqg_k_res_gw_9(lqg_k_res_gw_9),
    .lqg_k_res_gw_10(lqg_k_res_gw_10),
    .lqg_k_res_gw_11(lqg_k_res_gw_11),
    .lqg_k_res_gw_12(lqg_k_res_gw_12),
    .lqg_k_res_gw_13(lqg_k_res_gw_13),
    .lqg_k_shift_gw_0(lqg_k_shift_gw_0),
    .lqg_k_shift_gw_1(lqg_k_shift_gw_1),
    .lqg_k_shift_gw_2(lqg_k_shift_gw_2),
    .lqg_k_shift_gw_3(lqg_k_shift_gw_3),
    .lqg_k_shift_gw_4(lqg_k_shift_gw_4),
    .lqg_k_shift_gw_5(lqg_k_shift_gw_5),
    .lqg_k_shift_gw_6(lqg_k_shift_gw_6),
    .lqg_k_shift_gw_7(lqg_k_shift_gw_7),
    .lqg_k_shift_gw_8(lqg_k_shift_gw_8),
    .lqg_k_shift_gw_9(lqg_k_shift_gw_9),
    .lqg_k_shift_gw_10(lqg_k_shift_gw_10),
    .lqg_k_shift_gw_11(lqg_k_shift_gw_11),
    .lqg_k_shift_gw_12(lqg_k_shift_gw_12),
    .lqg_k_shift_gw_13(lqg_k_shift_gw_13),
    .lqg_l_res_gw_0(lqg_l_res_gw_0),
    .lqg_l_res_gw_1(lqg_l_res_gw_1),
    .lqg_l_res_gw_2(lqg_l_res_gw_2),
    .lqg_l_res_gw_3(lqg_l_res_gw_3),
    .lqg_l_res_gw_4(lqg_l_res_gw_4),
    .lqg_l_res_gw_5(lqg_l_res_gw_5),
    .lqg_l_res_gw_6(lqg_l_res_gw_6),
    .lqg_l_res_gw_7(lqg_l_res_gw_7),
    .lqg_l_res_gw_8(lqg_l_res_gw_8),
    .lqg_l_res_gw_9(lqg_l_res_gw_9),
    .lqg_l_res_gw_10(lqg_l_res_gw_10),
    .lqg_l_res_gw_11(lqg_l_res_gw_11),
    .lqg_l_res_gw_12(lqg_l_res_gw_12),
    .lqg_l_res_gw_13(lqg_l_res_gw_13),
    .lqg_l_shift_gw_0(lqg_l_shift_gw_0),
    .lqg_l_shift_gw_1(lqg_l_shift_gw_1),
    .lqg_l_shift_gw_2(lqg_l_shift_gw_2),
    .lqg_l_shift_gw_3(lqg_l_shift_gw_3),
    .lqg_l_shift_gw_4(lqg_l_shift_gw_4),
    .lqg_l_shift_gw_5(lqg_l_shift_gw_5),
    .lqg_l_shift_gw_6(lqg_l_shift_gw_6),
    .lqg_l_shift_gw_7(lqg_l_shift_gw_7),
    .lqg_l_shift_gw_8(lqg_l_shift_gw_8),
    .lqg_l_shift_gw_9(lqg_l_shift_gw_9),
    .lqg_l_shift_gw_10(lqg_l_shift_gw_10),
    .lqg_l_shift_gw_11(lqg_l_shift_gw_11),
    .lqg_l_shift_gw_12(lqg_l_shift_gw_12),
    .lqg_l_shift_gw_13(lqg_l_shift_gw_13),
    .uk_factor_gw_0(uk_factor_gw_0),
    .uk_factor_gw_1(uk_factor_gw_1),
    .uk_offset_gw_0(uk_offset_gw_0),
    .uk_offset_gw_1(uk_offset_gw_1),
    .yk_factor_gw_0(yk_factor_gw_0),
    .yk_factor_gw_1(yk_factor_gw_1),
    .yk_gw_0(yk_gw_0),
    .yk_gw_1(yk_gw_1),
    .yk_offset_gw_0(yk_offset_gw_0),
    .yk_offset_gw_1(yk_offset_gw_1),
    .clk_1_x0(clk_1_net_x0),
    .ce_1(ce_1_net_x0),
    .clk_1(clk_1_net),
    .ce_1_x0(ce_1_net),
    .axi_led_output(axi_led_output),
    .lqg_led_out(lqg_led_out),
    .uk_gw_0(uk_gw_0),
    .uk_gw_1(uk_gw_1),
    .xkhat_gw_0(xkhat_gw_0),
    .xkhat_gw_1(xkhat_gw_1),
    .xkhat_gw_2(xkhat_gw_2),
    .xkhat_gw_3(xkhat_gw_3),
    .xkhat_gw_4(xkhat_gw_4),
    .xkhat_gw_5(xkhat_gw_5),
    .xkhat_gw_6(xkhat_gw_6)
  );
endmodule
