close all;
clc;
clear;

load("out/integrator_comparison/sig_input.mat");
sig_input = scenario_1;
load("out/integrator_comparison/sig_tc_double.mat");
sig_tc_double = sig_out_tc;
load("out/integrator_comparison/sig_hw_euler.mat");
sig_hw_euler = sig_out_hwimpl;
load("out/integrator_comparison/sig_hw_adams_bashforth_order2.mat");
sig_hw_ab2 = sig_out_hwimpl;
load("out/integrator_comparison/sig_hw_symplectic_order1.mat");
sig_hw_so1 = sig_out_hwimpl;
load("out/integrator_comparison/sig_hw_symplectic_order2.mat");
sig_hw_so2 = sig_out_hwimpl;

hold on;
plot(sig_tc_double(1).Time, sig_tc_double(1).Data, "DisplayName", "TC-DBL x");
plot(sig_hw_ab2(1).Time, sig_hw_ab2(1).Data, "DisplayName", "AB2");
plot(sig_hw_so1(1).Time, sig_hw_so1(1).Data, "DisplayName", "SO1");
plot(sig_hw_so2(1).Time, sig_hw_so2(1).Data, "DisplayName", "SO2");
legend();

figure;
hold on;
plot(sig_tc_double(2).Time, sig_tc_double(2).Data, "DisplayName", "TC-DBL");
plot(sig_hw_ab2(2).Time, sig_hw_ab2(2).Data, "DisplayName", "AB2");
plot(sig_hw_so1(2).Time, sig_hw_so1(2).Data, "DisplayName", "SO1");
plot(sig_hw_so2(2).Time, sig_hw_so2(2).Data, "DisplayName", "SO2");
legend();

%% Write data to CSV files.

writematrix([ ...
    reshape(sig_input.in_signals(1,2,:), 1, []).', ...
    reshape(sig_input.in_signals(1,1,:), 1, []).', ...
    reshape(sig_input.in_signals(2,2,:), 1, []).', ...
    reshape(sig_input.in_signals(2,1,:), 1, []).' ...
], "out/integrator_comparison/sig_input.csv");

writematrix([sig_tc_double(1).Time, sig_tc_double(1).Data, ...
             sig_tc_double(2).Time, sig_tc_double(2).Data], "out/integrator_comparison/sig_tc_double.csv");

writematrix([sig_hw_euler(1).Time, sig_hw_euler(1).Data, ...
             sig_hw_euler(2).Time, sig_hw_euler(2).Data], "out/integrator_comparison/sig_hw_euler.csv");

writematrix([sig_hw_ab2(1).Time, sig_hw_ab2(1).Data, ...
             sig_hw_ab2(2).Time, sig_hw_ab2(2).Data], "out/integrator_comparison/sig_hw_ab2.csv");

writematrix([sig_hw_so1(1).Time, sig_hw_so1(1).Data, ...
             sig_hw_so1(2).Time, sig_hw_so1(2).Data], "out/integrator_comparison/sig_hw_so1.csv");

writematrix([sig_hw_so2(1).Time, sig_hw_so2(1).Data, ...
             sig_hw_so2(2).Time, sig_hw_so2(2).Data], "out/integrator_comparison/sig_hw_so2.csv");



