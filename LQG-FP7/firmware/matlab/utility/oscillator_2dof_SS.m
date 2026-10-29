function [H_out, SS_cl] = oscillator_2dof_SS(Gamma, Gamma_z, Omega, Omega_z, c_f, c_f_xz, c_meas, c_meas_xz, c_meas_z, c_meas_zx, m, sqrt_P_w, sqrt_P_wz, w, SS_fb, Td)
%2DOF_OSCILLATOR_TF Summary of this function goes here
%   Detailed explanation goes here

A1 = [0,            1,          0,        0;
      Omega^2, -Gamma,          0,        0;
      0,            0,          0,        1;
      0,            0, -Omega_z^2, -Gamma_z];

% A1 = [0,            1,          0,        0;
%       -Omega^2, -Gamma,          0,        0;
%       0,            0,          0,        1;
%       0,            0, -Omega_z^2, -Gamma_z];
B1 = [0;
      c_f/m;
      0;
      c_f_xz/m];
G1 = [0 0; 1/m 0; 0 0; 0 1/m];
G1 = [0; 1/m; 0; 1/m];
C1 = [c_meas,    0,    c_meas_xz, 0;
      c_meas_zx, 0,     c_meas_z, 0];

SS_delay = ss(tf([1],[1/(Td), 1]));
SS_delay = c2d(SS_delay, SS_fb.Ts);

SS_plant_wnoise = ss(A1,[B1, G1],C1,[]);
SS_plant_wnoise = c2d(SS_plant_wnoise, SS_fb.Ts,'zoh');

K_lqr = SS_fb.C;
kest_A = SS_fb.A;
kest_B = SS_fb.B;

n_x = size(A1,1);
n_y = size(C1,1);
n_d = size(SS_delay.A,1);

if Td ~= 0
    A_big = [SS_plant_wnoise.A,   -SS_plant_wnoise.B(:,1)*SS_delay.C  , zeros(n_x);
             zeros(n_d,n_x),    SS_delay.A,   SS_delay.B*K_lqr(1,:);
             kest_B(:,2:end)*C1, zeros(n_x,n_d) ,kest_A-kest_B(:,1)*K_lqr(1,:)];
    
    %B_big = [SS_plant_wnoise.B(1:2,2); SS_plant_wnoise.B(3:4,3); zeros(4,1)];
    B_big = [SS_plant_wnoise.B(1:4,2); zeros(n_d,1) ;zeros(4,1)];
    C_big = [SS_plant_wnoise.C, zeros(n_y,n_d), 0*SS_plant_wnoise.C];
else
    A_big = [SS_plant_wnoise.A,   -SS_plant_wnoise.B(:,1)*K_lqr(1,:);
             kest_B(:,2:end)*C1,  kest_A-kest_B(:,1)*K_lqr(1,:)];
    
    %B_big = [SS_plant_wnoise.B(1:2,2); SS_plant_wnoise.B(3:4,3); zeros(4,1)];
    B_big = [SS_plant_wnoise.B(1:4,2); zeros(4,1)];
    C_big = [SS_plant_wnoise.C, 0*SS_plant_wnoise.C];
end

if true
    SS_cl = ss(A_big, B_big, C_big, [], SS_fb.Ts);
    H = squeeze(freqresp(SS_cl, w,'rad/s'));
else
%     H = zeros(2, length(w));
%     z = exp(1i*w*SS_fb.Ts);
%     for i = 1:length(w)
%         %H(:,i) = C_big/(z(i)*eye(8) - A_big)*B_big;
%         H(:,i) = C_big*pinv(z(i)*eye(8) - A_big)*B_big;
%     end
end

H_out = H;
end

