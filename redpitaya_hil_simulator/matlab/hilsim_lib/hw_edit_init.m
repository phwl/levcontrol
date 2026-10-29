% NOTE: THIS FILE IS ONLY REQUIRED IF YOU ARE PLANNING ON EDITING THE
% HARDWARE IMPLEMENTATION SIMULINK MODEL. THIS FILE SETS UP THE MATLAB
% WORKSPACE TO ENABLE EDITING AND CODE GENERATION.

clc;
close all;
clear;

% Set to true for auxiliary potential plots for the example particle model.
ENABLE_PLOTS = false;

%% Hardware parameter setup
% System (anaproc) clock
hw.f_s = 125e6 * 2;
hw.t_s = 1/hw.f_s;
hw.t_ns = hw.t_s * 1e9;

% AXI clock
hw.f_axi = 125e6;
hw.t_axi = 1/hw.f_axi;
hw.t_axi_ns = 1/hw.f_axi * 1e9;

% ADC/DAC clock
hw.f_adc = 125e6;
hw.t_adc = 1/hw.f_adc;
hw.t_adc_ns = 1/hw.f_adc * 1e9;

hw.oversample = 36;

dbl_disc_t_s = hw.t_s * hw.oversample;

%% Setup datatypes

% ADC/DAC datatype.
dt.adc.sz = 14;
dt.adc.bin = 12;

% Accumulator datatype (used for integrator stage)
dt.accum.sz = 47; % 64;
dt.accum.bin = 39; % 56;

% Slice state & input datatype.
dt.slice.sz = 25;
dt.slice.bin = 17;
% Constant datatype (smaller so that DSP slices are optimally used)
dt.const.sz = 18;
dt.const.bin = 10;

% Nonlinear function datatype.
dt.nlf.sz = 16;
dt.nlf.bin = 14;

% DMA datatype.
dt.dma.sz = 16;
dt.dma.bin = 10;

% Output datatype.
dt.out.sz = 32;
dt.out.bin = 24;

% Setup NLF LUT-sizes.
ip.f_nlf.lut_addr_bits = 10;
ip.f_nlf.lut_sz = 2^ip.f_nlf.lut_addr_bits;

ip.int_scale_bits = floor(log2(1/(hw.t_s * hw.oversample)));
ip.int_dt_residual = (hw.t_s * hw.oversample) * 2^ip.int_scale_bits;

threehalf_dt = (3/2) * hw.t_s * hw.oversample;
ip.int_threehalf_dt_shift = floor(log2(1/threehalf_dt));
ip.int_threehalf_dt_residual = threehalf_dt * 2^ip.int_threehalf_dt_shift;

neghalf_dt = (1/2) * hw.t_s * hw.oversample;
ip.int_neghalf_dt_shift = ip.int_threehalf_dt_shift; % floor(log2(1/abs(neghalf_dt)));
ip.int_neghalf_dt_residual = neghalf_dt * 2^ip.int_neghalf_dt_shift;

%% AXI Address Space Setup

% AXI BUS A (0x8000_0000)
ip.offsets.led = hex2dec("0000");
ip.offsets.system_cfg = hex2dec("0010");
ip.offsets.input_mat_cfg = hex2dec("0040");
ip.offsets.output_mat_cfg = hex2dec("0080");
ip.offsets.slice0_cfg = hex2dec("0100");
ip.offsets.slice1_cfg = hex2dec("0140");
ip.offsets.slice2_cfg = hex2dec("0180");
ip.offsets.adc_nlf_cfg = hex2dec("01c0");

% AXI BUS B (0x8000_0200)
ip.offsets.calib = hex2dec("0000");
ip.offsets.nlf_switch = hex2dec("0040");

%% NLF LUT Address Space Setup
% Slice nonlinear functions.
ip.nlfaddr.slice0_u0 = hex2dec("00");
ip.nlfaddr.slice0_u1 = hex2dec("01");
ip.nlfaddr.slice0_x0 = hex2dec("02");
ip.nlfaddr.slice0_x1 = hex2dec("03");
ip.nlfaddr.slice0_xd0 = hex2dec("04");
ip.nlfaddr.slice0_xd1 = hex2dec("05");

