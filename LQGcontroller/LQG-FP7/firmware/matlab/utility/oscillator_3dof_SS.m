function [H_out, SS_cl] = oscillator_3dof_SS(Gamma, Gamma_z, Gamma_y, Omega, Omega_z, Omega_y, c_f, c_f_xz, c_f_xy, c_meas, c_meas_xz, c_meas_xy, c_meas_z, c_meas_zx, c_meas_zy, m, sqrt_P_w, sqrt_P_wz, sqrt_P_wy, w, SS_fb, Td)
%2DOF_OSCILLATOR_TF Summary of this function goes here
%   Detailed explanation goes here

A1 = [0,            1,          0,        0, 0, 0;
      Omega^2, -Gamma,          0,        0, 0, 0;
      0,            0,          0,        1, 0, 0;
      0,            0, -Omega_z^2, -Gamma_z, 0, 0;
      0,            0, 0, 0,          0,        1;
      0,            0, 0, 0, -Omega_y^2, -Gamma_y];

% A1 = [0,            1,          0,        0;
%       -Omega^2, -Gamma,          0,        0;
%       0,            0,          0,        1;
%       0,            0, -Omega_z^2, -Gamma_z];
B1 = [0;
      c_f/m;
      0;
      c_f_xz/m;
      0;
      c_f_xy/m];
G1 = [0 0; 1/m 0; 0 0; 0 1/m];
G1 = [0; 1/m; 0; 1/m; 0; 1/m];
G1 = [0; sqrt_P_w/m; 0; sqrt_P_wz/m; 0; sqrt_P_wy/m];
G1 = [0 0 0;...
      sqrt_P_w/m 0 0;...
      0 0 0;...
      0 sqrt_P_wz/m 0;...
      0 0 0;...
      0 0 sqrt_P_wy/m];
C1 = [c_meas,    0,    c_meas_xz, 0, c_meas_xy, 0;
      c_meas_zx, 0,     c_meas_z, 0, c_meas_zy, 0];
Td = abs(Td);
Ts = SS_fb.Ts;

if Td > Ts
    SS_delay = ss(tf([1],[1/(Td), 1]));
    [num,den] = pade(Td,4);
    SS_delay = ss(tf(num,den));
    SS_delay = c2d(SS_delay, SS_fb.Ts);
    Td_samp = round(Td/SS_fb.Ts);

    Ad = diag(ones(Td_samp-1,1),1);
    Bd = [zeros(Td_samp-1,1); 1];
    Cd = [1, zeros(1, Td_samp-1)];
    SS_delay = ss(Ad,Bd,Cd,0,SS_fb.Ts);
    n_d = size(SS_delay.A,1);
end

SS_plant_wnoise = ss(A1,[B1, G1],C1,[]);
SS_plant_wnoise = c2d(SS_plant_wnoise, SS_fb.Ts,'zoh');

K_lqr = SS_fb.C;
kest_A = SS_fb.A;
kest_B = SS_fb.B;

n_x = size(A1,1);
n_y = size(C1,1);
n_w = size(G1,2);


if Td > Ts
    A_big = [SS_plant_wnoise.A,    SS_plant_wnoise.B(:,1)*SS_delay.C,                                 zeros(n_x);
             zeros(n_d,n_x),                              SS_delay.A,                   -SS_delay.B*K_lqr(1,1:6);
             kest_B(1:6,2:end)*C1,                    zeros(n_x,n_d), kest_A(1:6,1:6)-kest_B(1:6,1)*K_lqr(1,1:6)];
    B_big = [SS_plant_wnoise.B(:,2:end); zeros(n_d,n_w); zeros(6,n_w)];
    C_big = [SS_plant_wnoise.C, zeros(n_y,n_d), 0*SS_plant_wnoise.C];
else
    A_big = [SS_plant_wnoise.A,   -SS_plant_wnoise.B(:,1)*K_lqr(1,1:6);
             kest_B(1:6,2:end)*C1,  kest_A(1:6,1:6)-kest_B(1:6,1)*K_lqr(1,1:6)];
    %B_big = [SS_plant_wnoise.B(1:2,2); SS_plant_wnoise.B(3:4,3); zeros(4,1)];
    B_big = [SS_plant_wnoise.B(1:6,2:end); zeros(6,n_w)];
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

