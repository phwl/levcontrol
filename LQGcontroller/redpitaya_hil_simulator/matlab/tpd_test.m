
% Add the HIL-Simulator Library to the project.
addpath hilsim_lib/

clc;
close all;
clear;

%% IP-Settings for RedPitaya
RP_IPADDR = "10.42.0.87";
RP_PORT = 1000;

%% Calibration settings from RedPitaya
load("calib.mat");

%% HIL Simulation Model Setup
model = HILSimModel();

model.noise_sources(1).set_noise_power(0);
model.noise_sources(2).set_noise_power(0);
model.noise_sources(3).set_noise_power(0);

model.input_matrix.set_matrix([1,0,0;0,0,0;0,0,0]);

model.output_slices(1).linear_factors = [0, 0, 0];
model.output_slices(1).x_xdot_selectors = ["xdotdot", "xdotdot", "xdotdot"];
model.output_slices(2).linear_factors = [1, 0, 0];
model.output_slices(2).x_xdot_selectors = ["xdotdot", "xdotdot", "xdotdot"];

model.slices(1).ignore_x_presc = 1;
model.slices(1).ignore_xdot_presc = 1;
model.slices(1).ignore_xdotdot_presc = 1;
model.slices(1).u_nlf.set_bypass();
model.slices(1).u_factor = 1;
model.slices(1).x_factor = 0.0;
model.slices(1).xdot_factor = 0.0;

%% Prepare Simulation Scenario(s)

t_s = 1e-7;
num_samples = 1000*3;
sim_time = t_s * num_samples;

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 200
        in_signals(2,1,i) = 0.7;
    end
end
scenario_0 = HILSimScenario(in_signals, sim_time);

scenarios = [scenario_0];

%% Compile Model
model.compile(scenarios);

tdfp_model = model.get_tdfp_model();

%% Signals for Simulation

sig_out_tc = model.sim_tc(scenario_0, false);
sig_out_td = model.sim_td(scenario_0, false);
sig_out_tdfp = model.sim_tdfp(scenario_0, false);
%sig_out_hwimpl = model.sim_hwimpl(scenario_0);

axis tight;
hold on;

plot(sig_out_tc(2).Time, sig_out_tc(2).Data, "DisplayName", "TC-DBL");
plot(sig_out_td(2).Time, sig_out_td(2).Data, "DisplayName", "TD-DBL");
plot(sig_out_tdfp(2).Time, sig_out_tdfp(2).Data, "DisplayName", "TD-FP");
%plot(sig_out_hwimpl(1).Time, sig_out_hwimpl(1).Data, "DisplayName", "HW");
legend();

%% Connect to HILSim RP via TCP/IP
client = HILSimClient(RP_IPADDR, RP_PORT);
client.connect();

% Send the compiled model to the RedPitaya
client.set_model(model);
client.send_config_update();

% Calibrate away any zero DC-offset in the ADC-inputs.
client.do_input_zero_calib();
% Load other calibration values from the saved calib data. (ADC zero offset
% compensation is done individually each time)
client.set_adc_calib(NaN, calib.adc0_factor, NaN, calib.adc1_factor);
client.set_dac_calib(calib.dac0_offset, calib.dac0_factor, calib.dac1_offset, calib.dac1_factor);

% Reset all integrators in the model & start the simulation.
client.reset_simulation();
client.start_simulation();

% SIMULATION IS RUNNING NOW (set breakpoint)

% Stop the simulation.
client.stop_simulation();
client.reset_simulation();

% Disconnect from the RedPitaya.
client.disconnect();

close all;