ip.nlfaddr.slice1_u0 = hex2dec("10");
ip.nlfaddr.slice1_u1 = hex2dec("11");
ip.nlfaddr.slice1_x0 = hex2dec("12");
ip.nlfaddr.slice1_x1 = hex2dec("13");
ip.nlfaddr.slice1_xd0 = hex2dec("14");
ip.nlfaddr.slice1_xd1 = hex2dec("15");

ip.nlfaddr.slice2_u0 = hex2dec("20");
ip.nlfaddr.slice2_u1 = hex2dec("21");
ip.nlfaddr.slice2_x0 = hex2dec("22");
ip.nlfaddr.slice2_x1 = hex2dec("23");
ip.nlfaddr.slice2_xd0 = hex2dec("24");
ip.nlfaddr.slice2_xd1 = hex2dec("25");

% Output Matrix.
ip.nlfaddr.dac0_xx0 = hex2dec("30");
ip.nlfaddr.dac0_xx1 = hex2dec("31");
ip.nlfaddr.dac0_xx2 = hex2dec("32");
ip.nlfaddr.dac1_xx0 = hex2dec("33");
ip.nlfaddr.dac1_xx1 = hex2dec("34");
ip.nlfaddr.dac1_xx2 = hex2dec("35");

% Input Matrix.
ip.nlfaddr.adc0 = hex2dec("40");
ip.nlfaddr.adc1 = hex2dec("41");

%% Box-Muller Setup

% 12-bit LUT addresses.
P_V = 2.113788753330265e-10 * 1e-2; % Noise Variance.
sigma_rng = 0.5 * sqrt(P_V) * 0.9e4;

ip.rng.box_muller_lut_cos = zeros(2^12,1);
ip.rng.box_muller_lut_sin = zeros(2^12,1);
for addr = 0:2^12-1
    low = mod(addr, 2^6);
    high = floor(addr / 2^6);
    % u1 and u2 are box-distributed random variables between 0 and 1
    % We can just split the address, as each subvector of bits is
    % individually box-distributed for LFSR random generators.
    u1 = (low+1) / 2^6;
    u2 = (high+1) / 2^6;

    % Calculate according to box-muller
    bm_cos = sqrt(-2*log(u1)) * cos(2*pi*u2);
    bm_sin = sqrt(-2*log(u1)) * sin(2*pi*u2);

    ip.rng.box_muller_lut_cos(addr+1) = bm_cos;
    ip.rng.box_muller_lut_sin(addr+1) = bm_sin;
end

ip.rng.scaling_factor = sigma_rng;

%% Testing / example model

p.T0 = 293;                         % Heat bath temperature
p.m = 9.77e-18;                     % Particle mass [kg]
p.k_ap = 9.686367199937547e-06;     % Initial potential stiffness [N/m]
p.k_ip = -9.07067175478047e-07;     % Inverted potential stiffness [N/m]
p.C_el = 4697940.12339623;          % Electrical transduction coefficient [V/m]
p.C_f  = 6.17940000000000e-14;      % Feedback coefficient divided by mass [N/V] 
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

pot_poly = (p.sigma^2)*[ p.a/4, 0, -p.b/2, 0, 0 ];
force_func = @(x) p.alpha * x.^3 - p.beta * x;
rts = roots(pot_poly);
x_pot = linspace(1.2*min(rts), 1.2*max(rts),100);

if ENABLE_PLOTS
    figure
    hold on
    plot(x_pot, force_func(x_pot));
    yyaxis right
    plot(x_pot, polyval(pot_poly, x_pot));
    grid on
    hold off
end

% Scaling Value for xdd
%xdd_scale = sqrt(p.k_ap / p.m);
xdd_scale = 1; 

% Calculate NLF gain and prescaler values.
nlf_xrange = abs(rts(3) * 1.3);
nlf_presc = 1/nlf_xrange;
nlf_yrange = force_func(nlf_xrange);
nlf_gain = nlf_yrange;

% Calculate LUT values for NLF.
nlf_lut = zeros(ip.f_nlf.lut_sz, 1);
for addr = 0:(ip.f_nlf.lut_sz-1)
    idx = addr;
    if idx >= ip.f_nlf.lut_sz/2
        idx = idx - ip.f_nlf.lut_sz;
    end

    % Calculate x-value.
    value = idx / (ip.f_nlf.lut_sz/2) * nlf_xrange;

    % Calculate scaled y-value.
    nlf_lut(addr+1) = force_func(value) / nlf_yrange;
end

