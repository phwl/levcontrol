`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Sum_four_elements
module adc_clock_domain_wrapper_sum_four_elements (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub2_s_net;
  wire ce_net;
  wire [43-1:0] mult3_p_net;
  wire [20-1:0] addsub9_s_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_four_elements1 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult3_p_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub2_s_net;
  wire ce_net;
  wire [20-1:0] addsub9_s_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_four_elements2 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub9_s_net;
  wire [43-1:0] mult3_p_net;
  wire ce_net;
  wire [20-1:0] addsub12_s_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_four_elements3 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult3_p_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire [20-1:0] addsub9_s_net;
  wire ce_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_four_elements4 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult0_p_net;
  wire [20-1:0] addsub12_s_net;
  wire [20-1:0] addsub2_s_net;
  wire [20-1:0] addsub9_s_net;
  wire ce_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult3_p_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_four_elements5 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input [43-1:0] in1_3,
  input [43-1:0] in1_4,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub12_s_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult2_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [20-1:0] addsub9_s_net;
  wire clk_net;
  wire ce_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult3_p_net;
  assign out1 = addsub12_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_64db4aaa89 addsub12 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub12_s_net)
  );
  sysgen_addsub_99a08bd73f addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_99a08bd73f addsub9 (
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
module adc_clock_domain_wrapper_sum_two_elements (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [39-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_60c5af81fc addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements1 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [39-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_60c5af81fc addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements2 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [39-1:0] mult0_p_net;
  wire [20-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_60c5af81fc addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements3 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_60c5af81fc addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements4 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_99a08bd73f addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements5 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire ce_net;
  wire [43-1:0] mult0_p_net;
  wire clk_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_99a08bd73f addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements6 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [43-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  wire [20-1:0] addsub2_s_net;
  wire [43-1:0] mult1_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_99a08bd73f addsub2 (
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
module adc_clock_domain_wrapper_sum_two_elements7 (
  input [43-1:0] in1_1,
  input [43-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [20-1:0] out1
);
  wire [20-1:0] addsub2_s_net;
  wire clk_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_99a08bd73f addsub2 (
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
module adc_clock_domain_wrapper_vector_addsub_fabric (
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
  wire [21-1:0] addsub1_s_net;
  wire [22-1:0] addsub2_s_net_x0;
  wire [22-1:0] addsub3_s_net_x0;
  wire [21-1:0] addsub0_s_net;
  wire [20-1:0] addsub2_s_net_x3;
  wire [22-1:0] addsub1_s_net_x0;
  wire [20-1:0] addsub2_s_net_x4;
  wire [21-1:0] addsub3_s_net;
  wire [20-1:0] addsub2_s_net_x1;
  wire [22-1:0] addsub0_s_net_x0;
  wire [21-1:0] addsub2_s_net;
  wire [20-1:0] addsub2_s_net_x2;
  wire clk_net;
  wire ce_net;
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
  sysgen_addsub_fcb4be5e1a addsub0 (
    .clr(1'b0),
    .a(addsub0_s_net),
    .b(addsub2_s_net_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net_x0)
  );
  sysgen_addsub_fcb4be5e1a addsub1 (
    .clr(1'b0),
    .a(addsub1_s_net),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net_x0)
  );
  sysgen_addsub_fcb4be5e1a addsub2 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net_x0)
  );
  sysgen_addsub_fcb4be5e1a addsub3 (
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
module adc_clock_domain_wrapper_vector_addsub_fabric1 (
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
  wire [20-1:0] addsub12_s_net;
  wire [20-1:0] addsub2_s_net_x2;
  wire [21-1:0] addsub3_s_net;
  wire [20-1:0] addsub2_s_net_x1;
  wire clk_net;
  wire [21-1:0] addsub1_s_net;
  wire [21-1:0] addsub2_s_net;
  wire ce_net;
  wire [20-1:0] addsub12_s_net_x0;
  wire [20-1:0] addsub2_s_net_x0;
  wire [20-1:0] addsub12_s_net_x2;
  wire [20-1:0] addsub2_s_net_x3;
  wire [20-1:0] addsub12_s_net_x1;
  wire [21-1:0] addsub0_s_net;
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
  sysgen_addsub_fde56498e5 addsub0 (
    .clr(1'b0),
    .a(addsub12_s_net_x2),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_fde56498e5 addsub1 (
    .clr(1'b0),
    .a(addsub12_s_net_x1),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_fde56498e5 addsub2 (
    .clr(1'b0),
    .a(addsub12_s_net_x0),
    .b(addsub2_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_fde56498e5 addsub3 (
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
module adc_clock_domain_wrapper_vector_constant (
  output [18-1:0] out1_1,
  output [18-1:0] out1_2
);
  wire [18-1:0] constant0_op_net;
  wire [18-1:0] constant1_op_net;
  assign out1_1 = constant0_op_net;
  assign out1_2 = constant1_op_net;
  sysgen_constant_f9c9803e57 constant0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant0_op_net)
  );
  sysgen_constant_f9c9803e57 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper/Vector Convert
module adc_clock_domain_wrapper_vector_convert (
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
  wire [22-1:0] addsub0_s_net;
  wire [18-1:0] convert3_dout_net;
  wire [22-1:0] addsub2_s_net;
  wire ce_net;
  wire [22-1:0] addsub3_s_net;
  wire clk_net;
  wire [18-1:0] convert2_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [22-1:0] addsub1_s_net;
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
module adc_clock_domain_wrapper_vector_convert1 (
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
  wire [18-1:0] convert1_dout_net_x0;
  wire clk_net;
  wire [18-1:0] convert0_dout_net_x0;
  wire [14-1:0] convert2_dout_net;
  wire [14-1:0] convert3_dout_net;
  wire [18-1:0] convert3_dout_net_x0;
  wire ce_net;
  wire [14-1:0] convert0_dout_net;
  wire [18-1:0] convert2_dout_net_x0;
  wire [14-1:0] convert1_dout_net;
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
module adc_clock_domain_wrapper_vector_convert2 (
  input [20-1:0] i_1,
  input [20-1:0] i_2,
  input clk_4,
  input ce_4,
  output [14-1:0] o_1,
  output [14-1:0] o_2
);
  wire clk_net;
  wire [20-1:0] mux1_y_net;
  wire ce_net;
  wire [20-1:0] mux0_y_net;
  wire [14-1:0] convert1_dout_net;
  wire [14-1:0] convert0_dout_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign mux0_y_net = i_1;
  assign mux1_y_net = i_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
module adc_clock_domain_wrapper_vector_down_sample (
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
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire src_ce_net;
  wire clk_net;
  wire [25-1:0] register4_q_net;
  wire src_clk_net;
  wire ce_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample10_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample1 (
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
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register15_q_net;
  wire clk_net;
  wire [25-1:0] register13_q_net;
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] register14_q_net;
  wire src_clk_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample12_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample2 (
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
  wire src_ce_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire src_clk_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample5_q_net;
  wire ce_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register0_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample3 (
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
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire src_clk_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register7_q_net;
  wire src_ce_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register0_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample4 (
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
  wire [25-1:0] register7_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample4_q_net;
  wire src_clk_net;
  wire ce_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register5_q_net;
  wire src_ce_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] downsample1_q_net;
  wire clk_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register0_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample5 (
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
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire ce_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire src_clk_net;
  wire src_ce_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register1_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample6 (
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
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register6_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  wire src_clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire src_ce_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample6_q_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample7 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [18-1:0] out_1,
  output [18-1:0] out_2
);
  wire [18-1:0] downsample0_q_net;
  wire [18-1:0] register0_q_net;
  wire [18-1:0] downsample1_q_net;
  wire src_clk_net;
  wire [18-1:0] register1_q_net;
  wire src_ce_net;
  wire clk_net;
  wire ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample8 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] downsample0_q_net;
  wire src_ce_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register1_q_net;
  wire src_clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_down_sample9 (
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
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  wire ce_net;
  wire [25-1:0] downsample4_q_net;
  wire src_clk_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register6_q_net;
  wire clk_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register1_q_net;
  wire src_ce_net;
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
module adc_clock_domain_wrapper_vector_mux (
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
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample14_q_net_x0;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] downsample6_q_net_x0;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample15_q_net_x0;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample7_q_net;
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
  sysgen_mux_db9d2c0c46 mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_db9d2c0c46 mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_db9d2c0c46 mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_db9d2c0c46 mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_db9d2c0c46 mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_db9d2c0c46 mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_db9d2c0c46 mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_db9d2c0c46 mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_db9d2c0c46 mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net_x0),
    .d1(downsample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_db9d2c0c46 mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net_x0),
    .d1(downsample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_db9d2c0c46 mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net_x0),
    .d1(downsample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_db9d2c0c46 mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net_x0),
    .d1(downsample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_db9d2c0c46 mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net_x0),
    .d1(downsample12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_db9d2c0c46 mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net_x0),
    .d1(downsample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
  sysgen_mux_db9d2c0c46 mux14 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample14_q_net_x0),
    .d1(downsample14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux14_y_net)
  );
  sysgen_mux_db9d2c0c46 mux15 (
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
module adc_clock_domain_wrapper_vector_mux1 (
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
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux6_y_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] downsample0_q_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] mux2_y_net;
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
  sysgen_mux_db9d2c0c46 mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net),
    .d1(downsample0_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_db9d2c0c46 mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net),
    .d1(downsample1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_db9d2c0c46 mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net),
    .d1(downsample2_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_db9d2c0c46 mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net),
    .d1(downsample3_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_db9d2c0c46 mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net),
    .d1(downsample4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_db9d2c0c46 mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net),
    .d1(downsample5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_db9d2c0c46 mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net),
    .d1(downsample6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_db9d2c0c46 mux7 (
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
module adc_clock_domain_wrapper_vector_mux2 (
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
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] mux6_y_net;
  wire ce_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample1_q_net_x0;
  wire clk_net;
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
  sysgen_mux_db9d2c0c46 mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_db9d2c0c46 mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_db9d2c0c46 mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_db9d2c0c46 mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_db9d2c0c46 mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_db9d2c0c46 mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_db9d2c0c46 mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_db9d2c0c46 mux7 (
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
module adc_clock_domain_wrapper_vector_mux3 (
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
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] downsample1_q_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample6_q_net;
  wire clk_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net_x0;
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
  sysgen_mux_db9d2c0c46 mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_db9d2c0c46 mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_db9d2c0c46 mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_db9d2c0c46 mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_db9d2c0c46 mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_db9d2c0c46 mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_db9d2c0c46 mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_db9d2c0c46 mux7 (
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
module adc_clock_domain_wrapper_vector_mux4 (
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
  wire ce_net;
  wire [20-1:0] mux1_y_net;
  wire [20-1:0] addsub12_s_net;
  wire [18-1:0] constant2_op_net;
  wire [18-1:0] constant1_op_net;
  wire [20-1:0] addsub12_s_net_x0;
  wire clk_net;
  wire [2-1:0] down_sample6_q_net;
  wire [20-1:0] mux0_y_net;
  wire [18-1:0] addsub8_s_net;
  wire [18-1:0] constant0_op_net;
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
  sysgen_mux_e00d1677ec mux0 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant0_op_net),
    .d1(addsub12_s_net_x0),
    .d2(addsub8_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_e00d1677ec mux1 (
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
module adc_clock_domain_wrapper_vector_real_mult (
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
  wire [18-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux1_y_net;
  wire [18-1:0] register3_q_net;
  wire [43-1:0] mult2_p_net;
  wire clk_net;
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] register2_q_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] register1_q_net;
  wire [25-1:0] mux0_y_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult1 (
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
  wire [25-1:0] mux4_y_net;
  wire [43-1:0] mult2_p_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [18-1:0] register3_q_net;
  wire clk_net;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] mux5_y_net;
  wire [18-1:0] register0_q_net;
  wire [18-1:0] register2_q_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] register1_q_net;
  wire [43-1:0] mult1_p_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult10 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire [25-1:0] mux0_y_net;
  wire [18-1:0] down_sample_q_net;
  wire [18-1:0] down_sample8_q_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net;
  wire [43-1:0] mult1_p_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux1_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult11 (
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
  wire [18-1:0] down_sample_q_net;
  wire [43-1:0] mult0_p_net;
  wire [43-1:0] mult1_p_net;
  wire clk_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [18-1:0] down_sample8_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux7_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult12 (
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
  wire [18-1:0] register2_q_net;
  wire [18-1:0] register1_q_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] register0_q_net;
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [18-1:0] register3_q_net;
  wire ce_net;
  wire clk_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult13 (
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
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux4_y_net;
  wire [18-1:0] register0_q_net;
  wire [25-1:0] mux5_y_net;
  wire [43-1:0] mult3_p_net;
  wire [18-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] mux7_y_net;
  wire [18-1:0] register1_q_net;
  wire [25-1:0] mux6_y_net;
  wire [18-1:0] register2_q_net;
  wire clk_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult2 (
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
  wire [43-1:0] mult1_p_net;
  wire [43-1:0] mult0_p_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux11_y_net;
  wire [18-1:0] register0_q_net;
  wire [43-1:0] mult2_p_net;
  wire ce_net;
  wire clk_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] register1_q_net;
  wire [25-1:0] mux8_y_net;
  wire [43-1:0] mult3_p_net;
  wire [18-1:0] register2_q_net;
  wire [25-1:0] mux10_y_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult3 (
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
  wire [25-1:0] mux12_y_net;
  wire clk_net;
  wire [25-1:0] mux14_y_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] register2_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux15_y_net;
  wire [43-1:0] mult0_p_net;
  wire ce_net;
  wire [43-1:0] mult3_p_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register0_q_net;
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult4 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux1_y_net;
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire [25-1:0] mux0_y_net;
  wire ce_net;
  wire [14-1:0] convert0_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux1_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
module adc_clock_domain_wrapper_vector_real_mult5 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [25-1:0] mux2_y_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux3_y_net;
  wire [39-1:0] mult1_p_net;
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux3_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
module adc_clock_domain_wrapper_vector_real_mult6 (
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
  wire [39-1:0] mult0_p_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire clk_net;
  wire ce_net;
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] convert1_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux5_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
module adc_clock_domain_wrapper_vector_real_mult7 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [14-1:0] convert0_dout_net;
  wire clk_net;
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult1_p_net;
  wire ce_net;
  wire [25-1:0] mux6_y_net;
  wire [39-1:0] mult0_p_net;
  wire [25-1:0] mux7_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux7_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i2"),
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
module adc_clock_domain_wrapper_vector_real_mult8 (
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
  wire [18-1:0] down_sample8_q_net;
  wire [43-1:0] mult1_p_net;
  wire [18-1:0] down_sample_q_net;
  wire clk_net;
  wire [25-1:0] mux5_y_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux5_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_real_mult9 (
  input [25-1:0] a_1,
  input [18-1:0] b_1,
  input [25-1:0] a_2,
  input [18-1:0] b_2,
  input clk_4,
  input ce_4,
  output [43-1:0] a_x_b_1,
  output [43-1:0] a_x_b_2
);
  wire [18-1:0] down_sample8_q_net;
  wire [43-1:0] mult0_p_net;
  wire [18-1:0] down_sample_q_net;
  wire [25-1:0] mux3_y_net;
  wire ce_net;
  wire [43-1:0] mult1_p_net;
  wire [25-1:0] mux2_y_net;
  wire clk_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux3_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
module adc_clock_domain_wrapper_vector_register (
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
  wire [18-1:0] register0_q_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register2_q_net;
  wire [18-1:0] register3_q_net;
  wire [18-1:0] convert1_dout_net;
  wire ce_net;
  wire [18-1:0] convert0_dout_net;
  wire [18-1:0] convert2_dout_net;
  wire [18-1:0] convert3_dout_net;
  wire clk_net;
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
  adc_clock_domain_wrapper_xlregister #(
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
  adc_clock_domain_wrapper_xlregister #(
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
  adc_clock_domain_wrapper_xlregister #(
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
  adc_clock_domain_wrapper_xlregister #(
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
module adc_clock_domain_wrapper_vector_up_sample (
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
  wire ce_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] upsample3_q_net;
  wire [14-1:0] convert1_dout_net;
  wire src_clk_net;
  wire [14-1:0] convert2_dout_net;
  wire src_ce_net;
  wire [14-1:0] upsample2_q_net;
  wire [14-1:0] convert3_dout_net;
  wire clk_net;
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
  adc_clock_domain_wrapper_xlusamp #(
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
  adc_clock_domain_wrapper_xlusamp #(
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
  adc_clock_domain_wrapper_xlusamp #(
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
  adc_clock_domain_wrapper_xlusamp #(
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
module adc_clock_domain_wrapper_vector_up_sample1 (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] out_1,
  output [14-1:0] out_2
);
  wire src_clk_net;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] upsample1_q_net;
  wire clk_net;
  wire [14-1:0] convert0_dout_net;
  wire src_ce_net;
  wire ce_net;
  wire [14-1:0] convert1_dout_net;
  assign out_1 = upsample0_q_net;
  assign out_2 = upsample1_q_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_xlusamp #(
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
  adc_clock_domain_wrapper_xlusamp #(
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
// Generated from Simulink block double_axis_plant_ver_barrier/FPGA_KF_2DOF/ADC_clock_domain_wrapper_struct
module adc_clock_domain_wrapper_struct (
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
  input [14-1:0] power_monitor_in,
  input [14-1:0] x_in,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] dac_pulse_out,
  output [18-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5
);
  wire [25-1:0] register6_q_net_x0;
  wire [16-1:0] sfix16_13_cast1_dout_net;
  wire [8-1:0] concat1_y_net;
  wire [25-1:0] register1_q_net_x0;
  wire src_clk_net;
  wire [14-1:0] upsample0_q_net_x0;
  wire [14-1:0] upsample3_q_net;
  wire [1-1:0] hw_pot_switch_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [14-1:0] x_in_net;
  wire clk_net;
  wire [43-1:0] mult0_p_net;
  wire src_ce_net;
  wire [20-1:0] addsub12_s_net_x4;
  wire [32-1:0] concat2_y_net;
  wire [32-1:0] concat_y_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample2_q_net;
  wire [32-1:0] concat3_y_net;
  wire [32-1:0] concat5_y_net;
  wire [18-1:0] register1_q_net_x1;
  wire [32-1:0] concat4_y_net;
  wire ce_net;
  wire [43-1:0] mult1_p_net_x0;
  wire [20-1:0] addsub12_s_net_x3;
  wire [43-1:0] mult0_p_net_x0;
  wire [43-1:0] mult1_p_net_x1;
  wire [43-1:0] mult2_p_net_x0;
  wire [14-1:0] upsample0_q_net;
  wire [18-1:0] add_offset_ch2_s_net;
  wire [14-1:0] power_monitor_in_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult3_p_net_x0;
  wire [14-1:0] upsample1_q_net_x0;
  wire [43-1:0] mult3_p_net;
  wire [25-1:0] register7_q_net_x0;
  wire [25-1:0] register6_q_net_x6;
  wire [6-1:0] register7_q_net_x7;
  wire [2-1:0] register16_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register0_q_net_x7;
  wire [25-1:0] register0_q_net_x2;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] register0_q_net_x0;
  wire [1-1:0] register15_q_net_x1;
  wire [10-1:0] register13_q_net_x1;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register5_q_net_x6;
  wire [14-1:0] register8_q_net_x1;
  wire [14-1:0] register3_q_net_x7;
  wire [25-1:0] register12_q_net_x1;
  wire [25-1:0] register2_q_net_x6;
  wire [25-1:0] register4_q_net_x6;
  wire [14-1:0] register6_q_net_x7;
  wire [25-1:0] register7_q_net_x6;
  wire [18-1:0] register0_q_net_x1;
  wire [1-1:0] register9_q_net_x1;
  wire [25-1:0] register0_q_net_x5;
  wire [10-1:0] register14_q_net_x1;
  wire [1-1:0] register_q_net;
  wire [25-1:0] register0_q_net_x3;
  wire [25-1:0] register0_q_net_x8;
  wire [18-1:0] register11_q_net_x1;
  wire [25-1:0] register3_q_net_x6;
  wire [2-1:0] register5_q_net_x7;
  wire [25-1:0] register1_q_net_x8;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register13_q_net_x0;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register15_q_net_x0;
  wire [25-1:0] register2_q_net_x5;
  wire [25-1:0] register5_q_net_x3;
  wire [25-1:0] register3_q_net_x5;
  wire [25-1:0] register9_q_net_x0;
  wire [25-1:0] register8_q_net_x0;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] register11_q_net_x0;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register14_q_net_x0;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register6_q_net_x5;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register4_q_net_x1;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register4_q_net_x0;
  wire [25-1:0] register1_q_net_x4;
  wire [25-1:0] register7_q_net_x5;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register5_q_net_x0;
  wire [25-1:0] register7_q_net_x2;
  wire [25-1:0] register4_q_net_x5;
  wire [25-1:0] register5_q_net_x5;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register6_q_net_x2;
  wire [25-1:0] register2_q_net_x1;
  wire [25-1:0] register7_q_net_x1;
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult0_p_net_x9;
  wire [22-1:0] addsub3_s_net_x0;
  wire [43-1:0] mult1_p_net_x5;
  wire [18-1:0] convert0_dout_net_x1;
  wire [43-1:0] mult2_p_net_x3;
  wire [20-1:0] addsub2_s_net_x7;
  wire [20-1:0] addsub2_s_net_x4;
  wire [43-1:0] mult0_p_net_x1;
  wire [20-1:0] addsub12_s_net_x0;
  wire [39-1:0] mult1_p_net_x9;
  wire [43-1:0] mult0_p_net_x6;
  wire [43-1:0] mult3_p_net_x1;
  wire [43-1:0] mult0_p_net_x3;
  wire [39-1:0] mult1_p_net_x10;
  wire [20-1:0] addsub2_s_net_x2;
  wire [22-1:0] addsub0_s_net_x0;
  wire [22-1:0] addsub1_s_net_x0;
  wire [21-1:0] addsub1_s_net;
  wire [43-1:0] mult3_p_net_x4;
  wire [20-1:0] addsub12_s_net_x2;
  wire [43-1:0] mult0_p_net_x5;
  wire [21-1:0] addsub2_s_net;
  wire [21-1:0] addsub3_s_net;
  wire [18-1:0] convert3_dout_net_x0;
  wire [43-1:0] mult1_p_net_x4;
  wire [43-1:0] mult0_p_net_x12;
  wire [18-1:0] convert2_dout_net_x0;
  wire [14-1:0] convert0_dout_net_x0;
  wire [22-1:0] addsub2_s_net_x0;
  wire [14-1:0] convert2_dout_net;
  wire [43-1:0] mult2_p_net_x4;
  wire [43-1:0] mult2_p_net_x1;
  wire [39-1:0] mult0_p_net_x10;
  wire [39-1:0] mult1_p_net_x11;
  wire [43-1:0] mult1_p_net_x13;
  wire [43-1:0] mult0_p_net_x2;
  wire [20-1:0] addsub12_s_net;
  wire [18-1:0] constant1_op_net;
  wire [14-1:0] convert1_dout_net_x0;
  wire [43-1:0] mult1_p_net_x7;
  wire [20-1:0] addsub2_s_net_x8;
  wire [43-1:0] mult0_p_net_x4;
  wire [39-1:0] mult0_p_net_x7;
  wire [20-1:0] addsub2_s_net_x3;
  wire [20-1:0] addsub2_s_net_x6;
  wire [43-1:0] mult1_p_net_x6;
  wire [43-1:0] mult3_p_net_x3;
  wire [43-1:0] mult1_p_net_x2;
  wire [20-1:0] addsub2_s_net_x1;
  wire [43-1:0] mult3_p_net_x2;
  wire [14-1:0] convert3_dout_net;
  wire [39-1:0] mult1_p_net_x8;
  wire [39-1:0] mult0_p_net_x8;
  wire [21-1:0] addsub0_s_net;
  wire [43-1:0] mult2_p_net_x2;
  wire [20-1:0] addsub2_s_net_x5;
  wire [43-1:0] mult1_p_net_x12;
  wire [18-1:0] constant0_op_net;
  wire [14-1:0] convert0_dout_net;
  wire [43-1:0] mult0_p_net_x11;
  wire [18-1:0] convert1_dout_net_x1;
  wire [43-1:0] mult1_p_net_x3;
  wire [20-1:0] addsub12_s_net_x1;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample14_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample0_q_net_x1;
  wire [25-1:0] downsample0_q_net_x5;
  wire [25-1:0] downsample7_q_net_x4;
  wire [25-1:0] downsample6_q_net_x4;
  wire [25-1:0] downsample5_q_net_x2;
  wire [25-1:0] downsample5_q_net_x4;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample4_q_net_x4;
  wire [20-1:0] mux1_y_net_x0;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample6_q_net_x2;
  wire [25-1:0] downsample7_q_net_x2;
  wire [25-1:0] downsample2_q_net_x4;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample2_q_net_x2;
  wire [25-1:0] downsample4_q_net_x2;
  wire [25-1:0] downsample0_q_net_x2;
  wire [25-1:0] downsample3_q_net_x1;
  wire [25-1:0] downsample4_q_net_x1;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample0_q_net_x4;
  wire [25-1:0] downsample1_q_net_x4;
  wire [25-1:0] downsample4_q_net_x3;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample2_q_net_x1;
  wire [25-1:0] downsample6_q_net_x3;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample3_q_net_x2;
  wire [25-1:0] downsample3_q_net_x4;
  wire [25-1:0] downsample7_q_net_x3;
  wire [25-1:0] downsample6_q_net_x1;
  wire [25-1:0] downsample15_q_net_x0;
  wire [25-1:0] downsample5_q_net_x3;
  wire [25-1:0] downsample1_q_net_x3;
  wire [25-1:0] downsample0_q_net_x3;
  wire [25-1:0] downsample1_q_net_x5;
  wire [25-1:0] downsample7_q_net_x1;
  wire [25-1:0] downsample1_q_net_x1;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample5_q_net_x1;
  wire [25-1:0] downsample1_q_net_x2;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample7_q_net_x0;
  wire [20-1:0] mux0_y_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample3_q_net_x3;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample2_q_net_x3;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample4_q_net_x0;
  wire [2-1:0] down_sample6_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample3_q_net_x6;
  wire [25-1:0] mux5_y_net_x2;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample0_q_net_x6;
  wire [25-1:0] downsample4_q_net_x6;
  wire [25-1:0] downsample1_q_net_x6;
  wire [25-1:0] mux2_y_net_x2;
  wire [25-1:0] downsample2_q_net_x5;
  wire [25-1:0] downsample4_q_net_x5;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux3_y_net_x2;
  wire [25-1:0] mux13_y_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] mux0_y_net_x2;
  wire [25-1:0] mux3_y_net_x1;
  wire [25-1:0] mux4_y_net_x1;
  wire [25-1:0] mux5_y_net_x1;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] mux5_y_net_x0;
  wire [25-1:0] downsample1_q_net_x7;
  wire [25-1:0] mux0_y_net_x3;
  wire [25-1:0] mux2_y_net_x1;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] mux9_y_net;
  wire [18-1:0] downsample0_q_net_x8;
  wire [25-1:0] downsample2_q_net_x6;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] downsample3_q_net_x5;
  wire [25-1:0] mux4_y_net_x2;
  wire [25-1:0] downsample5_q_net_x6;
  wire [25-1:0] mux7_y_net_x2;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] mux4_y_net_x0;
  wire [25-1:0] downsample7_q_net_x5;
  wire [25-1:0] mux0_y_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux7_y_net_x1;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux8_y_net_x0;
  wire [25-1:0] mux1_y_net_x2;
  wire [25-1:0] mux7_y_net_x0;
  wire [25-1:0] downsample6_q_net_x5;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux1_y_net_x3;
  wire [25-1:0] mux6_y_net_x2;
  wire [25-1:0] downsample5_q_net_x5;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux6_y_net_x1;
  wire [25-1:0] downsample0_q_net_x7;
  wire [18-1:0] downsample1_q_net_x8;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] downsample7_q_net_x6;
  wire [25-1:0] mux6_y_net_x0;
  wire [25-1:0] mux0_y_net_x1;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] downsample6_q_net_x6;
  wire [18-1:0] down_sample_q_net;
  wire [18-1:0] register1_q_net_x9;
  wire [18-1:0] register3_q_net_x8;
  wire [25-1:0] c0_ram_douta_net;
  wire [18-1:0] constant2_op_net;
  wire [18-1:0] register0_q_net_x9;
  wire [11-1:0] mult1_p_net;
  wire [18-1:0] add_offset_ch1_s_net;
  wire [18-1:0] mult5_p_net;
  wire [18-1:0] addsub8_s_net;
  wire [25-1:0] c0_ram_doutb_net;
  wire [18-1:0] down_sample8_q_net;
  wire [1-1:0] constant4_op_net;
  wire [18-1:0] addsub_s_net;
  wire [10-1:0] addsub3_s_net_x1;
  wire [10-1:0] down_sample3_q_net;
  wire [10-1:0] down_sample4_q_net;
  wire [1-1:0] down_sample5_q_net;
  wire [18-1:0] register2_q_net_x7;
  wire [25-1:0] constant3_op_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [25-1:0] c1_ram_doutb_net;
  wire [16-1:0] reinterpret5_output_port_net;
  wire [18-1:0] constant1_op_net_x0;
  wire [1-1:0] pot_sw_mux_y_net;
  wire [1-1:0] relational_op_net;
  wire [2-1:0] convert3_dout_net_x1;
  wire [25-1:0] c1_ram_douta_net;
  wire [25-1:0] down_sample2_q_net;
  wire [1-1:0] register_q_net_x0;
  wire [18-1:0] register7_q_net_x8;
  wire [1-1:0] inverter_op_net;
  wire [2-1:0] shift_op_net;
  wire [2-1:0] expression_dout_net;
  wire [18-1:0] mux8_y_net;
  wire [14-1:0] x_in_reg_q_net;
  wire [1-1:0] relational1_op_net;
  wire [14-1:0] ofst_mon_in_reg_q_net;
  wire [16-1:0] sfix16_cast4_dout_net;
  wire [16-1:0] sfix16_cast6_dout_net;
  wire [16-1:0] sfix16_cast2_dout_net;
  wire [16-1:0] sfix16_cast1_dout_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] sfix16_cast3_dout_net;
  wire [16-1:0] sfix16_cast10_dout_net;
  wire [16-1:0] sfix16_cast5_dout_net;
  wire [16-1:0] reinterpret9_output_port_net;
  wire [16-1:0] reinterpret4_output_port_net;
  wire [16-1:0] sfix16_cast9_dout_net;
  wire [16-1:0] reinterpret6_output_port_net;
  wire [16-1:0] reinterpret10_output_port_net;
  wire [16-1:0] sfix16_cast8_dout_net;
  wire [16-1:0] reinterpret8_output_port_net;
  wire [16-1:0] reinterpret7_output_port_net;
  wire [16-1:0] sfix16_cast7_dout_net;
  assign register_q_net = sw_in;
  assign register0_q_net_x8 = fmat_in_1;
  assign register0_q_net_x5 = lmat_in_1;
  assign register0_q_net_x6 = kmat_in_1;
  assign register0_q_net = bmat_in_1;
  assign register0_q_net_x7 = fmat_ip_in_1;
  assign register0_q_net_x4 = lmat_ip_in_1;
  assign register0_q_net_x3 = kmat_ip_in_1;
  assign register0_q_net_x2 = bmat_ip_in_1;
  assign register5_q_net_x7 = hw_switch_override;
  assign register3_q_net_x7 = adc_ch1_offst;
  assign register6_q_net_x7 = adc_ch2_offst;
  assign register8_q_net_x1 = pot_switch_hw;
  assign register9_q_net_x1 = pot_switch_hw_flag;
  assign register7_q_net_x7 = leds_in;
  assign register11_q_net_x1 = x_ref_in;
  assign register16_q_net = fb_src_switch;
  assign register0_q_net_x1 = barrier_ub_lb_in_1;
  assign register12_q_net_x1 = barrier_c_idx_in;
  assign register13_q_net_x1 = barrier_c_ofst_idx_in;
  assign register14_q_net_x1 = barrier_ram_addr_in;
  assign register0_q_net_x0 = barrier_ram_data_in_1;
  assign register15_q_net_x1 = barrier_ram_we_in;
  assign register1_q_net_x8 = fmat_in_2;
  assign register2_q_net_x6 = fmat_in_3;
  assign register3_q_net_x6 = fmat_in_4;
  assign register4_q_net_x6 = fmat_in_5;
  assign register5_q_net_x6 = fmat_in_6;
  assign register6_q_net_x6 = fmat_in_7;
  assign register7_q_net_x6 = fmat_in_8;
  assign register8_q_net_x0 = fmat_in_9;
  assign register9_q_net_x0 = fmat_in_10;
  assign register10_q_net_x0 = fmat_in_11;
  assign register11_q_net_x0 = fmat_in_12;
  assign register12_q_net_x0 = fmat_in_13;
  assign register13_q_net_x0 = fmat_in_14;
  assign register14_q_net_x0 = fmat_in_15;
  assign register15_q_net_x0 = fmat_in_16;
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
  assign dac_pulse_out = register8_q_net_x1;
  assign divisor_out = add_offset_ch2_s_net;
  assign dma_out_1 = concat_y_net;
  assign gate_fb_x_out = upsample0_q_net_x0;
  assign gate_fb_z_out = upsample1_q_net_x0;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = upsample0_q_net;
  assign gate_x2_out = upsample1_q_net;
  assign gate_x3_out = upsample2_q_net;
  assign gate_x4_out = upsample3_q_net;
  assign gate_y_x_corrected_out = sfix16_13_cast_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign power_monitor_in_net = power_monitor_in;
  assign x_in_net = x_in;
  assign gate_y_z_corrected_out = sfix16_13_cast1_dout_net;
  assign dma_out_2 = concat2_y_net;
  assign dma_out_3 = concat3_y_net;
  assign dma_out_4 = concat5_y_net;
  assign dma_out_5 = concat4_y_net;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  adc_clock_domain_wrapper_sum_four_elements sum_four_elements (
    .in1_1(mult0_p_net),
    .in1_2(mult1_p_net_x0),
    .in1_3(mult2_p_net),
    .in1_4(mult3_p_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x4)
  );
  adc_clock_domain_wrapper_sum_four_elements1 sum_four_elements1 (
    .in1_1(mult0_p_net_x0),
    .in1_2(mult1_p_net_x1),
    .in1_3(mult2_p_net_x0),
    .in1_4(mult3_p_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x3)
  );
  adc_clock_domain_wrapper_sum_four_elements2 sum_four_elements2 (
    .in1_1(mult0_p_net_x5),
    .in1_2(mult1_p_net_x6),
    .in1_3(mult2_p_net_x3),
    .in1_4(mult3_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x2)
  );
  adc_clock_domain_wrapper_sum_four_elements3 sum_four_elements3 (
    .in1_1(mult0_p_net_x6),
    .in1_2(mult1_p_net_x7),
    .in1_3(mult2_p_net_x4),
    .in1_4(mult3_p_net_x4),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x1)
  );
  adc_clock_domain_wrapper_sum_four_elements4 sum_four_elements4 (
    .in1_1(mult0_p_net_x3),
    .in1_2(mult1_p_net_x4),
    .in1_3(mult2_p_net_x1),
    .in1_4(mult3_p_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net_x0)
  );
  adc_clock_domain_wrapper_sum_four_elements5 sum_four_elements5 (
    .in1_1(mult0_p_net_x4),
    .in1_2(mult1_p_net_x5),
    .in1_3(mult2_p_net_x2),
    .in1_4(mult3_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub12_s_net)
  );
  adc_clock_domain_wrapper_sum_two_elements sum_two_elements (
    .in1_1(mult0_p_net_x7),
    .in1_2(mult1_p_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x8)
  );
  adc_clock_domain_wrapper_sum_two_elements1 sum_two_elements1 (
    .in1_1(mult0_p_net_x8),
    .in1_2(mult1_p_net_x9),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x7)
  );
  adc_clock_domain_wrapper_sum_two_elements2 sum_two_elements2 (
    .in1_1(mult0_p_net_x9),
    .in1_2(mult1_p_net_x10),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x6)
  );
  adc_clock_domain_wrapper_sum_two_elements3 sum_two_elements3 (
    .in1_1(mult0_p_net_x10),
    .in1_2(mult1_p_net_x11),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x5)
  );
  adc_clock_domain_wrapper_sum_two_elements4 sum_two_elements4 (
    .in1_1(mult0_p_net_x1),
    .in1_2(mult1_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x4)
  );
  adc_clock_domain_wrapper_sum_two_elements5 sum_two_elements5 (
    .in1_1(mult0_p_net_x12),
    .in1_2(mult1_p_net_x13),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x3)
  );
  adc_clock_domain_wrapper_sum_two_elements6 sum_two_elements6 (
    .in1_1(mult0_p_net_x11),
    .in1_2(mult1_p_net_x12),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x2)
  );
  adc_clock_domain_wrapper_sum_two_elements7 sum_two_elements7 (
    .in1_1(mult0_p_net_x2),
    .in1_2(mult1_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x1)
  );
  adc_clock_domain_wrapper_vector_addsub_fabric vector_addsub_fabric (
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
  adc_clock_domain_wrapper_vector_addsub_fabric1 vector_addsub_fabric1 (
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
  adc_clock_domain_wrapper_vector_constant vector_constant (
    .out1_1(constant0_op_net),
    .out1_2(constant1_op_net)
  );
  adc_clock_domain_wrapper_vector_convert vector_convert (
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
  adc_clock_domain_wrapper_vector_convert1 vector_convert1 (
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
  adc_clock_domain_wrapper_vector_convert2 vector_convert2 (
    .i_1(mux0_y_net),
    .i_2(mux1_y_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net),
    .o_2(convert1_dout_net)
  );
  adc_clock_domain_wrapper_vector_down_sample vector_down_sample (
    .in_1(register0_q_net_x8),
    .in_2(register1_q_net_x8),
    .in_3(register2_q_net_x6),
    .in_4(register3_q_net_x6),
    .in_5(register4_q_net_x6),
    .in_6(register5_q_net_x6),
    .in_7(register6_q_net_x6),
    .in_8(register7_q_net_x6),
    .in_9(register8_q_net_x0),
    .in_10(register9_q_net_x0),
    .in_11(register10_q_net_x0),
    .in_12(register11_q_net_x0),
    .in_13(register12_q_net_x0),
    .in_14(register13_q_net_x0),
    .in_15(register14_q_net_x0),
    .in_16(register15_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x5),
    .out_2(downsample1_q_net_x5),
    .out_3(downsample2_q_net_x4),
    .out_4(downsample3_q_net_x4),
    .out_5(downsample4_q_net_x4),
    .out_6(downsample5_q_net_x4),
    .out_7(downsample6_q_net_x4),
    .out_8(downsample7_q_net_x4),
    .out_9(downsample8_q_net_x0),
    .out_10(downsample9_q_net_x0),
    .out_11(downsample10_q_net_x0),
    .out_12(downsample11_q_net_x0),
    .out_13(downsample12_q_net_x0),
    .out_14(downsample13_q_net_x0),
    .out_15(downsample14_q_net_x0),
    .out_16(downsample15_q_net_x0)
  );
  adc_clock_domain_wrapper_vector_down_sample1 vector_down_sample1 (
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
    .out_1(downsample0_q_net_x4),
    .out_2(downsample1_q_net_x4),
    .out_3(downsample2_q_net_x3),
    .out_4(downsample3_q_net_x3),
    .out_5(downsample4_q_net_x3),
    .out_6(downsample5_q_net_x3),
    .out_7(downsample6_q_net_x3),
    .out_8(downsample7_q_net_x3),
    .out_9(downsample8_q_net),
    .out_10(downsample9_q_net),
    .out_11(downsample10_q_net),
    .out_12(downsample11_q_net),
    .out_13(downsample12_q_net),
    .out_14(downsample13_q_net),
    .out_15(downsample14_q_net),
    .out_16(downsample15_q_net)
  );
  adc_clock_domain_wrapper_vector_down_sample2 vector_down_sample2 (
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
    .out_1(downsample0_q_net_x3),
    .out_2(downsample1_q_net_x3),
    .out_3(downsample2_q_net_x2),
    .out_4(downsample3_q_net_x2),
    .out_5(downsample4_q_net_x2),
    .out_6(downsample5_q_net_x2),
    .out_7(downsample6_q_net_x2),
    .out_8(downsample7_q_net_x2)
  );
  adc_clock_domain_wrapper_vector_down_sample3 vector_down_sample3 (
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
    .out_1(downsample0_q_net_x2),
    .out_2(downsample1_q_net_x2),
    .out_3(downsample2_q_net_x1),
    .out_4(downsample3_q_net_x1),
    .out_5(downsample4_q_net_x1),
    .out_6(downsample5_q_net_x1),
    .out_7(downsample6_q_net_x1),
    .out_8(downsample7_q_net_x1)
  );
  adc_clock_domain_wrapper_vector_down_sample4 vector_down_sample4 (
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
    .out_1(downsample0_q_net_x1),
    .out_2(downsample1_q_net_x1),
    .out_3(downsample2_q_net_x0),
    .out_4(downsample3_q_net_x0),
    .out_5(downsample4_q_net_x0),
    .out_6(downsample5_q_net_x0),
    .out_7(downsample6_q_net_x0),
    .out_8(downsample7_q_net_x0)
  );
  adc_clock_domain_wrapper_vector_down_sample5 vector_down_sample5 (
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
    .out_1(downsample0_q_net_x0),
    .out_2(downsample1_q_net_x0),
    .out_3(downsample2_q_net),
    .out_4(downsample3_q_net),
    .out_5(downsample4_q_net),
    .out_6(downsample5_q_net),
    .out_7(downsample6_q_net),
    .out_8(downsample7_q_net)
  );
  adc_clock_domain_wrapper_vector_down_sample6 vector_down_sample6 (
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
    .out_1(downsample0_q_net),
    .out_2(downsample1_q_net),
    .out_3(downsample2_q_net_x6),
    .out_4(downsample3_q_net_x6),
    .out_5(downsample4_q_net_x6),
    .out_6(downsample5_q_net_x6),
    .out_7(downsample6_q_net_x6),
    .out_8(downsample7_q_net_x6)
  );
  adc_clock_domain_wrapper_vector_down_sample7 vector_down_sample7 (
    .in_1(register0_q_net_x1),
    .in_2(register1_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x8),
    .out_2(downsample1_q_net_x8)
  );
  adc_clock_domain_wrapper_vector_down_sample8 vector_down_sample8 (
    .in_1(register0_q_net_x0),
    .in_2(register1_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x7),
    .out_2(downsample1_q_net_x7)
  );
  adc_clock_domain_wrapper_vector_down_sample9 vector_down_sample9 (
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
    .out_1(downsample0_q_net_x6),
    .out_2(downsample1_q_net_x6),
    .out_3(downsample2_q_net_x5),
    .out_4(downsample3_q_net_x5),
    .out_5(downsample4_q_net_x5),
    .out_6(downsample5_q_net_x5),
    .out_7(downsample6_q_net_x5),
    .out_8(downsample7_q_net_x5)
  );
  adc_clock_domain_wrapper_vector_mux vector_mux (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x5),
    .i1_1(downsample0_q_net_x4),
    .i0_2(downsample1_q_net_x5),
    .i0_3(downsample2_q_net_x4),
    .i0_4(downsample3_q_net_x4),
    .i0_5(downsample4_q_net_x4),
    .i0_6(downsample5_q_net_x4),
    .i0_7(downsample6_q_net_x4),
    .i0_8(downsample7_q_net_x4),
    .i0_9(downsample8_q_net_x0),
    .i0_10(downsample9_q_net_x0),
    .i0_11(downsample10_q_net_x0),
    .i0_12(downsample11_q_net_x0),
    .i0_13(downsample12_q_net_x0),
    .i0_14(downsample13_q_net_x0),
    .i0_15(downsample14_q_net_x0),
    .i0_16(downsample15_q_net_x0),
    .i1_2(downsample1_q_net_x4),
    .i1_3(downsample2_q_net_x3),
    .i1_4(downsample3_q_net_x3),
    .i1_5(downsample4_q_net_x3),
    .i1_6(downsample5_q_net_x3),
    .i1_7(downsample6_q_net_x3),
    .i1_8(downsample7_q_net_x3),
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
    .o_1(mux0_y_net_x3),
    .o_2(mux1_y_net_x3),
    .o_3(mux2_y_net_x2),
    .o_4(mux3_y_net_x2),
    .o_5(mux4_y_net_x2),
    .o_6(mux5_y_net_x2),
    .o_7(mux6_y_net_x2),
    .o_8(mux7_y_net_x2),
    .o_9(mux8_y_net_x0),
    .o_10(mux9_y_net),
    .o_11(mux10_y_net),
    .o_12(mux11_y_net),
    .o_13(mux12_y_net),
    .o_14(mux13_y_net),
    .o_15(mux14_y_net),
    .o_16(mux15_y_net)
  );
  adc_clock_domain_wrapper_vector_mux1 vector_mux1 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x6),
    .i1_1(downsample0_q_net),
    .i0_2(downsample1_q_net_x6),
    .i0_3(downsample2_q_net_x5),
    .i0_4(downsample3_q_net_x5),
    .i0_5(downsample4_q_net_x5),
    .i0_6(downsample5_q_net_x5),
    .i0_7(downsample6_q_net_x5),
    .i0_8(downsample7_q_net_x5),
    .i1_2(downsample1_q_net),
    .i1_3(downsample2_q_net_x6),
    .i1_4(downsample3_q_net_x6),
    .i1_5(downsample4_q_net_x6),
    .i1_6(downsample5_q_net_x6),
    .i1_7(downsample6_q_net_x6),
    .i1_8(downsample7_q_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x2),
    .o_2(mux1_y_net_x2),
    .o_3(mux2_y_net_x1),
    .o_4(mux3_y_net_x1),
    .o_5(mux4_y_net_x1),
    .o_6(mux5_y_net_x1),
    .o_7(mux6_y_net_x1),
    .o_8(mux7_y_net_x1)
  );
  adc_clock_domain_wrapper_vector_mux2 vector_mux2 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x3),
    .i1_1(downsample0_q_net_x1),
    .i0_2(downsample1_q_net_x3),
    .i0_3(downsample2_q_net_x2),
    .i0_4(downsample3_q_net_x2),
    .i0_5(downsample4_q_net_x2),
    .i0_6(downsample5_q_net_x2),
    .i0_7(downsample6_q_net_x2),
    .i0_8(downsample7_q_net_x2),
    .i1_2(downsample1_q_net_x1),
    .i1_3(downsample2_q_net_x0),
    .i1_4(downsample3_q_net_x0),
    .i1_5(downsample4_q_net_x0),
    .i1_6(downsample5_q_net_x0),
    .i1_7(downsample6_q_net_x0),
    .i1_8(downsample7_q_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x1),
    .o_2(mux1_y_net_x1),
    .o_3(mux2_y_net_x0),
    .o_4(mux3_y_net_x0),
    .o_5(mux4_y_net_x0),
    .o_6(mux5_y_net_x0),
    .o_7(mux6_y_net_x0),
    .o_8(mux7_y_net_x0)
  );
  adc_clock_domain_wrapper_vector_mux3 vector_mux3 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x2),
    .i1_1(downsample0_q_net_x0),
    .i0_2(downsample1_q_net_x2),
    .i0_3(downsample2_q_net_x1),
    .i0_4(downsample3_q_net_x1),
    .i0_5(downsample4_q_net_x1),
    .i0_6(downsample5_q_net_x1),
    .i0_7(downsample6_q_net_x1),
    .i0_8(downsample7_q_net_x1),
    .i1_2(downsample1_q_net_x0),
    .i1_3(downsample2_q_net),
    .i1_4(downsample3_q_net),
    .i1_5(downsample4_q_net),
    .i1_6(downsample5_q_net),
    .i1_7(downsample6_q_net),
    .i1_8(downsample7_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x0),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net)
  );
  adc_clock_domain_wrapper_vector_mux4 vector_mux4 (
    .sel(down_sample6_q_net),
    .i0_1(constant0_op_net),
    .i1_1(addsub12_s_net_x0),
    .i2_1(addsub8_s_net),
    .i0_2(constant1_op_net),
    .i1_2(addsub12_s_net),
    .i2_2(constant2_op_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net_x0)
  );
  adc_clock_domain_wrapper_vector_real_mult vector_real_mult (
    .a_1(mux0_y_net_x3),
    .b_1(register0_q_net_x9),
    .a_2(mux1_y_net_x3),
    .a_3(mux2_y_net_x2),
    .a_4(mux3_y_net_x2),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net),
    .a_x_b_2(mult1_p_net_x0),
    .a_x_b_3(mult2_p_net),
    .a_x_b_4(mult3_p_net)
  );
  adc_clock_domain_wrapper_vector_real_mult1 vector_real_mult1 (
    .a_1(mux4_y_net_x2),
    .b_1(register0_q_net_x9),
    .a_2(mux5_y_net_x2),
    .a_3(mux6_y_net_x2),
    .a_4(mux7_y_net_x2),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x0),
    .a_x_b_2(mult1_p_net_x1),
    .a_x_b_3(mult2_p_net_x0),
    .a_x_b_4(mult3_p_net_x0)
  );
  adc_clock_domain_wrapper_vector_real_mult10 vector_real_mult10 (
    .a_1(mux0_y_net_x1),
    .b_1(down_sample_q_net),
    .a_2(mux1_y_net_x1),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x1),
    .a_x_b_2(mult1_p_net_x2)
  );
  adc_clock_domain_wrapper_vector_real_mult11 vector_real_mult11 (
    .a_1(mux6_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux7_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x2),
    .a_x_b_2(mult1_p_net_x3)
  );
  adc_clock_domain_wrapper_vector_real_mult12 vector_real_mult12 (
    .a_1(mux0_y_net_x0),
    .b_1(register0_q_net_x9),
    .a_2(mux1_y_net),
    .a_3(mux2_y_net),
    .a_4(mux3_y_net),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x3),
    .a_x_b_2(mult1_p_net_x4),
    .a_x_b_3(mult2_p_net_x1),
    .a_x_b_4(mult3_p_net_x1)
  );
  adc_clock_domain_wrapper_vector_real_mult13 vector_real_mult13 (
    .a_1(mux4_y_net),
    .b_1(register0_q_net_x9),
    .a_2(mux5_y_net),
    .a_3(mux6_y_net),
    .a_4(mux7_y_net),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x4),
    .a_x_b_2(mult1_p_net_x5),
    .a_x_b_3(mult2_p_net_x2),
    .a_x_b_4(mult3_p_net_x2)
  );
  adc_clock_domain_wrapper_vector_real_mult2 vector_real_mult2 (
    .a_1(mux8_y_net_x0),
    .b_1(register0_q_net_x9),
    .a_2(mux9_y_net),
    .a_3(mux10_y_net),
    .a_4(mux11_y_net),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x5),
    .a_x_b_2(mult1_p_net_x6),
    .a_x_b_3(mult2_p_net_x3),
    .a_x_b_4(mult3_p_net_x3)
  );
  adc_clock_domain_wrapper_vector_real_mult3 vector_real_mult3 (
    .a_1(mux12_y_net),
    .b_1(register0_q_net_x9),
    .a_2(mux13_y_net),
    .a_3(mux14_y_net),
    .a_4(mux15_y_net),
    .b_2(register1_q_net_x9),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x6),
    .a_x_b_2(mult1_p_net_x7),
    .a_x_b_3(mult2_p_net_x4),
    .a_x_b_4(mult3_p_net_x4)
  );
  adc_clock_domain_wrapper_vector_real_mult4 vector_real_mult4 (
    .a_1(mux0_y_net_x2),
    .b_1(convert0_dout_net),
    .a_2(mux1_y_net_x2),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x7),
    .a_x_b_2(mult1_p_net_x8)
  );
  adc_clock_domain_wrapper_vector_real_mult5 vector_real_mult5 (
    .a_1(mux2_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux3_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x8),
    .a_x_b_2(mult1_p_net_x9)
  );
  adc_clock_domain_wrapper_vector_real_mult6 vector_real_mult6 (
    .a_1(mux4_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux5_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x9),
    .a_x_b_2(mult1_p_net_x10)
  );
  adc_clock_domain_wrapper_vector_real_mult7 vector_real_mult7 (
    .a_1(mux6_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux7_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x10),
    .a_x_b_2(mult1_p_net_x11)
  );
  adc_clock_domain_wrapper_vector_real_mult8 vector_real_mult8 (
    .a_1(mux4_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux5_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x11),
    .a_x_b_2(mult1_p_net_x12)
  );
  adc_clock_domain_wrapper_vector_real_mult9 vector_real_mult9 (
    .a_1(mux2_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux3_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x12),
    .a_x_b_2(mult1_p_net_x13)
  );
  adc_clock_domain_wrapper_vector_register vector_register (
    .d_1(convert0_dout_net_x1),
    .d_2(convert1_dout_net_x1),
    .d_3(convert2_dout_net_x0),
    .d_4(convert3_dout_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .q_1(register0_q_net_x9),
    .q_2(register1_q_net_x9),
    .q_3(register2_q_net_x7),
    .q_4(register3_q_net_x8)
  );
  adc_clock_domain_wrapper_vector_up_sample vector_up_sample (
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
  adc_clock_domain_wrapper_vector_up_sample1 vector_up_sample1 (
    .in_1(convert0_dout_net),
    .in_2(convert1_dout_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(upsample0_q_net_x0),
    .out_2(upsample1_q_net_x0)
  );
  adc_clock_domain_wrapper_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(19),
    .core_name0("adc_clock_domain_wrapper_c_addsub_v12_0_i0"),
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
    .b(register11_q_net_x1),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(addsub_s_net)
  );
  adc_clock_domain_wrapper_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(11),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(12),
    .core_name0("adc_clock_domain_wrapper_c_addsub_v12_0_i1"),
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
  adc_clock_domain_wrapper_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(26),
    .core_name0("adc_clock_domain_wrapper_c_addsub_v12_0_i2"),
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
  adc_clock_domain_wrapper_xltdpram #(
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
    .dinb(downsample0_q_net_x7),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c0_ram_douta_net),
    .doutb(c0_ram_doutb_net)
  );
  adc_clock_domain_wrapper_xltdpram #(
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
    .dinb(downsample1_q_net_x7),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c1_ram_douta_net),
    .doutb(c1_ram_doutb_net)
  );
  sysgen_concat_f5d43f203f concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret3_output_port_net),
    .in1(reinterpret5_output_port_net),
    .y(concat_y_net)
  );
  sysgen_concat_f6d876abe9 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(register7_q_net_x7),
    .in1(register9_q_net_x1),
    .in2(pot_sw_mux_y_net),
    .y(concat1_y_net)
  );
  sysgen_constant_f9c9803e57 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net_x0)
  );
  sysgen_constant_f9c9803e57 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_fa4e55f92b constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_constant_2e02d264b6 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
    .d(register12_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample2_q_net)
  );
  adc_clock_domain_wrapper_xldsamp #(
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
    .d(register13_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample3_q_net)
  );
  adc_clock_domain_wrapper_xldsamp #(
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
    .d(register14_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample4_q_net)
  );
  adc_clock_domain_wrapper_xldsamp #(
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
    .d(register15_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample5_q_net)
  );
  adc_clock_domain_wrapper_xldsamp #(
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
  adc_clock_domain_wrapper_xldsamp #(
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
  sysgen_expr_a27c1d6e27 expression (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert3_dout_net_x1),
    .b(shift_op_net),
    .dout(expression_dout_net)
  );
  sysgen_inverter_ed2748a1d9 inverter (
    .clr(1'b0),
    .ip(register_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .op(inverter_op_net)
  );
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i0"),
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
    .a(mux8_y_net),
    .b(down_sample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  adc_clock_domain_wrapper_xlmult #(
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
    .core_name0("adc_clock_domain_wrapper_mult_gen_v12_0_i1"),
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
    .b(register7_q_net_x8),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  sysgen_mux_c34f4b49ab mux8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(expression_dout_net),
    .d0(register0_q_net_x9),
    .d1(downsample0_q_net_x8),
    .d2(downsample1_q_net_x8),
    .d3(constant1_op_net_x0),
    .y(mux8_y_net)
  );
  adc_clock_domain_wrapper_xlregister #(
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
  adc_clock_domain_wrapper_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x9),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net_x8)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast4_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast6_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_relational_b2ebb8201b relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x9),
    .b(downsample0_q_net_x8),
    .op(relational_op_net)
  );
  sysgen_relational_e9eaeabe1a relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x9),
    .b(downsample1_q_net_x8),
    .op(relational1_op_net)
  );
  sysgen_shift_13681f552b shift (
    .clr(1'b0),
    .ip(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift_op_net)
  );
  adc_clock_domain_wrapper_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("adc_clock_domain_wrapper_c_addsub_v12_0_i3"),
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
  adc_clock_domain_wrapper_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("adc_clock_domain_wrapper_c_addsub_v12_0_i3"),
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
  adc_clock_domain_wrapper_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  ofst_mon_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(power_monitor_in_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(ofst_mon_in_reg_q_net)
  );
  sysgen_mux_fb3649325e pot_sw_mux (
    .clr(1'b0),
    .sel(register5_q_net_x7),
    .d0(register_q_net_x0),
    .d1(inverter_op_net),
    .d2(register_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .y(pot_sw_mux_y_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlregister #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
  sysgen_concat_f5d43f203f concat2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret2_output_port_net),
    .y(concat2_y_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
    .din(register0_q_net_x9),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast1_dout_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
    .din(register1_q_net_x9),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast2_dout_net)
  );
  sysgen_concat_f5d43f203f concat3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret4_output_port_net),
    .in1(reinterpret6_output_port_net),
    .y(concat3_y_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast3_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast5_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
    .din(register2_q_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast3_dout_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
    .din(register3_q_net_x8),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast5_dout_net)
  );
  sysgen_concat_f5d43f203f concat5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret9_output_port_net),
    .in1(reinterpret10_output_port_net),
    .y(concat5_y_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast9_dout_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast10_dout_net),
    .output_port(reinterpret10_output_port_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
    .din(register11_q_net_x1),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast10_dout_net)
  );
  sysgen_concat_f5d43f203f concat4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret8_output_port_net),
    .in1(reinterpret7_output_port_net),
    .y(concat4_y_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast7_dout_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_fe33ed3323 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast8_dout_net),
    .output_port(reinterpret8_output_port_net)
  );
  adc_clock_domain_wrapper_xlconvert #(
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
  adc_clock_domain_wrapper_xlconvert #(
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
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module adc_clock_domain_wrapper_default_clock_driver (
  input adc_clock_domain_wrapper_sysclk,
  input adc_clock_domain_wrapper_sysce,
  input adc_clock_domain_wrapper_sysclr,
  output adc_clock_domain_wrapper_clk1,
  output adc_clock_domain_wrapper_ce1,
  output adc_clock_domain_wrapper_clk4,
  output adc_clock_domain_wrapper_ce4
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x0 (
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
  clockdriver (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk4),
    .ce(adc_clock_domain_wrapper_ce4)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "adc_clock_domain_wrapper,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Sample frequencies (MHz),family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=8,system_simulink_period=8e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00828068,addsub=39,concat=6,constant=6,convert=23,dpram=2,dsamp=92,expr=1,inv=1,mult=42,mux=44,register=8,reinterpret=10,relational=2,shift=1,usamp=6,}" *)
module adc_clock_domain_wrapper (
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
  input [14-1:0] power_monitor_in,
  input [14-1:0] x_in,
  input clk,
  output [14-1:0] dac_pulse_out,
  output [18-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5
);
  wire clk_4_net;
  wire ce_4_net;
  wire ce_1_net;
  wire clk_1_net;
  adc_clock_domain_wrapper_default_clock_driver adc_clock_domain_wrapper_default_clock_driver (
    .adc_clock_domain_wrapper_sysclk(clk),
    .adc_clock_domain_wrapper_sysce(1'b1),
    .adc_clock_domain_wrapper_sysclr(1'b0),
    .adc_clock_domain_wrapper_clk1(clk_1_net),
    .adc_clock_domain_wrapper_ce1(ce_1_net),
    .adc_clock_domain_wrapper_clk4(clk_4_net),
    .adc_clock_domain_wrapper_ce4(ce_4_net)
  );
  adc_clock_domain_wrapper_struct adc_clock_domain_wrapper_struct (
    .sw_in(sw_in),
    .fmat_in_1(fmat_in_1),
    .lmat_in_1(lmat_in_1),
    .kmat_in_1(kmat_in_1),
    .bmat_in_1(bmat_in_1),
    .fmat_ip_in_1(fmat_ip_in_1),
    .lmat_ip_in_1(lmat_ip_in_1),
    .kmat_ip_in_1(kmat_ip_in_1),
    .bmat_ip_in_1(bmat_ip_in_1),
    .hw_switch_override(hw_switch_override),
    .adc_ch1_offst(adc_ch1_offst),
    .adc_ch2_offst(adc_ch2_offst),
    .pot_switch_hw(pot_switch_hw),
    .pot_switch_hw_flag(pot_switch_hw_flag),
    .leds_in(leds_in),
    .x_ref_in(x_ref_in),
    .fb_src_switch(fb_src_switch),
    .barrier_ub_lb_in_1(barrier_ub_lb_in_1),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_ram_data_in_1(barrier_ram_data_in_1),
    .barrier_ram_we_in(barrier_ram_we_in),
    .fmat_in_2(fmat_in_2),
    .fmat_in_3(fmat_in_3),
    .fmat_in_4(fmat_in_4),
    .fmat_in_5(fmat_in_5),
    .fmat_in_6(fmat_in_6),
    .fmat_in_7(fmat_in_7),
    .fmat_in_8(fmat_in_8),
    .fmat_in_9(fmat_in_9),
    .fmat_in_10(fmat_in_10),
    .fmat_in_11(fmat_in_11),
    .fmat_in_12(fmat_in_12),
    .fmat_in_13(fmat_in_13),
    .fmat_in_14(fmat_in_14),
    .fmat_in_15(fmat_in_15),
    .fmat_in_16(fmat_in_16),
    .lmat_in_2(lmat_in_2),
    .lmat_in_3(lmat_in_3),
    .lmat_in_4(lmat_in_4),
    .lmat_in_5(lmat_in_5),
    .lmat_in_6(lmat_in_6),
    .lmat_in_7(lmat_in_7),
    .lmat_in_8(lmat_in_8),
    .kmat_in_2(kmat_in_2),
    .kmat_in_3(kmat_in_3),
    .kmat_in_4(kmat_in_4),
    .kmat_in_5(kmat_in_5),
    .kmat_in_6(kmat_in_6),
    .kmat_in_7(kmat_in_7),
    .kmat_in_8(kmat_in_8),
    .bmat_in_2(bmat_in_2),
    .bmat_in_3(bmat_in_3),
    .bmat_in_4(bmat_in_4),
    .bmat_in_5(bmat_in_5),
    .bmat_in_6(bmat_in_6),
    .bmat_in_7(bmat_in_7),
    .bmat_in_8(bmat_in_8),
    .fmat_ip_in_2(fmat_ip_in_2),
    .fmat_ip_in_3(fmat_ip_in_3),
    .fmat_ip_in_4(fmat_ip_in_4),
    .fmat_ip_in_5(fmat_ip_in_5),
    .fmat_ip_in_6(fmat_ip_in_6),
    .fmat_ip_in_7(fmat_ip_in_7),
    .fmat_ip_in_8(fmat_ip_in_8),
    .fmat_ip_in_9(fmat_ip_in_9),
    .fmat_ip_in_10(fmat_ip_in_10),
    .fmat_ip_in_11(fmat_ip_in_11),
    .fmat_ip_in_12(fmat_ip_in_12),
    .fmat_ip_in_13(fmat_ip_in_13),
    .fmat_ip_in_14(fmat_ip_in_14),
    .fmat_ip_in_15(fmat_ip_in_15),
    .fmat_ip_in_16(fmat_ip_in_16),
    .lmat_ip_in_2(lmat_ip_in_2),
    .lmat_ip_in_3(lmat_ip_in_3),
    .lmat_ip_in_4(lmat_ip_in_4),
    .lmat_ip_in_5(lmat_ip_in_5),
    .lmat_ip_in_6(lmat_ip_in_6),
    .lmat_ip_in_7(lmat_ip_in_7),
    .lmat_ip_in_8(lmat_ip_in_8),
    .kmat_ip_in_2(kmat_ip_in_2),
    .kmat_ip_in_3(kmat_ip_in_3),
    .kmat_ip_in_4(kmat_ip_in_4),
    .kmat_ip_in_5(kmat_ip_in_5),
    .kmat_ip_in_6(kmat_ip_in_6),
    .kmat_ip_in_7(kmat_ip_in_7),
    .kmat_ip_in_8(kmat_ip_in_8),
    .bmat_ip_in_2(bmat_ip_in_2),
    .bmat_ip_in_3(bmat_ip_in_3),
    .bmat_ip_in_4(bmat_ip_in_4),
    .bmat_ip_in_5(bmat_ip_in_5),
    .bmat_ip_in_6(bmat_ip_in_6),
    .bmat_ip_in_7(bmat_ip_in_7),
    .bmat_ip_in_8(bmat_ip_in_8),
    .barrier_ub_lb_in_2(barrier_ub_lb_in_2),
    .barrier_ram_data_in_2(barrier_ram_data_in_2),
    .hw_pot_switch(hw_pot_switch),
    .power_monitor_in(power_monitor_in),
    .x_in(x_in),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .clk_4(clk_4_net),
    .ce_4(ce_4_net),
    .dac_pulse_out(dac_pulse_out),
    .divisor_out(divisor_out),
    .dma_out_1(dma_out_1),
    .gate_fb_x_out(gate_fb_x_out),
    .gate_fb_z_out(gate_fb_z_out),
    .gate_leds_out(gate_leds_out),
    .gate_x1_out(gate_x1_out),
    .gate_x2_out(gate_x2_out),
    .gate_x3_out(gate_x3_out),
    .gate_x4_out(gate_x4_out),
    .gate_y_x_corrected_out(gate_y_x_corrected_out),
    .gate_y_z_corrected_out(gate_y_z_corrected_out),
    .dma_out_2(dma_out_2),
    .dma_out_3(dma_out_3),
    .dma_out_4(dma_out_4),
    .dma_out_5(dma_out_5)
  );
endmodule
