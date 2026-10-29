function [innov, yhat, xhat] = get_KF_3dof_plus(Gamma, Gamma_z, Gamma_y, Omega, Omega_z, Omega_y, c_f, c_f_xz, c_f_xy, c_meas, c_meas_xz, c_meas_xy, c_meas_z, c_meas_zx, c_meas_zy, Td, m, Q_mat, R_mat, y_data, u_data, Ts)
%2DOF_OSCILLATOR_TF Summary of this function goes here
%   Detailed explanation goes here

A1 = [0,            1,          0,        0, 0, 0, 0;
      Omega^2, -Gamma,          0,        0, 0, 0, -(Omega^2);
      0,            0,          0,        1, 0, 0, 0;
      0,            0, -Omega_z^2, -Gamma_z, 0, 0, 0;
      0,            0, 0, 0,          0,        1, 0;
      0,            0, 0, 0  -Omega_y^2, -Gamma_y, 0;
      0,            0,          0,        0, 0, 0, 0];

% A1 = [0,            1,          0,        0;
%       -Omega^2, -Gamma,          0,        0;
%       0,            0,          0,        1;
%       0,            0, -Omega_z^2, -Gamma_z];
B1 = [0;
      c_f/m;
      0;
      c_f_xz/m;
      0;
      c_f_xy/m;
      0];
G1 = [0   0   0   0;
      1/m 0   0   0;
      0   0   0   0;
      0   1/m 0   0;
      0   0   0   0;
      0   0   1/m 0;
      0   0   0   1];
%G1 = [0; 1/m; 0; 1/m; 0; 1/m];
C1 = [c_meas,    0,    c_meas_xz, 0, c_meas_xy, 0, 0;
      c_meas_zx, 0,     c_meas_z, 0, c_meas_zy, 0, 0];

% if Td ~= 0
%     SS_delay = ss(tf([1],[1/(Td), 1]));
%     SS_delay = c2d(SS_delay, Ts);
%     n_d = size(SS_delay.A,1);
% end

SS_plant_wnoise = ss(A1,[B1, G1],C1,[]);

if false
    SS_plant_wnoise = c2d(SS_plant_wnoise, Ts);
    [kest, L, P] = kalman(SS_plant_wnoise, Q_mat, R_mat, 0,'delayed');
end

[kest, L, P] = kalmd(SS_plant_wnoise, Q_mat, R_mat, Ts);

X0 = zeros(size(kest.A,1),1);
X0(1) = y_data(1,1)/C1(1,1);
X0(3) = y_data(2,1)/C1(2,3);
X0(7) = mean(y_data(1,1:5e2))/C1(1,1);

DeltaT = round(Td/Ts);

[yhat,xhat,innov] = run_kalman(kest.A, kest.B(:,1), kest.C(1:2,:), kest.B(:,2:end), X0, DeltaT, y_data, u_data, true);
end