if ENABLE_PLOTS
    % Plot LUT values.
    lut_x = 0:(ip.f_nlf.lut_sz-1);
    figure
    plot(lut_x, nlf_lut);
end

% State renormalization coefficients.
% -> Non-inverted linearized model)
renorm_u = 0.9e4;
renorm_x = 1e6;
renorm_xd = 1e6;
% -> Inverted nonlinear model
renorm_u_nlin = 5e4;
renorm_x_nlin = 1e6;
renorm_xd_nlin = 1e6;

%% Setup Example Configuration

% Slice 0 (Not used at the moment)
cfg.slice0.x_mux = 0;
cfg.slice0.x_gain = 0;
cfg.slice0.x_nlf.presc = 0;
cfg.slice0.x_nlf.gain = 0;
cfg.slice0.x_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice0.xd_mux = 0;
cfg.slice0.xd_gain = 0;
cfg.slice0.xd_nlf.presc = 0;
cfg.slice0.xd_nlf.gain = 0;
cfg.slice0.xd_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice0.u_mux = 0;
cfg.slice0.u_gain = 0;
cfg.slice0.u_nlf.presc = 0;
cfg.slice0.u_nlf.gain = 0;
cfg.slice0.u_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice0.x_presc_bitshift = 0;
cfg.slice0.x_presc_mul = 0;
cfg.slice0.xd_presc_bitshift = 0;
cfg.slice0.xd_presc_mul = 0;

% MUX-Config: 0 = Use NLF, 1 = NLF bypass
cfg.slice1.u_mux = 1;
cfg.slice1.x_mux = 0;
cfg.slice1.xd_mux = 1;

x_scale = 1; %sqrt(p.k_ap / p.m);

% Gain Config: MUX output gain selector.
if cfg.slice1.x_mux == 1
    cfg.slice1.u_gain = (p.C_f / p.m) / renorm_u;
    cfg.slice1.x_gain = -(p.k_ap / p.m) / (renorm_x * renorm_xd);
    cfg.slice1.xd_gain = -p.Gamma / renorm_xd;
else
    cfg.slice1.u_gain = (p.C_f / p.m) / renorm_u_nlin;
    cfg.slice1.x_gain = -1;
    cfg.slice1.xd_gain = -p.Gamma / renorm_xd_nlin;
end

% NLF prescaler and output gain.
% Normalizes the input to the NLF LUT range (-1 to 1)
cfg.slice1.u_nlf.presc = 0;
cfg.slice1.u_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice1.u_nlf.gain = 0;

cfg.slice1.x_nlf.presc = nlf_presc * renorm_u_nlin / (renorm_x_nlin * renorm_xd_nlin);
cfg.slice1.x_nlf.lut = nlf_lut; %zeros(ip.f_nlf.lut_sz, 1);
cfg.slice1.x_nlf.gain = nlf_gain / renorm_u_nlin;

cfg.slice1.xd_nlf.presc = 0;
cfg.slice1.xd_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice1.xd_nlf.gain = 0;

% Prescaler value for xdot. Scales xdot so that the second
% integration stage works with roughly the same numerical range
% as the first.
cfg.slice1.xd_presc = renorm_xd_nlin;
cfg.slice1.x_presc = renorm_x_nlin;
cfg.slice1.xd_presc_bitshift = floor(log2(1/cfg.slice1.xd_presc));
cfg.slice1.xd_presc_mul = (cfg.slice1.xd_presc) * 2^cfg.slice1.xd_presc_bitshift;
cfg.slice1.x_presc_bitshift = floor(log2(1/cfg.slice1.x_presc));
cfg.slice1.x_presc_mul = (cfg.slice1.x_presc) * 2^cfg.slice1.x_presc_bitshift;

% Slice 2 (Not used at the moment)
cfg.slice2.x_mux = 0;
cfg.slice2.x_gain = 0;
cfg.slice2.x_nlf.presc = 0;
cfg.slice2.x_nlf.gain = 0;
cfg.slice2.x_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice2.xd_mux = 0;
cfg.slice2.xd_gain = 0;
cfg.slice2.xd_nlf.presc = 0;
cfg.slice2.xd_nlf.gain = 0;
cfg.slice2.xd_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice2.u_mux = 0;
cfg.slice2.u_gain = 0;
cfg.slice2.u_nlf.presc = 0;
cfg.slice2.u_nlf.gain = 0;
cfg.slice2.u_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.slice2.x_presc_bitshift = 0;
cfg.slice2.x_presc_mul = 0;
cfg.slice2.xd_presc_bitshift = 0;
cfg.slice2.xd_presc_mul = 0;

