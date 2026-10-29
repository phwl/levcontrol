close all, clear all
addpath './utility'
addpath './SysGenQuantumLib'
%%
%Sampling frequency of data-logging

%p.Fs = 125e6;
%p.Ts = 1/p.Fs;
p.Fs = 15.625e6;
p.Ts = 1/p.Fs;

Ts_log = p.Ts; 

p.kb = (1.38064852e-23);    %boltzman constant
p.hbar = (1.05457266e-34);  %planck constant
p.T0 = 293;                 %Heat bath temperature

%System paramters
p.m = 9.77e-18;             %Particle mass [kg]
p.beta_0 = 0.95*7.184973304597323e-19;
p.alpha_0 = 1.233840419069307e-18;
p.delta_0 = 7.5e-7;
p.dx_0_0 = 0;
p.dx_1_0 = 0;

pot_fun = @(x, dx_0_0, dx_1_0) (-p.alpha_0*exp((-2.*(dx_0_0-x).^2)./p.delta_0.^2)-...
                        4.*p.beta_0.*((x-dx_1_0)./p.delta_0).^2.*exp((-2*(x - dx_1_0).^2)/p.delta_0^2));
                    
dpot_fun = @(x, dx_0_0, dx_1_0) ((8.*p.beta_0.*exp((-2.*(dx_1_0 - x).^2)./p.delta_0^2).*(dx_1_0 - x))./p.delta_0^2 - ...
                (4.*p.alpha_0.*(dx_0_0-x).*exp(-(2.*(dx_0_0-x).^2)./p.delta_0^2))./p.delta_0^2 - ...
                (16*p.beta_0.*exp(-(2.*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^3)./p.delta_0^4);
            
ddpot_fun = @(x, dx_0_0, dx_1_0) -((8*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2))./p.delta_0^2 - ...
                (4*p.alpha_0.*exp(-(2*x.^2)/p.delta_0^2))./p.delta_0^2 - ...
                (80*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^2)/p.delta_0^4 + ...
                (64*p.beta_0.*exp(-(2*(dx_1_0 - x).^2)/p.delta_0^2).*(dx_1_0 - x).^4)/p.delta_0^6 + ...
                (16*p.alpha_0.*x.^2.*exp(-(2*x.^2)/p.delta_0^2))/p.delta_0^4);

p.k_ap = 1e-5;                 %Initial potential stiffness [N/m]
p.k_ip = -1.033e-6;              %Inverted potential stiffness [N/m]
p.k_ip = ddpot_fun(0,0,0);     %Inverted potential stiffness [N/m]
disp(p.k_ip)

p.C_el_x = 1/3.547887060700991e-07; %Electrical transduction coefficient [V/m]
p.C_el_z = 0.5*p.C_el_x; %Electrical transduction coefficient [V/m]
p.C_el_x = 2860488.004;
p.C_el_z = 1174486.261;

p.C_f  = -7.10249E-13;   %Feedback coefficient divided by mass [N/V] 
p.Q = 100;                  %Quality factor
p.Omega = sqrt(p.k_ap/p.m);          %Attractive potential nat. frequency
p.Omega = 208907.3076;
p.Omega_ip = sqrt(abs(p.k_ip/p.m));    %Inverted potential nat. frequency
p.Gamma = p.Omega/(p.Q);        %Damping
p.Gamma = 9962.006907;

p.Omega_z = 2*pi*35e3;
p.Omega_z = 300995.632;
p.Q_z = 50;
p.Gamma_z = p.Omega_z/p.Q_z;
p.Gamma_z = p.Gamma;

p.Omega_y = 2*pi*155e3;
p.Omega_y = 981100.1236;
p.Q_y = 200;
p.Gamma_y = p.Omega_y/p.Q_y;
p.Gamma_y = p.Gamma;

p.in_coupling_xz = -0.28;%0.25;
p.in_coupling_xy = -0.001;%0.25;
p.crosstalk_xz = 0.1;%0.02;
p.crosstalk_zx = 0.1;
p.crosstalk_xy = 0.20;
p.crosstalk_zy = 0.20;


p.C_el_xz = p.crosstalk_xz*p.C_el_x;
p.C_el_zx = p.crosstalk_zx*p.C_el_z;
p.C_el_xy = p.crosstalk_xy*p.C_el_x;
p.C_el_zy = p.crosstalk_zy*p.C_el_z;

p.C_el_xz = -2*597401.4621;
p.C_el_zx = -4*248843.567;
p.C_el_xy = -20*134727.2318;
p.C_el_zy = 5*912588.3416;

p.C_f_xz = p.in_coupling_xz*p.C_f;
p.C_f_zx = p.in_coupling_xz*p.C_f;
p.C_f_xy = p.in_coupling_xy*p.C_f;

p.C_f_xz = 3.01303E-13;
p.C_f_zx = 3.01303E-13;
p.C_f_xy = -0.001*p.C_f;

% Measurement efficiency constructor
% eff = (1/(m*x^4 + n) + p)
% x = 0: 1/n + p = max_eff, n = 1/(max_eff-min_eff)
% x = half_eff_x: (max_eff+min_eff)/2 = 1/(m*half_eff_x^4 + n) + p
%   1/(m*half_eff_x^4 + n) = (max_eff+min_eff)/2 - p            
%   (m*half_eff_x^4 + n) = 1/((max_eff+min_eff)/2 - p)
%   m = (1/((max_eff+min_eff)/2 - p) - n)/half_eff_x^4
max_eff = 1;
min_eff = 0;
half_eff_x = 0.9; 
wrap_eff_x = 2;

eff_p = min_eff;
eff_n = 1/(max_eff-min_eff);
eff_m = (1/((max_eff+min_eff)/2 - eff_p) - eff_n)/half_eff_x^4;
eff_w = acos(0)/wrap_eff_x^2 +2*pi*0/wrap_eff_x^2;

eff_fun = @(V) cos(eff_w.*V.^2)./(eff_m*V.^4 + eff_n) + eff_p; 

%Noise
f_W = p.Fs;           % Frequency of the process noise for discrete simulation [Hz]
P_W = 2*p.m*p.Gamma*p.kb*p.T0;    % Power spectral density of the process noise [N^2/Hz]
P_W = 1.575280962040418e-33;
P_W = 4.08354E-34;
f_V = p.Fs;           % Frequency of the measurement noise for discrete simulation [Hz]
P_V = 1.829584628828797e-11; %0*sqrt(Ts_log);   % Variance of the measurement noise [V^2]
P_V_x = P_V;
P_V_z = P_V*2;

P_V_x = 2.96024E-12
P_V_z = 8.53459E-11;

x_pot = linspace(-500e-9, 500e-9,100);

figure
tiledlayout(1,2)
nexttile
plot(x_pot,pot_fun(x_pot,0,0)./(p.kb*p.T0));
% hold on
% plot(x_pot,polyval(pot_harm,x_pot)./(p.kb*p.T0));

yyaxis right
plot(x_pot,dpot_fun(x_pot,0,0)./(p.kb*p.T0));
% plot(x_pot,polyval(dpot_harm, x_pot)./(p.kb*p.T0));
legend('U(x)', 'dU/dx(x)')
grid on

nexttile
plot(x_pot*p.C_el_x,pot_fun(x_pot,0,0)./(p.kb*p.T0));
yyaxis right
plot(x_pot*p.C_el_x, eff_fun(x_pot*p.C_el_x));
legend('U(x)', 'Meas. eff.')
grid on

x_0 = 0;

%Init fo process_noise_eval.slx
% Fb_delay = 1/125e6; %Transport delay for feedback

%Init fo process_noise_eval_w_KF.slx
Fb_en = 0;          %Enable feedback for model with Kalman Filter
Fb_en_KF = 0;       %Enable feedback input into the Kalman Filter
gain_x1 = 0;        %Gain for displacement estimate
gain_x2 = 0;        %Gain for velocity estimate

% Continuous time model init
A1 = [0,                  1,  0, 0,   0, 0;
      -p.k_ap/p.m, -p.Gamma,  0, 0,   0, 0;
      0, 0,            0,          1, 0, 0;
      0, 0, -p.Omega_z^2, -p.Gamma_z, 0, 0;
      0, 0, 0, 0,            0,          1;
      0, 0, 0, 0, -p.Omega_y^2, -p.Gamma_y];

A2 = [0,                  1,  0, 0,   0, 0;
      0,           -p.Gamma,  0, 0,   0, 0;
      0, 0,            0,          1, 0, 0;
      0, 0, -p.Omega_z^2, -p.Gamma_z, 0, 0;
      0, 0, 0, 0,            0,          1;
      0, 0, 0, 0, -p.Omega_y^2, -p.Gamma_y];

B1 = [0; p.C_f/p.m; 0; p.C_f_xz/p.m; 0; p.C_f_xy/p.m;];    %Input matrix for feedback
G1 = [0 0 0; 1/p.m 0 0; 0 0 0; 0 1/p.m 0; 0 0 0; 0 0 1/p.m];        %Input matrix for process noise
C1 = p.C_el_x*[1 0; 0 1];       %Measurement matrix
C1 = [p.C_el_x, 0, p.crosstalk_xz*p.C_el_x, 0; 0 p.C_el_x, 0, 0];

C1 = [p.C_el_x,  0,         p.C_el_xz,    0, p.C_el_xy, 0;...
      0,         p.C_el_x,          0,    0,         0, 0;...
      p.C_el_zx,        0,   p.C_el_z,    0,    p.C_el_zy, 0];
D1 = zeros(size(C1,1),size(B1,2));   %Direct feedthrough matrix
sys1 = ss(A1,B1,C1,D1);     %Reference continous system

% Simulation
T_max = 4000*2*pi/p.Omega;   %Simulation time [s]
t_on = 0*2*T_max*0.01;
t_off = 2*T_max +(t_on + 100*(2*pi/abs(p.Omega_ip)));




%% Setup Kalman filter
%k.f_samp = 31.25e6;           %Sampling frequency for discrete KF
%k.Ts = 1/k.f_samp;
k.f_samp = 15.625e6;
k.Ts = 1/k.f_samp;
k.nTau = 7;
k.Tau = k.Ts*k.nTau;
k.nTauFb = 12;
k.TauFb = k.Ts*k.nTauFb;

RP.base_ts = 1/125e6;
RP.state_bits = 18;
RP.state_bin = 15;
RP.hw_bits = 14;
RP.hw_bin = 13;
RP.c_bits = 25;
RP.c_bin = 16;
RP.mult_res_bits = 25;
RP.mult_res_bin = 16;
RP.add_bits_pad = RP.c_bits + 1;
RP.add_bin_pad = RP.c_bin + 1;

if true
    RP.state_bits = 25;
    RP.state_bin = 20;
    RP.hw_bits = 14;
    RP.hw_bin = 13;
    RP.c_bits = 25;
    RP.c_bin = 16;
    RP.mult_res_bits = 25;
    RP.mult_res_bin = 16;
    RP.add_bits_pad = RP.c_bits + 1;
    RP.add_bin_pad = RP.c_bin + 1;
end

if true
    RP.state_bits = 30;
    RP.state_bin = 25;
    RP.hw_bits = 14;
    RP.hw_bin = 13;
    RP.c_bits = 25;
    RP.c_bin = 16;
    RP.mult_res_bits = 30;
    RP.mult_res_bin = 19;
    RP.add_bits_pad = RP.c_bits + 2;
    RP.add_bin_pad = RP.c_bin + 2;
end

RP.stage_1_latency = 0;
RP.stage_2_latency = 0;
RP.stage_3_latency = 0;
RP.downsamp_lat = 1;
RP.downsamp_num = 4;
RP.upsamp_lat = 1;
RP.upsamp_num = RP.downsamp_num;
RP.noise_downsamp_num = 64;

RP.pulse_timer_bits = 32;
RP.TMR_base_ofst = hex2dec('0x50');
RP.BFC_base_ofst = hex2dec('0x400'); 
RP.KF_AP_store_base_ofst = hex2dec('0x100');
RP.KF_IP_store_base_ofst = hex2dec('0x200');
k.paramStates = 2;

%Construct state-space model

k.Omega = p.Omega;
k.Omega_ip = 1.2*p.Omega_ip;
k.Omega_ip = 2.425873757621331e+05;
k.Omega_z = p.Omega_z;
k.Omega_z = 292710.533882968;
k.Omega_y = p.Omega_y;
k.Omega_y = 9.966388534248259e+05;
k.Gamma = p.Gamma;
k.Gamma = 5.045546025158906e+03;
k.Gamma_z = p.Gamma_z;
k.Gamma_z = 5.167143505302827e+03;
k.Gamma_y = p.Gamma_y;
k.Gamma_y = 5.167143505302827e+03;
k.C_f = p.C_f;
k.C_f = -5.225946679037064e-13;
k.C_f_xz = p.C_f*p.in_coupling_xz;
k.C_f_xz = 1.463300000000000e-13;
k.C_f_xy = 0*p.C_f*p.in_coupling_xy;
k.C_f_xy = 0;

k.use_z_ax = true;
k.use_y_ax = false;
k.use_x_tip = false;
k.use_z_detection = true;
k.use_integrator = false;

if k.use_y_ax == true
    k.A1 = [0,         k.Omega,          0,           0,          0,          0;
            -k.Omega, -k.Gamma,          0,           0,          0,          0;
            0,               0,          0,   k.Omega_z,          0,          0;
            0,               0, -k.Omega_z,  -k.Gamma_z,          0,          0;
            0,               0,          0,           0,          0,  k.Omega_y;
            0,               0,          0,           0, -k.Omega_y, -k.Gamma_y];

    k.B1 = [0; k.C_f*p.C_el_x/(k.Omega*p.m);
            0; k.C_f_xz*p.C_el_x/(k.Omega_z*p.m);
            0; k.C_f_xy*p.C_el_x/(k.Omega_y*p.m)];
        
    k.G1 = [0 0 0;
            p.C_el_x/(p.m*k.Omega) 0 0;
            0 0 0;
            0 p.C_el_x/(p.m*k.Omega_z) 0;
            0 0 0;
            0 0 p.C_el_x/(p.m*k.Omega_y)];

    k.C1 = [1,          0,  p.C_el_xz/p.C_el_x,   0,  p.C_el_xy/p.C_el_x,    0;...
            p.C_el_zx/p.C_el_x,   0,    p.C_el_z/p.C_el_x,   0,  p.C_el_zy/p.C_el_x, 0];

    

    k.A_ip = [0,         k.Omega_ip,          0,           0,          0,          0;
              k.Omega_ip,  -k.Gamma,          0,           0,          0,          0;
              0,                  0,          0,   k.Omega_z,          0,          0;
              0,                  0, -k.Omega_z,  -k.Gamma_z,          0,          0;
              0,                  0,          0,           0,          0,  k.Omega_y;
              0,                  0,          0,           0, -k.Omega_y, -k.Gamma_y];
          
    k.B_ip = [0; k.C_f*p.C_el_x/(k.Omega_ip*p.m);
              0; k.C_f_xz*p.C_el_x/(k.Omega_z*p.m);
              0; k.C_f_xy*p.C_el_x/(k.Omega_y*p.m)];
          
    k.G_ip = [0 0 0;
              p.C_el_x/(p.m*k.Omega_ip) 0 0;
              0 0 0;
              0 p.C_el_x/(p.m*k.Omega_z) 0;
              0 0 0;
              0 0 p.C_el_x/(p.m*k.Omega_y)];
    
    
    
    k.R = diag([P_V_x, P_V_z])*k.f_samp;
    k.Q_kf = P_W*k.f_samp*diag([1 1 1]);
    
    clqr.fbGain = 3e-7;
    clqr.Q = diag([(k.Omega)^2/2, 1/2, (k.Omega_z)^2/2, 1/2, 0*(k.Omega_y)^2, 0*1/2]);    
    clqr.R = 1/((clqr.fbGain)^2);
    
    clqr.fbGain_ip = 1e-6;
    clqr.Q_ip = diag([(k.Omega_ip)^2/2, k.Omega_ip, (k.Omega_z)^2/2, k.Omega_z, 0*(k.Omega_y)^2, 0*1/2]);    
    clqr.R_ip = 1/((clqr.fbGain_ip)^2);
    
    nx = 6;      
    if k.use_x_tip == true
        k.A1 = blkdiag(k.A1, 0);
        k.A1(2,end) = k.Omega;
        k.B1 = [k.B1; 0];
        k.G1 = blkdiag(k.G1, p.C_el_x);
        k.C1 = [k.C1, zeros(2,1)];
        
        k.A_ip = blkdiag(k.A_ip, 0);
        k.A_ip(2,end) = -k.Omega_ip;
        k.B_ip = [k.B_ip; 0];
        k.G_ip = blkdiag(k.G_ip, p.C_el_x);
        
        k.Q_kf = blkdiag(k.Q_kf, 1e-6);
        
        nx = 7;
    end
    
    k.D1 = zeros(size(k.C1,1),size(k.B1,2));

    k.H = k.C1;
    
    %k.Gd = inv(k.A1)*(k.A1 - eye(nx))*k.G1; %Discretize process noise input matrix
    %k.Bd_ip = (expm(k.A_ip*k.Ts) - eye(nx))/k.A_ip*k.B_ip;
    %k.Gd_ip = (expm(k.A_ip*k.Ts) - eye(nx))/k.A_ip*k.G_ip;

elseif k.use_z_ax == true
    k.A1 = [0,         k.Omega,          0,           0;
            -k.Omega, -k.Gamma,          0,           0;
            0,               0,          0,   k.Omega_z;
            0,               0, -k.Omega_z,  -k.Gamma_z];

    k.B1 = [0; k.C_f*p.C_el_x/(k.Omega*p.m); 0; k.C_f_xz*p.C_el_x/(k.Omega_z*p.m)];
    k.G1 = [0 0; p.C_el_x/(p.m*k.Omega) 0; 0 0; 0 p.C_el_x/(p.m*k.Omega_z)];
    k.C1 = [1,          0,  p.C_el_xz/p.C_el_x,   0;... 
            0,          k.Omega,                           0,   0;...
            p.C_el_z*p.crosstalk_zx/p.C_el_x,   0,         p.C_el_z/p.C_el_x,   0];

    k.C1 = [1,          0,  p.C_el_xz/p.C_el_x,   0;...
            p.C_el_xz/p.C_el_x,   0,    p.C_el_z/p.C_el_x,   0];

    k.D1 = zeros(size(k.C1,1),size(k.B1,2));

    %k.Gd = inv(k.A1)*(k.A1 - eye(4))*k.G1; %Discretize process noise input matrix

    k.A_ip = [0,       k.Omega_ip,               0,           0;
             k.Omega_ip, -k.Gamma,               0,           0;
            0,                  0,               0,   k.Omega_z;
            0,                  0,      -k.Omega_z,  -k.Gamma_z];
    k.B_ip = [0; k.C_f*p.C_el_x/(k.Omega_ip*p.m); 0; k.C_f_xz*p.C_el_x/(k.Omega_z*p.m)];
    k.G_ip = [0 0; p.C_el_x/(p.m*k.Omega_ip) 0; 0 0; 0 p.C_el_x/(p.m*k.Omega_z)];
    %k.Bd_ip = (expm(k.A_ip*k.Ts) - eye(4))/k.A_ip*k.B_ip;
    %k.Gd_ip = (expm(k.A_ip*k.Ts) - eye(4))/k.A_ip*k.G_ip;

    k.H = k.C1;
    
    k.R = P_V*k.f_samp/2*2;
    k.Q_kf = P_W*k.f_samp/2*2*diag([1 1]);
    
    clqr.fbGain = 3e-7;
    clqr.Q = diag([(k.Omega)^2/2, 1/2, (k.Omega_z)^2/2, 1/2]);    
    clqr.R = 1/((clqr.fbGain)^2);
    
    clqr.fbGain_ip = 1e-6;
    clqr.Q_ip = diag([(k.Omega_ip)^2/2, k.Omega_ip, (k.Omega_z)^2/2, k.Omega_z]);    
    clqr.R_ip = 1/((clqr.fbGain_ip)^2);
else
    k.A1 = [0,            k.Omega;
            -k.Omega,    -k.Gamma];

    k.B1 = [0; k.C_f*p.C_el_x/(k.Omega*p.m)];
    k.G1 = [0; p.C_el_x/(p.m*k.Omega)];

    k.C1 = [1, 0];

    k.D1 = zeros(size(k.C1,1),size(k.B1,2));

    %k.Gd = inv(k.A1)*(k.A1 - eye(2))*k.G1; %Discretize process noise input matrix

    k.A_ip = [0,       k.Omega_ip;
             k.Omega_ip, -k.Gamma];
    k.B_ip = [0; k.C_f*p.C_el_x/(k.Omega_ip*p.m)];
    k.G_ip = [0; p.C_el_x/(p.m*k.Omega_ip)];
    %k.Bd_ip = (expm(k.A_ip*k.Ts) - eye(2))/k.A_ip*k.B_ip;
    %k.Gd_ip = (expm(k.A_ip*k.Ts) - eye(2))/k.A_ip*k.G_ip;
    
    
    k.R = P_V*k.f_samp/2*2;
    k.Q_kf = P_W*k.f_samp/2*2;
    
    clqr.fbGain = 3e-7;
    clqr.Q = diag([(k.Omega)^2/2, k.Omega/2]);    
    clqr.R = 1/((clqr.fbGain)^2);
    
    clqr.fbGain_ip = 1e-6;
    clqr.Q_ip = diag([(k.Omega_ip)^2/2, k.Omega_ip]);    
    clqr.R_ip = 1/((clqr.fbGain_ip)^2);
end

k.n_x = size(k.A1,1);
k.n_u = size(k.B1,2);
%k.n_u = 2;
k.n_y = size(k.C1,1);

k.D1 = zeros(size(k.C1,1),size([k.G1 k.B1],2));
%Harmonic pot
k.sysc_ap = ss(k.A1,[k.B1 k.G1],k.C1,k.D1);
k.sysd_ap = c2d(k.sysc_ap, 1/k.f_samp);  %Discretization for Kalman filter

%Inverted pot
k.sysc_ip = ss(k.A_ip,[k.B_ip k.G_ip],k.C1,k.D1);
k.sysd_ip = c2d(k.sysc_ip, 1/k.f_samp);  %Discretization for Kalman filter

%Get integrator
if k.use_integrator
    mat_idxs = 1:(k.n_x-mod(k.n_x,2));
    k.C_ui = 1e3;
    k.Q_ui = 1e13;
    K_temp = lqrd(blkdiag(k.A1(mat_idxs,mat_idxs),0),[k.B1(mat_idxs);k.C_ui],blkdiag(clqr.Q,k.Q_ui),clqr.R,k.Ts); 
    k.K_ui = -K_temp(end);
    k.ui_enb = 1;
else
    k.ui_enb = 0;
    k.C_ui = 1;
    k.K_ui = 0;
end

disp(k.K_ui)

%Kalman gain calculation
if mod(k.n_x,2) ~= 0 
    [clqr.Kc,clqr.S,~] = lqrd(k.A1(1:end-1,1:end-1),k.B1(1:end-1,:),clqr.Q,clqr.R,k.Ts);     
    %clqr.Kc = -clqr.Kc; 
    clqr.Kc = [clqr.Kc, -clqr.Kc(1)];
    disp(clqr.Kc)

    [clqr.Kc_ip,~,~] = lqrd(k.A_ip(1:end-1,1:end-1),k.B_ip(1:end-1,:),clqr.Q_ip,clqr.R_ip,k.Ts);
    %clqr.Kc_ip = -clqr.Kc_ip;
    clqr.Kc_ip = [clqr.Kc_ip, -clqr.Kc_ip(1)];
    disp(clqr.Kc_ip)
else
    [clqr.Kc,clqr.S,~] = lqrd(k.A1,k.B1,clqr.Q,clqr.R,k.Ts);     
    %clqr.Kc = -clqr.Kc; 
    disp(clqr.Kc)

    [clqr.Kc_ip,~,~] = lqrd(k.A_ip,k.B_ip,clqr.Q_ip,clqr.R_ip,k.Ts);
    %clqr.Kc_ip = -clqr.Kc_ip;
    disp(clqr.Kc_ip)
end

[kest, L, P] = kalman(k.sysd_ap, k.Q_kf, k.R,0,'delayed');
k.sysLQG = lqgreg(kest,clqr.Kc);

[kest_ip, L, P] = kalman(k.sysd_ip, k.Q_kf, k.R,0,'delayed');
k.sysLQG_ip = lqgreg(kest_ip,clqr.Kc_ip);

clqr.Kc = -clqr.Kc;
clqr.Kc_ip = -clqr.Kc_ip;

if true
    % Use actual feedback signal
    k.L = kest.B(:,2:end);
    k.Bd = kest.B(:,1);
    k.F = kest.A;
    
    k.L_ip = kest_ip.B(:,2:end);
    k.Bd_ip = kest_ip.B(:,1);
    k.F_ip = kest_ip.A;
else
    k.L = k.sysLQG.B;
    k.Bd = 0*kest.B(:,1);
    k.F = k.sysLQG.A;
    
    % Use closed loop filter
    k.L_ip = k.sysLQG_ip.B;
    k.Bd_ip = 0*kest_ip.B(:,1);
    k.F_ip = k.sysLQG_ip.A;
end

k.F = padarray(k.F, [7-k.n_x, 7-k.n_x],0,'post');
k.L = padarray(k.L, [7-k.n_x, 2-k.n_y],0,'post');
k.Bd = padarray(k.Bd, [7-k.n_x, 2-k.n_u],0,'post');

k.F_ip = padarray(k.F_ip, [7-k.n_x, 7-k.n_x],0,'post');
k.L_ip = padarray(k.L_ip, [7-k.n_x, 2-k.n_y],0,'post');
k.Bd_ip = padarray(k.Bd_ip, [7-k.n_x, 2-k.n_u],0,'post');

clqr.Kc = padarray(clqr.Kc, [2-k.n_u, 7-k.n_x],0,'post');
clqr.Kc_ip = padarray(clqr.Kc_ip, [2-k.n_u, 7-k.n_x],0,'post');

k.n_x = size(k.F,1);
k.n_u = size(k.Bd,2);
%k.n_u = 2;
k.n_y = size(k.L,2);

%% Barrier


y_max = 0.2;
p_br = 2;
m_br = p_br-1;
u_max = 1;
u_min = -1;
x_2_max = 1e-2;
x_max = 0.175;
yd_max = 0.1;

K_1 = 2e4;
K_2 = 2e6;
k_p = 0.0001; %0.01
k_b1 = (x_max-yd_max)/(p.C_el_x);

RAM_addrs_width = 10;
N_x = 2^RAM_addrs_width;

z1_vec = linspace(-k_b1, k_b1, N_x);

C0_vec = zeros(N_x,1);
C0_vec_lqr = zeros(N_x,1);
C1_vec = zeros(N_x,1);
C_dx = -(p.m*p.Omega_ip^2)/(k.C_f*p.C_el_x); %*(x_1 - x_tip)
C_idx = (N_x-1)/(p.C_el_x*2*k_b1);
Ofst_idx = floor((N_x-1)/2);

idx_vec = round(linspace(-k_b1, k_b1, 4*N_x)*p.C_el_x*round(C_idx) + Ofst_idx);


for i = 1:N_x
    z1 = z1_vec(i)/p.C_el_x;
    f_u_c0 = -(k_p*z1_vec(i)^(p_br - 1)/(k_b1^p_br - z1_vec(i)^p_br) + K_1*K_2*z1_vec(i)^m_br*(k_b1^p_br - z1_vec(i)^p_br))/(k.C_f/p.m);
    f_u_c0 = f_u_c0 + C_dx.*z1_vec(i)*p.C_el_x;
    f_u_c1 = (p.Gamma - K_2 + K_1*z1_vec(i)^(m_br + p_br - 1)*(m_br + p_br) - K_1*k_b1^p_br*m_br*z1_vec(i)^(m_br - 1))/(k.C_f/p.m);
    C0_vec(i) = min([max([f_u_c0, 3*u_min]), 3*u_max]);
    C0_vec_lqr(i) = clqr.Kc_ip(1)*p.C_el_x*z1_vec(i);
    %% Figure out scaling! 
    C1_vec(i) = f_u_c1*p.Omega_ip/p.C_el_x;
end

tiledlayout(1,2)
nexttile
%plot(z1_vec, C0_vec + C_dx.*z1_vec'*p.C_el)
plot(z1_vec, C0_vec,'-r')
hold on
plot(z1_vec, C0_vec_lqr,'b-')
xlim(z1_vec([1 end]))
xlabel('Reference error [m]')
ylabel('Control output [V]')
grid on
legend('BFC', 'LQR')
nexttile
plot(z1_vec, C1_vec)
xlim(z1_vec([1 end]))
xlabel('Reference error [m]')
ylabel('dx1 coefficient [V.s/m]')
grid on

%% Johannes: Export Model

kalman_model.F = k.F;
kalman_model.L = k.L;
kalman_model.Gamma = k.Bd;
kalman_model.K = clqr.Kc;

kalman_model.p = p;
kalman_model.m.A = A1;
kalman_model.m.B = B1;
kalman_model.m.C = C1;
kalman_model.m.G = G1;
kalman_model.m.P_W = P_W;

save("kalman_model.mat", "kalman_model");

return

%%

out = sim('three_axis_plant_ver_barrier.slx') %Simulate sysem

%% Process simulation output
Fs = k.f_samp;

%k.nTau = 0;

x_sig = out.simout.signals.values(:,1);     %True displacement signal
xn_sig = out.simout.signals.values(:,2);    %Noisy displacement signal
xk_sig = circshift(out.simout.signals.values(:,3),-(0*k.nTau+0));    %Noisy displacement signal
xk2_sig = circshift(out.simout.signals.values(:,4),-(0*k.nTau+0));    %Noisy displacement signal
dx_sig = out.simout.signals.values(:,5);    %True velocity signal
dxk_sig = out.simout.signals.values(:,6);    %True velocity signal
dxk2_sig = out.simout.signals.values(:,7);    %True velocity signal
V_sig = out.simout.signals.values(:,8);     %Measurement noise signal
W_sig = out.simout.signals.values(:,9);     %Measurement noise signal
fb_sig = out.simout.signals.values(:,12);     %Measurement noise signal
z_sig = out.simout.signals.values(:,13);     %True displacement signal
zn_sig = out.simout.signals.values(:,14);     %True displacement signal
xk3_sig = circshift(out.simout.signals.values(:,15),-(0*k.nTau+0));
xk5_sig = circshift(out.simout.signals.values(:,16),-(0*k.nTau+0));
e_sig  = xn_sig-[xk_sig, xk3_sig, xk5_sig]*C1(1,[1, 3, 5])';
e2_sig = zn_sig-[xk_sig, xk3_sig, xk5_sig]*C1(2,[1, 3, 5])';

idcs = 2000:5000;
plot(idcs,xn_sig(idcs+0),'k-',idcs,xk_sig(idcs),'r-')

% N_x = 100;
% x_a = -4; %Left bound of X space
% x_b = -x_a; %Right bound of X space
% edges_x = [-inf, linspace(x_a,x_b,N_x-1), inf];
% 
% figure
% histogram(x_sig)

fft_avg = 2;           %Number of averages for FFT

fft_L = floor(length(x_sig)/fft_avg);
fft_L = fft_L + mod(fft_L,2);               %FFT length according to Bartlett method

%Obtaind PSD estimates from simulation
PSD_x = averaged_psd(x_sig, Fs, fft_avg, fft_L); 
PSD_xn = averaged_psd(xn_sig, Fs, fft_avg, fft_L); 
PSD_xk = averaged_psd(xk_sig, Fs, fft_avg, fft_L); 
PSD_xk2 = averaged_psd(xk2_sig, Fs, fft_avg, fft_L); 
PSD_dx = averaged_psd(dx_sig, Fs, fft_avg, fft_L);
PSD_dxk = averaged_psd(dxk_sig, Fs, fft_avg, fft_L);
PSD_dxk2 = averaged_psd(dxk2_sig, Fs, fft_avg, fft_L);
PSD_V = averaged_psd(V_sig, Fs, fft_avg, fft_L); 
PSD_e = averaged_psd(e_sig, Fs, fft_avg, fft_L);
PSD_e2 = averaged_psd(e2_sig, Fs, fft_avg, fft_L);
PSD_fb = averaged_psd(fb_sig, Fs, fft_avg, fft_L);

f = Fs*(0:(fft_L/2))/fft_L; %Frequency vector

idxs = round(logspace(log10(1),log10(length(f)),1000));

idx_snr = find(PSD_x < 4*P_V,1,'first');

if isempty(idx_snr)
    idx_snr = length(PSD_x);
end
PSD_int = trapz(f(1:idx_snr),PSD_x(1:idx_snr))

fb_corr = (k.C_f*p.C_el_x/(p.Omega_ip*p.m));

% [FIT, D_out] = fit_fullstate(PSD_x, f,...
%     [P_W*(p.C_el/(p.m))^2, k.Omega_ip^2, k.Gamma^2, P_V], ...
%     [-(p.C_f/p.m)^2*clqr.Kc_ip(2),1,P_V,-(p.C_f/p.m)*clqr.Kc_ip(1)],...
%     0.00001, 2); %g_w = 0.0001
% PSD_x_orig = 2*FIT.psd;
% 
% PSD_x_orig2 = 2*oscillator_fullstate_TF(2*pi*f, k.Omega_ip, k.Gamma,...
%     P_W*(p.C_el/(p.m))^2, 0,...
%     fb_corr*clqr.Kc_ip(2), fb_corr*clqr.Kc_ip(1),...
%     0*(k.Tau+k.TauFb), P_V);

%Plotting spectra
figure();
tiledlayout(3,1)
nexttile
loglog(f(idxs),PSD_x(idxs), 'k-','LineWidth',2)
hold on
loglog(f(idxs),PSD_xn(idxs),'b-');
loglog(f(idxs),PSD_xk(idxs), 'r-');
loglog(f(idxs),PSD_xk2(idxs), 'g-');
yline(4*P_V,'r--');
xline(f(idx_snr),'r--');
% loglog(f(idxs), PSD_x_orig(idxs), 'k--');
% loglog(f(idxs), PSD_x_orig2(idxs), 'r--');
%loglog(f,20*PSD_dx, 'g.');
xlim([f(2), f(idxs(end))])
grid on
ax = gca;
ax.TickLabelInterpreter = 'latex';
%title('Power Spectral density of S(t)','Interpreter','latex')
xlabel('Frequency [Hz]','Interpreter','latex')
ylabel('Power spectral density [dB/Hz]','Interpreter','latex')
legend('Ref','Ref+noise','KF','KF2','FIT', 'Analytic','Interpreter','latex')
% 
% subplot(3,1,2)
% loglog(f(idxs),PSD_dx(idxs), 'k-')
% hold on
% loglog(f(idxs),PSD_dxk(idxs),'r-');
% loglog(f(idxs),PSD_dxk2(idxs),'g-');
% xlim([f(2), f(idxs(end))])
% grid on
% ax = gca;
% ax.TickLabelInterpreter = 'latex';
% %title('Power Spectral density of S(t)','Interpreter','latex')
% xlabel('Frequency [Hz]','Interpreter','latex')
% ylabel('Power spectral density [dB/Hz]','Interpreter','latex')
% legend('Ref','KF','KF2','Interpreter','latex')

nexttile
loglog(f(idxs),PSD_fb(idxs),'b-')
xlim([f(2), f(idxs(end))])
grid on

nexttile
loglog(f(idxs),PSD_V(idxs), 'k-')
hold on
loglog(f(idxs),PSD_e(idxs),'r-');
%loglog(f(idxs), PSD_e2(idxs),'b-');
xlim([f(2), f(idxs(end))])
grid on
ax = gca;
ax.TickLabelInterpreter = 'latex';
%title('Power Spectral density of S(t)','Interpreter','latex')
xlabel('Frequency [Hz]','Interpreter','latex')
ylabel('Power spectral density [dB/Hz]','Interpreter','latex')
legend('Meas. noise','Innovation seq. RP','Innovation seq. ref','Interpreter','latex')

%set(gcf,'Position',[100 100 600 300]) 


