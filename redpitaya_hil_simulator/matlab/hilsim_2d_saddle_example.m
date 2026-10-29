
% Add the HIL-Simulator Library to the project.
addpath hilsim_lib/

clc;
close all;
clear;

do_plot = false;

%% IP-Settings for RedPitaya
RP_IPADDR = "10.42.0.237";
%RP_IPADDR = "169.254.145.9";
RP_PORT = 1000;

%% Calibration settings from RedPitaya
load("calib.mat");

%% Particle Model Parameters & Potential Function

p.m = 5e-17;             % Particle mass [kg]
p.C_f1_1 = 5e-12;        % Force coupling coefficient of u1 in q1 [N/V]
p.C_f1_2 = 1e-12;        % Force coupling coefficient of u2 in q1 [N/V]
p.C_f2_1 = 1e-12;        % Force coupling coefficient of u1 in q2 [N/V]
p.C_f2_2 = 5e-12;        % Force coupling coefficient of u2 in q2 [N/V]

p.C_e1_1 = 4e6;          % Calibration coefficient of q1 in y1 [V/m]
p.C_e1_2 = 1e5;          % Calibration coefficient of q2 in y1 [V/m]
p.C_e2_1 = 2e5;          % Calibration coefficient of q1 in y2 [V/m]
p.C_e2_2 = 8e6;          % Calibration coefficient of q2 in y2 [V/m]

p.C_e1_1 = p.C_e1_1 * 1e0 * 0.5;
p.C_e1_2 = p.C_e1_2 * 1e0 * 0;
p.C_e2_1 = p.C_e2_1 * 1e0 * 0;
p.C_e2_2 = p.C_e2_2 * 1e0 * 0.5;

p.Omega_1 = 2*pi*15e3;   % Quadratic component of q1 potential [rad/s]
p.alpha_1 = 2*pi*40e3;  % Quartic component of q1 potential [rad/s]
p.Omega_2 = 2*pi*35e3;   % Natural frequency of q2 axis [rad/s]
p.Gamma = 2*pi*1e3;      % Damping rate [rad/s]

p.P_w = 3.2e-34;         % Process noise power [N^2/s^2]

% Potential = 0.25*alpha*q^4 - 0.5*Omega^2*q^2
p.force_func_q1     = @(q) q;
p.force_func_q1_alt = @(q) (p.alpha_1^4)/(p.Omega_1^2)*q.^3 - q;


% Plot Potential
if do_plot
    q1_V = linspace(-1, 1, 500);
    q1_m = q1_V / p.C_e1_1;          % convert from [V] to [m]

    % V = -integral(F dq), where F = x_factor * nlf(q), x_factor = -Omega_1^2
    V_harm = -0.5 * p.Omega_1^2 * q1_m.^2;
    V_dw   = 0.25 * p.alpha_1^4 * q1_m.^4 - 0.5 * p.Omega_1^2 * q1_m.^2;

    figure;
    hold on;
    plot(q1_V, V_harm, 'DisplayName', 'Harmonic');
    plot(q1_V, V_dw,   'DisplayName', 'Double-Well (alt)');
    xlabel('Position [V]');
    ylabel('Potential / Mass [m^2 s^{-2}]');
    title('Particle Potential');
    legend();
    grid on;
end

%% HIL Simulation Model Setup
model = HILSimModel();

model.noise_sources(1).set_noise_power(p.P_w);
model.noise_sources(2).set_noise_power(p.P_w);
model.noise_sources(3).set_noise_power(p.P_w);

model.input_matrix.set_matrix([p.C_f1_1, p.C_f1_2, 1; ...
                               p.C_f2_1, p.C_f2_2, 1; ...
                               0, 0, 1]);

model.output_slices(1).linear_factors = [p.C_e1_1, p.C_e1_2, 0];
model.output_slices(2).linear_factors = [p.C_e2_1, p.C_e2_2, 0];

model.slices(1).u_nlf.set_bypass();
model.slices(1).u_factor = 1 / p.m;
model.slices(1).x_nlf.set_func(p.force_func_q1);
model.slices(1).x_nlf.set_func_alternate(p.force_func_q1_alt);
model.slices(1).x_factor = -p.Omega_1^2;
%model.slices(1).x_nlf.set_bypass();
model.slices(1).xdot_nlf.set_bypass();
model.slices(1).xdot_factor = -p.Gamma;

model.slices(2).u_nlf.set_bypass();
model.slices(2).u_factor = 1 / p.m;
model.slices(2).x_factor = -p.Omega_2^2;
model.slices(2).x_nlf.set_bypass();
model.slices(2).xdot_nlf.set_bypass();
model.slices(2).xdot_factor = -p.Gamma;

