
% Add the HIL-Simulator Library to the project.
addpath hilsim_lib/

clc;
close all;
clear;

do_plot = false;

%% IP-Settings for RedPitaya
RP_IPADDR = "10.42.0.66";
RP_PORT = 1000;

%% Calibration settings from RedPitaya
load("calib.mat");

%% Particle Model Parameters & Potential Functionp

p.T = 293;                          % Heat bath temperature [K]
p.m = 9.77e-18;                     % Particle mass [kg]
p.k = -9.07067175478047e-07;        % (Inverted) Potential Stiffness [N/m]
p.C_f = 6.17940000000000e-12;       % Feedback Coefficient [N/V]
p.C_e = 4697940.12339623;           % Electrical Transconduction Coefficient [V/m]
p.Q = 200;                          % Quality Factor [1]

kB = 1.380649e-23;                  % Boltzmann Constant [J/K]

p.gamma = sqrt(abs(p.k)*p.m)/p.Q;
p.noise_power = p.gamma*kB*p.T;

% Potential Function
p.pot_scale = 0.5*1e-7;             % Empirical Potential Scale
p.alpha = 0.1 * abs(p.k) / (p.pot_scale^2 * p.m);
p.beta  = - abs(p.k) / p.m;

p.pot_func       = p.m * [4*p.alpha, 0, 2*p.beta, 0, 0];
p.pot_func_alt   = p.m * [4*p.alpha, 0, 4*p.beta, 0, 0];
p.force_func     = @(q) p.alpha*q.^3 + p.beta*q;
p.force_func_alt = @(q) p.alpha*q.^3 + 2*p.beta*q;

%plot_pot_poly(p.pot_func, p.pot_func_alt);

%% HIL Simulation Model Setup
model = HILSimModel();

model.noise_sources(1).set_noise_power(p.noise_power*1e7);
model.noise_sources(2).set_noise_power(p.noise_power*1e7);
model.noise_sources(3).set_noise_power(p.noise_power*1e7);

model.input_matrix.set_matrix([p.C_f/5, 0, 1; ...
                               p.C_f/5, 0, 1; ...
                               p.C_f/5, 0, 1]);

model.output_slices(1).linear_factors = [p.C_e / 5, 0, 0];
model.output_slices(2).linear_factors = [0, p.C_e / 5, 0];

model.slices(1).u_nlf.set_bypass();
model.slices(1).u_factor = 1 / p.m;
model.slices(1).x_nlf.set_func(p.force_func);
model.slices(1).x_nlf.set_func_alternate(p.force_func_alt);
model.slices(1).x_factor = -1;
model.slices(1).xdot_nlf.set_bypass();
model.slices(1).xdot_factor = -p.gamma / p.m;

model.slices(2).u_nlf.set_bypass();
model.slices(2).u_factor = 1 / p.m;
%model.slices(2).x_nlf.set_func(p.force_func);
%model.slices(2).x_nlf.set_func_alternate(p.force_func_alt);
model.slices(2).x_nlf.set_bypass();
model.slices(2).x_factor = - 2*abs(p.k) / p.m;
model.slices(2).xdot_nlf.set_bypass();
model.slices(2).xdot_factor = -p.gamma / p.m;

model.slices(3).u_nlf.set_bypass();
model.slices(3).u_factor = 1 / p.m;
model.slices(3).x_nlf.set_func(p.force_func);
model.slices(3).x_nlf.set_func_alternate(p.force_func_alt);
model.slices(3).x_factor = -1;
model.slices(3).xdot_nlf.set_bypass();
model.slices(3).xdot_factor = -p.gamma / p.m;

%% Prepare Simulation Scenario(s)

t_s = 1e-7;
num_samples = 1000*3;
sim_time = t_s * num_samples;

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 200
        in_signals(1,1,i) = 1.0; % 0.3
    end
end
scenario_0 = HILSimScenario(in_signals, sim_time);

in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 352
        in_signals(1,1,i) = .1*5;
    elseif i >= 352 && i <= 778
        in_signals(1,1,i) = -.1*5;
    end
end
scenario_1 = HILSimScenario(in_signals, sim_time);
scenario_1_alt = copy(scenario_1);
scenario_1_alt.nlf_alternate_switch.slice0.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice1.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice2.x_nlf = 1;

scenarios = [scenario_0; scenario_1];

%% Compile Model
model.compile(scenarios);

tdfp_model = model.get_tdfp_model();

%% Signals for Simulation

if do_plot
    sig_out_tc = model.sim_tc(scenario_1, false);
    sig_out_td = model.sim_td(scenario_1, false);
    sig_out_tdfp = model.sim_tdfp(scenario_1, false);
    %sig_out_hwimpl = model.sim_hwimpl(scenario_1);
    
    axis tight;
    hold on;
    
    plot(sig_out_tc(1).Time, sig_out_tc(1).Data, "DisplayName", "TC-DBL");
    plot(sig_out_td(1).Time, sig_out_td(1).Data, "DisplayName", "TD-DBL");
    plot(sig_out_tdfp(1).Time, sig_out_tdfp(1).Data, "DisplayName", "TD-FP");
    %plot(sig_out_hwimpl(1).Time, sig_out_hwimpl(1).Data, "DisplayName", "HW");
    legend();
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
client.set_nlfsw_iomask(0x00); %0x02
client.set_nlfsw_sel(0x00);

% Reset all integrators in the model & start the simulation.
client.reset_simulation();
client.start_simulation();

% SIMULATION IS RUNNING NOW (set breakpoint)
run = true;
while run
    client.configure_daq(10000,36*10,1,0);
    client.prime_daq();
    client.wait_finished(15.0);
    data = client.read_daq_data(0, 10000);

    ndata = length(data);
    dac_a = arrayfun(@(d) from_fixrepr(bitand(d, uint32(0xffff)), 16, 10), data);
    dac_b = arrayfun(@(d) from_fixrepr(bitand(bitsrl(d, 16), uint32(0xffff)), 16, 10), data);

    plot(dac_a);
    break;
end

% Stop the simulation.
client.stop_simulation();
client.reset_simulation();

% Disconnect from the RedPitaya.
client.disconnect();

close all;

%% Functions

function [] = plot_pot_poly(pot_poly, pot_poly_alt)
    pot_rts = roots(pot_poly);
    x_min = min(pot_rts) * 1.5;
    x_max = max(pot_rts) * 1.5;
    xsp = linspace(x_min, x_max, 100);

    fval = polyval(pot_poly, xsp);
    fval_alt = polyval(pot_poly_alt, xsp);
    figure;
    plot(xsp, fval);
    hold on;
    plot(xsp, fval_alt);
    grid;
end

function [val_out] = from_fixrepr(val, sz, bin)
    sign_bit = bitand(bitsrl(val, sz-1), 1);

    if sign_bit
        val_out = -double((bitxor(val, (2^sz)-1) + 1));
    else
        val_out = double(val);
    end

    val_out = val_out / 2^bin;
end