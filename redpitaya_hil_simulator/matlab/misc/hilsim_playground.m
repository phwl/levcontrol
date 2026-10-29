
% Add the HIL-Simulator Library to the project.
addpath hilsim_lib/

clc;
close all;
clear;

%% IP-Settings for RedPitaya
RP_IPADDR = "10.42.0.252";
RP_PORT = 1000;

%% Calibration settings from RedPitaya
load("calib.mat");

%% Particle Model Parameters & Potential Function
p.T0 = 293;                         % Heat bath temperature
p.m = 9.77e-18;                     % Particle mass [kg]
p.k_ap = 9.686367199937547e-06;     % Initial potential stiffness [N/m]
p.k_ip = -9.07067175478047e-07;     % Inverted potential stiffness [N/m]
p.C_el = 4697940.12339623;          % Electrical transduction coefficient [V/m]
p.C_f  = 6.17940000000000e-12;      % Feedback coefficient divided by mass [N/V] 
p.Q = 200;                          % Quality factor
p.Omega = sqrt(p.k_ap/p.m);         % Harmonic potential nat. frequency
p.Omega_ip = sqrt(abs(p.k_ip/p.m)); % Inverted potential nat. frequency
p.Gamma = p.Omega/(p.Q);            % Damping

%p.k_ip = -9.07067175478047e-07;
p.sigma = 0.5*1e-7; % Scale
p.alpha = 0.1 * p.sigma^2 * abs(p.k_ip/(p.sigma^4)) / p.m;
p.beta = p.sigma^2 * abs(p.k_ip / (p.sigma^2)) / p.m;
p.a = 0.1 * abs(p.k_ip / (p.sigma^4));
p.b = abs(p.k_ip / (p.sigma^2));

p.noise_power = 1e-4;

pot_poly = (p.sigma^2)*[ p.a/4, 0, -p.b/2, 0, 0 ];
force_func = @(x) p.alpha * x.^3 - p.beta * x;
rts = roots(pot_poly);
x_pot = linspace(1.2*min(rts), 1.2*max(rts),100);

%% HIL Simulation Model Setup
model = HILSimModel();

model.noise_sources(1).set_noise_power(p.noise_power);
model.noise_sources(2).set_noise_power(p.noise_power);
model.noise_sources(3).set_noise_power(p.noise_power);
model.input_matrix.set_matrix([0, 0, 0; ...
                               0, 0, 0; ...
                               1, 0, 1e-18]);
model.output_slices(1).linear_factors = [0, 0, p.C_el / 5];
model.output_slices(2).linear_factors = [0, 0, 1];
model.output_slices(2).x_xdot_selectors = ["xdot", "xdot", "xdot"];
model.slices(3).u_nlf.set_bypass();
model.slices(3).u_factor = (p.C_f / p.m);
model.slices(3).x_nlf.set_func(force_func);
model.slices(3).x_factor = -1;
model.slices(3).xdot_nlf.set_bypass();
model.slices(3).xdot_factor = -p.Gamma;

%% Prepare Simulation Scenario(s)

t_s = 1e-7;
num_samples = 1000*3;
sim_time = t_s * num_samples;

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 200
        in_signals(1,1,i) = 0.3;
    end
end
scenario_0 = HILSimScenario(in_signals, sim_time);

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 352
        in_signals(1,1,i) = .1;
    elseif i >= 352 && i <= 800
        in_signals(1,1,i) = -.1;
    end
    in_signals(1,1,i) = sin(i / 300)*0.02;
end
scenario_1 = HILSimScenario(in_signals, sim_time);

scenarios = [scenario_0; scenario_1];

%% Compile Model
model.compile(scenarios);

tdfp_model = model.get_tdfp_model();

%% Signals for Simulation

sig_out_tc = model.sim_tc(scenario_1, false);
sig_out_td = model.sim_td(scenario_1, false);
sig_out_tdfp = model.sim_tdfp(scenario_1, false);
sig_out_hwimpl = model.sim_hwimpl(scenario_1);

axis tight;
hold on;

plot(sig_out_tc(1).Time, sig_out_tc(1).Data, "DisplayName", "TC-DBL x");
plot(sig_out_tc(2).Time, sig_out_tc(2).Data, "DisplayName", "TC-DBL xdot");
%plot(sig_out_td(1).Time, sig_out_td(1).Data, "DisplayName", "TD-DBL");
%plot(sig_out_tdfp(1).Time, sig_out_tdfp(1).Data, "DisplayName", "TD-FP");
plot(sig_out_hwimpl(1).Time, sig_out_hwimpl(1).Data, "DisplayName", "HW x");
plot(sig_out_hwimpl(2).Time, sig_out_hwimpl(2).Data, "DisplayName", "HW xdot");
legend();

%% Save Signals
%save("out/integrator_comparison/sig_tc_double.mat", "sig_out_tc");
%save("out/integrator_comparison/sig_hw_adams_bashforth_order2.mat", "sig_out_hwimpl");
%save("out/integrator_comparison/sig_input.mat", "scenario_1");