cfg.slice2 = cfg.slice1;

% Input Matrix Configuration
cfg.inp_mat.fac_u0_adc0 = 0; %10;
cfg.inp_mat.fac_u0_adc1 = 0;
cfg.inp_mat.fac_u0_noise = 0; %40;
cfg.inp_mat.fac_u1_adc0 = 1;
cfg.inp_mat.fac_u1_adc1 = 0;
cfg.inp_mat.fac_u1_noise = 0;
cfg.inp_mat.fac_u2_adc0 = 1;
cfg.inp_mat.fac_u2_adc1 = 0;
cfg.inp_mat.fac_u2_noise = 0;

% Output Matrix Configuration
cfg.out_mat.dac0_selx0 = 0;
cfg.out_mat.dac0_selx1 = 0;
cfg.out_mat.dac0_selx2 = 0;
cfg.out_mat.fac_dac0_xx0 = 0;
cfg.out_mat.fac_dac0_xx1 = 0.25;
cfg.out_mat.fac_dac0_xx2 = 0;
cfg.out_mat.dac1_selx0 = 0;
cfg.out_mat.dac1_selx1 = 0;
cfg.out_mat.dac1_selx2 = 0;
cfg.out_mat.fac_dac1_xx0 = 0;
cfg.out_mat.fac_dac1_xx1 = 0;
cfg.out_mat.fac_dac1_xx2 = 0.25;

cfg.out_mat.nlf_dac0_xx0.enabled = 0;
cfg.out_mat.nlf_dac0_xx0.presc = 0;
cfg.out_mat.nlf_dac0_xx0.gain = 0;
cfg.out_mat.nlf_dac0_xx0.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.out_mat.nlf_dac0_xx1.enabled = 0;
cfg.out_mat.nlf_dac0_xx1.presc = 0;
cfg.out_mat.nlf_dac0_xx1.gain = 0;
cfg.out_mat.nlf_dac0_xx1.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.out_mat.nlf_dac0_xx2.enabled = 0;
cfg.out_mat.nlf_dac0_xx2.presc = 0;
cfg.out_mat.nlf_dac0_xx2.gain = 0;
cfg.out_mat.nlf_dac0_xx2.lut = zeros(ip.f_nlf.lut_sz, 1);

cfg.out_mat.nlf_dac1_xx0.enabled = 0;
cfg.out_mat.nlf_dac1_xx0.presc = 0;
cfg.out_mat.nlf_dac1_xx0.gain = 0;
cfg.out_mat.nlf_dac1_xx0.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.out_mat.nlf_dac1_xx1.enabled = 0;
cfg.out_mat.nlf_dac1_xx1.presc = 0;
cfg.out_mat.nlf_dac1_xx1.gain = 0;
cfg.out_mat.nlf_dac1_xx1.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.out_mat.nlf_dac1_xx2.enabled = 0;
cfg.out_mat.nlf_dac1_xx2.presc = 0;
cfg.out_mat.nlf_dac1_xx2.gain = 0;
cfg.out_mat.nlf_dac1_xx2.lut = zeros(ip.f_nlf.lut_sz, 1);


% Noise prescaler values.
cfg.noise0_presc = sigma_rng;
cfg.noise1_presc = sigma_rng;
cfg.noise2_presc = sigma_rng;

% ADC channel input nonlinear functions.
cfg.adc0_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.adc0_nlf.gain = 0;
cfg.adc0_nlf.presc = 0;
cfg.adc0_nlf.enabled = 0;
cfg.adc1_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
cfg.adc1_nlf.gain = 0;
cfg.adc1_nlf.presc = 0;
cfg.adc1_nlf.enabled = 0;

% DAC channel output nonlinear functions.
%cfg.dac0_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
%cfg.dac0_nlf.gain = 0;
%cfg.dac0_nlf.presc = 0;
%cfg.dac0_nlf.enabled = 0;
%cfg.dac1_nlf.lut = zeros(ip.f_nlf.lut_sz, 1);
%cfg.dac1_nlf.gain = 0;
%cfg.dac1_nlf.presc = 0;
%cfg.dac1_nlf.enabled = 0;