model.slices(3).u_nlf.set_bypass();
model.slices(3).u_factor = 1 / p.m;
model.slices(3).x_nlf.set_bypass();
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
        in_signals(1,1,i) = 0.5*1e-1; % 0.3
        in_signals(2,1,i) = -0.5*1e-1;
    end
end
scenario_0 = HILSimScenario(in_signals, sim_time);

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 352
        in_signals(1,1,i) = 0.2*1e-1;
        in_signals(2,1,i) = -0.2*1e-1;
    elseif i >= 352 && i <= 778
        in_signals(1,1,i) = -0.2*1e-1;
        in_signals(2,1,i) = 0.2*1e-1;
    end
end

scenario_1 = HILSimScenario(in_signals, sim_time);
scenario_1_alt = copy(scenario_1);
scenario_1_alt.nlf_alternate_switch.slice0.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice1.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice2.x_nlf = 1;

scenarios = [scenario_0, scenario_1, scenario_1_alt];

%% Compile Model
model.compile(scenarios, false);

tdfp_model = model.get_tdfp_model();

% Signals for Simulation
enable_noise = true;

if do_plot
    for i = 1:numel(scenarios)

        sig_out_tc = model.sim_tc(scenarios(i), enable_noise);
        sig_out_td = model.sim_td(scenarios(i), enable_noise);
        sig_out_tdfp = model.sim_tdfp(scenarios(i), enable_noise);
        %sig_out_hwimpl = model.sim_hwimpl(scenario_1);
   
        figure
        tiledlayout(2,1,"TileSpacing","tight")
        nexttile
        axis tight;
        hold on;
        plot(sig_out_tc(1).Time, sig_out_tc(1).Data, "DisplayName", "TC-DBL");
        plot(sig_out_td(1).Time, sig_out_td(1).Data, "DisplayName", "TD-DBL");
        plot(sig_out_tdfp(1).Time, sig_out_tdfp(1).Data, "DisplayName", "TD-FP");
        %plot(sig_out_hwimpl(i).Time, sig_out_hwimpl(i).Data, "DisplayName", "HW");
        legend();

        nexttile
        axis tight;
        hold on;
        plot(sig_out_tc(2).Time, sig_out_tc(2).Data, "DisplayName", "TC-DBL");
        plot(sig_out_td(2).Time, sig_out_td(2).Data, "DisplayName", "TD-DBL");
        plot(sig_out_tdfp(2).Time, sig_out_tdfp(2).Data, "DisplayName", "TD-FP");
        %plot(sig_out_hwimpl(i).Time, sig_out_hwimpl(i).Data, "DisplayName", "HW");
        legend();
    end
end

%% Connect to HILSim RP via TCP/IP
client = HILSimClient(RP_IPADDR, RP_PORT);
client.connect();

% Send the compiled model to the RedPitaya
client.set_model(model);
client.send_config_update();

% Load calibration values from the saved calib data. (ADC zero offset
% compensation is done individually each time)
client.set_adc_calib(NaN, calib.adc0_factor, NaN, calib.adc1_factor);
client.set_dac_calib(calib.dac0_offset, calib.dac0_factor, calib.dac1_offset, calib.dac1_factor);

% Calibrate away any zero DC-offset in the ADC-inputs. This must be done *after*
% setting the rest of the ADC calibration values.
client.do_input_zero_calib();

% Setup external NLF switch for slice0/x
client.set_nlfsw_iomask(0x02); %0x02
client.set_nlfsw_sel(0x00);

% Reset all integrators in the model & start the simulation.
client.reset_simulation();
client.start_simulation();

% SIMULATION IS RUNNING NOW (set breakpoint at client.stop_simulation)
run = true;
% while run
%     client.configure_daq(10000,36*10,1,0);
%     client.prime_daq();
%     client.wait_finished(15.0);
%     data = client.read_daq_data(0, 10000);
% 
%     ndata = length(data);
%     dac_a = arrayfun(@(d) from_fixrepr(bitand(d, uint32(0xffff)), 16, 10), data);
%     dac_b = arrayfun(@(d) from_fixrepr(bitand(bitsrl(d, 16), uint32(0xffff)), 16, 10), data);
% 
%     plot(dac_a);
%     break;
% end

% Stop the simulation.
client.stop_simulation();
client.reset_simulation();

% Disconnect from the RedPitaya.
client.disconnect();

close all;