`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements
module fpga_kf_2dof_sum_four_elements (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult3_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [20-1:0] addsub9_s_net;
  wire [43-1:0] mult2_p_net;
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements1
module fpga_kf_2dof_sum_four_elements1 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub9_s_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult3_p_net;
  wire ce_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements2
module fpga_kf_2dof_sum_four_elements2 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire clk_net;
  wire [43-1:0] mult3_p_net;
  wire [20-1:0] addsub9_s_net;
  wire [43-1:0] mult2_p_net;
  wire [20-1:0] addsub12_s_net;
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult1_p_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements3
module fpga_kf_2dof_sum_four_elements3 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub9_s_net;
  wire [43-1:0] mult3_p_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements4
module fpga_kf_2dof_sum_four_elements4 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult3_p_net;
  wire clk_net;
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult2_p_net;
  wire [20-1:0] addsub9_s_net;
  wire [20-1:0] addsub2_s_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements5
module fpga_kf_2dof_sum_four_elements5 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub12_s_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult3_p_net;
  wire [43-1:0] mult0_p_net;
  wire ce_net;
  wire [20-1:0] addsub9_s_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_9277d5325d addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_d55af55b57 addsub9 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements
module fpga_kf_2dof_sum_two_elements (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_fc7eec88d6 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements1
module fpga_kf_2dof_sum_two_elements1 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire [39-1:0] mult1_p_net;
  wire [39-1:0] mult0_p_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_fc7eec88d6 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements2
module fpga_kf_2dof_sum_two_elements2 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire ce_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_fc7eec88d6 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements3
module fpga_kf_2dof_sum_two_elements3 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire [20-1:0] addsub2_s_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_fc7eec88d6 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements4
module fpga_kf_2dof_sum_two_elements4 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult0_p_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult1_p_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements5
module fpga_kf_2dof_sum_two_elements5 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult1_p_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements6
module fpga_kf_2dof_sum_two_elements6 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult0_p_net;
  wire clk_net;
  wire [43-1:0] mult1_p_net;
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_two_elements7
module fpga_kf_2dof_sum_two_elements7 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub2_s_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_d55af55b57 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector AddSub Fabric
module fpga_kf_2dof_vector_addsub_fabric (
  input [21-1:0] a_1,
  input [20-1:0] b_1,
  input [21-1:0] a_2,
  input [21-1:0] a_3,
  input [21-1:0] a_4,
  input [20-1:0] b_2,
  input [20-1:0] b_3,
  input [20-1:0] b_4,
  input clk_4,
  input ce_4,
  output [22-1:0] a_b_1,
  output [22-1:0] a_b_2,
  output [22-1:0] a_b_3,
  output [22-1:0] a_b_4
);
  wire [22-1:0] addsub0_s_net_x0;
  wire [22-1:0] addsub1_s_net_x0;
  wire clk_net;
  wire [20-1:0] addsub2_s_net_x1;
  wire [20-1:0] addsub2_s_net_x4;
  wire [21-1:0] addsub3_s_net;
  wire ce_net;
  wire [21-1:0] addsub0_s_net;
  wire [20-1:0] addsub2_s_net_x2;
  wire [22-1:0] addsub3_s_net_x0;
  wire [20-1:0] addsub2_s_net_x3;
  wire [21-1:0] addsub1_s_net;
  wire [22-1:0] addsub2_s_net_x0;
  wire [21-1:0] addsub2_s_net;
  assign a_b_1 = addsub0_s_net_x0;
  assign a_b_2 = addsub1_s_net_x0;
  assign a_b_3 = addsub2_s_net_x0;
  assign a_b_4 = addsub3_s_net_x0;
  assign addsub0_s_net = a_1;
  assign addsub2_s_net_x4 = b_1;
  assign addsub1_s_net = a_2;
  assign addsub2_s_net = a_3;
  assign addsub3_s_net = a_4;
  assign addsub2_s_net_x3 = b_2;
  assign addsub2_s_net_x2 = b_3;
  assign addsub2_s_net_x1 = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_e73944acdf addsub0 (
    .clr(1'b0),
    .a(addsub0_s_net),
    .b(addsub2_s_net_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net_x0)
  );
  sysgen_addsub_e73944acdf addsub1 (
    .clr(1'b0),
    .a(addsub1_s_net),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net_x0)
  );
  sysgen_addsub_e73944acdf addsub2 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net_x0)
  );
  sysgen_addsub_e73944acdf addsub3 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub2_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector AddSub Fabric1
module fpga_kf_2dof_vector_addsub_fabric1 (
  input [20-1:0] a_1,
  input [20-1:0] b_1,
  input [20-1:0] a_2,
  input [20-1:0] a_3,
  input [20-1:0] a_4,
  input [20-1:0] b_2,
  input [20-1:0] b_3,
  input [20-1:0] b_4,
  input clk_4,
  input ce_4,
  output [21-1:0] a_b_1,
  output [21-1:0] a_b_2,
  output [21-1:0] a_b_3,
  output [21-1:0] a_b_4
);
  wire [20-1:0] addsub12_s_net_x2;
  wire [20-1:0] addsub2_s_net_x3;
  wire [20-1:0] addsub12_s_net_x1;
  wire [20-1:0] addsub12_s_net_x0;
  wire [21-1:0] addsub3_s_net;
  wire [21-1:0] addsub1_s_net;
  wire [21-1:0] addsub2_s_net;
  wire [21-1:0] addsub0_s_net;
  wire clk_net;
  wire ce_net;
  wire [20-1:0] addsub2_s_net_x2;
  wire [20-1:0] addsub2_s_net_x1;
  wire [20-1:0] addsub2_s_net_x0;
  wire [20-1:0] addsub12_s_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign a_b_3 = addsub2_s_net;
  assign a_b_4 = addsub3_s_net;
  assign addsub12_s_net_x2 = a_1;
  assign addsub2_s_net_x3 = b_1;
  assign addsub12_s_net_x1 = a_2;
  assign addsub12_s_net_x0 = a_3;
  assign addsub12_s_net = a_4;
  assign addsub2_s_net_x2 = b_2;
  assign addsub2_s_net_x1 = b_3;
  assign addsub2_s_net_x0 = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_78127d7533 addsub0 (
    .clr(1'b0),
    .a(addsub12_s_net_x2),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_78127d7533 addsub1 (
    .clr(1'b0),
    .a(addsub12_s_net_x1),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_78127d7533 addsub2 (
    .clr(1'b0),
    .a(addsub12_s_net_x0),
    .b(addsub2_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_78127d7533 addsub3 (
    .clr(1'b0),
    .a(addsub12_s_net),
    .b(addsub2_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Constant
module fpga_kf_2dof_vector_constant (
  output [18-1:0] out1_1,
  output [18-1:0] out1_2
);
  wire [18-1:0] constant1_op_net;
  wire [18-1:0] constant0_op_net;
  assign out1_1 = constant0_op_net;
  assign out1_2 = constant1_op_net;
  sysgen_constant_07d63e1f77 constant0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant0_op_net)
  );
  sysgen_constant_07d63e1f77 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Convert
module fpga_kf_2dof_vector_convert (
  input [22-1:0] i_1,
  input [22-1:0] i_2,
  input [22-1:0] i_3,
  input [22-1:0] i_4,
  input clk_4,
  input ce_4,
  output [18-1:0] o_1,
  output [18-1:0] o_2,
  output [18-1:0] o_3,
  output [18-1:0] o_4
);
  wire [18-1:0] convert0_dout_net;
  wire [18-1:0] convert3_dout_net;
  wire [22-1:0] addsub0_s_net;
  wire [22-1:0] addsub2_s_net;
  wire [18-1:0] convert1_dout_net;
  wire [22-1:0] addsub1_s_net;
  wire [18-1:0] convert2_dout_net;
  wire ce_net;
  wire clk_net;
  wire [22-1:0] addsub3_s_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign addsub0_s_net = i_1;
  assign addsub1_s_net = i_2;
  assign addsub2_s_net = i_3;
  assign addsub3_s_net = i_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(22),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
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
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(22),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
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
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(22),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
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
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(22),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
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
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Convert1
module fpga_kf_2dof_vector_convert1 (
  input [18-1:0] i_1,
  input [18-1:0] i_2,
  input [18-1:0] i_3,
  input [18-1:0] i_4,
  input clk_4,
  input ce_4,
  output [14-1:0] o_1,
  output [14-1:0] o_2,
  output [14-1:0] o_3,
  output [14-1:0] o_4
);
  wire [14-1:0] convert2_dout_net;
  wire ce_net;
  wire [14-1:0] convert1_dout_net;
  wire [14-1:0] convert3_dout_net;
  wire [18-1:0] convert0_dout_net_x0;
  wire [18-1:0] convert2_dout_net_x0;
  wire [14-1:0] convert0_dout_net;
  wire clk_net;
  wire [18-1:0] convert3_dout_net_x0;
  wire [18-1:0] convert1_dout_net_x0;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign convert0_dout_net_x0 = i_1;
  assign convert1_dout_net_x0 = i_2;
  assign convert2_dout_net_x0 = i_3;
  assign convert3_dout_net_x0 = i_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert0_dout_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert1_dout_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert2_dout_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert3_dout_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Convert2
module fpga_kf_2dof_vector_convert2 (
  input [20-1:0] i_1,
  input [20-1:0] i_2,
  input clk_4,
  input ce_4,
  output [14-1:0] o_1,
  output [14-1:0] o_2
);
  wire [20-1:0] mux0_y_net;
  wire ce_net;
  wire [14-1:0] convert1_dout_net;
  wire [20-1:0] mux1_y_net;
  wire clk_net;
  wire [14-1:0] convert0_dout_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign mux0_y_net = i_1;
  assign mux1_y_net = i_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(20),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(mux0_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(20),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(mux1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample
module fpga_kf_2dof_vector_down_sample (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16
);
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample14_q_net;
  wire clk_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register0_q_net;
  wire src_clk_net;
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register12_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign out_15 = downsample14_q_net;
  assign out_16 = downsample15_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign register14_q_net = in_15;
  assign register15_q_net = in_16;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample14 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample14_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample15 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample1
module fpga_kf_2dof_vector_down_sample1 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16
);
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register14_q_net;
  wire clk_net;
  wire ce_net;
  wire src_ce_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register15_q_net;
  wire src_clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign out_15 = downsample14_q_net;
  assign out_16 = downsample15_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign register14_q_net = in_15;
  assign register15_q_net = in_16;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample14 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample14_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample15 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample2
module fpga_kf_2dof_vector_down_sample2 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire src_clk_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register0_q_net;
  wire src_ce_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register4_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample3
module fpga_kf_2dof_vector_down_sample3 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register4_q_net;
  wire src_ce_net;
  wire src_clk_net;
  wire ce_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register6_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample4
module fpga_kf_2dof_vector_down_sample4 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire src_clk_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire ce_net;
  wire src_ce_net;
  wire clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample5
module fpga_kf_2dof_vector_down_sample5 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire ce_net;
  wire src_clk_net;
  wire clk_net;
  wire [25-1:0] register7_q_net;
  wire src_ce_net;
  wire [25-1:0] register6_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample6
module fpga_kf_2dof_vector_down_sample6 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire src_clk_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire src_ce_net;
  wire clk_net;
  wire ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample7
module fpga_kf_2dof_vector_down_sample7 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [18-1:0] out_1,
  output [18-1:0] out_2
);
  wire clk_net;
  wire [18-1:0] downsample1_q_net;
  wire [18-1:0] downsample0_q_net;
  wire [18-1:0] register1_q_net;
  wire src_clk_net;
  wire src_ce_net;
  wire ce_net;
  wire [18-1:0] register0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample8
module fpga_kf_2dof_vector_down_sample8 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire clk_net;
  wire src_clk_net;
  wire [25-1:0] register0_q_net;
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Down Sample9
module fpga_kf_2dof_vector_down_sample9 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8
);
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample0_q_net;
  wire src_ce_net;
  wire src_clk_net;
  wire clk_net;
  wire ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Mux
module fpga_kf_2dof_vector_mux (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i0_15,
  input [25-1:0] i0_16,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input [25-1:0] i1_15,
  input [25-1:0] i1_16,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16
);
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux15_y_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample11_q_net_x0;
  wire clk_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample8_q_net;
  wire ce_net;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample14_q_net_x0;
  wire [25-1:0] downsample15_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample4_q_net_x0;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign o_15 = mux14_y_net;
  assign o_16 = mux15_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample8_q_net_x0 = i0_9;
  assign downsample9_q_net_x0 = i0_10;
  assign downsample10_q_net_x0 = i0_11;
  assign downsample11_q_net_x0 = i0_12;
  assign downsample12_q_net_x0 = i0_13;
  assign downsample13_q_net_x0 = i0_14;
  assign downsample14_q_net_x0 = i0_15;
  assign downsample15_q_net_x0 = i0_16;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign downsample8_q_net = i1_9;
  assign downsample9_q_net = i1_10;
  assign downsample10_q_net = i1_11;
  assign downsample11_q_net = i1_12;
  assign downsample12_q_net = i1_13;
  assign downsample13_q_net = i1_14;
  assign downsample14_q_net = i1_15;
  assign downsample15_q_net = i1_16;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_2e76162b6a mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net_x0),
    .d1(downsample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_2e76162b6a mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net_x0),
    .d1(downsample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_2e76162b6a mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net_x0),
    .d1(downsample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_2e76162b6a mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net_x0),
    .d1(downsample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_2e76162b6a mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net_x0),
    .d1(downsample12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_2e76162b6a mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net_x0),
    .d1(downsample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
  sysgen_mux_2e76162b6a mux14 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample14_q_net_x0),
    .d1(downsample14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux14_y_net)
  );
  sysgen_mux_2e76162b6a mux15 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample15_q_net_x0),
    .d1(downsample15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux15_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Mux1
module fpga_kf_2dof_vector_mux1 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] downsample7_q_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire ce_net;
  wire clk_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net = i0_1;
  assign downsample0_q_net_x0 = i1_1;
  assign downsample1_q_net = i0_2;
  assign downsample2_q_net = i0_3;
  assign downsample3_q_net = i0_4;
  assign downsample4_q_net = i0_5;
  assign downsample5_q_net = i0_6;
  assign downsample6_q_net = i0_7;
  assign downsample7_q_net = i0_8;
  assign downsample1_q_net_x0 = i1_2;
  assign downsample2_q_net_x0 = i1_3;
  assign downsample3_q_net_x0 = i1_4;
  assign downsample4_q_net_x0 = i1_5;
  assign downsample5_q_net_x0 = i1_6;
  assign downsample6_q_net_x0 = i1_7;
  assign downsample7_q_net_x0 = i1_8;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net),
    .d1(downsample0_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net),
    .d1(downsample1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net),
    .d1(downsample2_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net),
    .d1(downsample3_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net),
    .d1(downsample4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net),
    .d1(downsample5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net),
    .d1(downsample6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net),
    .d1(downsample7_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Mux2
module fpga_kf_2dof_vector_mux2 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample4_q_net_x0;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire clk_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire ce_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Mux3
module fpga_kf_2dof_vector_mux3 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] mux4_y_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire clk_net;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Mux4
module fpga_kf_2dof_vector_mux4 (
  input [2-1:0] sel,
  input [18-1:0] i0_1,
  input [20-1:0] i1_1,
  input [18-1:0] i2_1,
  input [18-1:0] i0_2,
  input [20-1:0] i1_2,
  input [18-1:0] i2_2,
  input clk_4,
  input ce_4,
  output [20-1:0] o_1,
  output [20-1:0] o_2
);
  wire [20-1:0] mux0_y_net;
  wire ce_net;
  wire [20-1:0] addsub12_s_net;
  wire [18-1:0] constant2_op_net;
  wire [2-1:0] down_sample6_q_net;
  wire [20-1:0] addsub12_s_net_x0;
  wire [18-1:0] addsub8_s_net;
  wire [20-1:0] mux1_y_net;
  wire [18-1:0] constant1_op_net;
  wire [18-1:0] constant0_op_net;
  wire clk_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign down_sample6_q_net = sel;
  assign constant0_op_net = i0_1;
  assign addsub12_s_net_x0 = i1_1;
  assign addsub8_s_net = i2_1;
  assign constant1_op_net = i0_2;
  assign addsub12_s_net = i1_2;
  assign constant2_op_net = i2_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_d853ecb8c5 mux0 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant0_op_net),
    .d1(addsub12_s_net_x0),
    .d2(addsub8_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_d853ecb8c5 mux1 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant1_op_net),
    .d1(addsub12_s_net),
    .d2(constant2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult
module fpga_kf_2dof_vector_real_mult (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire ce_net;
  wire [18-1:0] register3_q_net;
  wire clk_net;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] mux1_y_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register0_q_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult1_p_net;
  wire [25-1:0] mux0_y_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] register2_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux0_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux1_y_net = a_2;
  assign mux2_y_net = a_3;
  assign mux3_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult1
module fpga_kf_2dof_vector_real_mult1 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire [25-1:0] mux5_y_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] mux4_y_net;
  wire [18-1:0] register0_q_net;
  wire [25-1:0] mux6_y_net;
  wire [18-1:0] register2_q_net;
  wire [18-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] mux7_y_net;
  wire clk_net;
  wire [18-1:0] register1_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux4_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux5_y_net = a_2;
  assign mux6_y_net = a_3;
  assign mux7_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult10
module fpga_kf_2dof_vector_real_mult10 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire [25-1:0] mux0_y_net;
  wire [18-1:0] down_sample_q_net;
  wire clk_net;
  wire [18-1:0] down_sample8_q_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux1_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult11
module fpga_kf_2dof_vector_real_mult11 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] down_sample8_q_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] mux7_y_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux6_y_net;
  wire [18-1:0] down_sample_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux7_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult12
module fpga_kf_2dof_vector_real_mult12 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] register0_q_net;
  wire [25-1:0] mux3_y_net;
  wire [43-1:0] mult1_p_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net;
  wire [18-1:0] register3_q_net;
  wire clk_net;
  wire [43-1:0] mult2_p_net;
  wire [25-1:0] mux0_y_net;
  wire [43-1:0] mult3_p_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register2_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux0_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux1_y_net = a_2;
  assign mux2_y_net = a_3;
  assign mux3_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult13
module fpga_kf_2dof_vector_real_mult13 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] mux6_y_net;
  wire [43-1:0] mult2_p_net;
  wire [25-1:0] mux7_y_net;
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] register2_q_net;
  wire [25-1:0] mux4_y_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux5_y_net;
  wire [18-1:0] register0_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux4_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux5_y_net = a_2;
  assign mux6_y_net = a_3;
  assign mux7_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult2
module fpga_kf_2dof_vector_real_mult2 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire [43-1:0] mult3_p_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult2_p_net;
  wire [25-1:0] mux11_y_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register2_q_net;
  wire [25-1:0] mux8_y_net;
  wire [18-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] mux10_y_net;
  wire clk_net;
  wire [25-1:0] mux9_y_net;
  wire [18-1:0] register0_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux8_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux9_y_net = a_2;
  assign mux10_y_net = a_3;
  assign mux11_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux9_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux10_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult3
module fpga_kf_2dof_vector_real_mult3 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [18-1:0] b_2,
  input [18-1:0] b_3,
  input [18-1:0] b_4,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2,
  output [43-1:0] a_x_b_3,
  output [43-1:0] a_x_b_4
);
  wire [43-1:0] mult3_p_net;
  wire [43-1:0] mult2_p_net;
  wire [18-1:0] register0_q_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux13_y_net;
  wire clk_net;
  wire ce_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux12_y_net;
  wire [18-1:0] register2_q_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] register1_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign mux12_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux13_y_net = a_2;
  assign mux14_y_net = a_3;
  assign mux15_y_net = a_4;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux13_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux14_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux15_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult4
module fpga_kf_2dof_vector_real_mult4 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux0_y_net;
  wire [14-1:0] convert0_dout_net;
  wire clk_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net;
  wire [39-1:0] mult0_p_net;
  wire [14-1:0] convert1_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux1_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult5
module fpga_kf_2dof_vector_real_mult5 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult0_p_net;
  wire [14-1:0] convert1_dout_net;
  wire ce_net;
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux2_y_net;
  wire clk_net;
  wire [25-1:0] mux3_y_net;
  wire [14-1:0] convert0_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux3_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult6
module fpga_kf_2dof_vector_real_mult6 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux4_y_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux5_y_net;
  wire clk_net;
  wire ce_net;
  wire [14-1:0] convert1_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux5_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult7
module fpga_kf_2dof_vector_real_mult7 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [25-1:0] mux7_y_net;
  wire ce_net;
  wire clk_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux6_y_net;
  wire [39-1:0] mult0_p_net;
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult1_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux7_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult8
module fpga_kf_2dof_vector_real_mult8 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire [25-1:0] mux4_y_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] down_sample_q_net;
  wire [43-1:0] mult1_p_net;
  wire ce_net;
  wire [25-1:0] mux5_y_net;
  wire clk_net;
  wire [18-1:0] down_sample8_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux5_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Real Mult9
module fpga_kf_2dof_vector_real_mult9 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] down_sample_q_net;
  wire [25-1:0] mux3_y_net;
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] down_sample8_q_net;
  wire clk_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux3_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Register
module fpga_kf_2dof_vector_register (
  input [18-1:0] d_1,
  input [18-1:0] d_2,
  input [18-1:0] d_3,
  input [18-1:0] d_4,
  input clk_4,
  input ce_4,
  output [18-1:0] q_1,
  output [18-1:0] q_2,
  output [18-1:0] q_3,
  output [18-1:0] q_4
);
  wire [18-1:0] register1_q_net;
  wire [18-1:0] convert1_dout_net;
  wire [18-1:0] convert3_dout_net;
  wire ce_net;
  wire clk_net;
  wire [18-1:0] register0_q_net;
  wire [18-1:0] register2_q_net;
  wire [18-1:0] convert0_dout_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] convert2_dout_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign convert0_dout_net = d_1;
  assign convert1_dout_net = d_2;
  assign convert2_dout_net = d_3;
  assign convert3_dout_net = d_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert2_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert3_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Up Sample
module fpga_kf_2dof_vector_up_sample (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  input [14-1:0] in_3,
  input [14-1:0] in_4,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] out_1,
  output [14-1:0] out_2,
  output [14-1:0] out_3,
  output [14-1:0] out_4
);
  wire [14-1:0] convert3_dout_net;
  wire src_ce_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] convert1_dout_net;
  wire [14-1:0] upsample3_q_net;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] upsample2_q_net;
  wire ce_net;
  wire clk_net;
  wire src_clk_net;
  wire [14-1:0] convert2_dout_net;
  wire [14-1:0] convert0_dout_net;
  assign out_1 = upsample0_q_net;
  assign out_2 = upsample1_q_net;
  assign out_3 = upsample2_q_net;
  assign out_4 = upsample3_q_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert0_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample0_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert1_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample1_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert2_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample2_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert3_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Up Sample1
module fpga_kf_2dof_vector_up_sample1 (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] out_1,
  output [14-1:0] out_2
);
  wire [14-1:0] upsample0_q_net;
  wire clk_net;
  wire src_clk_net;
  wire [14-1:0] convert1_dout_net;
  wire ce_net;
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] upsample1_q_net;
  wire src_ce_net;
  assign out_1 = upsample0_q_net;
  assign out_2 = upsample1_q_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert0_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample0_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert1_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper
module fpga_kf_2dof_adc_clock_domain_wrapper (
  input [1-1:0] sw_in,
  input [25-1:0] fmat_in_1,
  input [25-1:0] lmat_in_1,
  input [25-1:0] kmat_in_1,
  input [25-1:0] bmat_in_1,
  input [25-1:0] fmat_ip_in_1,
  input [25-1:0] lmat_ip_in_1,
  input [25-1:0] kmat_ip_in_1,
  input [25-1:0] bmat_ip_in_1,
  input [2-1:0] hw_switch_override,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [14-1:0] pot_switch_hw,
  input [1-1:0] pot_switch_hw_flag,
  input [6-1:0] leds_in,
  input [18-1:0] x_ref_in,
  input [2-1:0] fb_src_switch,
  input [18-1:0] barrier_ub_lb_in_1,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [25-1:0] barrier_ram_data_in_1,
  input [1-1:0] barrier_ram_we_in,
  input [25-1:0] fmat_in_2,
  input [25-1:0] fmat_in_3,
  input [25-1:0] fmat_in_4,
  input [25-1:0] fmat_in_5,
  input [25-1:0] fmat_in_6,
  input [25-1:0] fmat_in_7,
  input [25-1:0] fmat_in_8,
  input [25-1:0] fmat_in_9,
  input [25-1:0] fmat_in_10,
  input [25-1:0] fmat_in_11,
  input [25-1:0] fmat_in_12,
  input [25-1:0] fmat_in_13,
  input [25-1:0] fmat_in_14,
  input [25-1:0] fmat_in_15,
  input [25-1:0] fmat_in_16,
  input [25-1:0] lmat_in_2,
  input [25-1:0] lmat_in_3,
  input [25-1:0] lmat_in_4,
  input [25-1:0] lmat_in_5,
  input [25-1:0] lmat_in_6,
  input [25-1:0] lmat_in_7,
  input [25-1:0] lmat_in_8,
  input [25-1:0] kmat_in_2,
  input [25-1:0] kmat_in_3,
  input [25-1:0] kmat_in_4,
  input [25-1:0] kmat_in_5,
  input [25-1:0] kmat_in_6,
  input [25-1:0] kmat_in_7,
  input [25-1:0] kmat_in_8,
  input [25-1:0] bmat_in_2,
  input [25-1:0] bmat_in_3,
  input [25-1:0] bmat_in_4,
  input [25-1:0] bmat_in_5,
  input [25-1:0] bmat_in_6,
  input [25-1:0] bmat_in_7,
  input [25-1:0] bmat_in_8,
  input [25-1:0] fmat_ip_in_2,
  input [25-1:0] fmat_ip_in_3,
  input [25-1:0] fmat_ip_in_4,
  input [25-1:0] fmat_ip_in_5,
  input [25-1:0] fmat_ip_in_6,
  input [25-1:0] fmat_ip_in_7,
  input [25-1:0] fmat_ip_in_8,
  input [25-1:0] fmat_ip_in_9,
  input [25-1:0] fmat_ip_in_10,
  input [25-1:0] fmat_ip_in_11,
  input [25-1:0] fmat_ip_in_12,
  input [25-1:0] fmat_ip_in_13,
  input [25-1:0] fmat_ip_in_14,
  input [25-1:0] fmat_ip_in_15,
  input [25-1:0] fmat_ip_in_16,
  input [25-1:0] lmat_ip_in_2,
  input [25-1:0] lmat_ip_in_3,
  input [25-1:0] lmat_ip_in_4,
  input [25-1:0] lmat_ip_in_5,
  input [25-1:0] lmat_ip_in_6,
  input [25-1:0] lmat_ip_in_7,
  input [25-1:0] lmat_ip_in_8,
  input [25-1:0] kmat_ip_in_2,
  input [25-1:0] kmat_ip_in_3,
  input [25-1:0] kmat_ip_in_4,
  input [25-1:0] kmat_ip_in_5,
  input [25-1:0] kmat_ip_in_6,
  input [25-1:0] kmat_ip_in_7,
  input [25-1:0] kmat_ip_in_8,
  input [25-1:0] bmat_ip_in_2,
  input [25-1:0] bmat_ip_in_3,
  input [25-1:0] bmat_ip_in_4,
  input [25-1:0] bmat_ip_in_5,
  input [25-1:0] bmat_ip_in_6,
  input [25-1:0] bmat_ip_in_7,
  input [25-1:0] bmat_ip_in_8,
  input [18-1:0] barrier_ub_lb_in_2,
  input [25-1:0] barrier_ram_data_in_2,
  input [1-1:0] hw_pot_switch,
  input [14-1:0] z_in,
  input [14-1:0] x_in,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [18-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out
);
  wire [25-1:0] register0_q_net_x9;
  wire [1-1:0] register_q_net;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] register0_q_net;
  wire [14-1:0] register6_q_net_x7;
  wire [25-1:0] register0_q_net_x4;
  wire [14-1:0] register8_q_net_x1;
  wire [14-1:0] register3_q_net_x7;
  wire [1-1:0] register9_q_net_x1;
  wire [25-1:0] register0_q_net_x5;
  wire [6-1:0] register7_q_net_x8;
  wire [25-1:0] register0_q_net_x2;
  wire [25-1:0] register0_q_net_x7;
  wire [25-1:0] register0_q_net_x3;
  wire [2-1:0] register5_q_net_x6;
  wire [25-1:0] register15_q_net_x1;
  wire [25-1:0] register2_q_net_x7;
  wire [25-1:0] register8_q_net_x0;
  wire [10-1:0] register14_q_net_x0;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] register12_q_net_x1;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register9_q_net_x0;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register4_q_net_x6;
  wire [25-1:0] register7_q_net_x6;
  wire [10-1:0] register13_q_net_x0;
  wire [25-1:0] register13_q_net_x1;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register11_q_net_x1;
  wire [25-1:0] register5_q_net_x7;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register5_q_net_x3;
  wire [1-1:0] register15_q_net_x0;
  wire [25-1:0] register6_q_net_x6;
  wire [2-1:0] register16_q_net;
  wire [18-1:0] register0_q_net_x1;
  wire [25-1:0] register3_q_net_x8;
  wire [25-1:0] register14_q_net_x1;
  wire [25-1:0] register1_q_net_x9;
  wire [18-1:0] register11_q_net_x0;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register7_q_net_x5;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] register2_q_net_x5;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register1_q_net_x4;
  wire [25-1:0] register4_q_net_x5;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] register5_q_net_x5;
  wire [25-1:0] register6_q_net_x5;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register3_q_net_x5;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register5_q_net_x0;
  wire [32-1:0] concat5_y_net;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register4_q_net_x0;
  wire [25-1:0] register1_q_net_x0;
  wire [32-1:0] concat3_y_net;
  wire [14-1:0] upsample0_q_net_x0;
  wire [25-1:0] register7_q_net_x2;
  wire [8-1:0] concat1_y_net;
  wire [25-1:0] register4_q_net_x1;
  wire [14-1:0] upsample3_q_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [18-1:0] add_offset_ch2_s_net;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register1_q_net_x2;
  wire [18-1:0] register1_q_net_x1;
  wire [25-1:0] register3_q_net_x1;
  wire [32-1:0] concat_y_net;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register6_q_net_x0;
  wire [32-1:0] concat4_y_net;
  wire [14-1:0] upsample1_q_net_x0;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] upsample1_q_net;
  wire [25-1:0] register7_q_net_x1;
  wire [25-1:0] register2_q_net_x1;
  wire [25-1:0] register7_q_net_x0;
  wire [14-1:0] upsample2_q_net;
  wire [25-1:0] register6_q_net_x2;
  wire [32-1:0] concat2_y_net;
  wire [43-1:0] mult2_p_net_x0;
  wire clk_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult0_p_net_x5;
  wire [43-1:0] mult1_p_net_x6;
  wire [14-1:0] z_in_net;
  wire [20-1:0] addsub12_s_net_x1;
  wire [43-1:0] mult0_p_net_x3;
  wire [43-1:0] mult2_p_net_x2;
  wire [43-1:0] mult3_p_net_x2;
  wire [20-1:0] addsub12_s_net_x4;
  wire [20-1:0] addsub2_s_net_x8;
  wire [43-1:0] mult1_p_net_x1;
  wire [39-1:0] mult1_p_net_x8;
  wire [39-1:0] mult0_p_net_x8;
  wire [39-1:0] mult1_p_net_x9;
  wire [39-1:0] mult0_p_net_x9;
  wire [39-1:0] mult0_p_net_x10;
  wire [39-1:0] mult1_p_net_x10;
  wire [20-1:0] addsub2_s_net_x4;
  wire [20-1:0] addsub12_s_net_x3;
  wire [43-1:0] mult1_p_net_x2;
  wire [43-1:0] mult3_p_net_x4;
  wire [20-1:0] addsub2_s_net_x3;
  wire [20-1:0] addsub12_s_net;
  wire [39-1:0] mult1_p_net_x11;
  wire [43-1:0] mult0_p_net_x12;
  wire [14-1:0] x_in_net;
  wire [16-1:0] sfix16_13_cast1_dout_net;
  wire [43-1:0] mult1_p_net_x0;
  wire [43-1:0] mult3_p_net_x0;
  wire [43-1:0] mult0_p_net_x1;
  wire [20-1:0] addsub2_s_net_x5;
  wire [43-1:0] mult1_p_net_x13;
  wire [20-1:0] addsub2_s_net_x6;
  wire [20-1:0] addsub2_s_net_x2;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult0_p_net_x6;
  wire [43-1:0] mult3_p_net_x3;
  wire [43-1:0] mult2_p_net_x3;
  wire [20-1:0] addsub12_s_net_x0;
  wire [43-1:0] mult1_p_net_x4;
  wire [43-1:0] mult0_p_net_x0;
  wire [39-1:0] mult0_p_net_x7;
  wire [20-1:0] addsub2_s_net_x7;
  wire src_clk_net;
  wire [20-1:0] addsub12_s_net_x2;
  wire [43-1:0] mult3_p_net_x1;
  wire [1-1:0] hw_pot_switch_net;
  wire [43-1:0] mult3_p_net;
  wire [43-1:0] mult0_p_net_x4;
  wire [43-1:0] mult2_p_net_x4;
  wire [43-1:0] mult1_p_net_x7;
  wire src_ce_net;
  wire [43-1:0] mult2_p_net_x1;
  wire ce_net;
  wire [43-1:0] mult1_p_net_x5;
  wire [25-1:0] downsample9_q_net;
  wire [21-1:0] addsub3_s_net;
  wire [14-1:0] convert0_dout_net_x0;
  wire [25-1:0] downsample5_q_net_x6;
  wire [25-1:0] downsample2_q_net_x4;
  wire [25-1:0] downsample2_q_net_x6;
  wire [20-1:0] addsub2_s_net_x1;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample3_q_net_x4;
  wire [25-1:0] downsample4_q_net_x4;
  wire [14-1:0] convert1_dout_net_x0;
  wire [25-1:0] downsample3_q_net_x6;
  wire [25-1:0] downsample4_q_net_x6;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample4_q_net_x5;
  wire [43-1:0] mult1_p_net_x12;
  wire [22-1:0] addsub2_s_net_x0;
  wire [22-1:0] addsub3_s_net_x0;
  wire [43-1:0] mult0_p_net_x2;
  wire [21-1:0] addsub1_s_net;
  wire [18-1:0] constant0_op_net;
  wire [14-1:0] convert1_dout_net;
  wire [20-1:0] mux1_y_net_x3;
  wire [25-1:0] downsample0_q_net_x8;
  wire [43-1:0] mult1_p_net_x3;
  wire [21-1:0] addsub2_s_net;
  wire [18-1:0] convert0_dout_net_x1;
  wire [25-1:0] downsample1_q_net_x8;
  wire [18-1:0] constant1_op_net;
  wire [14-1:0] convert3_dout_net;
  wire [18-1:0] convert2_dout_net_x0;
  wire [18-1:0] convert3_dout_net_x0;
  wire [25-1:0] downsample6_q_net_x6;
  wire [43-1:0] mult0_p_net_x11;
  wire [25-1:0] downsample7_q_net_x6;
  wire [25-1:0] downsample12_q_net_x0;
  wire [20-1:0] mux0_y_net_x2;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample15_q_net_x0;
  wire [14-1:0] convert0_dout_net;
  wire [22-1:0] addsub0_s_net_x0;
  wire [25-1:0] downsample1_q_net_x7;
  wire [25-1:0] downsample2_q_net_x5;
  wire [14-1:0] convert2_dout_net;
  wire [25-1:0] downsample13_q_net_x0;
  wire [22-1:0] addsub1_s_net_x0;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample0_q_net_x7;
  wire [25-1:0] downsample3_q_net_x5;
  wire [25-1:0] downsample7_q_net_x5;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [18-1:0] convert1_dout_net_x1;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample5_q_net_x5;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample6_q_net_x5;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample0_q_net_x6;
  wire [25-1:0] downsample1_q_net_x6;
  wire [21-1:0] addsub0_s_net;
  wire [25-1:0] downsample14_q_net_x0;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] downsample6_q_net_x1;
  wire [25-1:0] downsample4_q_net_x2;
  wire [25-1:0] downsample0_q_net_x3;
  wire [25-1:0] downsample7_q_net_x3;
  wire [25-1:0] downsample2_q_net_x3;
  wire [25-1:0] downsample7_q_net_x2;
  wire [25-1:0] downsample3_q_net_x1;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] mux4_y_net_x0;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] downsample2_q_net_x2;
  wire [25-1:0] downsample1_q_net_x0;
  wire [18-1:0] downsample0_q_net_x1;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] downsample5_q_net_x4;
  wire [25-1:0] downsample6_q_net_x2;
  wire [25-1:0] downsample1_q_net_x5;
  wire [25-1:0] downsample5_q_net_x2;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample0_q_net_x4;
  wire [25-1:0] downsample1_q_net_x4;
  wire [25-1:0] mux0_y_net_x0;
  wire [25-1:0] downsample5_q_net_x1;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample7_q_net_x4;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] mux5_y_net_x0;
  wire [25-1:0] downsample4_q_net_x1;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample4_q_net_x3;
  wire [25-1:0] downsample2_q_net_x1;
  wire [25-1:0] downsample1_q_net_x2;
  wire [25-1:0] downsample0_q_net_x2;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net_x4;
  wire [25-1:0] mux6_y_net_x0;
  wire [25-1:0] downsample1_q_net_x3;
  wire [18-1:0] downsample1_q_net_x1;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] downsample5_q_net_x3;
  wire [25-1:0] mux1_y_net_x0;
  wire [25-1:0] downsample3_q_net_x2;
  wire [25-1:0] mux7_y_net_x0;
  wire [25-1:0] downsample3_q_net_x3;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] downsample7_q_net_x1;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample6_q_net_x3;
  wire [25-1:0] downsample0_q_net_x5;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] mux1_y_net;
  wire [10-1:0] down_sample3_q_net;
  wire [18-1:0] down_sample_q_net;
  wire [18-1:0] addsub8_s_net;
  wire [18-1:0] addsub_s_net;
  wire [25-1:0] mux0_y_net_x1;
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] down_sample8_q_net;
  wire [10-1:0] addsub3_s_net_x1;
  wire [25-1:0] mux15_y_net;
  wire [18-1:0] register2_q_net_x6;
  wire [25-1:0] mux2_y_net_x1;
  wire [25-1:0] mux6_y_net_x1;
  wire [25-1:0] mux4_y_net_x1;
  wire [18-1:0] mult5_p_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux1_y_net_x2;
  wire [18-1:0] register3_q_net_x6;
  wire [11-1:0] mult1_p_net;
  wire [25-1:0] c0_ram_douta_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net_x1;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net_x1;
  wire [25-1:0] mux4_y_net_x2;
  wire [18-1:0] add_offset_ch1_s_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net_x2;
  wire [25-1:0] mux6_y_net_x2;
  wire [25-1:0] mux7_y_net_x2;
  wire [25-1:0] mux3_y_net_x1;
  wire [25-1:0] mux0_y_net_x3;
  wire [18-1:0] register1_q_net_x8;
  wire [2-1:0] down_sample6_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux3_y_net_x2;
  wire [25-1:0] mux5_y_net_x2;
  wire [18-1:0] constant2_op_net;
  wire [18-1:0] register0_q_net_x8;
  wire [25-1:0] c1_ram_doutb_net;
  wire [10-1:0] down_sample4_q_net;
  wire [25-1:0] c1_ram_douta_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [1-1:0] pot_sw_mux_y_net;
  wire [25-1:0] c0_ram_doutb_net;
  wire [16-1:0] reinterpret5_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [25-1:0] constant3_op_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [1-1:0] down_sample5_q_net;
  wire [1-1:0] constant4_op_net;
  wire [16-1:0] reinterpret8_output_port_net;
  wire [16-1:0] reinterpret9_output_port_net;
  wire [16-1:0] reinterpret10_output_port_net;
  wire [16-1:0] reinterpret6_output_port_net;
  wire [16-1:0] reinterpret7_output_port_net;
  wire [2-1:0] convert3_dout_net_x1;
  wire [18-1:0] constant1_op_net_x0;
  wire [16-1:0] reinterpret4_output_port_net;
  wire [1-1:0] relational_op_net;
  wire [25-1:0] down_sample2_q_net;
  wire [2-1:0] expression_dout_net;
  wire [2-1:0] shift_op_net;
  wire [18-1:0] register7_q_net_x7;
  wire [18-1:0] mux8_y_net_x0;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] register_q_net_x0;
  wire [16-1:0] sfix16_cast5_dout_net;
  wire [16-1:0] sfix16_cast10_dout_net;
  wire [16-1:0] sfix16_cast6_dout_net;
  wire [16-1:0] sfix16_cast2_dout_net;
  wire [16-1:0] sfix16_cast4_dout_net;
  wire [16-1:0] sfix16_cast7_dout_net;
  wire [16-1:0] sfix16_cast1_dout_net;
  wire [16-1:0] sfix16_cast3_dout_net;
  wire [16-1:0] sfix16_cast8_dout_net;
  wire [16-1:0] sfix16_cast9_dout_net;
  wire [18-1:0] up_sample2_q_net;
  wire [18-1:0] up_sample3_q_net;
  wire [18-1:0] up_sample1_q_net;
  wire [14-1:0] x_in_reg_q_net;
  wire [1-1:0] relational1_op_net;
  wire [18-1:0] up_sample_q_net;
  wire [14-1:0] ofst_mon_in_reg_q_net;
  assign register_q_net = sw_in;
  assign register0_q_net_x9 = fmat_in_1;
  assign register0_q_net_x5 = lmat_in_1;
  assign register0_q_net_x6 = kmat_in_1;
  assign register0_q_net = bmat_in_1;
  assign register0_q_net_x7 = fmat_ip_in_1;
  assign register0_q_net_x4 = lmat_ip_in_1;
  assign register0_q_net_x3 = kmat_ip_in_1;
  assign register0_q_net_x2 = bmat_ip_in_1;
  assign register5_q_net_x6 = hw_switch_override;
  assign register3_q_net_x7 = adc_ch1_offst;
  assign register6_q_net_x7 = adc_ch2_offst;
  assign register8_q_net_x1 = pot_switch_hw;
  assign register9_q_net_x1 = pot_switch_hw_flag;
  assign register7_q_net_x8 = leds_in;
  assign register11_q_net_x0 = x_ref_in;
  assign register16_q_net = fb_src_switch;
  assign register0_q_net_x1 = barrier_ub_lb_in_1;
  assign register12_q_net_x0 = barrier_c_idx_in;
  assign register13_q_net_x0 = barrier_c_ofst_idx_in;
  assign register14_q_net_x0 = barrier_ram_addr_in;
  assign register0_q_net_x0 = barrier_ram_data_in_1;
  assign register15_q_net_x0 = barrier_ram_we_in;
  assign register1_q_net_x9 = fmat_in_2;
  assign register2_q_net_x7 = fmat_in_3;
  assign register3_q_net_x8 = fmat_in_4;
  assign register4_q_net_x6 = fmat_in_5;
  assign register5_q_net_x7 = fmat_in_6;
  assign register6_q_net_x6 = fmat_in_7;
  assign register7_q_net_x6 = fmat_in_8;
  assign register8_q_net_x0 = fmat_in_9;
  assign register9_q_net_x0 = fmat_in_10;
  assign register10_q_net_x0 = fmat_in_11;
  assign register11_q_net_x1 = fmat_in_12;
  assign register12_q_net_x1 = fmat_in_13;
  assign register13_q_net_x1 = fmat_in_14;
  assign register14_q_net_x1 = fmat_in_15;
  assign register15_q_net_x1 = fmat_in_16;
  assign register1_q_net_x5 = lmat_in_2;
  assign register2_q_net_x3 = lmat_in_3;
  assign register3_q_net_x3 = lmat_in_4;
  assign register4_q_net_x3 = lmat_in_5;
  assign register5_q_net_x3 = lmat_in_6;
  assign register6_q_net_x3 = lmat_in_7;
  assign register7_q_net_x3 = lmat_in_8;
  assign register1_q_net_x6 = kmat_in_2;
  assign register2_q_net_x4 = kmat_in_3;
  assign register3_q_net_x4 = kmat_in_4;
  assign register4_q_net_x4 = kmat_in_5;
  assign register5_q_net_x4 = kmat_in_6;
  assign register6_q_net_x4 = kmat_in_7;
  assign register7_q_net_x4 = kmat_in_8;
  assign register1_q_net = bmat_in_2;
  assign register2_q_net = bmat_in_3;
  assign register3_q_net = bmat_in_4;
  assign register4_q_net = bmat_in_5;
  assign register5_q_net = bmat_in_6;
  assign register6_q_net = bmat_in_7;
  assign register7_q_net = bmat_in_8;
  assign register1_q_net_x7 = fmat_ip_in_2;
  assign register2_q_net_x5 = fmat_ip_in_3;
  assign register3_q_net_x5 = fmat_ip_in_4;
  assign register4_q_net_x5 = fmat_ip_in_5;
  assign register5_q_net_x5 = fmat_ip_in_6;
  assign register6_q_net_x5 = fmat_ip_in_7;
  assign register7_q_net_x5 = fmat_ip_in_8;
  assign register8_q_net = fmat_ip_in_9;
  assign register9_q_net = fmat_ip_in_10;
  assign register10_q_net = fmat_ip_in_11;
  assign register11_q_net = fmat_ip_in_12;
  assign register12_q_net = fmat_ip_in_13;
  assign register13_q_net = fmat_ip_in_14;
  assign register14_q_net = fmat_ip_in_15;
  assign register15_q_net = fmat_ip_in_16;
  assign register1_q_net_x4 = lmat_ip_in_2;
  assign register2_q_net_x2 = lmat_ip_in_3;
  assign register3_q_net_x2 = lmat_ip_in_4;
  assign register4_q_net_x2 = lmat_ip_in_5;
  assign register5_q_net_x2 = lmat_ip_in_6;
  assign register6_q_net_x2 = lmat_ip_in_7;
  assign register7_q_net_x2 = lmat_ip_in_8;
  assign register1_q_net_x3 = kmat_ip_in_2;
  assign register2_q_net_x1 = kmat_ip_in_3;
  assign register3_q_net_x1 = kmat_ip_in_4;
  assign register4_q_net_x1 = kmat_ip_in_5;
  assign register5_q_net_x1 = kmat_ip_in_6;
  assign register6_q_net_x1 = kmat_ip_in_7;
  assign register7_q_net_x1 = kmat_ip_in_8;
  assign register1_q_net_x2 = bmat_ip_in_2;
  assign register2_q_net_x0 = bmat_ip_in_3;
  assign register3_q_net_x0 = bmat_ip_in_4;
  assign register4_q_net_x0 = bmat_ip_in_5;
  assign register5_q_net_x0 = bmat_ip_in_6;
  assign register6_q_net_x0 = bmat_ip_in_7;
  assign register7_q_net_x0 = bmat_ip_in_8;
  assign register1_q_net_x1 = barrier_ub_lb_in_2;
  assign register1_q_net_x0 = barrier_ram_data_in_2;
  assign divisor_out = add_offset_ch2_s_net;
  assign dma_out_1 = concat_y_net;
  assign dma_out_2 = concat2_y_net;
  assign dma_out_3 = concat3_y_net;
  assign dma_out_4 = concat5_y_net;
  assign dma_out_5 = concat4_y_net;
  assign gate_fb_x_out = upsample0_q_net_x0;
  assign gate_fb_z_out = upsample1_q_net_x0;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = upsample0_q_net;
  assign gate_x2_out = upsample1_q_net;
  assign gate_x3_out = upsample2_q_net;
  assign gate_x4_out = upsample3_q_net;
  assign gate_y_x_corrected_out = sfix16_13_cast_dout_net;
  assign gate_y_z_corrected_out = sfix16_13_cast1_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign z_in_net = z_in;
  assign x_in_net = x_in;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_2dof_sum_four_elements sum_four_elements (
    .in1_1(mult0_p_net),
    .in1_2(mult1_p_net_x0),
    .in1_3(mult2_p_net),
    .in1_4(mult3_p_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x4)
  );
  fpga_kf_2dof_sum_four_elements1 sum_four_elements1 (
    .in1_1(mult0_p_net_x0),
    .in1_2(mult1_p_net_x1),
    .in1_3(mult2_p_net_x0),
    .in1_4(mult3_p_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x3)
  );
  fpga_kf_2dof_sum_four_elements2 sum_four_elements2 (
    .in1_1(mult0_p_net_x5),
    .in1_2(mult1_p_net_x6),
    .in1_3(mult2_p_net_x3),
    .in1_4(mult3_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x2)
  );
  fpga_kf_2dof_sum_four_elements3 sum_four_elements3 (
    .in1_1(mult0_p_net_x6),
    .in1_2(mult1_p_net_x7),
    .in1_3(mult2_p_net_x4),
    .in1_4(mult3_p_net_x4),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x1)
  );
  fpga_kf_2dof_sum_four_elements4 sum_four_elements4 (
    .in1_1(mult0_p_net_x3),
    .in1_2(mult1_p_net_x4),
    .in1_3(mult2_p_net_x1),
    .in1_4(mult3_p_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x0)
  );
  fpga_kf_2dof_sum_four_elements5 sum_four_elements5 (
    .in1_1(mult0_p_net_x4),
    .in1_2(mult1_p_net_x5),
    .in1_3(mult2_p_net_x2),
    .in1_4(mult3_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net)
  );
  fpga_kf_2dof_sum_two_elements sum_two_elements (
    .in1_1(mult0_p_net_x7),
    .in1_2(mult1_p_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x8)
  );
  fpga_kf_2dof_sum_two_elements1 sum_two_elements1 (
    .in1_1(mult0_p_net_x8),
    .in1_2(mult1_p_net_x9),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x7)
  );
  fpga_kf_2dof_sum_two_elements2 sum_two_elements2 (
    .in1_1(mult0_p_net_x9),
    .in1_2(mult1_p_net_x10),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x6)
  );
  fpga_kf_2dof_sum_two_elements3 sum_two_elements3 (
    .in1_1(mult0_p_net_x10),
    .in1_2(mult1_p_net_x11),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x5)
  );
  fpga_kf_2dof_sum_two_elements4 sum_two_elements4 (
    .in1_1(mult0_p_net_x1),
    .in1_2(mult1_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x4)
  );
  fpga_kf_2dof_sum_two_elements5 sum_two_elements5 (
    .in1_1(mult0_p_net_x12),
    .in1_2(mult1_p_net_x13),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x3)
  );
  fpga_kf_2dof_sum_two_elements6 sum_two_elements6 (
    .in1_1(mult0_p_net_x11),
    .in1_2(mult1_p_net_x12),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x2)
  );
  fpga_kf_2dof_sum_two_elements7 sum_two_elements7 (
    .in1_1(mult0_p_net_x2),
    .in1_2(mult1_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x1)
  );
  fpga_kf_2dof_vector_addsub_fabric vector_addsub_fabric (
    .a_1(addsub0_s_net),
    .b_1(addsub2_s_net_x4),
    .a_2(addsub1_s_net),
    .a_3(addsub2_s_net),
    .a_4(addsub3_s_net),
    .b_2(addsub2_s_net_x3),
    .b_3(addsub2_s_net_x2),
    .b_4(addsub2_s_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net_x0),
    .a_b_2(addsub1_s_net_x0),
    .a_b_3(addsub2_s_net_x0),
    .a_b_4(addsub3_s_net_x0)
  );
  fpga_kf_2dof_vector_addsub_fabric1 vector_addsub_fabric1 (
    .a_1(addsub12_s_net_x4),
    .b_1(addsub2_s_net_x8),
    .a_2(addsub12_s_net_x3),
    .a_3(addsub12_s_net_x2),
    .a_4(addsub12_s_net_x1),
    .b_2(addsub2_s_net_x7),
    .b_3(addsub2_s_net_x6),
    .b_4(addsub2_s_net_x5),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net),
    .a_b_2(addsub1_s_net),
    .a_b_3(addsub2_s_net),
    .a_b_4(addsub3_s_net)
  );
  fpga_kf_2dof_vector_constant vector_constant (
    .out1_1(constant0_op_net),
    .out1_2(constant1_op_net)
  );
  fpga_kf_2dof_vector_convert vector_convert (
    .i_1(addsub0_s_net_x0),
    .i_2(addsub1_s_net_x0),
    .i_3(addsub2_s_net_x0),
    .i_4(addsub3_s_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net_x1),
    .o_2(convert1_dout_net_x1),
    .o_3(convert2_dout_net_x0),
    .o_4(convert3_dout_net_x0)
  );
  fpga_kf_2dof_vector_convert1 vector_convert1 (
    .i_1(convert0_dout_net_x1),
    .i_2(convert1_dout_net_x1),
    .i_3(convert2_dout_net_x0),
    .i_4(convert3_dout_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net_x0),
    .o_2(convert1_dout_net_x0),
    .o_3(convert2_dout_net),
    .o_4(convert3_dout_net)
  );
  fpga_kf_2dof_vector_convert2 vector_convert2 (
    .i_1(mux0_y_net_x2),
    .i_2(mux1_y_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net),
    .o_2(convert1_dout_net)
  );
  fpga_kf_2dof_vector_down_sample vector_down_sample (
    .in_1(register0_q_net_x9),
    .in_2(register1_q_net_x9),
    .in_3(register2_q_net_x7),
    .in_4(register3_q_net_x8),
    .in_5(register4_q_net_x6),
    .in_6(register5_q_net_x7),
    .in_7(register6_q_net_x6),
    .in_8(register7_q_net_x6),
    .in_9(register8_q_net_x0),
    .in_10(register9_q_net_x0),
    .in_11(register10_q_net_x0),
    .in_12(register11_q_net_x1),
    .in_13(register12_q_net_x1),
    .in_14(register13_q_net_x1),
    .in_15(register14_q_net_x1),
    .in_16(register15_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x8),
    .out_2(downsample1_q_net_x8),
    .out_3(downsample2_q_net_x6),
    .out_4(downsample3_q_net_x6),
    .out_5(downsample4_q_net_x6),
    .out_6(downsample5_q_net_x6),
    .out_7(downsample6_q_net_x6),
    .out_8(downsample7_q_net_x6),
    .out_9(downsample8_q_net_x0),
    .out_10(downsample9_q_net_x0),
    .out_11(downsample10_q_net_x0),
    .out_12(downsample11_q_net_x0),
    .out_13(downsample12_q_net_x0),
    .out_14(downsample13_q_net_x0),
    .out_15(downsample14_q_net_x0),
    .out_16(downsample15_q_net_x0)
  );
  fpga_kf_2dof_vector_down_sample1 vector_down_sample1 (
    .in_1(register0_q_net_x7),
    .in_2(register1_q_net_x7),
    .in_3(register2_q_net_x5),
    .in_4(register3_q_net_x5),
    .in_5(register4_q_net_x5),
    .in_6(register5_q_net_x5),
    .in_7(register6_q_net_x5),
    .in_8(register7_q_net_x5),
    .in_9(register8_q_net),
    .in_10(register9_q_net),
    .in_11(register10_q_net),
    .in_12(register11_q_net),
    .in_13(register12_q_net),
    .in_14(register13_q_net),
    .in_15(register14_q_net),
    .in_16(register15_q_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x7),
    .out_2(downsample1_q_net_x7),
    .out_3(downsample2_q_net_x5),
    .out_4(downsample3_q_net_x5),
    .out_5(downsample4_q_net_x5),
    .out_6(downsample5_q_net_x5),
    .out_7(downsample6_q_net_x5),
    .out_8(downsample7_q_net_x5),
    .out_9(downsample8_q_net),
    .out_10(downsample9_q_net),
    .out_11(downsample10_q_net),
    .out_12(downsample11_q_net),
    .out_13(downsample12_q_net),
    .out_14(downsample13_q_net),
    .out_15(downsample14_q_net),
    .out_16(downsample15_q_net)
  );
  fpga_kf_2dof_vector_down_sample2 vector_down_sample2 (
    .in_1(register0_q_net_x5),
    .in_2(register1_q_net_x5),
    .in_3(register2_q_net_x3),
    .in_4(register3_q_net_x3),
    .in_5(register4_q_net_x3),
    .in_6(register5_q_net_x3),
    .in_7(register6_q_net_x3),
    .in_8(register7_q_net_x3),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x6),
    .out_2(downsample1_q_net_x6),
    .out_3(downsample2_q_net_x4),
    .out_4(downsample3_q_net_x4),
    .out_5(downsample4_q_net_x4),
    .out_6(downsample5_q_net_x4),
    .out_7(downsample6_q_net_x4),
    .out_8(downsample7_q_net_x4)
  );
  fpga_kf_2dof_vector_down_sample3 vector_down_sample3 (
    .in_1(register0_q_net_x6),
    .in_2(register1_q_net_x6),
    .in_3(register2_q_net_x4),
    .in_4(register3_q_net_x4),
    .in_5(register4_q_net_x4),
    .in_6(register5_q_net_x4),
    .in_7(register6_q_net_x4),
    .in_8(register7_q_net_x4),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x5),
    .out_2(downsample1_q_net_x5),
    .out_3(downsample2_q_net_x3),
    .out_4(downsample3_q_net_x3),
    .out_5(downsample4_q_net_x3),
    .out_6(downsample5_q_net_x3),
    .out_7(downsample6_q_net_x3),
    .out_8(downsample7_q_net_x3)
  );
  fpga_kf_2dof_vector_down_sample4 vector_down_sample4 (
    .in_1(register0_q_net_x4),
    .in_2(register1_q_net_x4),
    .in_3(register2_q_net_x2),
    .in_4(register3_q_net_x2),
    .in_5(register4_q_net_x2),
    .in_6(register5_q_net_x2),
    .in_7(register6_q_net_x2),
    .in_8(register7_q_net_x2),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x4),
    .out_2(downsample1_q_net_x4),
    .out_3(downsample2_q_net_x2),
    .out_4(downsample3_q_net_x2),
    .out_5(downsample4_q_net_x2),
    .out_6(downsample5_q_net_x2),
    .out_7(downsample6_q_net_x2),
    .out_8(downsample7_q_net_x2)
  );
  fpga_kf_2dof_vector_down_sample5 vector_down_sample5 (
    .in_1(register0_q_net_x3),
    .in_2(register1_q_net_x3),
    .in_3(register2_q_net_x1),
    .in_4(register3_q_net_x1),
    .in_5(register4_q_net_x1),
    .in_6(register5_q_net_x1),
    .in_7(register6_q_net_x1),
    .in_8(register7_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x3),
    .out_2(downsample1_q_net_x3),
    .out_3(downsample2_q_net_x1),
    .out_4(downsample3_q_net_x1),
    .out_5(downsample4_q_net_x1),
    .out_6(downsample5_q_net_x1),
    .out_7(downsample6_q_net_x1),
    .out_8(downsample7_q_net_x1)
  );
  fpga_kf_2dof_vector_down_sample6 vector_down_sample6 (
    .in_1(register0_q_net_x2),
    .in_2(register1_q_net_x2),
    .in_3(register2_q_net_x0),
    .in_4(register3_q_net_x0),
    .in_5(register4_q_net_x0),
    .in_6(register5_q_net_x0),
    .in_7(register6_q_net_x0),
    .in_8(register7_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x2),
    .out_2(downsample1_q_net_x2),
    .out_3(downsample2_q_net_x0),
    .out_4(downsample3_q_net_x0),
    .out_5(downsample4_q_net_x0),
    .out_6(downsample5_q_net_x0),
    .out_7(downsample6_q_net_x0),
    .out_8(downsample7_q_net_x0)
  );
  fpga_kf_2dof_vector_down_sample7 vector_down_sample7 (
    .in_1(register0_q_net_x1),
    .in_2(register1_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x1),
    .out_2(downsample1_q_net_x1)
  );
  fpga_kf_2dof_vector_down_sample8 vector_down_sample8 (
    .in_1(register0_q_net_x0),
    .in_2(register1_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x0),
    .out_2(downsample1_q_net_x0)
  );
  fpga_kf_2dof_vector_down_sample9 vector_down_sample9 (
    .in_1(register0_q_net),
    .in_2(register1_q_net),
    .in_3(register2_q_net),
    .in_4(register3_q_net),
    .in_5(register4_q_net),
    .in_6(register5_q_net),
    .in_7(register6_q_net),
    .in_8(register7_q_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net),
    .out_2(downsample1_q_net),
    .out_3(downsample2_q_net),
    .out_4(downsample3_q_net),
    .out_5(downsample4_q_net),
    .out_6(downsample5_q_net),
    .out_7(downsample6_q_net),
    .out_8(downsample7_q_net)
  );
  fpga_kf_2dof_vector_mux vector_mux (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x8),
    .i1_1(downsample0_q_net_x7),
    .i0_2(downsample1_q_net_x8),
    .i0_3(downsample2_q_net_x6),
    .i0_4(downsample3_q_net_x6),
    .i0_5(downsample4_q_net_x6),
    .i0_6(downsample5_q_net_x6),
    .i0_7(downsample6_q_net_x6),
    .i0_8(downsample7_q_net_x6),
    .i0_9(downsample8_q_net_x0),
    .i0_10(downsample9_q_net_x0),
    .i0_11(downsample10_q_net_x0),
    .i0_12(downsample11_q_net_x0),
    .i0_13(downsample12_q_net_x0),
    .i0_14(downsample13_q_net_x0),
    .i0_15(downsample14_q_net_x0),
    .i0_16(downsample15_q_net_x0),
    .i1_2(downsample1_q_net_x7),
    .i1_3(downsample2_q_net_x5),
    .i1_4(downsample3_q_net_x5),
    .i1_5(downsample4_q_net_x5),
    .i1_6(downsample5_q_net_x5),
    .i1_7(downsample6_q_net_x5),
    .i1_8(downsample7_q_net_x5),
    .i1_9(downsample8_q_net),
    .i1_10(downsample9_q_net),
    .i1_11(downsample10_q_net),
    .i1_12(downsample11_q_net),
    .i1_13(downsample12_q_net),
    .i1_14(downsample13_q_net),
    .i1_15(downsample14_q_net),
    .i1_16(downsample15_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x0),
    .o_2(mux1_y_net_x0),
    .o_3(mux2_y_net_x0),
    .o_4(mux3_y_net_x0),
    .o_5(mux4_y_net_x0),
    .o_6(mux5_y_net_x0),
    .o_7(mux6_y_net_x0),
    .o_8(mux7_y_net_x0),
    .o_9(mux8_y_net),
    .o_10(mux9_y_net),
    .o_11(mux10_y_net),
    .o_12(mux11_y_net),
    .o_13(mux12_y_net),
    .o_14(mux13_y_net),
    .o_15(mux14_y_net),
    .o_16(mux15_y_net)
  );
  fpga_kf_2dof_vector_mux1 vector_mux1 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net),
    .i1_1(downsample0_q_net_x2),
    .i0_2(downsample1_q_net),
    .i0_3(downsample2_q_net),
    .i0_4(downsample3_q_net),
    .i0_5(downsample4_q_net),
    .i0_6(downsample5_q_net),
    .i0_7(downsample6_q_net),
    .i0_8(downsample7_q_net),
    .i1_2(downsample1_q_net_x2),
    .i1_3(downsample2_q_net_x0),
    .i1_4(downsample3_q_net_x0),
    .i1_5(downsample4_q_net_x0),
    .i1_6(downsample5_q_net_x0),
    .i1_7(downsample6_q_net_x0),
    .i1_8(downsample7_q_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
  fpga_kf_2dof_vector_mux2 vector_mux2 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x6),
    .i1_1(downsample0_q_net_x4),
    .i0_2(downsample1_q_net_x6),
    .i0_3(downsample2_q_net_x4),
    .i0_4(downsample3_q_net_x4),
    .i0_5(downsample4_q_net_x4),
    .i0_6(downsample5_q_net_x4),
    .i0_7(downsample6_q_net_x4),
    .i0_8(downsample7_q_net_x4),
    .i1_2(downsample1_q_net_x4),
    .i1_3(downsample2_q_net_x2),
    .i1_4(downsample3_q_net_x2),
    .i1_5(downsample4_q_net_x2),
    .i1_6(downsample5_q_net_x2),
    .i1_7(downsample6_q_net_x2),
    .i1_8(downsample7_q_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x3),
    .o_2(mux1_y_net_x1),
    .o_3(mux2_y_net_x1),
    .o_4(mux3_y_net_x1),
    .o_5(mux4_y_net_x1),
    .o_6(mux5_y_net_x1),
    .o_7(mux6_y_net_x1),
    .o_8(mux7_y_net_x1)
  );
  fpga_kf_2dof_vector_mux3 vector_mux3 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x5),
    .i1_1(downsample0_q_net_x3),
    .i0_2(downsample1_q_net_x5),
    .i0_3(downsample2_q_net_x3),
    .i0_4(downsample3_q_net_x3),
    .i0_5(downsample4_q_net_x3),
    .i0_6(downsample5_q_net_x3),
    .i0_7(downsample6_q_net_x3),
    .i0_8(downsample7_q_net_x3),
    .i1_2(downsample1_q_net_x3),
    .i1_3(downsample2_q_net_x1),
    .i1_4(downsample3_q_net_x1),
    .i1_5(downsample4_q_net_x1),
    .i1_6(downsample5_q_net_x1),
    .i1_7(downsample6_q_net_x1),
    .i1_8(downsample7_q_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x1),
    .o_2(mux1_y_net_x2),
    .o_3(mux2_y_net_x2),
    .o_4(mux3_y_net_x2),
    .o_5(mux4_y_net_x2),
    .o_6(mux5_y_net_x2),
    .o_7(mux6_y_net_x2),
    .o_8(mux7_y_net_x2)
  );
  fpga_kf_2dof_vector_mux4 vector_mux4 (
    .sel(down_sample6_q_net),
    .i0_1(constant0_op_net),
    .i1_1(addsub12_s_net_x0),
    .i2_1(addsub8_s_net),
    .i0_2(constant1_op_net),
    .i1_2(addsub12_s_net),
    .i2_2(constant2_op_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x2),
    .o_2(mux1_y_net_x3)
  );
  fpga_kf_2dof_vector_real_mult vector_real_mult (
    .a_1(mux0_y_net_x0),
    .b_1(register0_q_net_x8),
    .a_2(mux1_y_net_x0),
    .a_3(mux2_y_net_x0),
    .a_4(mux3_y_net_x0),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net),
    .a_x_b_2(mult1_p_net_x0),
    .a_x_b_3(mult2_p_net),
    .a_x_b_4(mult3_p_net)
  );
  fpga_kf_2dof_vector_real_mult1 vector_real_mult1 (
    .a_1(mux4_y_net_x0),
    .b_1(register0_q_net_x8),
    .a_2(mux5_y_net_x0),
    .a_3(mux6_y_net_x0),
    .a_4(mux7_y_net_x0),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x0),
    .a_x_b_2(mult1_p_net_x1),
    .a_x_b_3(mult2_p_net_x0),
    .a_x_b_4(mult3_p_net_x0)
  );
  fpga_kf_2dof_vector_real_mult10 vector_real_mult10 (
    .a_1(mux0_y_net_x3),
    .b_1(down_sample_q_net),
    .a_2(mux1_y_net_x1),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x1),
    .a_x_b_2(mult1_p_net_x2)
  );
  fpga_kf_2dof_vector_real_mult11 vector_real_mult11 (
    .a_1(mux6_y_net_x1),
    .b_1(down_sample_q_net),
    .a_2(mux7_y_net_x1),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x2),
    .a_x_b_2(mult1_p_net_x3)
  );
  fpga_kf_2dof_vector_real_mult12 vector_real_mult12 (
    .a_1(mux0_y_net_x1),
    .b_1(register0_q_net_x8),
    .a_2(mux1_y_net_x2),
    .a_3(mux2_y_net_x2),
    .a_4(mux3_y_net_x2),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x3),
    .a_x_b_2(mult1_p_net_x4),
    .a_x_b_3(mult2_p_net_x1),
    .a_x_b_4(mult3_p_net_x1)
  );
  fpga_kf_2dof_vector_real_mult13 vector_real_mult13 (
    .a_1(mux4_y_net_x2),
    .b_1(register0_q_net_x8),
    .a_2(mux5_y_net_x2),
    .a_3(mux6_y_net_x2),
    .a_4(mux7_y_net_x2),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x4),
    .a_x_b_2(mult1_p_net_x5),
    .a_x_b_3(mult2_p_net_x2),
    .a_x_b_4(mult3_p_net_x2)
  );
  fpga_kf_2dof_vector_real_mult2 vector_real_mult2 (
    .a_1(mux8_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux9_y_net),
    .a_3(mux10_y_net),
    .a_4(mux11_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x5),
    .a_x_b_2(mult1_p_net_x6),
    .a_x_b_3(mult2_p_net_x3),
    .a_x_b_4(mult3_p_net_x3)
  );
  fpga_kf_2dof_vector_real_mult3 vector_real_mult3 (
    .a_1(mux12_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux13_y_net),
    .a_3(mux14_y_net),
    .a_4(mux15_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x6),
    .b_4(register3_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x6),
    .a_x_b_2(mult1_p_net_x7),
    .a_x_b_3(mult2_p_net_x4),
    .a_x_b_4(mult3_p_net_x4)
  );
  fpga_kf_2dof_vector_real_mult4 vector_real_mult4 (
    .a_1(mux0_y_net),
    .b_1(convert0_dout_net),
    .a_2(mux1_y_net),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x7),
    .a_x_b_2(mult1_p_net_x8)
  );
  fpga_kf_2dof_vector_real_mult5 vector_real_mult5 (
    .a_1(mux2_y_net),
    .b_1(convert0_dout_net),
    .a_2(mux3_y_net),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x8),
    .a_x_b_2(mult1_p_net_x9)
  );
  fpga_kf_2dof_vector_real_mult6 vector_real_mult6 (
    .a_1(mux4_y_net),
    .b_1(convert0_dout_net),
    .a_2(mux5_y_net),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x9),
    .a_x_b_2(mult1_p_net_x10)
  );
  fpga_kf_2dof_vector_real_mult7 vector_real_mult7 (
    .a_1(mux6_y_net),
    .b_1(convert0_dout_net),
    .a_2(mux7_y_net),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x10),
    .a_x_b_2(mult1_p_net_x11)
  );
  fpga_kf_2dof_vector_real_mult8 vector_real_mult8 (
    .a_1(mux4_y_net_x1),
    .b_1(down_sample_q_net),
    .a_2(mux5_y_net_x1),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x11),
    .a_x_b_2(mult1_p_net_x12)
  );
  fpga_kf_2dof_vector_real_mult9 vector_real_mult9 (
    .a_1(mux2_y_net_x1),
    .b_1(down_sample_q_net),
    .a_2(mux3_y_net_x1),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x12),
    .a_x_b_2(mult1_p_net_x13)
  );
  fpga_kf_2dof_vector_register vector_register (
    .d_1(convert0_dout_net_x1),
    .d_2(convert1_dout_net_x1),
    .d_3(convert2_dout_net_x0),
    .d_4(convert3_dout_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x8),
    .q_3(register2_q_net_x6),
    .q_4(register3_q_net_x6)
  );
  fpga_kf_2dof_vector_up_sample vector_up_sample (
    .in_1(convert0_dout_net_x0),
    .in_2(convert1_dout_net_x0),
    .in_3(convert2_dout_net),
    .in_4(convert3_dout_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(upsample0_q_net),
    .out_2(upsample1_q_net),
    .out_3(upsample2_q_net),
    .out_4(upsample3_q_net)
  );
  fpga_kf_2dof_vector_up_sample1 vector_up_sample1 (
    .in_1(convert0_dout_net),
    .in_2(convert1_dout_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(upsample0_q_net_x0),
    .out_2(upsample1_q_net_x0)
  );
  fpga_kf_2dof_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(19),
    .core_name0("fpga_kf_2dof_c_addsub_v12_0_i0"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(19),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(add_offset_ch1_s_net),
    .b(register11_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(addsub_s_net)
  );
  fpga_kf_2dof_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(11),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(12),
    .core_name0("fpga_kf_2dof_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(12),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult1_p_net),
    .b(down_sample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net_x1)
  );
  fpga_kf_2dof_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(26),
    .core_name0("fpga_kf_2dof_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(c0_ram_douta_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub8_s_net)
  );
  fpga_kf_2dof_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_8df37e_vivado.mem"),
    .mem_size(25600),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .width(25),
    .width_addr(10),
    .write_mode_a("read_first"),
    .write_mode_b("read_first")
  )
  c0_ram (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addsub3_s_net_x1),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample0_q_net_x0),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c0_ram_douta_net),
    .doutb(c0_ram_doutb_net)
  );
  fpga_kf_2dof_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_4124cc_vivado.mem"),
    .mem_size(25600),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .width(25),
    .width_addr(10),
    .write_mode_a("read_first"),
    .write_mode_b("read_first")
  )
  c1_ram (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addsub3_s_net_x1),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample1_q_net_x0),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c1_ram_douta_net),
    .doutb(c1_ram_doutb_net)
  );
  sysgen_concat_dd02c432f9 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret3_output_port_net),
    .in1(reinterpret5_output_port_net),
    .y(concat_y_net)
  );
  sysgen_concat_33701a6c2a concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(register7_q_net_x8),
    .in1(register9_q_net_x1),
    .in2(pot_sw_mux_y_net),
    .y(concat1_y_net)
  );
  sysgen_concat_dd02c432f9 concat2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret2_output_port_net),
    .y(concat2_y_net)
  );
  sysgen_concat_dd02c432f9 concat3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret4_output_port_net),
    .in1(reinterpret6_output_port_net),
    .y(concat3_y_net)
  );
  sysgen_concat_dd02c432f9 concat4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret8_output_port_net),
    .in1(reinterpret7_output_port_net),
    .y(concat4_y_net)
  );
  sysgen_concat_dd02c432f9 concat5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret9_output_port_net),
    .in1(reinterpret10_output_port_net),
    .y(concat5_y_net)
  );
  sysgen_constant_07d63e1f77 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net_x0)
  );
  sysgen_constant_07d63e1f77 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_0f60f053a0 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_constant_a173817625 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(2),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net_x1)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(addsub_s_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  down_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(pot_sw_mux_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample1_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(25)
  )
  down_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample2_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(10),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(10)
  )
  down_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample3_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(10),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(10)
  )
  down_sample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample4_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  down_sample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample5_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(2),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(2)
  )
  down_sample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample6_q_net)
  );
  fpga_kf_2dof_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  down_sample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(add_offset_ch2_s_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample8_q_net)
  );
  sysgen_expr_366839411f expression (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert3_dout_net_x1),
    .b(shift_op_net),
    .dout(expression_dout_net)
  );
  sysgen_inverter_3dc96c12b4 inverter (
    .clr(1'b0),
    .ip(register_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .op(inverter_op_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(0),
    .p_width(11),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net_x0),
    .b(down_sample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_2dof_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf_2dof_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(18),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(c1_ram_douta_net),
    .b(register7_q_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  sysgen_mux_301544ab71 mux8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(expression_dout_net),
    .d0(register0_q_net_x8),
    .d1(downsample0_q_net_x1),
    .d2(downsample1_q_net_x1),
    .d3(constant1_op_net_x0),
    .y(mux8_y_net_x0)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_pot_switch_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(register_q_net_x0)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x8),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net_x7)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast10_dout_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast4_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast3_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast6_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast5_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast7_dout_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast8_dout_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_5a95ee8bfc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast9_dout_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_relational_d42f24e0be relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x8),
    .b(downsample0_q_net_x1),
    .op(relational_op_net)
  );
  sysgen_relational_bb8bd277d9 relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x8),
    .b(downsample1_q_net_x1),
    .op(relational1_op_net)
  );
  sysgen_shift_8b78ab2984 shift (
    .clr(1'b0),
    .ip(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift_op_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  up_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register0_q_net_x8),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  up_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register1_q_net_x8),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample1_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  up_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register2_q_net_x6),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample2_q_net)
  );
  fpga_kf_2dof_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  up_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register3_q_net_x6),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample3_q_net)
  );
  fpga_kf_2dof_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_2dof_c_addsub_v12_0_i3"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  add_offset_ch1 (
    .clr(1'b0),
    .en(1'b1),
    .a(x_in_reg_q_net),
    .b(register3_q_net_x7),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_offset_ch1_s_net)
  );
  fpga_kf_2dof_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_2dof_c_addsub_v12_0_i3"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  add_offset_ch2 (
    .clr(1'b0),
    .en(1'b1),
    .a(ofst_mon_in_reg_q_net),
    .b(register6_q_net_x7),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_offset_ch2_s_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  ofst_mon_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(z_in_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(ofst_mon_in_reg_q_net)
  );
  sysgen_mux_ed00d43067 pot_sw_mux (
    .clr(1'b0),
    .sel(register5_q_net_x6),
    .d0(register_q_net_x0),
    .d1(inverter_op_net),
    .d2(register_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .y(pot_sw_mux_y_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_13_cast (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch1_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_13_cast_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_13_cast1 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_13_cast1_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast1 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast1_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast10 (
    .clr(1'b0),
    .en(1'b1),
    .din(register11_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast10_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast2 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample1_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast2_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast3 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample2_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast3_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast4 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch1_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast4_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast5 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample3_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast5_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast6 (
    .clr(1'b0),
    .en(1'b1),
    .din(upsample0_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast6_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast7 (
    .clr(1'b0),
    .en(1'b1),
    .din(upsample1_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast7_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast8 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast8_dout_net)
  );
  fpga_kf_2dof_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast9 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast9_dout_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  x_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(x_in_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(x_in_reg_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register
module fpga_kf_2dof_vector_register_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] gateway_in12_net;
  wire [25-1:0] gateway_in5_net;
  wire [25-1:0] gateway_in1_net;
  wire [25-1:0] gateway_in3_net;
  wire [25-1:0] gateway_in7_net;
  wire [25-1:0] gateway_in4_net;
  wire [25-1:0] gateway_in9_net;
  wire [25-1:0] gateway_in13_net;
  wire ce_net;
  wire [25-1:0] gateway_in11_net;
  wire [25-1:0] gateway_in6_net;
  wire [25-1:0] gateway_in2_net;
  wire [25-1:0] gateway_in8_net;
  wire [25-1:0] gateway_in10_net;
  wire [25-1:0] gateway_in15_net;
  wire clk_net;
  wire [25-1:0] gateway_in_net;
  wire [25-1:0] gateway_in14_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign gateway_in_net = d_1;
  assign gateway_in1_net = d_2;
  assign gateway_in2_net = d_3;
  assign gateway_in3_net = d_4;
  assign gateway_in4_net = d_5;
  assign gateway_in5_net = d_6;
  assign gateway_in6_net = d_7;
  assign gateway_in7_net = d_8;
  assign gateway_in8_net = d_9;
  assign gateway_in9_net = d_10;
  assign gateway_in10_net = d_11;
  assign gateway_in11_net = d_12;
  assign gateway_in12_net = d_13;
  assign gateway_in13_net = d_14;
  assign gateway_in14_net = d_15;
  assign gateway_in15_net = d_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in3_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in4_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in5_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in6_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in7_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in8_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in9_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in10_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in11_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in12_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in13_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in14_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in15_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register1
module fpga_kf_2dof_vector_register1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register2_q_net;
  wire [25-1:0] gateway_in24_net;
  wire [25-1:0] gateway_in28_net;
  wire [25-1:0] gateway_in25_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] gateway_in26_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] gateway_in31_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] gateway_in30_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] gateway_in29_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] gateway_in27_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in24_net = d_1;
  assign gateway_in25_net = d_2;
  assign gateway_in26_net = d_3;
  assign gateway_in27_net = d_4;
  assign gateway_in28_net = d_5;
  assign gateway_in29_net = d_6;
  assign gateway_in30_net = d_7;
  assign gateway_in31_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in24_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in25_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in26_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in27_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in28_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in29_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in30_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in31_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register2
module fpga_kf_2dof_vector_register2 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] gateway_in17_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] gateway_in20_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] gateway_in16_net;
  wire [25-1:0] gateway_in21_net;
  wire [25-1:0] gateway_in23_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] gateway_in19_net;
  wire [25-1:0] gateway_in18_net;
  wire [25-1:0] gateway_in22_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in16_net = d_1;
  assign gateway_in17_net = d_2;
  assign gateway_in18_net = d_3;
  assign gateway_in19_net = d_4;
  assign gateway_in20_net = d_5;
  assign gateway_in21_net = d_6;
  assign gateway_in22_net = d_7;
  assign gateway_in23_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in16_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in17_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in18_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in19_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in20_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in21_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in22_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in23_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register3
module fpga_kf_2dof_vector_register3 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] gateway_in32_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] gateway_in38_net;
  wire [25-1:0] gateway_in33_net;
  wire [25-1:0] gateway_in37_net;
  wire [25-1:0] gateway_in39_net;
  wire [25-1:0] gateway_in36_net;
  wire [25-1:0] gateway_in34_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] gateway_in35_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in32_net = d_1;
  assign gateway_in33_net = d_2;
  assign gateway_in34_net = d_3;
  assign gateway_in35_net = d_4;
  assign gateway_in36_net = d_5;
  assign gateway_in37_net = d_6;
  assign gateway_in38_net = d_7;
  assign gateway_in39_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in32_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in33_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in34_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in35_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in36_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in37_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in38_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in39_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register4
module fpga_kf_2dof_vector_register4 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] gateway_in51_net;
  wire [25-1:0] gateway_in42_net;
  wire [25-1:0] gateway_in43_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] gateway_in54_net;
  wire [25-1:0] gateway_in48_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in44_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] gateway_in45_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] gateway_in49_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] gateway_in55_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] gateway_in40_net;
  wire [25-1:0] gateway_in41_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] gateway_in50_net;
  wire [25-1:0] gateway_in52_net;
  wire [25-1:0] gateway_in53_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] gateway_in47_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] gateway_in46_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign gateway_in40_net = d_1;
  assign gateway_in41_net = d_2;
  assign gateway_in48_net = d_3;
  assign gateway_in49_net = d_4;
  assign gateway_in50_net = d_5;
  assign gateway_in51_net = d_6;
  assign gateway_in52_net = d_7;
  assign gateway_in53_net = d_8;
  assign gateway_in54_net = d_9;
  assign gateway_in55_net = d_10;
  assign gateway_in42_net = d_11;
  assign gateway_in43_net = d_12;
  assign gateway_in44_net = d_13;
  assign gateway_in45_net = d_14;
  assign gateway_in46_net = d_15;
  assign gateway_in47_net = d_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in40_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in41_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in48_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in49_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in50_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in51_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in52_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in53_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in54_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in55_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in42_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in43_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in44_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in45_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in46_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in47_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register5
module fpga_kf_2dof_vector_register5 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] gateway_in64_net;
  wire [25-1:0] gateway_in65_net;
  wire [25-1:0] gateway_in66_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] gateway_in67_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] gateway_in68_net;
  wire [25-1:0] gateway_in69_net;
  wire clk_net;
  wire [25-1:0] gateway_in71_net;
  wire ce_net;
  wire [25-1:0] gateway_in70_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in64_net = d_1;
  assign gateway_in65_net = d_2;
  assign gateway_in66_net = d_3;
  assign gateway_in67_net = d_4;
  assign gateway_in68_net = d_5;
  assign gateway_in69_net = d_6;
  assign gateway_in70_net = d_7;
  assign gateway_in71_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in64_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in65_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in66_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in67_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in68_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in69_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in70_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in71_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register6
module fpga_kf_2dof_vector_register6 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] gateway_in58_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] gateway_in60_net;
  wire [25-1:0] gateway_in56_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] gateway_in59_net;
  wire [25-1:0] gateway_in61_net;
  wire [25-1:0] gateway_in62_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] gateway_in57_net;
  wire [25-1:0] gateway_in63_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in56_net = d_1;
  assign gateway_in57_net = d_2;
  assign gateway_in58_net = d_3;
  assign gateway_in59_net = d_4;
  assign gateway_in60_net = d_5;
  assign gateway_in61_net = d_6;
  assign gateway_in62_net = d_7;
  assign gateway_in63_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in56_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in57_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in58_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in59_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in60_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in61_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in62_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in63_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register7
module fpga_kf_2dof_vector_register7 (
  input [18-1:0] d_1,
  input [18-1:0] d_2,
  input clk_1,
  input ce_1,
  output [18-1:0] q_1,
  output [18-1:0] q_2
);
  wire ce_net;
  wire [18-1:0] barrier_ub_in_net;
  wire [18-1:0] register0_q_net;
  wire clk_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] barrier_lb_in_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_ub_in_net = d_1;
  assign barrier_lb_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ub_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_lb_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register8
module fpga_kf_2dof_vector_register8 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire clk_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_c0_data_in_net = d_1;
  assign barrier_c1_data_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c0_data_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c1_data_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector Register9
module fpga_kf_2dof_vector_register9 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] gateway_in78_net;
  wire clk_net;
  wire [25-1:0] gateway_in77_net;
  wire [25-1:0] gateway_in72_net;
  wire ce_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] gateway_in76_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in79_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] gateway_in74_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] gateway_in73_net;
  wire [25-1:0] gateway_in75_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign gateway_in72_net = d_1;
  assign gateway_in73_net = d_2;
  assign gateway_in74_net = d_3;
  assign gateway_in75_net = d_4;
  assign gateway_in76_net = d_5;
  assign gateway_in77_net = d_6;
  assign gateway_in78_net = d_7;
  assign gateway_in79_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in72_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in73_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in74_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in75_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in76_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in77_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in78_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in79_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register/Vector Delay
module fpga_kf_2dof_vector_delay (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] delay6_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register/Vector Mux
module fpga_kf_2dof_vector_mux_x0 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] delay5_q_net;
  wire clk_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay6_q_net;
  wire ce_net;
  wire [25-1:0] register4_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register
module fpga_kf_2dof_vector_latching_register (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay7_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x0 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register1/Vector Delay
module fpga_kf_2dof_vector_delay_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux0_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register1/Vector Mux
module fpga_kf_2dof_vector_mux_x1 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register1
module fpga_kf_2dof_vector_latching_register1 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] mux5_y_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] delay7_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x0 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x1 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register2/Vector Delay
module fpga_kf_2dof_vector_delay_x1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register2/Vector Mux
module fpga_kf_2dof_vector_mux_x2 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay3_q_net;
  wire [1-1:0] register22_q_net;
  wire clk_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register6_q_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux7_y_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register2
module fpga_kf_2dof_vector_latching_register2 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay7_q_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x1 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x2 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register3/Vector Delay
module fpga_kf_2dof_vector_delay_x2 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay14_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] delay9_q_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux11_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign q_9 = delay8_q_net;
  assign q_10 = delay9_q_net;
  assign q_11 = delay10_q_net;
  assign q_12 = delay11_q_net;
  assign q_13 = delay12_q_net;
  assign q_14 = delay13_q_net;
  assign q_15 = delay14_q_net;
  assign q_16 = delay15_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign mux8_y_net = d_9;
  assign mux9_y_net = d_10;
  assign mux10_y_net = d_11;
  assign mux11_y_net = d_12;
  assign mux12_y_net = d_13;
  assign mux13_y_net = d_14;
  assign mux14_y_net = d_15;
  assign mux15_y_net = d_16;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
  sysgen_delay_f215291190 delay8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux8_y_net),
    .q(delay8_q_net)
  );
  sysgen_delay_f215291190 delay9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux9_y_net),
    .q(delay9_q_net)
  );
  sysgen_delay_f215291190 delay10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux10_y_net),
    .q(delay10_q_net)
  );
  sysgen_delay_f215291190 delay11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux11_y_net),
    .q(delay11_q_net)
  );
  sysgen_delay_f215291190 delay12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux12_y_net),
    .q(delay12_q_net)
  );
  sysgen_delay_f215291190 delay13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux13_y_net),
    .q(delay13_q_net)
  );
  sysgen_delay_f215291190 delay14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux14_y_net),
    .q(delay14_q_net)
  );
  sysgen_delay_f215291190 delay15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux15_y_net),
    .q(delay15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register3/Vector Mux
module fpga_kf_2dof_vector_mux_x3 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i0_15,
  input [25-1:0] i0_16,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input [25-1:0] i1_15,
  input [25-1:0] i1_16,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16
);
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay14_q_net;
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux15_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay9_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register15_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register14_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign o_15 = mux14_y_net;
  assign o_16 = mux15_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign delay8_q_net = i0_9;
  assign delay9_q_net = i0_10;
  assign delay10_q_net = i0_11;
  assign delay11_q_net = i0_12;
  assign delay12_q_net = i0_13;
  assign delay13_q_net = i0_14;
  assign delay14_q_net = i0_15;
  assign delay15_q_net = i0_16;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign register8_q_net = i1_9;
  assign register9_q_net = i1_10;
  assign register10_q_net = i1_11;
  assign register11_q_net = i1_12;
  assign register12_q_net = i1_13;
  assign register13_q_net = i1_14;
  assign register14_q_net = i1_15;
  assign register15_q_net = i1_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_2e76162b6a mux8 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay8_q_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_2e76162b6a mux9 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay9_q_net),
    .d1(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_2e76162b6a mux10 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay10_q_net),
    .d1(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_2e76162b6a mux11 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay11_q_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_2e76162b6a mux12 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay12_q_net),
    .d1(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_2e76162b6a mux13 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay13_q_net),
    .d1(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
  sysgen_mux_2e76162b6a mux14 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay14_q_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux14_y_net)
  );
  sysgen_mux_2e76162b6a mux15 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay15_q_net),
    .d1(register15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux15_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register3
module fpga_kf_2dof_vector_latching_register3 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input [25-1:0] data_in_9,
  input [25-1:0] data_in_10,
  input [25-1:0] data_in_11,
  input [25-1:0] data_in_12,
  input [25-1:0] data_in_13,
  input [25-1:0] data_in_14,
  input [25-1:0] data_in_15,
  input [25-1:0] data_in_16,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8,
  output [25-1:0] data_out_9,
  output [25-1:0] data_out_10,
  output [25-1:0] data_out_11,
  output [25-1:0] data_out_12,
  output [25-1:0] data_out_13,
  output [25-1:0] data_out_14,
  output [25-1:0] data_out_15,
  output [25-1:0] data_out_16
);
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register15_q_net;
  wire clk_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register9_q_net;
  wire ce_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux13_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay14_q_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] delay9_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign data_out_9 = mux8_y_net;
  assign data_out_10 = mux9_y_net;
  assign data_out_11 = mux10_y_net;
  assign data_out_12 = mux11_y_net;
  assign data_out_13 = mux12_y_net;
  assign data_out_14 = mux13_y_net;
  assign data_out_15 = mux14_y_net;
  assign data_out_16 = mux15_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign register8_q_net = data_in_9;
  assign register9_q_net = data_in_10;
  assign register10_q_net = data_in_11;
  assign register11_q_net = data_in_12;
  assign register12_q_net = data_in_13;
  assign register13_q_net = data_in_14;
  assign register14_q_net = data_in_15;
  assign register15_q_net = data_in_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x2 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .d_9(mux8_y_net),
    .d_10(mux9_y_net),
    .d_11(mux10_y_net),
    .d_12(mux11_y_net),
    .d_13(mux12_y_net),
    .d_14(mux13_y_net),
    .d_15(mux14_y_net),
    .d_16(mux15_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net),
    .q_9(delay8_q_net),
    .q_10(delay9_q_net),
    .q_11(delay10_q_net),
    .q_12(delay11_q_net),
    .q_13(delay12_q_net),
    .q_14(delay13_q_net),
    .q_15(delay14_q_net),
    .q_16(delay15_q_net)
  );
  fpga_kf_2dof_vector_mux_x3 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i0_9(delay8_q_net),
    .i0_10(delay9_q_net),
    .i0_11(delay10_q_net),
    .i0_12(delay11_q_net),
    .i0_13(delay12_q_net),
    .i0_14(delay13_q_net),
    .i0_15(delay14_q_net),
    .i0_16(delay15_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .i1_9(register8_q_net),
    .i1_10(register9_q_net),
    .i1_11(register10_q_net),
    .i1_12(register11_q_net),
    .i1_13(register12_q_net),
    .i1_14(register13_q_net),
    .i1_15(register14_q_net),
    .i1_16(register15_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net),
    .o_9(mux8_y_net),
    .o_10(mux9_y_net),
    .o_11(mux10_y_net),
    .o_12(mux11_y_net),
    .o_13(mux12_y_net),
    .o_14(mux13_y_net),
    .o_15(mux14_y_net),
    .o_16(mux15_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register4/Vector Delay
module fpga_kf_2dof_vector_delay_x3 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay7_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register4/Vector Mux
module fpga_kf_2dof_vector_mux_x4 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux6_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register6_q_net;
  wire clk_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register4
module fpga_kf_2dof_vector_latching_register4 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register0_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register7_q_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register4_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x3 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x4 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register5/Vector Delay
module fpga_kf_2dof_vector_delay_x4 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay5_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register5/Vector Mux
module fpga_kf_2dof_vector_mux_x5 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register4_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register5
module fpga_kf_2dof_vector_latching_register5 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay2_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] delay7_q_net;
  wire ce_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register2_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x4 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x5 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register6/Vector Delay
module fpga_kf_2dof_vector_delay_x5 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay7_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register6/Vector Mux
module fpga_kf_2dof_vector_mux_x6 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux2_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay2_q_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  wire clk_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] register4_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register6
module fpga_kf_2dof_vector_latching_register6 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8
);
  wire [25-1:0] register7_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay7_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x5 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  fpga_kf_2dof_vector_mux_x6 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register7/Vector Delay
module fpga_kf_2dof_vector_delay_x6 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay14_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay9_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux15_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign q_9 = delay8_q_net;
  assign q_10 = delay9_q_net;
  assign q_11 = delay10_q_net;
  assign q_12 = delay11_q_net;
  assign q_13 = delay12_q_net;
  assign q_14 = delay13_q_net;
  assign q_15 = delay14_q_net;
  assign q_16 = delay15_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign mux8_y_net = d_9;
  assign mux9_y_net = d_10;
  assign mux10_y_net = d_11;
  assign mux11_y_net = d_12;
  assign mux12_y_net = d_13;
  assign mux13_y_net = d_14;
  assign mux14_y_net = d_15;
  assign mux15_y_net = d_16;
  sysgen_delay_f215291190 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_f215291190 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_f215291190 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_f215291190 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
  sysgen_delay_f215291190 delay4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux4_y_net),
    .q(delay4_q_net)
  );
  sysgen_delay_f215291190 delay5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux5_y_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f215291190 delay6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux6_y_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f215291190 delay7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux7_y_net),
    .q(delay7_q_net)
  );
  sysgen_delay_f215291190 delay8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux8_y_net),
    .q(delay8_q_net)
  );
  sysgen_delay_f215291190 delay9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux9_y_net),
    .q(delay9_q_net)
  );
  sysgen_delay_f215291190 delay10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux10_y_net),
    .q(delay10_q_net)
  );
  sysgen_delay_f215291190 delay11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux11_y_net),
    .q(delay11_q_net)
  );
  sysgen_delay_f215291190 delay12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux12_y_net),
    .q(delay12_q_net)
  );
  sysgen_delay_f215291190 delay13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux13_y_net),
    .q(delay13_q_net)
  );
  sysgen_delay_f215291190 delay14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux14_y_net),
    .q(delay14_q_net)
  );
  sysgen_delay_f215291190 delay15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux15_y_net),
    .q(delay15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register7/Vector Mux
module fpga_kf_2dof_vector_mux_x7 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i0_15,
  input [25-1:0] i0_16,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input [25-1:0] i1_15,
  input [25-1:0] i1_16,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16
);
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux13_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register15_q_net;
  wire clk_net;
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] delay14_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register8_q_net;
  wire ce_net;
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] delay9_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register12_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign o_15 = mux14_y_net;
  assign o_16 = mux15_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign delay4_q_net = i0_5;
  assign delay5_q_net = i0_6;
  assign delay6_q_net = i0_7;
  assign delay7_q_net = i0_8;
  assign delay8_q_net = i0_9;
  assign delay9_q_net = i0_10;
  assign delay10_q_net = i0_11;
  assign delay11_q_net = i0_12;
  assign delay12_q_net = i0_13;
  assign delay13_q_net = i0_14;
  assign delay14_q_net = i0_15;
  assign delay15_q_net = i0_16;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign register4_q_net = i1_5;
  assign register5_q_net = i1_6;
  assign register6_q_net = i1_7;
  assign register7_q_net = i1_8;
  assign register8_q_net = i1_9;
  assign register9_q_net = i1_10;
  assign register10_q_net = i1_11;
  assign register11_q_net = i1_12;
  assign register12_q_net = i1_13;
  assign register13_q_net = i1_14;
  assign register14_q_net = i1_15;
  assign register15_q_net = i1_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_2e76162b6a mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_2e76162b6a mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_2e76162b6a mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_2e76162b6a mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_2e76162b6a mux4 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay4_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_2e76162b6a mux5 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay5_q_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_2e76162b6a mux6 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay6_q_net),
    .d1(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_2e76162b6a mux7 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay7_q_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_2e76162b6a mux8 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay8_q_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_2e76162b6a mux9 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay9_q_net),
    .d1(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_2e76162b6a mux10 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay10_q_net),
    .d1(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_2e76162b6a mux11 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay11_q_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_2e76162b6a mux12 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay12_q_net),
    .d1(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_2e76162b6a mux13 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay13_q_net),
    .d1(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
  sysgen_mux_2e76162b6a mux14 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay14_q_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux14_y_net)
  );
  sysgen_mux_2e76162b6a mux15 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay15_q_net),
    .d1(register15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux15_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper/Vector latching register7
module fpga_kf_2dof_vector_latching_register7 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input [25-1:0] data_in_5,
  input [25-1:0] data_in_6,
  input [25-1:0] data_in_7,
  input [25-1:0] data_in_8,
  input [25-1:0] data_in_9,
  input [25-1:0] data_in_10,
  input [25-1:0] data_in_11,
  input [25-1:0] data_in_12,
  input [25-1:0] data_in_13,
  input [25-1:0] data_in_14,
  input [25-1:0] data_in_15,
  input [25-1:0] data_in_16,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4,
  output [25-1:0] data_out_5,
  output [25-1:0] data_out_6,
  output [25-1:0] data_out_7,
  output [25-1:0] data_out_8,
  output [25-1:0] data_out_9,
  output [25-1:0] data_out_10,
  output [25-1:0] data_out_11,
  output [25-1:0] data_out_12,
  output [25-1:0] data_out_13,
  output [25-1:0] data_out_14,
  output [25-1:0] data_out_15,
  output [25-1:0] data_out_16
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] delay8_q_net;
  wire [25-1:0] delay10_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay0_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] mux10_y_net;
  wire clk_net;
  wire [25-1:0] delay9_q_net;
  wire [25-1:0] delay11_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] register6_q_net;
  wire ce_net;
  wire [25-1:0] delay7_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] delay13_q_net;
  wire [25-1:0] delay15_q_net;
  wire [25-1:0] delay12_q_net;
  wire [25-1:0] delay14_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign data_out_5 = mux4_y_net;
  assign data_out_6 = mux5_y_net;
  assign data_out_7 = mux6_y_net;
  assign data_out_8 = mux7_y_net;
  assign data_out_9 = mux8_y_net;
  assign data_out_10 = mux9_y_net;
  assign data_out_11 = mux10_y_net;
  assign data_out_12 = mux11_y_net;
  assign data_out_13 = mux12_y_net;
  assign data_out_14 = mux13_y_net;
  assign data_out_15 = mux14_y_net;
  assign data_out_16 = mux15_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign register4_q_net = data_in_5;
  assign register5_q_net = data_in_6;
  assign register6_q_net = data_in_7;
  assign register7_q_net = data_in_8;
  assign register8_q_net = data_in_9;
  assign register9_q_net = data_in_10;
  assign register10_q_net = data_in_11;
  assign register11_q_net = data_in_12;
  assign register12_q_net = data_in_13;
  assign register13_q_net = data_in_14;
  assign register14_q_net = data_in_15;
  assign register15_q_net = data_in_16;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_delay_x6 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .d_9(mux8_y_net),
    .d_10(mux9_y_net),
    .d_11(mux10_y_net),
    .d_12(mux11_y_net),
    .d_13(mux12_y_net),
    .d_14(mux13_y_net),
    .d_15(mux14_y_net),
    .d_16(mux15_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net),
    .q_9(delay8_q_net),
    .q_10(delay9_q_net),
    .q_11(delay10_q_net),
    .q_12(delay11_q_net),
    .q_13(delay12_q_net),
    .q_14(delay13_q_net),
    .q_15(delay14_q_net),
    .q_16(delay15_q_net)
  );
  fpga_kf_2dof_vector_mux_x7 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i0_5(delay4_q_net),
    .i0_6(delay5_q_net),
    .i0_7(delay6_q_net),
    .i0_8(delay7_q_net),
    .i0_9(delay8_q_net),
    .i0_10(delay9_q_net),
    .i0_11(delay10_q_net),
    .i0_12(delay11_q_net),
    .i0_13(delay12_q_net),
    .i0_14(delay13_q_net),
    .i0_15(delay14_q_net),
    .i0_16(delay15_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .i1_5(register4_q_net),
    .i1_6(register5_q_net),
    .i1_7(register6_q_net),
    .i1_8(register7_q_net),
    .i1_9(register8_q_net),
    .i1_10(register9_q_net),
    .i1_11(register10_q_net),
    .i1_12(register11_q_net),
    .i1_13(register12_q_net),
    .i1_14(register13_q_net),
    .i1_15(register14_q_net),
    .i1_16(register15_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net),
    .o_9(mux8_y_net),
    .o_10(mux9_y_net),
    .o_11(mux10_y_net),
    .o_12(mux11_y_net),
    .o_13(mux12_y_net),
    .o_14(mux13_y_net),
    .o_15(mux14_y_net),
    .o_16(mux15_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/AXI_clock_domain_wrapper
module fpga_kf_2dof_axi_clock_domain_wrapper (
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [18-1:0] barrier_lb_in,
  input [18-1:0] barrier_ub_in,
  input [32-1:0] dma_trigger_time,
  input [2-1:0] fb_src_switch_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [25-1:0] gateway_in,
  input [25-1:0] gateway_in1,
  input [25-1:0] gateway_in10,
  input [25-1:0] gateway_in11,
  input [25-1:0] gateway_in12,
  input [25-1:0] gateway_in13,
  input [25-1:0] gateway_in14,
  input [25-1:0] gateway_in15,
  input [25-1:0] gateway_in2,
  input [25-1:0] gateway_in3,
  input [25-1:0] gateway_in4,
  input [25-1:0] gateway_in5,
  input [25-1:0] gateway_in6,
  input [25-1:0] gateway_in7,
  input [25-1:0] gateway_in8,
  input [25-1:0] gateway_in9,
  input [25-1:0] gateway_in16,
  input [25-1:0] gateway_in17,
  input [25-1:0] gateway_in18,
  input [25-1:0] gateway_in19,
  input [25-1:0] gateway_in20,
  input [25-1:0] gateway_in21,
  input [25-1:0] gateway_in22,
  input [25-1:0] gateway_in23,
  input [25-1:0] gateway_in24,
  input [25-1:0] gateway_in25,
  input [25-1:0] gateway_in26,
  input [25-1:0] gateway_in27,
  input [25-1:0] gateway_in28,
  input [25-1:0] gateway_in29,
  input [25-1:0] gateway_in30,
  input [25-1:0] gateway_in31,
  input [25-1:0] gateway_in32,
  input [25-1:0] gateway_in33,
  input [25-1:0] gateway_in34,
  input [25-1:0] gateway_in35,
  input [25-1:0] gateway_in36,
  input [25-1:0] gateway_in37,
  input [25-1:0] gateway_in38,
  input [25-1:0] gateway_in39,
  input [25-1:0] gateway_in40,
  input [25-1:0] gateway_in41,
  input [25-1:0] gateway_in42,
  input [25-1:0] gateway_in43,
  input [25-1:0] gateway_in44,
  input [25-1:0] gateway_in45,
  input [25-1:0] gateway_in46,
  input [25-1:0] gateway_in47,
  input [25-1:0] gateway_in48,
  input [25-1:0] gateway_in49,
  input [25-1:0] gateway_in50,
  input [25-1:0] gateway_in51,
  input [25-1:0] gateway_in52,
  input [25-1:0] gateway_in53,
  input [25-1:0] gateway_in54,
  input [25-1:0] gateway_in55,
  input [25-1:0] gateway_in56,
  input [25-1:0] gateway_in57,
  input [25-1:0] gateway_in58,
  input [25-1:0] gateway_in59,
  input [25-1:0] gateway_in60,
  input [25-1:0] gateway_in61,
  input [25-1:0] gateway_in62,
  input [25-1:0] gateway_in63,
  input [25-1:0] gateway_in64,
  input [25-1:0] gateway_in65,
  input [25-1:0] gateway_in66,
  input [25-1:0] gateway_in67,
  input [25-1:0] gateway_in68,
  input [25-1:0] gateway_in69,
  input [25-1:0] gateway_in70,
  input [25-1:0] gateway_in71,
  input [25-1:0] gateway_in72,
  input [25-1:0] gateway_in73,
  input [25-1:0] gateway_in74,
  input [25-1:0] gateway_in75,
  input [25-1:0] gateway_in76,
  input [25-1:0] gateway_in77,
  input [25-1:0] gateway_in78,
  input [25-1:0] gateway_in79,
  input [18-1:0] x_ref_in,
  input clk_1,
  input ce_1,
  output [1-1:0] ap_ip_switch_out,
  output [25-1:0] f_reg_out_1,
  output [25-1:0] l_reg_out_1,
  output [25-1:0] k_reg_out_1,
  output [25-1:0] b_reg_out_1,
  output [25-1:0] f_ip_reg_out_1,
  output [25-1:0] l_ip_reg_out_1,
  output [25-1:0] k_ip_reg_out_1,
  output [25-1:0] b_ip_reg_out_1,
  output [6-1:0] leds_cross_out,
  output [2-1:0] potential_switch_override_reg_out,
  output [14-1:0] adc_offset_1,
  output [14-1:0] adc_offset_2,
  output [14-1:0] hw_switch_output,
  output [1-1:0] hw_switch_flag,
  output [18-1:0] x_ref_out,
  output [2-1:0] fb_src_switch_out,
  output [18-1:0] barrier_ub_lb_out_1,
  output [25-1:0] barrier_c_idx_out,
  output [10-1:0] barrier_c_ofst_idx_out,
  output [10-1:0] barrier_ram_addr_out,
  output [25-1:0] barrier_ram_data_out_1,
  output [1-1:0] barrier_ram_we_out,
  output [25-1:0] f_reg_out_2,
  output [25-1:0] f_reg_out_3,
  output [25-1:0] f_reg_out_4,
  output [25-1:0] f_reg_out_5,
  output [25-1:0] f_reg_out_6,
  output [25-1:0] f_reg_out_7,
  output [25-1:0] f_reg_out_8,
  output [25-1:0] f_reg_out_9,
  output [25-1:0] f_reg_out_10,
  output [25-1:0] f_reg_out_11,
  output [25-1:0] f_reg_out_12,
  output [25-1:0] f_reg_out_13,
  output [25-1:0] f_reg_out_14,
  output [25-1:0] f_reg_out_15,
  output [25-1:0] f_reg_out_16,
  output [25-1:0] l_reg_out_2,
  output [25-1:0] l_reg_out_3,
  output [25-1:0] l_reg_out_4,
  output [25-1:0] l_reg_out_5,
  output [25-1:0] l_reg_out_6,
  output [25-1:0] l_reg_out_7,
  output [25-1:0] l_reg_out_8,
  output [25-1:0] k_reg_out_2,
  output [25-1:0] k_reg_out_3,
  output [25-1:0] k_reg_out_4,
  output [25-1:0] k_reg_out_5,
  output [25-1:0] k_reg_out_6,
  output [25-1:0] k_reg_out_7,
  output [25-1:0] k_reg_out_8,
  output [25-1:0] b_reg_out_2,
  output [25-1:0] b_reg_out_3,
  output [25-1:0] b_reg_out_4,
  output [25-1:0] b_reg_out_5,
  output [25-1:0] b_reg_out_6,
  output [25-1:0] b_reg_out_7,
  output [25-1:0] b_reg_out_8,
  output [25-1:0] f_ip_reg_out_2,
  output [25-1:0] f_ip_reg_out_3,
  output [25-1:0] f_ip_reg_out_4,
  output [25-1:0] f_ip_reg_out_5,
  output [25-1:0] f_ip_reg_out_6,
  output [25-1:0] f_ip_reg_out_7,
  output [25-1:0] f_ip_reg_out_8,
  output [25-1:0] f_ip_reg_out_9,
  output [25-1:0] f_ip_reg_out_10,
  output [25-1:0] f_ip_reg_out_11,
  output [25-1:0] f_ip_reg_out_12,
  output [25-1:0] f_ip_reg_out_13,
  output [25-1:0] f_ip_reg_out_14,
  output [25-1:0] f_ip_reg_out_15,
  output [25-1:0] f_ip_reg_out_16,
  output [25-1:0] l_ip_reg_out_2,
  output [25-1:0] l_ip_reg_out_3,
  output [25-1:0] l_ip_reg_out_4,
  output [25-1:0] l_ip_reg_out_5,
  output [25-1:0] l_ip_reg_out_6,
  output [25-1:0] l_ip_reg_out_7,
  output [25-1:0] l_ip_reg_out_8,
  output [25-1:0] k_ip_reg_out_2,
  output [25-1:0] k_ip_reg_out_3,
  output [25-1:0] k_ip_reg_out_4,
  output [25-1:0] k_ip_reg_out_5,
  output [25-1:0] k_ip_reg_out_6,
  output [25-1:0] k_ip_reg_out_7,
  output [25-1:0] k_ip_reg_out_8,
  output [25-1:0] b_ip_reg_out_2,
  output [25-1:0] b_ip_reg_out_3,
  output [25-1:0] b_ip_reg_out_4,
  output [25-1:0] b_ip_reg_out_5,
  output [25-1:0] b_ip_reg_out_6,
  output [25-1:0] b_ip_reg_out_7,
  output [25-1:0] b_ip_reg_out_8,
  output [18-1:0] barrier_ub_lb_out_2,
  output [25-1:0] barrier_ram_data_out_2,
  output [1-1:0] tmr_dma_trigger_output
);
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux1_y_net_x2;
  wire [25-1:0] mux7_y_net_x0;
  wire [25-1:0] mux4_y_net_x3;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] mux6_y_net_x0;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux2_y_net_x3;
  wire [25-1:0] mux2_y_net_x2;
  wire [25-1:0] mux4_y_net_x0;
  wire [25-1:0] mux6_y_net_x1;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux4_y_net_x2;
  wire [25-1:0] mux1_y_net_x3;
  wire [25-1:0] mux6_y_net_x2;
  wire [25-1:0] mux5_y_net_x2;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux5_y_net_x0;
  wire [25-1:0] mux7_y_net_x1;
  wire [25-1:0] mux3_y_net_x1;
  wire [25-1:0] mux5_y_net_x1;
  wire [25-1:0] mux2_y_net_x1;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux7_y_net_x2;
  wire [25-1:0] mux4_y_net_x1;
  wire [25-1:0] mux1_y_net_x4;
  wire [25-1:0] mux2_y_net_x4;
  wire [25-1:0] mux3_y_net_x3;
  wire [25-1:0] mux3_y_net_x2;
  wire [25-1:0] mux13_y_net;
  wire [32-1:0] reg_timer_period_net;
  wire [2-1:0] sw_override_in_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] register1_q_net_x0;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [25-1:0] gateway_in_net;
  wire [25-1:0] gateway_in1_net;
  wire [2-1:0] fb_src_switch_in_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [25-1:0] mux5_y_net_x3;
  wire [25-1:0] mux6_y_net_x3;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [1-1:0] registers_wren_in_net;
  wire [25-1:0] mux7_y_net_x3;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [18-1:0] register1_q_net_x1;
  wire [18-1:0] barrier_lb_in_net;
  wire [18-1:0] barrier_ub_in_net;
  wire [14-1:0] out_switch_off_net;
  wire [14-1:0] adc_ch1_offst_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [14-1:0] out_switch_on_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [25-1:0] gateway_in26_net;
  wire [25-1:0] gateway_in27_net;
  wire [25-1:0] gateway_in4_net;
  wire [25-1:0] gateway_in28_net;
  wire [25-1:0] gateway_in29_net;
  wire [25-1:0] gateway_in3_net;
  wire [25-1:0] gateway_in9_net;
  wire [25-1:0] gateway_in24_net;
  wire [25-1:0] gateway_in2_net;
  wire [25-1:0] gateway_in15_net;
  wire [25-1:0] gateway_in7_net;
  wire [25-1:0] gateway_in11_net;
  wire [25-1:0] gateway_in6_net;
  wire [25-1:0] gateway_in8_net;
  wire [25-1:0] gateway_in16_net;
  wire [25-1:0] gateway_in22_net;
  wire [25-1:0] gateway_in23_net;
  wire [25-1:0] gateway_in25_net;
  wire [25-1:0] gateway_in18_net;
  wire [25-1:0] gateway_in30_net;
  wire [25-1:0] gateway_in20_net;
  wire [25-1:0] gateway_in31_net;
  wire [25-1:0] gateway_in32_net;
  wire [25-1:0] gateway_in33_net;
  wire [25-1:0] gateway_in17_net;
  wire [25-1:0] gateway_in21_net;
  wire [25-1:0] gateway_in12_net;
  wire [25-1:0] gateway_in14_net;
  wire [25-1:0] gateway_in13_net;
  wire [25-1:0] gateway_in19_net;
  wire [25-1:0] gateway_in5_net;
  wire [25-1:0] gateway_in10_net;
  wire [25-1:0] gateway_in51_net;
  wire [25-1:0] gateway_in54_net;
  wire [25-1:0] gateway_in44_net;
  wire [25-1:0] gateway_in62_net;
  wire [25-1:0] gateway_in63_net;
  wire [25-1:0] gateway_in64_net;
  wire [25-1:0] gateway_in65_net;
  wire [25-1:0] gateway_in55_net;
  wire [25-1:0] gateway_in40_net;
  wire [25-1:0] gateway_in35_net;
  wire [25-1:0] gateway_in37_net;
  wire [25-1:0] gateway_in48_net;
  wire [25-1:0] gateway_in53_net;
  wire [25-1:0] gateway_in46_net;
  wire [25-1:0] gateway_in47_net;
  wire [25-1:0] gateway_in43_net;
  wire [25-1:0] gateway_in38_net;
  wire [25-1:0] gateway_in59_net;
  wire [25-1:0] gateway_in42_net;
  wire [25-1:0] gateway_in52_net;
  wire [25-1:0] gateway_in60_net;
  wire [25-1:0] gateway_in45_net;
  wire [25-1:0] gateway_in39_net;
  wire [25-1:0] gateway_in36_net;
  wire [25-1:0] gateway_in58_net;
  wire [25-1:0] gateway_in34_net;
  wire [25-1:0] gateway_in56_net;
  wire [25-1:0] gateway_in57_net;
  wire [25-1:0] gateway_in61_net;
  wire [25-1:0] gateway_in50_net;
  wire [25-1:0] gateway_in41_net;
  wire [25-1:0] gateway_in49_net;
  wire ce_net;
  wire [25-1:0] register2_q_net_x5;
  wire [25-1:0] register4_q_net_x5;
  wire [25-1:0] register5_q_net_x5;
  wire [25-1:0] gateway_in67_net;
  wire [25-1:0] register3_q_net_x5;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register6_q_net_x5;
  wire [25-1:0] register7_q_net_x5;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] gateway_in78_net;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] gateway_in74_net;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] gateway_in68_net;
  wire [25-1:0] gateway_in69_net;
  wire [25-1:0] gateway_in77_net;
  wire [25-1:0] gateway_in76_net;
  wire [25-1:0] register6_q_net_x6;
  wire [25-1:0] gateway_in75_net;
  wire [25-1:0] register8_q_net_x0;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] gateway_in71_net;
  wire [25-1:0] register4_q_net_x6;
  wire [25-1:0] register1_q_net_x8;
  wire [25-1:0] register5_q_net_x6;
  wire [25-1:0] register7_q_net_x6;
  wire [25-1:0] gateway_in66_net;
  wire [25-1:0] gateway_in73_net;
  wire [25-1:0] register11_q_net_x0;
  wire [25-1:0] register13_q_net_x0;
  wire [25-1:0] register0_q_net_x8;
  wire [25-1:0] register2_q_net_x6;
  wire [25-1:0] gateway_in79_net;
  wire clk_net;
  wire [25-1:0] register3_q_net_x6;
  wire [18-1:0] x_ref_in_net;
  wire [25-1:0] register14_q_net_x0;
  wire [25-1:0] gateway_in70_net;
  wire [25-1:0] gateway_in72_net;
  wire [25-1:0] register9_q_net_x0;
  wire [25-1:0] register15_q_net_x0;
  wire [25-1:0] register0_q_net_x7;
  wire [25-1:0] register13_q_net;
  wire [24-1:0] counter_op_net;
  wire [25-1:0] register5_q_net_x0;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register7_q_net_x2;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register5_q_net_x3;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register2_q_net_x1;
  wire [25-1:0] register4_q_net_x1;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register0_q_net_x3;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register7_q_net_x1;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register0_q_net_x5;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register6_q_net_x0;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register0_q_net_x2;
  wire [25-1:0] register7_q_net_x0;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register6_q_net_x2;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register4_q_net_x0;
  wire [25-1:0] register0_q_net;
  wire [1-1:0] register5_q_net_x7;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register1_q_net_x4;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register15_q_net;
  wire [2-1:0] register1_q_net_x9;
  wire [14-1:0] ip_ap_value_mux_y_net;
  wire [14-1:0] dac_value_mux_y_net;
  wire [1-1:0] sw_switch_y_net;
  wire [6-1:0] slice_y_net;
  wire [16-1:0] register_q_net;
  wire [1-1:0] inverter_op_net;
  wire [32-1:0] register10_q_net_x1;
  wire [1-1:0] out_switch_enable_y_net;
  wire [32-1:0] register11_q_net_x1;
  wire [1-1:0] switching_logic_selector_y_net;
  wire [6-1:0] reinterpret_output_port_net;
  wire [32-1:0] register13_q_net_x1;
  wire [32-1:0] register12_q_net_x1;
  wire [32-1:0] register14_q_net_x1;
  wire [6-1:0] slice1_y_net;
  wire [32-1:0] register9_q_net_x1;
  wire [32-1:0] sec_counter_op_net;
  wire [1-1:0] rp_switch_delay_match_q_net;
  wire [1-1:0] out_switch_t0_op_net;
  wire [1-1:0] rp_switch_t0_op_net;
  wire [1-1:0] out_switch_tf_op_net;
  wire [1-1:0] period_reached_switch_op_net;
  wire [1-1:0] rp_switch_tf_op_net;
  wire [1-1:0] rp_switch_enable_y_net;
  wire [25-1:0] mux8_y_net_x0;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux6_y_net_x4;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] mux7_y_net_x6;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] mux12_y_net_x0;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux6_y_net_x5;
  wire [25-1:0] mux11_y_net_x0;
  wire [25-1:0] mux15_y_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net_x5;
  wire [25-1:0] mux5_y_net_x5;
  wire [25-1:0] mux7_y_net_x5;
  wire [25-1:0] mux2_y_net_x6;
  wire [25-1:0] mux3_y_net_x6;
  wire [25-1:0] mux7_y_net_x4;
  wire [25-1:0] mux13_y_net_x0;
  wire [25-1:0] mux14_y_net_x0;
  wire [25-1:0] mux10_y_net_x0;
  wire [25-1:0] mux3_y_net_x5;
  wire [25-1:0] mux5_y_net_x6;
  wire [25-1:0] mux6_y_net_x6;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux9_y_net_x0;
  wire [25-1:0] mux4_y_net_x6;
  wire [25-1:0] mux1_y_net_x0;
  wire [25-1:0] mux1_y_net_x6;
  wire [25-1:0] mux0_y_net_x1;
  wire [18-1:0] register0_q_net_x1;
  wire [14-1:0] register7_q_net_x7;
  wire [25-1:0] mux3_y_net_x4;
  wire [25-1:0] mux4_y_net_x4;
  wire [25-1:0] mux0_y_net;
  wire [14-1:0] dac_enable_y_net;
  wire [2-1:0] register17_q_net;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] mux5_y_net_x4;
  wire [25-1:0] mux0_y_net_x2;
  wire [25-1:0] mux0_y_net_x3;
  wire [25-1:0] mux0_y_net_x6;
  wire [1-1:0] register21_q_net;
  wire [2-1:0] register6_q_net_x7;
  wire [18-1:0] register16_q_net;
  wire [25-1:0] register18_q_net;
  wire [10-1:0] register20_q_net;
  wire [25-1:0] mux1_y_net_x5;
  wire [25-1:0] mux0_y_net_x4;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] mux2_y_net_x5;
  wire [14-1:0] register8_q_net_x1;
  wire [10-1:0] register19_q_net;
  wire [25-1:0] mux0_y_net_x5;
  wire [1-1:0] sw_switch_mux_y_net;
  wire [25-1:0] mux0_y_net_x0;
  assign ap_ip_switch_out = sw_switch_mux_y_net;
  assign f_reg_out_1 = mux0_y_net_x5;
  assign l_reg_out_1 = mux0_y_net_x6;
  assign k_reg_out_1 = mux0_y_net;
  assign b_reg_out_1 = mux0_y_net_x0;
  assign f_ip_reg_out_1 = mux0_y_net_x1;
  assign l_ip_reg_out_1 = mux0_y_net_x2;
  assign k_ip_reg_out_1 = mux0_y_net_x3;
  assign b_ip_reg_out_1 = mux0_y_net_x4;
  assign leds_cross_out = mux_y_net;
  assign potential_switch_override_reg_out = register6_q_net_x7;
  assign adc_offset_1 = register7_q_net_x7;
  assign adc_offset_2 = register8_q_net_x1;
  assign hw_switch_output = dac_enable_y_net;
  assign hw_switch_flag = hw_switch_flag_delay_match_q_net;
  assign x_ref_out = register16_q_net;
  assign fb_src_switch_out = register17_q_net;
  assign barrier_ub_lb_out_1 = register0_q_net_x1;
  assign barrier_c_idx_out = register18_q_net;
  assign barrier_c_ofst_idx_out = register19_q_net;
  assign barrier_ram_addr_out = register20_q_net;
  assign barrier_ram_data_out_1 = register0_q_net_x0;
  assign barrier_ram_we_out = register21_q_net;
  assign f_reg_out_2 = mux1_y_net_x5;
  assign f_reg_out_3 = mux2_y_net_x5;
  assign f_reg_out_4 = mux3_y_net_x4;
  assign f_reg_out_5 = mux4_y_net_x4;
  assign f_reg_out_6 = mux5_y_net_x4;
  assign f_reg_out_7 = mux6_y_net_x4;
  assign f_reg_out_8 = mux7_y_net_x4;
  assign f_reg_out_9 = mux8_y_net_x0;
  assign f_reg_out_10 = mux9_y_net_x0;
  assign f_reg_out_11 = mux10_y_net_x0;
  assign f_reg_out_12 = mux11_y_net_x0;
  assign f_reg_out_13 = mux12_y_net_x0;
  assign f_reg_out_14 = mux13_y_net_x0;
  assign f_reg_out_15 = mux14_y_net_x0;
  assign f_reg_out_16 = mux15_y_net_x0;
  assign l_reg_out_2 = mux1_y_net_x6;
  assign l_reg_out_3 = mux2_y_net_x6;
  assign l_reg_out_4 = mux3_y_net_x5;
  assign l_reg_out_5 = mux4_y_net_x5;
  assign l_reg_out_6 = mux5_y_net_x5;
  assign l_reg_out_7 = mux6_y_net_x5;
  assign l_reg_out_8 = mux7_y_net_x5;
  assign k_reg_out_2 = mux1_y_net;
  assign k_reg_out_3 = mux2_y_net;
  assign k_reg_out_4 = mux3_y_net_x6;
  assign k_reg_out_5 = mux4_y_net_x6;
  assign k_reg_out_6 = mux5_y_net_x6;
  assign k_reg_out_7 = mux6_y_net_x6;
  assign k_reg_out_8 = mux7_y_net_x6;
  assign b_reg_out_2 = mux1_y_net_x0;
  assign b_reg_out_3 = mux2_y_net_x0;
  assign b_reg_out_4 = mux3_y_net;
  assign b_reg_out_5 = mux4_y_net;
  assign b_reg_out_6 = mux5_y_net;
  assign b_reg_out_7 = mux6_y_net;
  assign b_reg_out_8 = mux7_y_net;
  assign f_ip_reg_out_2 = mux1_y_net_x1;
  assign f_ip_reg_out_3 = mux2_y_net_x1;
  assign f_ip_reg_out_4 = mux3_y_net_x0;
  assign f_ip_reg_out_5 = mux4_y_net_x0;
  assign f_ip_reg_out_6 = mux5_y_net_x0;
  assign f_ip_reg_out_7 = mux6_y_net_x0;
  assign f_ip_reg_out_8 = mux7_y_net_x0;
  assign f_ip_reg_out_9 = mux8_y_net;
  assign f_ip_reg_out_10 = mux9_y_net;
  assign f_ip_reg_out_11 = mux10_y_net;
  assign f_ip_reg_out_12 = mux11_y_net;
  assign f_ip_reg_out_13 = mux12_y_net;
  assign f_ip_reg_out_14 = mux13_y_net;
  assign f_ip_reg_out_15 = mux14_y_net;
  assign f_ip_reg_out_16 = mux15_y_net;
  assign l_ip_reg_out_2 = mux1_y_net_x2;
  assign l_ip_reg_out_3 = mux2_y_net_x2;
  assign l_ip_reg_out_4 = mux3_y_net_x1;
  assign l_ip_reg_out_5 = mux4_y_net_x1;
  assign l_ip_reg_out_6 = mux5_y_net_x1;
  assign l_ip_reg_out_7 = mux6_y_net_x1;
  assign l_ip_reg_out_8 = mux7_y_net_x1;
  assign k_ip_reg_out_2 = mux1_y_net_x3;
  assign k_ip_reg_out_3 = mux2_y_net_x3;
  assign k_ip_reg_out_4 = mux3_y_net_x2;
  assign k_ip_reg_out_5 = mux4_y_net_x2;
  assign k_ip_reg_out_6 = mux5_y_net_x2;
  assign k_ip_reg_out_7 = mux6_y_net_x2;
  assign k_ip_reg_out_8 = mux7_y_net_x2;
  assign b_ip_reg_out_2 = mux1_y_net_x4;
  assign b_ip_reg_out_3 = mux2_y_net_x4;
  assign b_ip_reg_out_4 = mux3_y_net_x3;
  assign b_ip_reg_out_5 = mux4_y_net_x3;
  assign b_ip_reg_out_6 = mux5_y_net_x3;
  assign b_ip_reg_out_7 = mux6_y_net_x3;
  assign b_ip_reg_out_8 = mux7_y_net_x3;
  assign barrier_ub_lb_out_2 = register1_q_net_x1;
  assign barrier_ram_data_out_2 = register1_q_net_x0;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign tmr_dma_trigger_output = dma_trigger_threshold_op_net;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign gateway_in_net = gateway_in;
  assign gateway_in1_net = gateway_in1;
  assign gateway_in10_net = gateway_in10;
  assign gateway_in11_net = gateway_in11;
  assign gateway_in12_net = gateway_in12;
  assign gateway_in13_net = gateway_in13;
  assign gateway_in14_net = gateway_in14;
  assign gateway_in15_net = gateway_in15;
  assign gateway_in2_net = gateway_in2;
  assign gateway_in3_net = gateway_in3;
  assign gateway_in4_net = gateway_in4;
  assign gateway_in5_net = gateway_in5;
  assign gateway_in6_net = gateway_in6;
  assign gateway_in7_net = gateway_in7;
  assign gateway_in8_net = gateway_in8;
  assign gateway_in9_net = gateway_in9;
  assign gateway_in16_net = gateway_in16;
  assign gateway_in17_net = gateway_in17;
  assign gateway_in18_net = gateway_in18;
  assign gateway_in19_net = gateway_in19;
  assign gateway_in20_net = gateway_in20;
  assign gateway_in21_net = gateway_in21;
  assign gateway_in22_net = gateway_in22;
  assign gateway_in23_net = gateway_in23;
  assign gateway_in24_net = gateway_in24;
  assign gateway_in25_net = gateway_in25;
  assign gateway_in26_net = gateway_in26;
  assign gateway_in27_net = gateway_in27;
  assign gateway_in28_net = gateway_in28;
  assign gateway_in29_net = gateway_in29;
  assign gateway_in30_net = gateway_in30;
  assign gateway_in31_net = gateway_in31;
  assign gateway_in32_net = gateway_in32;
  assign gateway_in33_net = gateway_in33;
  assign gateway_in34_net = gateway_in34;
  assign gateway_in35_net = gateway_in35;
  assign gateway_in36_net = gateway_in36;
  assign gateway_in37_net = gateway_in37;
  assign gateway_in38_net = gateway_in38;
  assign gateway_in39_net = gateway_in39;
  assign gateway_in40_net = gateway_in40;
  assign gateway_in41_net = gateway_in41;
  assign gateway_in42_net = gateway_in42;
  assign gateway_in43_net = gateway_in43;
  assign gateway_in44_net = gateway_in44;
  assign gateway_in45_net = gateway_in45;
  assign gateway_in46_net = gateway_in46;
  assign gateway_in47_net = gateway_in47;
  assign gateway_in48_net = gateway_in48;
  assign gateway_in49_net = gateway_in49;
  assign gateway_in50_net = gateway_in50;
  assign gateway_in51_net = gateway_in51;
  assign gateway_in52_net = gateway_in52;
  assign gateway_in53_net = gateway_in53;
  assign gateway_in54_net = gateway_in54;
  assign gateway_in55_net = gateway_in55;
  assign gateway_in56_net = gateway_in56;
  assign gateway_in57_net = gateway_in57;
  assign gateway_in58_net = gateway_in58;
  assign gateway_in59_net = gateway_in59;
  assign gateway_in60_net = gateway_in60;
  assign gateway_in61_net = gateway_in61;
  assign gateway_in62_net = gateway_in62;
  assign gateway_in63_net = gateway_in63;
  assign gateway_in64_net = gateway_in64;
  assign gateway_in65_net = gateway_in65;
  assign gateway_in66_net = gateway_in66;
  assign gateway_in67_net = gateway_in67;
  assign gateway_in68_net = gateway_in68;
  assign gateway_in69_net = gateway_in69;
  assign gateway_in70_net = gateway_in70;
  assign gateway_in71_net = gateway_in71;
  assign gateway_in72_net = gateway_in72;
  assign gateway_in73_net = gateway_in73;
  assign gateway_in74_net = gateway_in74;
  assign gateway_in75_net = gateway_in75;
  assign gateway_in76_net = gateway_in76;
  assign gateway_in77_net = gateway_in77;
  assign gateway_in78_net = gateway_in78;
  assign gateway_in79_net = gateway_in79;
  assign x_ref_in_net = x_ref_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_vector_register_x0 vector_register (
    .d_1(gateway_in_net),
    .d_2(gateway_in1_net),
    .d_3(gateway_in2_net),
    .d_4(gateway_in3_net),
    .d_5(gateway_in4_net),
    .d_6(gateway_in5_net),
    .d_7(gateway_in6_net),
    .d_8(gateway_in7_net),
    .d_9(gateway_in8_net),
    .d_10(gateway_in9_net),
    .d_11(gateway_in10_net),
    .d_12(gateway_in11_net),
    .d_13(gateway_in12_net),
    .d_14(gateway_in13_net),
    .d_15(gateway_in14_net),
    .d_16(gateway_in15_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x8),
    .q_3(register2_q_net_x6),
    .q_4(register3_q_net_x6),
    .q_5(register4_q_net_x6),
    .q_6(register5_q_net_x6),
    .q_7(register6_q_net_x6),
    .q_8(register7_q_net_x6),
    .q_9(register8_q_net_x0),
    .q_10(register9_q_net_x0),
    .q_11(register10_q_net_x0),
    .q_12(register11_q_net_x0),
    .q_13(register12_q_net_x0),
    .q_14(register13_q_net_x0),
    .q_15(register14_q_net_x0),
    .q_16(register15_q_net_x0)
  );
  fpga_kf_2dof_vector_register1 vector_register1 (
    .d_1(gateway_in24_net),
    .d_2(gateway_in25_net),
    .d_3(gateway_in26_net),
    .d_4(gateway_in27_net),
    .d_5(gateway_in28_net),
    .d_6(gateway_in29_net),
    .d_7(gateway_in30_net),
    .d_8(gateway_in31_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x7),
    .q_2(register1_q_net_x7),
    .q_3(register2_q_net_x5),
    .q_4(register3_q_net_x5),
    .q_5(register4_q_net_x5),
    .q_6(register5_q_net_x5),
    .q_7(register6_q_net_x5),
    .q_8(register7_q_net_x5)
  );
  fpga_kf_2dof_vector_register2 vector_register2 (
    .d_1(gateway_in16_net),
    .d_2(gateway_in17_net),
    .d_3(gateway_in18_net),
    .d_4(gateway_in19_net),
    .d_5(gateway_in20_net),
    .d_6(gateway_in21_net),
    .d_7(gateway_in22_net),
    .d_8(gateway_in23_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x6),
    .q_2(register1_q_net_x6),
    .q_3(register2_q_net_x4),
    .q_4(register3_q_net_x4),
    .q_5(register4_q_net_x4),
    .q_6(register5_q_net_x4),
    .q_7(register6_q_net_x4),
    .q_8(register7_q_net_x4)
  );
  fpga_kf_2dof_vector_register3 vector_register3 (
    .d_1(gateway_in32_net),
    .d_2(gateway_in33_net),
    .d_3(gateway_in34_net),
    .d_4(gateway_in35_net),
    .d_5(gateway_in36_net),
    .d_6(gateway_in37_net),
    .d_7(gateway_in38_net),
    .d_8(gateway_in39_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x5),
    .q_2(register1_q_net_x5),
    .q_3(register2_q_net_x3),
    .q_4(register3_q_net_x3),
    .q_5(register4_q_net_x3),
    .q_6(register5_q_net_x3),
    .q_7(register6_q_net_x3),
    .q_8(register7_q_net_x3)
  );
  fpga_kf_2dof_vector_register4 vector_register4 (
    .d_1(gateway_in40_net),
    .d_2(gateway_in41_net),
    .d_3(gateway_in48_net),
    .d_4(gateway_in49_net),
    .d_5(gateway_in50_net),
    .d_6(gateway_in51_net),
    .d_7(gateway_in52_net),
    .d_8(gateway_in53_net),
    .d_9(gateway_in54_net),
    .d_10(gateway_in55_net),
    .d_11(gateway_in42_net),
    .d_12(gateway_in43_net),
    .d_13(gateway_in44_net),
    .d_14(gateway_in45_net),
    .d_15(gateway_in46_net),
    .d_16(gateway_in47_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x4),
    .q_2(register1_q_net_x4),
    .q_3(register2_q_net_x2),
    .q_4(register3_q_net_x2),
    .q_5(register4_q_net_x2),
    .q_6(register5_q_net_x2),
    .q_7(register6_q_net_x2),
    .q_8(register7_q_net_x2),
    .q_9(register8_q_net),
    .q_10(register9_q_net),
    .q_11(register10_q_net),
    .q_12(register11_q_net),
    .q_13(register12_q_net),
    .q_14(register13_q_net),
    .q_15(register14_q_net),
    .q_16(register15_q_net)
  );
  fpga_kf_2dof_vector_register5 vector_register5 (
    .d_1(gateway_in64_net),
    .d_2(gateway_in65_net),
    .d_3(gateway_in66_net),
    .d_4(gateway_in67_net),
    .d_5(gateway_in68_net),
    .d_6(gateway_in69_net),
    .d_7(gateway_in70_net),
    .d_8(gateway_in71_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x3),
    .q_2(register1_q_net_x3),
    .q_3(register2_q_net_x1),
    .q_4(register3_q_net_x1),
    .q_5(register4_q_net_x1),
    .q_6(register5_q_net_x1),
    .q_7(register6_q_net_x1),
    .q_8(register7_q_net_x1)
  );
  fpga_kf_2dof_vector_register6 vector_register6 (
    .d_1(gateway_in56_net),
    .d_2(gateway_in57_net),
    .d_3(gateway_in58_net),
    .d_4(gateway_in59_net),
    .d_5(gateway_in60_net),
    .d_6(gateway_in61_net),
    .d_7(gateway_in62_net),
    .d_8(gateway_in63_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x2),
    .q_2(register1_q_net_x2),
    .q_3(register2_q_net_x0),
    .q_4(register3_q_net_x0),
    .q_5(register4_q_net_x0),
    .q_6(register5_q_net_x0),
    .q_7(register6_q_net_x0),
    .q_8(register7_q_net_x0)
  );
  fpga_kf_2dof_vector_register7 vector_register7 (
    .d_1(barrier_ub_in_net),
    .d_2(barrier_lb_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x1),
    .q_2(register1_q_net_x1)
  );
  fpga_kf_2dof_vector_register8 vector_register8 (
    .d_1(barrier_c0_data_in_net),
    .d_2(barrier_c1_data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x0),
    .q_2(register1_q_net_x0)
  );
  fpga_kf_2dof_vector_register9 vector_register9 (
    .d_1(gateway_in72_net),
    .d_2(gateway_in73_net),
    .d_3(gateway_in74_net),
    .d_4(gateway_in75_net),
    .d_5(gateway_in76_net),
    .d_6(gateway_in77_net),
    .d_7(gateway_in78_net),
    .d_8(gateway_in79_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net),
    .q_2(register1_q_net),
    .q_3(register2_q_net),
    .q_4(register3_q_net),
    .q_5(register4_q_net),
    .q_6(register5_q_net),
    .q_7(register6_q_net),
    .q_8(register7_q_net)
  );
  fpga_kf_2dof_vector_latching_register vector_latching_register (
    .data_in_1(register0_q_net),
    .wren(register22_q_net),
    .data_in_2(register1_q_net),
    .data_in_3(register2_q_net),
    .data_in_4(register3_q_net),
    .data_in_5(register4_q_net),
    .data_in_6(register5_q_net),
    .data_in_7(register6_q_net),
    .data_in_8(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x4),
    .data_out_2(mux1_y_net_x4),
    .data_out_3(mux2_y_net_x4),
    .data_out_4(mux3_y_net_x3),
    .data_out_5(mux4_y_net_x3),
    .data_out_6(mux5_y_net_x3),
    .data_out_7(mux6_y_net_x3),
    .data_out_8(mux7_y_net_x3)
  );
  fpga_kf_2dof_vector_latching_register1 vector_latching_register1 (
    .data_in_1(register0_q_net_x3),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x3),
    .data_in_3(register2_q_net_x1),
    .data_in_4(register3_q_net_x1),
    .data_in_5(register4_q_net_x1),
    .data_in_6(register5_q_net_x1),
    .data_in_7(register6_q_net_x1),
    .data_in_8(register7_q_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x3),
    .data_out_2(mux1_y_net_x3),
    .data_out_3(mux2_y_net_x3),
    .data_out_4(mux3_y_net_x2),
    .data_out_5(mux4_y_net_x2),
    .data_out_6(mux5_y_net_x2),
    .data_out_7(mux6_y_net_x2),
    .data_out_8(mux7_y_net_x2)
  );
  fpga_kf_2dof_vector_latching_register2 vector_latching_register2 (
    .data_in_1(register0_q_net_x2),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x2),
    .data_in_3(register2_q_net_x0),
    .data_in_4(register3_q_net_x0),
    .data_in_5(register4_q_net_x0),
    .data_in_6(register5_q_net_x0),
    .data_in_7(register6_q_net_x0),
    .data_in_8(register7_q_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x2),
    .data_out_2(mux1_y_net_x2),
    .data_out_3(mux2_y_net_x2),
    .data_out_4(mux3_y_net_x1),
    .data_out_5(mux4_y_net_x1),
    .data_out_6(mux5_y_net_x1),
    .data_out_7(mux6_y_net_x1),
    .data_out_8(mux7_y_net_x1)
  );
  fpga_kf_2dof_vector_latching_register3 vector_latching_register3 (
    .data_in_1(register0_q_net_x4),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x4),
    .data_in_3(register2_q_net_x2),
    .data_in_4(register3_q_net_x2),
    .data_in_5(register4_q_net_x2),
    .data_in_6(register5_q_net_x2),
    .data_in_7(register6_q_net_x2),
    .data_in_8(register7_q_net_x2),
    .data_in_9(register8_q_net),
    .data_in_10(register9_q_net),
    .data_in_11(register10_q_net),
    .data_in_12(register11_q_net),
    .data_in_13(register12_q_net),
    .data_in_14(register13_q_net),
    .data_in_15(register14_q_net),
    .data_in_16(register15_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x1),
    .data_out_2(mux1_y_net_x1),
    .data_out_3(mux2_y_net_x1),
    .data_out_4(mux3_y_net_x0),
    .data_out_5(mux4_y_net_x0),
    .data_out_6(mux5_y_net_x0),
    .data_out_7(mux6_y_net_x0),
    .data_out_8(mux7_y_net_x0),
    .data_out_9(mux8_y_net),
    .data_out_10(mux9_y_net),
    .data_out_11(mux10_y_net),
    .data_out_12(mux11_y_net),
    .data_out_13(mux12_y_net),
    .data_out_14(mux13_y_net),
    .data_out_15(mux14_y_net),
    .data_out_16(mux15_y_net)
  );
  fpga_kf_2dof_vector_latching_register4 vector_latching_register4 (
    .data_in_1(register0_q_net_x5),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x5),
    .data_in_3(register2_q_net_x3),
    .data_in_4(register3_q_net_x3),
    .data_in_5(register4_q_net_x3),
    .data_in_6(register5_q_net_x3),
    .data_in_7(register6_q_net_x3),
    .data_in_8(register7_q_net_x3),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x0),
    .data_out_2(mux1_y_net_x0),
    .data_out_3(mux2_y_net_x0),
    .data_out_4(mux3_y_net),
    .data_out_5(mux4_y_net),
    .data_out_6(mux5_y_net),
    .data_out_7(mux6_y_net),
    .data_out_8(mux7_y_net)
  );
  fpga_kf_2dof_vector_latching_register5 vector_latching_register5 (
    .data_in_1(register0_q_net_x7),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x7),
    .data_in_3(register2_q_net_x5),
    .data_in_4(register3_q_net_x5),
    .data_in_5(register4_q_net_x5),
    .data_in_6(register5_q_net_x5),
    .data_in_7(register6_q_net_x5),
    .data_in_8(register7_q_net_x5),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net),
    .data_out_2(mux1_y_net),
    .data_out_3(mux2_y_net),
    .data_out_4(mux3_y_net_x6),
    .data_out_5(mux4_y_net_x6),
    .data_out_6(mux5_y_net_x6),
    .data_out_7(mux6_y_net_x6),
    .data_out_8(mux7_y_net_x6)
  );
  fpga_kf_2dof_vector_latching_register6 vector_latching_register6 (
    .data_in_1(register0_q_net_x6),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x6),
    .data_in_3(register2_q_net_x4),
    .data_in_4(register3_q_net_x4),
    .data_in_5(register4_q_net_x4),
    .data_in_6(register5_q_net_x4),
    .data_in_7(register6_q_net_x4),
    .data_in_8(register7_q_net_x4),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x6),
    .data_out_2(mux1_y_net_x6),
    .data_out_3(mux2_y_net_x6),
    .data_out_4(mux3_y_net_x5),
    .data_out_5(mux4_y_net_x5),
    .data_out_6(mux5_y_net_x5),
    .data_out_7(mux6_y_net_x5),
    .data_out_8(mux7_y_net_x5)
  );
  fpga_kf_2dof_vector_latching_register7 vector_latching_register7 (
    .data_in_1(register0_q_net_x8),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x8),
    .data_in_3(register2_q_net_x6),
    .data_in_4(register3_q_net_x6),
    .data_in_5(register4_q_net_x6),
    .data_in_6(register5_q_net_x6),
    .data_in_7(register6_q_net_x6),
    .data_in_8(register7_q_net_x6),
    .data_in_9(register8_q_net_x0),
    .data_in_10(register9_q_net_x0),
    .data_in_11(register10_q_net_x0),
    .data_in_12(register11_q_net_x0),
    .data_in_13(register12_q_net_x0),
    .data_in_14(register13_q_net_x0),
    .data_in_15(register14_q_net_x0),
    .data_in_16(register15_q_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x5),
    .data_out_2(mux1_y_net_x5),
    .data_out_3(mux2_y_net_x5),
    .data_out_4(mux3_y_net_x4),
    .data_out_5(mux4_y_net_x4),
    .data_out_6(mux5_y_net_x4),
    .data_out_7(mux6_y_net_x4),
    .data_out_8(mux7_y_net_x4),
    .data_out_9(mux8_y_net_x0),
    .data_out_10(mux9_y_net_x0),
    .data_out_11(mux10_y_net_x0),
    .data_out_12(mux11_y_net_x0),
    .data_out_13(mux12_y_net_x0),
    .data_out_14(mux13_y_net_x0),
    .data_out_15(mux14_y_net_x0),
    .data_out_16(mux15_y_net_x0)
  );
  fpga_kf_2dof_xlcounter_free #(
    .core_name0("fpga_kf_2dof_c_counter_binary_v12_0_i0"),
    .op_arith(`xlUnsigned),
    .op_width(24)
  )
  counter (
    .rst(1'b0),
    .clr(1'b0),
    .en(register5_q_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_mux_e4a3492e0a dac_enable (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(ip_ap_value_mux_y_net),
    .d1(dac_value_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_enable_y_net)
  );
  sysgen_mux_e4a3492e0a dac_value_mux (
    .clr(1'b0),
    .sel(out_switch_enable_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_value_mux_y_net)
  );
  sysgen_mux_3b1f622740 ip_ap_value_mux (
    .clr(1'b0),
    .sel(sw_switch_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(ip_ap_value_mux_y_net)
  );
  sysgen_inverter_37648f5b56 inverter (
    .clr(1'b0),
    .ip(register5_q_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_mux_a8cb38cf25 mux (
    .clr(1'b0),
    .sel(inverter_op_net),
    .d0(slice_y_net),
    .d1(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(fixed_led_pattern_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(ap_ip_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x9)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_rp_switch_tf_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_out_switch_t0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_out_switch_tf_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_timer_period_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(dma_trigger_time_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(x_ref_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(fb_src_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c_idx_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c_ofst_idx_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ram_addr_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ram_we_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_wren_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(disco_mode_enable_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net_x7)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(sw_override_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net_x7)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc_ch1_offst_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net_x7)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc_ch2_offst_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net_x1)
  );
  fpga_kf_2dof_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_rp_switch_t0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net_x1)
  );
  sysgen_reinterpret_1bf89b9c73 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret_output_port_net)
  );
  fpga_kf_2dof_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(2),
    .y_width(1)
  )
  sw_switch (
    .x(register1_q_net_x9),
    .y(sw_switch_y_net)
  );
  sysgen_mux_1ee4c69857 sw_switch_mux (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(sw_switch_y_net),
    .d1(rp_switch_delay_match_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(sw_switch_mux_y_net)
  );
  fpga_kf_2dof_xlslice #(
    .new_lsb(18),
    .new_msb(23),
    .x_width(24),
    .y_width(6)
  )
  slice (
    .x(counter_op_net),
    .y(slice_y_net)
  );
  fpga_kf_2dof_xlslice #(
    .new_lsb(10),
    .new_msb(15),
    .x_width(16),
    .y_width(6)
  )
  slice1 (
    .x(register_q_net),
    .y(slice1_y_net)
  );
  sysgen_relational_b158ed43fd dma_trigger_threshold (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register14_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(dma_trigger_threshold_op_net)
  );
  fpga_kf_2dof_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  hw_switch_flag_delay_match (
    .en(1'b1),
    .rst(1'b0),
    .d(out_switch_enable_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(hw_switch_flag_delay_match_q_net)
  );
  sysgen_logical_21f61bb21b out_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(out_switch_t0_op_net),
    .d1(out_switch_tf_op_net),
    .y(out_switch_enable_y_net)
  );
  sysgen_relational_b158ed43fd out_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register11_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_t0_op_net)
  );
  sysgen_relational_c599de7d39 out_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register12_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_tf_op_net)
  );
  sysgen_relational_7832a15fa6 period_reached_switch (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register13_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(period_reached_switch_op_net)
  );
  fpga_kf_2dof_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  rp_switch_delay_match (
    .en(1'b1),
    .rst(1'b0),
    .d(rp_switch_enable_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(rp_switch_delay_match_q_net)
  );
  sysgen_logical_21f61bb21b rp_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(rp_switch_t0_op_net),
    .d1(rp_switch_tf_op_net),
    .y(rp_switch_enable_y_net)
  );
  sysgen_relational_b158ed43fd rp_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register9_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_t0_op_net)
  );
  sysgen_relational_c599de7d39 rp_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register10_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_tf_op_net)
  );
  fpga_kf_2dof_xlcounter_limit #(
    .cnt_15_0(31872),
    .cnt_31_16(19073),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("fpga_kf_2dof_c_counter_binary_v12_0_i1"),
    .count_limited(1),
    .op_arith(`xlUnsigned),
    .op_width(32)
  )
  sec_counter (
    .en(1'b1),
    .clr(1'b0),
    .rst(period_reached_switch_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(sec_counter_op_net)
  );
  fpga_kf_2dof_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(2),
    .y_width(1)
  )
  switching_logic_selector (
    .x(register1_q_net_x9),
    .y(switching_logic_selector_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register
module fpga_kf_2dof_vector_register_x1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] mux14_y_net;
  wire src_clk_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux9_y_net;
  wire ce_net;
  wire clk_net;
  wire src_ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign mux8_y_net = d_9;
  assign mux9_y_net = d_10;
  assign mux10_y_net = d_11;
  assign mux11_y_net = d_12;
  assign mux12_y_net = d_13;
  assign mux13_y_net = d_14;
  assign mux14_y_net = d_15;
  assign mux15_y_net = d_16;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux8_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux9_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux10_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux11_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux12_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux13_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux14_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux15_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register1
module fpga_kf_2dof_vector_register1_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16
);
  wire [25-1:0] register12_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux14_y_net;
  wire ce_net;
  wire src_ce_net;
  wire clk_net;
  wire src_clk_net;
  wire [25-1:0] mux15_y_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign mux8_y_net = d_9;
  assign mux9_y_net = d_10;
  assign mux10_y_net = d_11;
  assign mux11_y_net = d_12;
  assign mux12_y_net = d_13;
  assign mux13_y_net = d_14;
  assign mux14_y_net = d_15;
  assign mux15_y_net = d_16;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux8_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux9_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux10_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux11_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux12_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux13_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux14_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux15_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register2
module fpga_kf_2dof_vector_register2_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register6_q_net;
  wire src_ce_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux2_y_net;
  wire src_clk_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register3_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register3
module fpga_kf_2dof_vector_register3_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire src_clk_net;
  wire src_ce_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register4
module fpga_kf_2dof_vector_register4_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux0_y_net;
  wire src_clk_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire ce_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  wire src_ce_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register5
module fpga_kf_2dof_vector_register5_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire src_clk_net;
  wire src_ce_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register6
module fpga_kf_2dof_vector_register6_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register5_q_net;
  wire src_ce_net;
  wire clk_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] register3_q_net;
  wire src_clk_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] register7_q_net;
  wire ce_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register2_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register7
module fpga_kf_2dof_vector_register7_x0 (
  input [18-1:0] d_1,
  input [18-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [18-1:0] q_1,
  output [18-1:0] q_2
);
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register0_q_net_x0;
  wire [18-1:0] register1_q_net_x0;
  wire src_clk_net;
  wire src_ce_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] register0_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000100110011010)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b111111011001100110)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register8
module fpga_kf_2dof_vector_register8_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register0_q_net_x0;
  wire src_clk_net;
  wire clk_net;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] register1_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/Vector Register9
module fpga_kf_2dof_vector_register9_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8
);
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux3_y_net;
  wire src_ce_net;
  wire [25-1:0] mux6_y_net;
  wire ce_net;
  wire src_clk_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux1_y_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign mux4_y_net = d_5;
  assign mux5_y_net = d_6;
  assign mux6_y_net = d_7;
  assign mux7_y_net = d_8;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux4_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux5_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux6_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux7_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF_struct
module fpga_kf_2dof_struct (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] z_in,
  input [14-1:0] x_in,
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [18-1:0] barrier_lb_in,
  input [18-1:0] barrier_ub_in,
  input [32-1:0] dma_trigger_time,
  input [2-1:0] fb_src_switch_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [25-1:0] gateway_in,
  input [25-1:0] gateway_in1,
  input [25-1:0] gateway_in10,
  input [25-1:0] gateway_in11,
  input [25-1:0] gateway_in12,
  input [25-1:0] gateway_in13,
  input [25-1:0] gateway_in14,
  input [25-1:0] gateway_in15,
  input [25-1:0] gateway_in2,
  input [25-1:0] gateway_in3,
  input [25-1:0] gateway_in4,
  input [25-1:0] gateway_in5,
  input [25-1:0] gateway_in6,
  input [25-1:0] gateway_in7,
  input [25-1:0] gateway_in8,
  input [25-1:0] gateway_in9,
  input [25-1:0] gateway_in16,
  input [25-1:0] gateway_in17,
  input [25-1:0] gateway_in18,
  input [25-1:0] gateway_in19,
  input [25-1:0] gateway_in20,
  input [25-1:0] gateway_in21,
  input [25-1:0] gateway_in22,
  input [25-1:0] gateway_in23,
  input [25-1:0] gateway_in24,
  input [25-1:0] gateway_in25,
  input [25-1:0] gateway_in26,
  input [25-1:0] gateway_in27,
  input [25-1:0] gateway_in28,
  input [25-1:0] gateway_in29,
  input [25-1:0] gateway_in30,
  input [25-1:0] gateway_in31,
  input [25-1:0] gateway_in32,
  input [25-1:0] gateway_in33,
  input [25-1:0] gateway_in34,
  input [25-1:0] gateway_in35,
  input [25-1:0] gateway_in36,
  input [25-1:0] gateway_in37,
  input [25-1:0] gateway_in38,
  input [25-1:0] gateway_in39,
  input [25-1:0] gateway_in40,
  input [25-1:0] gateway_in41,
  input [25-1:0] gateway_in42,
  input [25-1:0] gateway_in43,
  input [25-1:0] gateway_in44,
  input [25-1:0] gateway_in45,
  input [25-1:0] gateway_in46,
  input [25-1:0] gateway_in47,
  input [25-1:0] gateway_in48,
  input [25-1:0] gateway_in49,
  input [25-1:0] gateway_in50,
  input [25-1:0] gateway_in51,
  input [25-1:0] gateway_in52,
  input [25-1:0] gateway_in53,
  input [25-1:0] gateway_in54,
  input [25-1:0] gateway_in55,
  input [25-1:0] gateway_in56,
  input [25-1:0] gateway_in57,
  input [25-1:0] gateway_in58,
  input [25-1:0] gateway_in59,
  input [25-1:0] gateway_in60,
  input [25-1:0] gateway_in61,
  input [25-1:0] gateway_in62,
  input [25-1:0] gateway_in63,
  input [25-1:0] gateway_in64,
  input [25-1:0] gateway_in65,
  input [25-1:0] gateway_in66,
  input [25-1:0] gateway_in67,
  input [25-1:0] gateway_in68,
  input [25-1:0] gateway_in69,
  input [25-1:0] gateway_in70,
  input [25-1:0] gateway_in71,
  input [25-1:0] gateway_in72,
  input [25-1:0] gateway_in73,
  input [25-1:0] gateway_in74,
  input [25-1:0] gateway_in75,
  input [25-1:0] gateway_in76,
  input [25-1:0] gateway_in77,
  input [25-1:0] gateway_in78,
  input [25-1:0] gateway_in79,
  input [18-1:0] x_ref_in,
  input clk_1_x0,
  input ce_1_x0,
  input clk_4,
  input ce_4,
  input clk_1,
  input ce_1,
  output [14-1:0] dac_pulse_out,
  output [18-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [1-1:0] tmr_dma_trigger_output
);
  wire [14-1:0] z_in_net;
  wire [14-1:0] upsample3_q_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [16-1:0] sfix16_13_cast1_dout_net;
  wire [32-1:0] concat4_y_net;
  wire [14-1:0] x_in_net;
  wire [1-1:0] registers_wren_in_net;
  wire [8-1:0] concat1_y_net;
  wire [32-1:0] concat5_y_net;
  wire [14-1:0] register8_q_net_x1;
  wire [18-1:0] add_offset_ch2_s_net;
  wire [32-1:0] concat_y_net;
  wire [32-1:0] concat3_y_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample0_q_net_x0;
  wire [14-1:0] upsample1_q_net_x0;
  wire [14-1:0] upsample2_q_net;
  wire [14-1:0] upsample0_q_net;
  wire [1-1:0] hw_pot_switch_net;
  wire [32-1:0] concat2_y_net;
  wire [25-1:0] gateway_in13_net;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [25-1:0] gateway_in15_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [14-1:0] out_switch_off_net;
  wire [25-1:0] gateway_in14_net;
  wire [2-1:0] sw_override_in_net;
  wire [2-1:0] fb_src_switch_in_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [14-1:0] adc_ch1_offst_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [18-1:0] barrier_ub_in_net;
  wire [18-1:0] barrier_lb_in_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [32-1:0] reg_timer_period_net;
  wire [25-1:0] gateway_in_net;
  wire [25-1:0] gateway_in1_net;
  wire [14-1:0] out_switch_on_net;
  wire [25-1:0] gateway_in10_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [25-1:0] gateway_in11_net;
  wire [25-1:0] gateway_in12_net;
  wire [25-1:0] gateway_in38_net;
  wire [25-1:0] gateway_in39_net;
  wire [25-1:0] gateway_in3_net;
  wire [25-1:0] gateway_in26_net;
  wire [25-1:0] gateway_in25_net;
  wire [25-1:0] gateway_in22_net;
  wire [25-1:0] gateway_in36_net;
  wire [25-1:0] gateway_in17_net;
  wire [25-1:0] gateway_in29_net;
  wire [25-1:0] gateway_in20_net;
  wire [25-1:0] gateway_in24_net;
  wire [25-1:0] gateway_in32_net;
  wire [25-1:0] gateway_in21_net;
  wire [25-1:0] gateway_in33_net;
  wire [25-1:0] gateway_in23_net;
  wire [25-1:0] gateway_in35_net;
  wire [25-1:0] gateway_in6_net;
  wire [25-1:0] gateway_in16_net;
  wire [25-1:0] gateway_in2_net;
  wire [25-1:0] gateway_in28_net;
  wire [25-1:0] gateway_in19_net;
  wire [25-1:0] gateway_in31_net;
  wire [25-1:0] gateway_in4_net;
  wire [25-1:0] gateway_in34_net;
  wire [25-1:0] gateway_in8_net;
  wire [25-1:0] gateway_in5_net;
  wire [25-1:0] gateway_in37_net;
  wire [25-1:0] gateway_in7_net;
  wire [25-1:0] gateway_in9_net;
  wire [25-1:0] gateway_in27_net;
  wire [25-1:0] gateway_in18_net;
  wire [25-1:0] gateway_in30_net;
  wire [25-1:0] gateway_in60_net;
  wire [25-1:0] gateway_in62_net;
  wire [25-1:0] gateway_in44_net;
  wire [25-1:0] gateway_in63_net;
  wire [25-1:0] gateway_in65_net;
  wire [25-1:0] gateway_in69_net;
  wire [25-1:0] gateway_in53_net;
  wire [25-1:0] gateway_in67_net;
  wire [25-1:0] gateway_in68_net;
  wire [25-1:0] gateway_in42_net;
  wire [25-1:0] gateway_in47_net;
  wire [25-1:0] gateway_in54_net;
  wire [25-1:0] gateway_in56_net;
  wire [25-1:0] gateway_in64_net;
  wire [25-1:0] gateway_in66_net;
  wire [25-1:0] gateway_in71_net;
  wire [25-1:0] gateway_in40_net;
  wire [25-1:0] gateway_in45_net;
  wire [25-1:0] gateway_in51_net;
  wire [25-1:0] gateway_in50_net;
  wire [25-1:0] gateway_in61_net;
  wire [25-1:0] gateway_in70_net;
  wire [25-1:0] gateway_in41_net;
  wire [25-1:0] gateway_in46_net;
  wire [25-1:0] gateway_in43_net;
  wire [25-1:0] gateway_in48_net;
  wire [25-1:0] gateway_in52_net;
  wire [25-1:0] gateway_in57_net;
  wire [25-1:0] gateway_in49_net;
  wire [25-1:0] gateway_in55_net;
  wire [25-1:0] gateway_in59_net;
  wire [25-1:0] gateway_in58_net;
  wire [14-1:0] register3_q_net_x5;
  wire [25-1:0] gateway_in77_net;
  wire [25-1:0] gateway_in73_net;
  wire [25-1:0] register0_q_net_x3;
  wire [25-1:0] register0_q_net_x10;
  wire [2-1:0] register5_q_net_x5;
  wire [14-1:0] register6_q_net_x5;
  wire clk_net;
  wire [18-1:0] register11_q_net_x1;
  wire [25-1:0] register0_q_net_x4;
  wire [2-1:0] register16_q_net;
  wire [25-1:0] register12_q_net_x1;
  wire [10-1:0] register13_q_net_x1;
  wire [18-1:0] register0_q_net_x9;
  wire [25-1:0] register0_q_net_x8;
  wire [10-1:0] register14_q_net_x1;
  wire [25-1:0] register0_q_net_x2;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register1_q_net_x4;
  wire [6-1:0] register7_q_net_x5;
  wire src_ce_net;
  wire [1-1:0] register15_q_net_x1;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register9_q_net_x0;
  wire [1-1:0] register9_q_net_x1;
  wire clk_net_x0;
  wire ce_net_x0;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] register11_q_net_x0;
  wire src_clk_net;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] gateway_in76_net;
  wire [25-1:0] gateway_in79_net;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] register8_q_net_x0;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] gateway_in78_net;
  wire ce_net;
  wire [18-1:0] x_ref_in_net;
  wire [25-1:0] gateway_in75_net;
  wire [25-1:0] register0_q_net_x7;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] register0_q_net;
  wire [1-1:0] register_q_net;
  wire [25-1:0] gateway_in72_net;
  wire [25-1:0] gateway_in74_net;
  wire [25-1:0] register0_q_net_x1;
  wire [25-1:0] register3_q_net_x7;
  wire [25-1:0] register2_q_net_x5;
  wire [25-1:0] register6_q_net_x0;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register4_q_net_x5;
  wire [25-1:0] register5_q_net_x7;
  wire [25-1:0] register7_q_net_x2;
  wire [25-1:0] register6_q_net_x8;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register7_q_net_x8;
  wire [25-1:0] register1_q_net_x0;
  wire [18-1:0] register1_q_net_x9;
  wire [25-1:0] register1_q_net_x8;
  wire [1-1:0] sw_switch_mux_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register4_q_net_x0;
  wire [25-1:0] register7_q_net_x0;
  wire [25-1:0] register15_q_net_x0;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register7_q_net_x1;
  wire [25-1:0] register14_q_net_x0;
  wire [25-1:0] register7_q_net_x7;
  wire [25-1:0] register13_q_net_x0;
  wire [25-1:0] register1_q_net_x1;
  wire [25-1:0] register2_q_net_x1;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register3_q_net_x6;
  wire [25-1:0] register5_q_net_x3;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register6_q_net_x7;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register4_q_net_x6;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register6_q_net_x2;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register4_q_net_x1;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register1_q_net_x10;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register5_q_net_x6;
  wire [25-1:0] register5_q_net_x0;
  wire [25-1:0] register2_q_net_x6;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] mux7_y_net_x0;
  wire [25-1:0] mux4_y_net_x1;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux5_y_net_x1;
  wire [25-1:0] mux4_y_net_x2;
  wire [25-1:0] mux4_y_net_x3;
  wire [25-1:0] mux5_y_net_x3;
  wire [25-1:0] mux2_y_net_x2;
  wire [25-1:0] mux6_y_net_x3;
  wire [2-1:0] register6_q_net_x6;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux3_y_net_x2;
  wire [25-1:0] mux7_y_net_x3;
  wire [25-1:0] mux0_y_net_x1;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] mux0_y_net_x0;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [25-1:0] mux1_y_net_x2;
  wire [25-1:0] mux0_y_net_x2;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] mux7_y_net;
  wire [1-1:0] register21_q_net;
  wire [25-1:0] mux4_y_net_x0;
  wire [25-1:0] mux0_y_net_x3;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux6_y_net_x0;
  wire [25-1:0] mux0_y_net_x6;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux0_y_net_x4;
  wire [14-1:0] register8_q_net_x2;
  wire [18-1:0] register0_q_net_x6;
  wire [14-1:0] dac_enable_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net_x0;
  wire [25-1:0] mux2_y_net_x1;
  wire [18-1:0] register16_q_net_x0;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux1_y_net_x0;
  wire [25-1:0] mux0_y_net_x5;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register0_q_net_x5;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux6_y_net_x1;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux7_y_net_x1;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux5_y_net_x2;
  wire [25-1:0] mux6_y_net_x2;
  wire [25-1:0] mux7_y_net_x2;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux1_y_net_x3;
  wire [25-1:0] mux2_y_net_x3;
  wire [25-1:0] mux3_y_net_x1;
  wire [25-1:0] mux3_y_net_x3;
  wire [2-1:0] register17_q_net;
  wire [10-1:0] register20_q_net;
  wire [14-1:0] register7_q_net_x6;
  wire [25-1:0] mux10_y_net;
  wire [10-1:0] register19_q_net;
  wire [25-1:0] mux3_y_net_x5;
  wire [25-1:0] mux5_y_net_x4;
  wire [25-1:0] mux8_y_net_x0;
  wire [25-1:0] mux12_y_net_x0;
  wire [25-1:0] mux14_y_net_x0;
  wire [25-1:0] mux7_y_net_x4;
  wire [25-1:0] mux6_y_net_x4;
  wire [25-1:0] mux7_y_net_x5;
  wire [25-1:0] mux1_y_net_x6;
  wire [25-1:0] mux6_y_net_x5;
  wire [25-1:0] mux2_y_net_x6;
  wire [25-1:0] mux7_y_net_x6;
  wire [25-1:0] mux6_y_net_x6;
  wire [25-1:0] mux3_y_net_x4;
  wire [25-1:0] mux3_y_net_x6;
  wire [25-1:0] mux10_y_net_x0;
  wire [25-1:0] mux4_y_net_x4;
  wire [18-1:0] register1_q_net_x6;
  wire [25-1:0] mux4_y_net_x6;
  wire [25-1:0] mux1_y_net_x4;
  wire [25-1:0] mux2_y_net_x5;
  wire [25-1:0] mux5_y_net_x5;
  wire [25-1:0] mux15_y_net_x0;
  wire [25-1:0] mux11_y_net_x0;
  wire [25-1:0] mux4_y_net_x5;
  wire [25-1:0] mux13_y_net_x0;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] mux1_y_net_x5;
  wire [25-1:0] mux2_y_net_x4;
  wire [25-1:0] mux5_y_net_x6;
  wire [25-1:0] mux9_y_net_x0;
  assign dac_pulse_out = register8_q_net_x1;
  assign divisor_out = add_offset_ch2_s_net;
  assign dma_out_1 = concat_y_net;
  assign dma_out_2 = concat2_y_net;
  assign dma_out_3 = concat3_y_net;
  assign dma_out_4 = concat5_y_net;
  assign dma_out_5 = concat4_y_net;
  assign gate_fb_x_out = upsample0_q_net;
  assign gate_fb_z_out = upsample1_q_net;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = upsample0_q_net_x0;
  assign gate_x2_out = upsample1_q_net_x0;
  assign gate_x3_out = upsample2_q_net;
  assign gate_x4_out = upsample3_q_net;
  assign gate_y_x_corrected_out = sfix16_13_cast_dout_net;
  assign gate_y_z_corrected_out = sfix16_13_cast1_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign z_in_net = z_in;
  assign x_in_net = x_in;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign tmr_dma_trigger_output = dma_trigger_threshold_op_net;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign gateway_in_net = gateway_in;
  assign gateway_in1_net = gateway_in1;
  assign gateway_in10_net = gateway_in10;
  assign gateway_in11_net = gateway_in11;
  assign gateway_in12_net = gateway_in12;
  assign gateway_in13_net = gateway_in13;
  assign gateway_in14_net = gateway_in14;
  assign gateway_in15_net = gateway_in15;
  assign gateway_in2_net = gateway_in2;
  assign gateway_in3_net = gateway_in3;
  assign gateway_in4_net = gateway_in4;
  assign gateway_in5_net = gateway_in5;
  assign gateway_in6_net = gateway_in6;
  assign gateway_in7_net = gateway_in7;
  assign gateway_in8_net = gateway_in8;
  assign gateway_in9_net = gateway_in9;
  assign gateway_in16_net = gateway_in16;
  assign gateway_in17_net = gateway_in17;
  assign gateway_in18_net = gateway_in18;
  assign gateway_in19_net = gateway_in19;
  assign gateway_in20_net = gateway_in20;
  assign gateway_in21_net = gateway_in21;
  assign gateway_in22_net = gateway_in22;
  assign gateway_in23_net = gateway_in23;
  assign gateway_in24_net = gateway_in24;
  assign gateway_in25_net = gateway_in25;
  assign gateway_in26_net = gateway_in26;
  assign gateway_in27_net = gateway_in27;
  assign gateway_in28_net = gateway_in28;
  assign gateway_in29_net = gateway_in29;
  assign gateway_in30_net = gateway_in30;
  assign gateway_in31_net = gateway_in31;
  assign gateway_in32_net = gateway_in32;
  assign gateway_in33_net = gateway_in33;
  assign gateway_in34_net = gateway_in34;
  assign gateway_in35_net = gateway_in35;
  assign gateway_in36_net = gateway_in36;
  assign gateway_in37_net = gateway_in37;
  assign gateway_in38_net = gateway_in38;
  assign gateway_in39_net = gateway_in39;
  assign gateway_in40_net = gateway_in40;
  assign gateway_in41_net = gateway_in41;
  assign gateway_in42_net = gateway_in42;
  assign gateway_in43_net = gateway_in43;
  assign gateway_in44_net = gateway_in44;
  assign gateway_in45_net = gateway_in45;
  assign gateway_in46_net = gateway_in46;
  assign gateway_in47_net = gateway_in47;
  assign gateway_in48_net = gateway_in48;
  assign gateway_in49_net = gateway_in49;
  assign gateway_in50_net = gateway_in50;
  assign gateway_in51_net = gateway_in51;
  assign gateway_in52_net = gateway_in52;
  assign gateway_in53_net = gateway_in53;
  assign gateway_in54_net = gateway_in54;
  assign gateway_in55_net = gateway_in55;
  assign gateway_in56_net = gateway_in56;
  assign gateway_in57_net = gateway_in57;
  assign gateway_in58_net = gateway_in58;
  assign gateway_in59_net = gateway_in59;
  assign gateway_in60_net = gateway_in60;
  assign gateway_in61_net = gateway_in61;
  assign gateway_in62_net = gateway_in62;
  assign gateway_in63_net = gateway_in63;
  assign gateway_in64_net = gateway_in64;
  assign gateway_in65_net = gateway_in65;
  assign gateway_in66_net = gateway_in66;
  assign gateway_in67_net = gateway_in67;
  assign gateway_in68_net = gateway_in68;
  assign gateway_in69_net = gateway_in69;
  assign gateway_in70_net = gateway_in70;
  assign gateway_in71_net = gateway_in71;
  assign gateway_in72_net = gateway_in72;
  assign gateway_in73_net = gateway_in73;
  assign gateway_in74_net = gateway_in74;
  assign gateway_in75_net = gateway_in75;
  assign gateway_in76_net = gateway_in76;
  assign gateway_in77_net = gateway_in77;
  assign gateway_in78_net = gateway_in78;
  assign gateway_in79_net = gateway_in79;
  assign x_ref_in_net = x_ref_in;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net_x0 = clk_4;
  assign ce_net_x0 = ce_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_2dof_adc_clock_domain_wrapper adc_clock_domain_wrapper (
    .sw_in(register_q_net),
    .fmat_in_1(register0_q_net_x4),
    .lmat_in_1(register0_q_net_x1),
    .kmat_in_1(register0_q_net_x2),
    .bmat_in_1(register0_q_net_x7),
    .fmat_ip_in_1(register0_q_net_x3),
    .lmat_ip_in_1(register0_q_net_x0),
    .kmat_ip_in_1(register0_q_net),
    .bmat_ip_in_1(register0_q_net_x10),
    .hw_switch_override(register5_q_net_x5),
    .adc_ch1_offst(register3_q_net_x5),
    .adc_ch2_offst(register6_q_net_x5),
    .pot_switch_hw(register8_q_net_x1),
    .pot_switch_hw_flag(register9_q_net_x1),
    .leds_in(register7_q_net_x5),
    .x_ref_in(register11_q_net_x1),
    .fb_src_switch(register16_q_net),
    .barrier_ub_lb_in_1(register0_q_net_x9),
    .barrier_c_idx_in(register12_q_net_x1),
    .barrier_c_ofst_idx_in(register13_q_net_x1),
    .barrier_ram_addr_in(register14_q_net_x1),
    .barrier_ram_data_in_1(register0_q_net_x8),
    .barrier_ram_we_in(register15_q_net_x1),
    .fmat_in_2(register1_q_net_x4),
    .fmat_in_3(register2_q_net_x4),
    .fmat_in_4(register3_q_net_x4),
    .fmat_in_5(register4_q_net_x4),
    .fmat_in_6(register5_q_net_x4),
    .fmat_in_7(register6_q_net_x4),
    .fmat_in_8(register7_q_net_x4),
    .fmat_in_9(register8_q_net_x0),
    .fmat_in_10(register9_q_net_x0),
    .fmat_in_11(register10_q_net_x0),
    .fmat_in_12(register11_q_net_x0),
    .fmat_in_13(register12_q_net_x0),
    .fmat_in_14(register13_q_net_x0),
    .fmat_in_15(register14_q_net_x0),
    .fmat_in_16(register15_q_net_x0),
    .lmat_in_2(register1_q_net_x1),
    .lmat_in_3(register2_q_net_x1),
    .lmat_in_4(register3_q_net_x1),
    .lmat_in_5(register4_q_net_x1),
    .lmat_in_6(register5_q_net_x1),
    .lmat_in_7(register6_q_net_x1),
    .lmat_in_8(register7_q_net_x1),
    .kmat_in_2(register1_q_net_x2),
    .kmat_in_3(register2_q_net_x2),
    .kmat_in_4(register3_q_net_x2),
    .kmat_in_5(register4_q_net_x2),
    .kmat_in_6(register5_q_net_x2),
    .kmat_in_7(register6_q_net_x2),
    .kmat_in_8(register7_q_net_x2),
    .bmat_in_2(register1_q_net_x7),
    .bmat_in_3(register2_q_net_x5),
    .bmat_in_4(register3_q_net_x6),
    .bmat_in_5(register4_q_net_x5),
    .bmat_in_6(register5_q_net_x6),
    .bmat_in_7(register6_q_net_x7),
    .bmat_in_8(register7_q_net_x7),
    .fmat_ip_in_2(register1_q_net_x3),
    .fmat_ip_in_3(register2_q_net_x3),
    .fmat_ip_in_4(register3_q_net_x3),
    .fmat_ip_in_5(register4_q_net_x3),
    .fmat_ip_in_6(register5_q_net_x3),
    .fmat_ip_in_7(register6_q_net_x3),
    .fmat_ip_in_8(register7_q_net_x3),
    .fmat_ip_in_9(register8_q_net),
    .fmat_ip_in_10(register9_q_net),
    .fmat_ip_in_11(register10_q_net),
    .fmat_ip_in_12(register11_q_net),
    .fmat_ip_in_13(register12_q_net),
    .fmat_ip_in_14(register13_q_net),
    .fmat_ip_in_15(register14_q_net),
    .fmat_ip_in_16(register15_q_net),
    .lmat_ip_in_2(register1_q_net_x0),
    .lmat_ip_in_3(register2_q_net_x0),
    .lmat_ip_in_4(register3_q_net_x0),
    .lmat_ip_in_5(register4_q_net_x0),
    .lmat_ip_in_6(register5_q_net_x0),
    .lmat_ip_in_7(register6_q_net_x0),
    .lmat_ip_in_8(register7_q_net_x0),
    .kmat_ip_in_2(register1_q_net),
    .kmat_ip_in_3(register2_q_net),
    .kmat_ip_in_4(register3_q_net),
    .kmat_ip_in_5(register4_q_net),
    .kmat_ip_in_6(register5_q_net),
    .kmat_ip_in_7(register6_q_net),
    .kmat_ip_in_8(register7_q_net),
    .bmat_ip_in_2(register1_q_net_x10),
    .bmat_ip_in_3(register2_q_net_x6),
    .bmat_ip_in_4(register3_q_net_x7),
    .bmat_ip_in_5(register4_q_net_x6),
    .bmat_ip_in_6(register5_q_net_x7),
    .bmat_ip_in_7(register6_q_net_x8),
    .bmat_ip_in_8(register7_q_net_x8),
    .barrier_ub_lb_in_2(register1_q_net_x9),
    .barrier_ram_data_in_2(register1_q_net_x8),
    .hw_pot_switch(hw_pot_switch_net),
    .z_in(z_in_net),
    .x_in(x_in_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net_x0),
    .ce_4(ce_net_x0),
    .divisor_out(add_offset_ch2_s_net),
    .dma_out_1(concat_y_net),
    .dma_out_2(concat2_y_net),
    .dma_out_3(concat3_y_net),
    .dma_out_4(concat5_y_net),
    .dma_out_5(concat4_y_net),
    .gate_fb_x_out(upsample0_q_net),
    .gate_fb_z_out(upsample1_q_net),
    .gate_leds_out(concat1_y_net),
    .gate_x1_out(upsample0_q_net_x0),
    .gate_x2_out(upsample1_q_net_x0),
    .gate_x3_out(upsample2_q_net),
    .gate_x4_out(upsample3_q_net),
    .gate_y_x_corrected_out(sfix16_13_cast_dout_net),
    .gate_y_z_corrected_out(sfix16_13_cast1_dout_net)
  );
  fpga_kf_2dof_axi_clock_domain_wrapper axi_clock_domain_wrapper (
    .registers_wren_in(registers_wren_in_net),
    .adc_ch1_offst(adc_ch1_offst_net),
    .adc_ch2_offst(adc_ch2_offst_net),
    .ap_ip_switch_in(ap_ip_switch_in_net),
    .disco_mode_enable(disco_mode_enable_net),
    .fixed_led_pattern_in(fixed_led_pattern_in_net),
    .barrier_c0_data_in(barrier_c0_data_in_net),
    .barrier_c1_data_in(barrier_c1_data_in_net),
    .barrier_c_idx_in(barrier_c_idx_in_net),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in_net),
    .barrier_ram_addr_in(barrier_ram_addr_in_net),
    .barrier_ram_we_in(barrier_ram_we_in_net),
    .barrier_lb_in(barrier_lb_in_net),
    .barrier_ub_in(barrier_ub_in_net),
    .dma_trigger_time(dma_trigger_time_net),
    .fb_src_switch_in(fb_src_switch_in_net),
    .out_switch_off(out_switch_off_net),
    .out_switch_on(out_switch_on_net),
    .reg_out_switch_t0(reg_out_switch_t0_net),
    .reg_out_switch_tf(reg_out_switch_tf_net),
    .reg_rp_switch_t0(reg_rp_switch_t0_net),
    .reg_rp_switch_tf(reg_rp_switch_tf_net),
    .reg_timer_period(reg_timer_period_net),
    .sw_override_in(sw_override_in_net),
    .gateway_in(gateway_in_net),
    .gateway_in1(gateway_in1_net),
    .gateway_in10(gateway_in10_net),
    .gateway_in11(gateway_in11_net),
    .gateway_in12(gateway_in12_net),
    .gateway_in13(gateway_in13_net),
    .gateway_in14(gateway_in14_net),
    .gateway_in15(gateway_in15_net),
    .gateway_in2(gateway_in2_net),
    .gateway_in3(gateway_in3_net),
    .gateway_in4(gateway_in4_net),
    .gateway_in5(gateway_in5_net),
    .gateway_in6(gateway_in6_net),
    .gateway_in7(gateway_in7_net),
    .gateway_in8(gateway_in8_net),
    .gateway_in9(gateway_in9_net),
    .gateway_in16(gateway_in16_net),
    .gateway_in17(gateway_in17_net),
    .gateway_in18(gateway_in18_net),
    .gateway_in19(gateway_in19_net),
    .gateway_in20(gateway_in20_net),
    .gateway_in21(gateway_in21_net),
    .gateway_in22(gateway_in22_net),
    .gateway_in23(gateway_in23_net),
    .gateway_in24(gateway_in24_net),
    .gateway_in25(gateway_in25_net),
    .gateway_in26(gateway_in26_net),
    .gateway_in27(gateway_in27_net),
    .gateway_in28(gateway_in28_net),
    .gateway_in29(gateway_in29_net),
    .gateway_in30(gateway_in30_net),
    .gateway_in31(gateway_in31_net),
    .gateway_in32(gateway_in32_net),
    .gateway_in33(gateway_in33_net),
    .gateway_in34(gateway_in34_net),
    .gateway_in35(gateway_in35_net),
    .gateway_in36(gateway_in36_net),
    .gateway_in37(gateway_in37_net),
    .gateway_in38(gateway_in38_net),
    .gateway_in39(gateway_in39_net),
    .gateway_in40(gateway_in40_net),
    .gateway_in41(gateway_in41_net),
    .gateway_in42(gateway_in42_net),
    .gateway_in43(gateway_in43_net),
    .gateway_in44(gateway_in44_net),
    .gateway_in45(gateway_in45_net),
    .gateway_in46(gateway_in46_net),
    .gateway_in47(gateway_in47_net),
    .gateway_in48(gateway_in48_net),
    .gateway_in49(gateway_in49_net),
    .gateway_in50(gateway_in50_net),
    .gateway_in51(gateway_in51_net),
    .gateway_in52(gateway_in52_net),
    .gateway_in53(gateway_in53_net),
    .gateway_in54(gateway_in54_net),
    .gateway_in55(gateway_in55_net),
    .gateway_in56(gateway_in56_net),
    .gateway_in57(gateway_in57_net),
    .gateway_in58(gateway_in58_net),
    .gateway_in59(gateway_in59_net),
    .gateway_in60(gateway_in60_net),
    .gateway_in61(gateway_in61_net),
    .gateway_in62(gateway_in62_net),
    .gateway_in63(gateway_in63_net),
    .gateway_in64(gateway_in64_net),
    .gateway_in65(gateway_in65_net),
    .gateway_in66(gateway_in66_net),
    .gateway_in67(gateway_in67_net),
    .gateway_in68(gateway_in68_net),
    .gateway_in69(gateway_in69_net),
    .gateway_in70(gateway_in70_net),
    .gateway_in71(gateway_in71_net),
    .gateway_in72(gateway_in72_net),
    .gateway_in73(gateway_in73_net),
    .gateway_in74(gateway_in74_net),
    .gateway_in75(gateway_in75_net),
    .gateway_in76(gateway_in76_net),
    .gateway_in77(gateway_in77_net),
    .gateway_in78(gateway_in78_net),
    .gateway_in79(gateway_in79_net),
    .x_ref_in(x_ref_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ap_ip_switch_out(sw_switch_mux_y_net),
    .f_reg_out_1(mux0_y_net),
    .l_reg_out_1(mux0_y_net_x0),
    .k_reg_out_1(mux0_y_net_x1),
    .b_reg_out_1(mux0_y_net_x2),
    .f_ip_reg_out_1(mux0_y_net_x3),
    .l_ip_reg_out_1(mux0_y_net_x4),
    .k_ip_reg_out_1(mux0_y_net_x5),
    .b_ip_reg_out_1(mux0_y_net_x6),
    .leds_cross_out(mux_y_net),
    .potential_switch_override_reg_out(register6_q_net_x6),
    .adc_offset_1(register7_q_net_x6),
    .adc_offset_2(register8_q_net_x2),
    .hw_switch_output(dac_enable_y_net),
    .hw_switch_flag(hw_switch_flag_delay_match_q_net),
    .x_ref_out(register16_q_net_x0),
    .fb_src_switch_out(register17_q_net),
    .barrier_ub_lb_out_1(register0_q_net_x6),
    .barrier_c_idx_out(register18_q_net),
    .barrier_c_ofst_idx_out(register19_q_net),
    .barrier_ram_addr_out(register20_q_net),
    .barrier_ram_data_out_1(register0_q_net_x5),
    .barrier_ram_we_out(register21_q_net),
    .f_reg_out_2(mux1_y_net),
    .f_reg_out_3(mux2_y_net),
    .f_reg_out_4(mux3_y_net),
    .f_reg_out_5(mux4_y_net),
    .f_reg_out_6(mux5_y_net),
    .f_reg_out_7(mux6_y_net),
    .f_reg_out_8(mux7_y_net),
    .f_reg_out_9(mux8_y_net),
    .f_reg_out_10(mux9_y_net),
    .f_reg_out_11(mux10_y_net),
    .f_reg_out_12(mux11_y_net),
    .f_reg_out_13(mux12_y_net),
    .f_reg_out_14(mux13_y_net),
    .f_reg_out_15(mux14_y_net),
    .f_reg_out_16(mux15_y_net),
    .l_reg_out_2(mux1_y_net_x0),
    .l_reg_out_3(mux2_y_net_x0),
    .l_reg_out_4(mux3_y_net_x0),
    .l_reg_out_5(mux4_y_net_x0),
    .l_reg_out_6(mux5_y_net_x0),
    .l_reg_out_7(mux6_y_net_x0),
    .l_reg_out_8(mux7_y_net_x0),
    .k_reg_out_2(mux1_y_net_x1),
    .k_reg_out_3(mux2_y_net_x1),
    .k_reg_out_4(mux3_y_net_x1),
    .k_reg_out_5(mux4_y_net_x1),
    .k_reg_out_6(mux5_y_net_x1),
    .k_reg_out_7(mux6_y_net_x1),
    .k_reg_out_8(mux7_y_net_x1),
    .b_reg_out_2(mux1_y_net_x2),
    .b_reg_out_3(mux2_y_net_x2),
    .b_reg_out_4(mux3_y_net_x2),
    .b_reg_out_5(mux4_y_net_x2),
    .b_reg_out_6(mux5_y_net_x2),
    .b_reg_out_7(mux6_y_net_x2),
    .b_reg_out_8(mux7_y_net_x2),
    .f_ip_reg_out_2(mux1_y_net_x3),
    .f_ip_reg_out_3(mux2_y_net_x3),
    .f_ip_reg_out_4(mux3_y_net_x3),
    .f_ip_reg_out_5(mux4_y_net_x3),
    .f_ip_reg_out_6(mux5_y_net_x3),
    .f_ip_reg_out_7(mux6_y_net_x3),
    .f_ip_reg_out_8(mux7_y_net_x3),
    .f_ip_reg_out_9(mux8_y_net_x0),
    .f_ip_reg_out_10(mux9_y_net_x0),
    .f_ip_reg_out_11(mux10_y_net_x0),
    .f_ip_reg_out_12(mux11_y_net_x0),
    .f_ip_reg_out_13(mux12_y_net_x0),
    .f_ip_reg_out_14(mux13_y_net_x0),
    .f_ip_reg_out_15(mux14_y_net_x0),
    .f_ip_reg_out_16(mux15_y_net_x0),
    .l_ip_reg_out_2(mux1_y_net_x4),
    .l_ip_reg_out_3(mux2_y_net_x4),
    .l_ip_reg_out_4(mux3_y_net_x4),
    .l_ip_reg_out_5(mux4_y_net_x4),
    .l_ip_reg_out_6(mux5_y_net_x4),
    .l_ip_reg_out_7(mux6_y_net_x4),
    .l_ip_reg_out_8(mux7_y_net_x4),
    .k_ip_reg_out_2(mux1_y_net_x5),
    .k_ip_reg_out_3(mux2_y_net_x5),
    .k_ip_reg_out_4(mux3_y_net_x5),
    .k_ip_reg_out_5(mux4_y_net_x5),
    .k_ip_reg_out_6(mux5_y_net_x5),
    .k_ip_reg_out_7(mux6_y_net_x5),
    .k_ip_reg_out_8(mux7_y_net_x5),
    .b_ip_reg_out_2(mux1_y_net_x6),
    .b_ip_reg_out_3(mux2_y_net_x6),
    .b_ip_reg_out_4(mux3_y_net_x6),
    .b_ip_reg_out_5(mux4_y_net_x6),
    .b_ip_reg_out_6(mux5_y_net_x6),
    .b_ip_reg_out_7(mux6_y_net_x6),
    .b_ip_reg_out_8(mux7_y_net_x6),
    .barrier_ub_lb_out_2(register1_q_net_x6),
    .barrier_ram_data_out_2(register1_q_net_x5),
    .tmr_dma_trigger_output(dma_trigger_threshold_op_net)
  );
  fpga_kf_2dof_vector_register_x1 vector_register (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .d_5(mux4_y_net),
    .d_6(mux5_y_net),
    .d_7(mux6_y_net),
    .d_8(mux7_y_net),
    .d_9(mux8_y_net),
    .d_10(mux9_y_net),
    .d_11(mux10_y_net),
    .d_12(mux11_y_net),
    .d_13(mux12_y_net),
    .d_14(mux13_y_net),
    .d_15(mux14_y_net),
    .d_16(mux15_y_net),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x4),
    .q_2(register1_q_net_x4),
    .q_3(register2_q_net_x4),
    .q_4(register3_q_net_x4),
    .q_5(register4_q_net_x4),
    .q_6(register5_q_net_x4),
    .q_7(register6_q_net_x4),
    .q_8(register7_q_net_x4),
    .q_9(register8_q_net_x0),
    .q_10(register9_q_net_x0),
    .q_11(register10_q_net_x0),
    .q_12(register11_q_net_x0),
    .q_13(register12_q_net_x0),
    .q_14(register13_q_net_x0),
    .q_15(register14_q_net_x0),
    .q_16(register15_q_net_x0)
  );
  fpga_kf_2dof_vector_register1_x0 vector_register1 (
    .d_1(mux0_y_net_x3),
    .d_2(mux1_y_net_x3),
    .d_3(mux2_y_net_x3),
    .d_4(mux3_y_net_x3),
    .d_5(mux4_y_net_x3),
    .d_6(mux5_y_net_x3),
    .d_7(mux6_y_net_x3),
    .d_8(mux7_y_net_x3),
    .d_9(mux8_y_net_x0),
    .d_10(mux9_y_net_x0),
    .d_11(mux10_y_net_x0),
    .d_12(mux11_y_net_x0),
    .d_13(mux12_y_net_x0),
    .d_14(mux13_y_net_x0),
    .d_15(mux14_y_net_x0),
    .d_16(mux15_y_net_x0),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x3),
    .q_2(register1_q_net_x3),
    .q_3(register2_q_net_x3),
    .q_4(register3_q_net_x3),
    .q_5(register4_q_net_x3),
    .q_6(register5_q_net_x3),
    .q_7(register6_q_net_x3),
    .q_8(register7_q_net_x3),
    .q_9(register8_q_net),
    .q_10(register9_q_net),
    .q_11(register10_q_net),
    .q_12(register11_q_net),
    .q_13(register12_q_net),
    .q_14(register13_q_net),
    .q_15(register14_q_net),
    .q_16(register15_q_net)
  );
  fpga_kf_2dof_vector_register2_x0 vector_register2 (
    .d_1(mux0_y_net_x1),
    .d_2(mux1_y_net_x1),
    .d_3(mux2_y_net_x1),
    .d_4(mux3_y_net_x1),
    .d_5(mux4_y_net_x1),
    .d_6(mux5_y_net_x1),
    .d_7(mux6_y_net_x1),
    .d_8(mux7_y_net_x1),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x2),
    .q_2(register1_q_net_x2),
    .q_3(register2_q_net_x2),
    .q_4(register3_q_net_x2),
    .q_5(register4_q_net_x2),
    .q_6(register5_q_net_x2),
    .q_7(register6_q_net_x2),
    .q_8(register7_q_net_x2)
  );
  fpga_kf_2dof_vector_register3_x0 vector_register3 (
    .d_1(mux0_y_net_x0),
    .d_2(mux1_y_net_x0),
    .d_3(mux2_y_net_x0),
    .d_4(mux3_y_net_x0),
    .d_5(mux4_y_net_x0),
    .d_6(mux5_y_net_x0),
    .d_7(mux6_y_net_x0),
    .d_8(mux7_y_net_x0),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x1),
    .q_2(register1_q_net_x1),
    .q_3(register2_q_net_x1),
    .q_4(register3_q_net_x1),
    .q_5(register4_q_net_x1),
    .q_6(register5_q_net_x1),
    .q_7(register6_q_net_x1),
    .q_8(register7_q_net_x1)
  );
  fpga_kf_2dof_vector_register4_x0 vector_register4 (
    .d_1(mux0_y_net_x4),
    .d_2(mux1_y_net_x4),
    .d_3(mux2_y_net_x4),
    .d_4(mux3_y_net_x4),
    .d_5(mux4_y_net_x4),
    .d_6(mux5_y_net_x4),
    .d_7(mux6_y_net_x4),
    .d_8(mux7_y_net_x4),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x0),
    .q_2(register1_q_net_x0),
    .q_3(register2_q_net_x0),
    .q_4(register3_q_net_x0),
    .q_5(register4_q_net_x0),
    .q_6(register5_q_net_x0),
    .q_7(register6_q_net_x0),
    .q_8(register7_q_net_x0)
  );
  fpga_kf_2dof_vector_register5_x0 vector_register5 (
    .d_1(mux0_y_net_x5),
    .d_2(mux1_y_net_x5),
    .d_3(mux2_y_net_x5),
    .d_4(mux3_y_net_x5),
    .d_5(mux4_y_net_x5),
    .d_6(mux5_y_net_x5),
    .d_7(mux6_y_net_x5),
    .d_8(mux7_y_net_x5),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net),
    .q_2(register1_q_net),
    .q_3(register2_q_net),
    .q_4(register3_q_net),
    .q_5(register4_q_net),
    .q_6(register5_q_net),
    .q_7(register6_q_net),
    .q_8(register7_q_net)
  );
  fpga_kf_2dof_vector_register6_x0 vector_register6 (
    .d_1(mux0_y_net_x6),
    .d_2(mux1_y_net_x6),
    .d_3(mux2_y_net_x6),
    .d_4(mux3_y_net_x6),
    .d_5(mux4_y_net_x6),
    .d_6(mux5_y_net_x6),
    .d_7(mux6_y_net_x6),
    .d_8(mux7_y_net_x6),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x10),
    .q_2(register1_q_net_x10),
    .q_3(register2_q_net_x6),
    .q_4(register3_q_net_x7),
    .q_5(register4_q_net_x6),
    .q_6(register5_q_net_x7),
    .q_7(register6_q_net_x8),
    .q_8(register7_q_net_x8)
  );
  fpga_kf_2dof_vector_register7_x0 vector_register7 (
    .d_1(register0_q_net_x6),
    .d_2(register1_q_net_x6),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x9),
    .q_2(register1_q_net_x9)
  );
  fpga_kf_2dof_vector_register8_x0 vector_register8 (
    .d_1(register0_q_net_x5),
    .d_2(register1_q_net_x5),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x8)
  );
  fpga_kf_2dof_vector_register9_x0 vector_register9 (
    .d_1(mux0_y_net_x2),
    .d_2(mux1_y_net_x2),
    .d_3(mux2_y_net_x2),
    .d_4(mux3_y_net_x2),
    .d_5(mux4_y_net_x2),
    .d_6(mux5_y_net_x2),
    .d_7(mux6_y_net_x2),
    .d_8(mux7_y_net_x2),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x7),
    .q_2(register1_q_net_x7),
    .q_3(register2_q_net_x5),
    .q_4(register3_q_net_x6),
    .q_5(register4_q_net_x5),
    .q_6(register5_q_net_x6),
    .q_7(register6_q_net_x7),
    .q_8(register7_q_net_x7)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(sw_switch_mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register16_q_net)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net_x6),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net_x5)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net_x6),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net_x5)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net_x5)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(6),
    .init_value(6'b000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net_x5)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac_enable_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net_x1)
  );
  fpga_kf_2dof_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_switch_flag_delay_match_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net_x1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fpga_kf_2dof_default_clock_driver (
  input adc_clock_domain_wrapper_sysclk,
  input adc_clock_domain_wrapper_sysce,
  input adc_clock_domain_wrapper_sysclr,
  input axi_clock_domain_wrapper_sysclk,
  input axi_clock_domain_wrapper_sysce,
  input axi_clock_domain_wrapper_sysclr,
  output adc_clock_domain_wrapper_clk1,
  output adc_clock_domain_wrapper_ce1,
  output adc_clock_domain_wrapper_clk4,
  output adc_clock_domain_wrapper_ce4,
  output axi_clock_domain_wrapper_clk1,
  output axi_clock_domain_wrapper_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x1 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk1),
    .ce(adc_clock_domain_wrapper_ce1)
  );
  xlclockdriver #(
    .period(4),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk4),
    .ce(adc_clock_domain_wrapper_ce4)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(axi_clock_domain_wrapper_sysclk),
    .sysce(axi_clock_domain_wrapper_sysce),
    .sysclr(axi_clock_domain_wrapper_sysclr),
    .clk(axi_clock_domain_wrapper_clk1),
    .ce(axi_clock_domain_wrapper_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "fpga_kf_2dof,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00828068,addsub=39,concat=6,constant=6,convert=23,counter=2,delay=82,dpram=2,dsamp=92,expr=1,inv=2,logical=2,mult=42,mux=129,register=208,reinterpret=11,relational=8,shift=1,slice=4,usamp=10,}" *)
module fpga_kf_2dof (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] z_in,
  input [14-1:0] x_in,
  input adc_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_aresetn,
  input [11-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_awaddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_awvalid,
  input [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wdata,
  input [4-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wstrb,
  input axi_clock_domain_wrapper_cfg_in_s_axi_wvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_bready,
  input [11-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_araddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_arvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_rready,
  output [14-1:0] dac_pulse_out,
  output [18-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [1-1:0] tmr_dma_trigger_output,
  output axi_clock_domain_wrapper_cfg_in_s_axi_awready,
  output axi_clock_domain_wrapper_cfg_in_s_axi_wready,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_bresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_bvalid,
  output axi_clock_domain_wrapper_cfg_in_s_axi_arready,
  output [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rdata,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_rvalid
);
  wire axi_clock_domain_wrapper_clk_net;
  wire [18-1:0] barrier_ub_in;
  wire [32-1:0] reg_rp_switch_t0;
  wire [2-1:0] sw_override_in;
  wire [25-1:0] gateway_in1;
  wire [25-1:0] gateway_in;
  wire [1-1:0] disco_mode_enable;
  wire [25-1:0] gateway_in10;
  wire [25-1:0] gateway_in11;
  wire [18-1:0] barrier_lb_in;
  wire [25-1:0] gateway_in14;
  wire [32-1:0] dma_trigger_time;
  wire [2-1:0] fb_src_switch_in;
  wire [25-1:0] barrier_c_idx_in;
  wire [32-1:0] reg_out_switch_tf;
  wire [32-1:0] reg_timer_period;
  wire [25-1:0] gateway_in12;
  wire [25-1:0] gateway_in13;
  wire [25-1:0] gateway_in15;
  wire [10-1:0] barrier_ram_addr_in;
  wire [25-1:0] gateway_in2;
  wire [25-1:0] gateway_in5;
  wire [1-1:0] registers_wren_in;
  wire [25-1:0] barrier_c0_data_in;
  wire [32-1:0] reg_rp_switch_tf;
  wire [25-1:0] gateway_in3;
  wire [25-1:0] gateway_in4;
  wire [14-1:0] adc_ch2_offst;
  wire [25-1:0] barrier_c1_data_in;
  wire [32-1:0] reg_out_switch_t0;
  wire [14-1:0] adc_ch1_offst;
  wire [2-1:0] ap_ip_switch_in;
  wire [16-1:0] fixed_led_pattern_in;
  wire [10-1:0] barrier_c_ofst_idx_in;
  wire [1-1:0] barrier_ram_we_in;
  wire [14-1:0] out_switch_off;
  wire [14-1:0] out_switch_on;
  wire [25-1:0] gateway_in37;
  wire [25-1:0] gateway_in17;
  wire [25-1:0] gateway_in26;
  wire [25-1:0] gateway_in28;
  wire [25-1:0] gateway_in32;
  wire [25-1:0] gateway_in44;
  wire [25-1:0] gateway_in45;
  wire [25-1:0] gateway_in9;
  wire [25-1:0] gateway_in50;
  wire [25-1:0] gateway_in51;
  wire [25-1:0] gateway_in52;
  wire [25-1:0] gateway_in57;
  wire [25-1:0] gateway_in61;
  wire [25-1:0] gateway_in62;
  wire [25-1:0] gateway_in21;
  wire [25-1:0] gateway_in25;
  wire [25-1:0] gateway_in22;
  wire [25-1:0] gateway_in42;
  wire [25-1:0] gateway_in47;
  wire [25-1:0] gateway_in23;
  wire [25-1:0] gateway_in55;
  wire [25-1:0] gateway_in63;
  wire [25-1:0] gateway_in65;
  wire [25-1:0] gateway_in35;
  wire [25-1:0] gateway_in68;
  wire [25-1:0] gateway_in72;
  wire [25-1:0] gateway_in66;
  wire [25-1:0] gateway_in67;
  wire [25-1:0] gateway_in73;
  wire [25-1:0] gateway_in6;
  wire [25-1:0] gateway_in75;
  wire [25-1:0] gateway_in71;
  wire [25-1:0] gateway_in8;
  wire [25-1:0] gateway_in27;
  wire [25-1:0] gateway_in53;
  wire [25-1:0] gateway_in59;
  wire [25-1:0] gateway_in16;
  wire [25-1:0] gateway_in49;
  wire [25-1:0] gateway_in74;
  wire [25-1:0] gateway_in18;
  wire [25-1:0] gateway_in40;
  wire [25-1:0] gateway_in19;
  wire [25-1:0] gateway_in43;
  wire [25-1:0] gateway_in58;
  wire [25-1:0] gateway_in33;
  wire [25-1:0] gateway_in69;
  wire [25-1:0] gateway_in7;
  wire [25-1:0] gateway_in46;
  wire [25-1:0] gateway_in64;
  wire [25-1:0] gateway_in70;
  wire [25-1:0] gateway_in24;
  wire [25-1:0] gateway_in31;
  wire [25-1:0] gateway_in48;
  wire [25-1:0] gateway_in54;
  wire [25-1:0] gateway_in29;
  wire [25-1:0] gateway_in56;
  wire [25-1:0] gateway_in60;
  wire [25-1:0] gateway_in34;
  wire [25-1:0] gateway_in39;
  wire [25-1:0] gateway_in36;
  wire [25-1:0] gateway_in20;
  wire [25-1:0] gateway_in38;
  wire [25-1:0] gateway_in41;
  wire [25-1:0] gateway_in30;
  wire [25-1:0] gateway_in79;
  wire ce_1_net;
  wire ce_1_net_x0;
  wire [25-1:0] gateway_in77;
  wire ce_4_net;
  wire [18-1:0] x_ref_in;
  wire [25-1:0] gateway_in76;
  wire [25-1:0] gateway_in78;
  wire clk_1_net;
  wire clk_1_net_x0;
  wire clk_4_net;
  axi_clock_domain_wrapper_cfg_in_axi_lite_interface axi_clock_domain_wrapper_cfg_in_axi_lite_interface (
    .axi_clock_domain_wrapper_cfg_in_s_axi_awaddr(axi_clock_domain_wrapper_cfg_in_s_axi_awaddr),
    .axi_clock_domain_wrapper_cfg_in_s_axi_awvalid(axi_clock_domain_wrapper_cfg_in_s_axi_awvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wdata(axi_clock_domain_wrapper_cfg_in_s_axi_wdata),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wstrb(axi_clock_domain_wrapper_cfg_in_s_axi_wstrb),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wvalid(axi_clock_domain_wrapper_cfg_in_s_axi_wvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bready(axi_clock_domain_wrapper_cfg_in_s_axi_bready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_araddr(axi_clock_domain_wrapper_cfg_in_s_axi_araddr),
    .axi_clock_domain_wrapper_cfg_in_s_axi_arvalid(axi_clock_domain_wrapper_cfg_in_s_axi_arvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rready(axi_clock_domain_wrapper_cfg_in_s_axi_rready),
    .axi_clock_domain_wrapper_cfg_in_aresetn(axi_clock_domain_wrapper_aresetn),
    .axi_clock_domain_wrapper_cfg_in_aclk(axi_clock_domain_wrapper_clk),
    .x_ref_in(x_ref_in),
    .gateway_in79(gateway_in79),
    .gateway_in78(gateway_in78),
    .gateway_in77(gateway_in77),
    .gateway_in76(gateway_in76),
    .gateway_in75(gateway_in75),
    .gateway_in74(gateway_in74),
    .gateway_in73(gateway_in73),
    .gateway_in72(gateway_in72),
    .gateway_in71(gateway_in71),
    .gateway_in70(gateway_in70),
    .gateway_in69(gateway_in69),
    .gateway_in68(gateway_in68),
    .gateway_in67(gateway_in67),
    .gateway_in66(gateway_in66),
    .gateway_in65(gateway_in65),
    .gateway_in64(gateway_in64),
    .gateway_in63(gateway_in63),
    .gateway_in62(gateway_in62),
    .gateway_in61(gateway_in61),
    .gateway_in60(gateway_in60),
    .gateway_in59(gateway_in59),
    .gateway_in58(gateway_in58),
    .gateway_in57(gateway_in57),
    .gateway_in56(gateway_in56),
    .gateway_in55(gateway_in55),
    .gateway_in54(gateway_in54),
    .gateway_in53(gateway_in53),
    .gateway_in52(gateway_in52),
    .gateway_in51(gateway_in51),
    .gateway_in50(gateway_in50),
    .gateway_in49(gateway_in49),
    .gateway_in48(gateway_in48),
    .gateway_in47(gateway_in47),
    .gateway_in46(gateway_in46),
    .gateway_in45(gateway_in45),
    .gateway_in44(gateway_in44),
    .gateway_in43(gateway_in43),
    .gateway_in42(gateway_in42),
    .gateway_in41(gateway_in41),
    .gateway_in40(gateway_in40),
    .gateway_in39(gateway_in39),
    .gateway_in38(gateway_in38),
    .gateway_in37(gateway_in37),
    .gateway_in36(gateway_in36),
    .gateway_in35(gateway_in35),
    .gateway_in34(gateway_in34),
    .gateway_in33(gateway_in33),
    .gateway_in32(gateway_in32),
    .gateway_in31(gateway_in31),
    .gateway_in30(gateway_in30),
    .gateway_in29(gateway_in29),
    .gateway_in28(gateway_in28),
    .gateway_in27(gateway_in27),
    .gateway_in26(gateway_in26),
    .gateway_in25(gateway_in25),
    .gateway_in24(gateway_in24),
    .gateway_in23(gateway_in23),
    .gateway_in22(gateway_in22),
    .gateway_in21(gateway_in21),
    .gateway_in20(gateway_in20),
    .gateway_in19(gateway_in19),
    .gateway_in18(gateway_in18),
    .gateway_in17(gateway_in17),
    .gateway_in16(gateway_in16),
    .gateway_in9(gateway_in9),
    .gateway_in8(gateway_in8),
    .gateway_in7(gateway_in7),
    .gateway_in6(gateway_in6),
    .gateway_in5(gateway_in5),
    .gateway_in4(gateway_in4),
    .gateway_in3(gateway_in3),
    .gateway_in2(gateway_in2),
    .gateway_in15(gateway_in15),
    .gateway_in14(gateway_in14),
    .gateway_in13(gateway_in13),
    .gateway_in12(gateway_in12),
    .gateway_in11(gateway_in11),
    .gateway_in10(gateway_in10),
    .gateway_in1(gateway_in1),
    .gateway_in(gateway_in),
    .sw_override_in(sw_override_in),
    .reg_timer_period(reg_timer_period),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_out_switch_t0(reg_out_switch_t0),
    .out_switch_on(out_switch_on),
    .out_switch_off(out_switch_off),
    .fb_src_switch_in(fb_src_switch_in),
    .dma_trigger_time(dma_trigger_time),
    .barrier_ub_in(barrier_ub_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c0_data_in(barrier_c0_data_in),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .disco_mode_enable(disco_mode_enable),
    .ap_ip_switch_in(ap_ip_switch_in),
    .adc_ch2_offst(adc_ch2_offst),
    .adc_ch1_offst(adc_ch1_offst),
    .registers_wren_in(registers_wren_in),
    .axi_clock_domain_wrapper_cfg_in_s_axi_awready(axi_clock_domain_wrapper_cfg_in_s_axi_awready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wready(axi_clock_domain_wrapper_cfg_in_s_axi_wready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bresp(axi_clock_domain_wrapper_cfg_in_s_axi_bresp),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bvalid(axi_clock_domain_wrapper_cfg_in_s_axi_bvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_arready(axi_clock_domain_wrapper_cfg_in_s_axi_arready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rdata(axi_clock_domain_wrapper_cfg_in_s_axi_rdata),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rresp(axi_clock_domain_wrapper_cfg_in_s_axi_rresp),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rvalid(axi_clock_domain_wrapper_cfg_in_s_axi_rvalid),
    .axi_clock_domain_wrapper_clk(axi_clock_domain_wrapper_clk_net)
  );
  fpga_kf_2dof_default_clock_driver fpga_kf_2dof_default_clock_driver (
    .adc_clock_domain_wrapper_sysclk(adc_clock_domain_wrapper_clk),
    .adc_clock_domain_wrapper_sysce(1'b1),
    .adc_clock_domain_wrapper_sysclr(1'b0),
    .axi_clock_domain_wrapper_sysclk(axi_clock_domain_wrapper_clk_net),
    .axi_clock_domain_wrapper_sysce(1'b1),
    .axi_clock_domain_wrapper_sysclr(1'b0),
    .adc_clock_domain_wrapper_clk1(clk_1_net_x0),
    .adc_clock_domain_wrapper_ce1(ce_1_net_x0),
    .adc_clock_domain_wrapper_clk4(clk_4_net),
    .adc_clock_domain_wrapper_ce4(ce_4_net),
    .axi_clock_domain_wrapper_clk1(clk_1_net),
    .axi_clock_domain_wrapper_ce1(ce_1_net)
  );
  fpga_kf_2dof_struct fpga_kf_2dof_struct (
    .hw_pot_switch(hw_pot_switch),
    .z_in(z_in),
    .x_in(x_in),
    .registers_wren_in(registers_wren_in),
    .adc_ch1_offst(adc_ch1_offst),
    .adc_ch2_offst(adc_ch2_offst),
    .ap_ip_switch_in(ap_ip_switch_in),
    .disco_mode_enable(disco_mode_enable),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .barrier_c0_data_in(barrier_c0_data_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ub_in(barrier_ub_in),
    .dma_trigger_time(dma_trigger_time),
    .fb_src_switch_in(fb_src_switch_in),
    .out_switch_off(out_switch_off),
    .out_switch_on(out_switch_on),
    .reg_out_switch_t0(reg_out_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_timer_period(reg_timer_period),
    .sw_override_in(sw_override_in),
    .gateway_in(gateway_in),
    .gateway_in1(gateway_in1),
    .gateway_in10(gateway_in10),
    .gateway_in11(gateway_in11),
    .gateway_in12(gateway_in12),
    .gateway_in13(gateway_in13),
    .gateway_in14(gateway_in14),
    .gateway_in15(gateway_in15),
    .gateway_in2(gateway_in2),
    .gateway_in3(gateway_in3),
    .gateway_in4(gateway_in4),
    .gateway_in5(gateway_in5),
    .gateway_in6(gateway_in6),
    .gateway_in7(gateway_in7),
    .gateway_in8(gateway_in8),
    .gateway_in9(gateway_in9),
    .gateway_in16(gateway_in16),
    .gateway_in17(gateway_in17),
    .gateway_in18(gateway_in18),
    .gateway_in19(gateway_in19),
    .gateway_in20(gateway_in20),
    .gateway_in21(gateway_in21),
    .gateway_in22(gateway_in22),
    .gateway_in23(gateway_in23),
    .gateway_in24(gateway_in24),
    .gateway_in25(gateway_in25),
    .gateway_in26(gateway_in26),
    .gateway_in27(gateway_in27),
    .gateway_in28(gateway_in28),
    .gateway_in29(gateway_in29),
    .gateway_in30(gateway_in30),
    .gateway_in31(gateway_in31),
    .gateway_in32(gateway_in32),
    .gateway_in33(gateway_in33),
    .gateway_in34(gateway_in34),
    .gateway_in35(gateway_in35),
    .gateway_in36(gateway_in36),
    .gateway_in37(gateway_in37),
    .gateway_in38(gateway_in38),
    .gateway_in39(gateway_in39),
    .gateway_in40(gateway_in40),
    .gateway_in41(gateway_in41),
    .gateway_in42(gateway_in42),
    .gateway_in43(gateway_in43),
    .gateway_in44(gateway_in44),
    .gateway_in45(gateway_in45),
    .gateway_in46(gateway_in46),
    .gateway_in47(gateway_in47),
    .gateway_in48(gateway_in48),
    .gateway_in49(gateway_in49),
    .gateway_in50(gateway_in50),
    .gateway_in51(gateway_in51),
    .gateway_in52(gateway_in52),
    .gateway_in53(gateway_in53),
    .gateway_in54(gateway_in54),
    .gateway_in55(gateway_in55),
    .gateway_in56(gateway_in56),
    .gateway_in57(gateway_in57),
    .gateway_in58(gateway_in58),
    .gateway_in59(gateway_in59),
    .gateway_in60(gateway_in60),
    .gateway_in61(gateway_in61),
    .gateway_in62(gateway_in62),
    .gateway_in63(gateway_in63),
    .gateway_in64(gateway_in64),
    .gateway_in65(gateway_in65),
    .gateway_in66(gateway_in66),
    .gateway_in67(gateway_in67),
    .gateway_in68(gateway_in68),
    .gateway_in69(gateway_in69),
    .gateway_in70(gateway_in70),
    .gateway_in71(gateway_in71),
    .gateway_in72(gateway_in72),
    .gateway_in73(gateway_in73),
    .gateway_in74(gateway_in74),
    .gateway_in75(gateway_in75),
    .gateway_in76(gateway_in76),
    .gateway_in77(gateway_in77),
    .gateway_in78(gateway_in78),
    .gateway_in79(gateway_in79),
    .x_ref_in(x_ref_in),
    .clk_1_x0(clk_1_net_x0),
    .ce_1_x0(ce_1_net_x0),
    .clk_4(clk_4_net),
    .ce_4(ce_4_net),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .dac_pulse_out(dac_pulse_out),
    .divisor_out(divisor_out),
    .dma_out_1(dma_out_1),
    .dma_out_2(dma_out_2),
    .dma_out_3(dma_out_3),
    .dma_out_4(dma_out_4),
    .dma_out_5(dma_out_5),
    .gate_fb_x_out(gate_fb_x_out),
    .gate_fb_z_out(gate_fb_z_out),
    .gate_leds_out(gate_leds_out),
    .gate_x1_out(gate_x1_out),
    .gate_x2_out(gate_x2_out),
    .gate_x3_out(gate_x3_out),
    .gate_x4_out(gate_x4_out),
    .gate_y_x_corrected_out(gate_y_x_corrected_out),
    .gate_y_z_corrected_out(gate_y_z_corrected_out),
    .tmr_dma_trigger_output(tmr_dma_trigger_output)
  );
endmodule
