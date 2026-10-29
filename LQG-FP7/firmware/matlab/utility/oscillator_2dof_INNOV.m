function [H_out] = oscillator_2dof_INNOV(Gamma, Gamma_z, Omega, Omega_z, c_f, c_f_xz, c_meas, c_meas_xz, c_meas_z, c_meas_zx, m, sqrt_P_w, sqrt_P_wz, w, SS_fb, C_hat)
%2DOF_OSCILLATOR_TF Summary of this function goes here
%   Detailed explanation goes here

    K_lqr = SS_fb.C;
    A_hat = SS_fb.A;
    B_hat = SS_fb.B(:,1);
    L_hat = SS_fb.B(:,2:end);
    %C_hat = [1 0 0 0; 0 0 1 0];

    A1 = [0,            1,          0,        0;
          Omega^2, -Gamma,          0,        0;
          0,            0,          0,        1;
          0,            0, -Omega_z^2, -Gamma_z];

    B1 = [0;
          c_f/m;
          0;
          c_f_xz/m];
    G1 = [0 0; 1/m 0; 0 0; 0 1/m];
    G1 = [0; 1/m; 0; 1/m];
    C1 = [c_meas,    0,    c_meas_xz, 0;
          c_meas_zx, 0,     c_meas_z, 0];
    
    SS_plant_wnoise = ss(A1,[B1, G1],C1,[]);
    SS_plant_wnoise = c2d(SS_plant_wnoise, SS_fb.Ts);

    A = SS_plant_wnoise.A;
    B = SS_plant_wnoise.B(:,1);
    G = SS_plant_wnoise.B(:,2);

    A_big = [A,       -B*K_lqr;
             L_hat*C1, A_hat-B_hat*K_lqr];
    B_big = [G; G*0];
    %C_big = [C1, -C];
    C_big = [C1, -C_hat];
    
   % T = [C1, -C_hat; zeros(2*size(A1,1)-size(C1,1),size(C1,1)), eye(2*size(A1,1)-size(C1,1))];
    
    %A_bigbar = T*A_big*pinv(T);
    %B_bigbar = T*B_big;
    %C_bigbar = C_big*pinv(T);

    %SS_cl = ss(A_bigbar, B_bigbar, C_bigbar, [], SS_fb.Ts);
    SS_cl = ss(A_big, B_big, C_big, [], SS_fb.Ts);
    %H_out = squeeze(freqresp(SS_cl, w,'rad/s'));

    H_out = squeeze(freqresp(prescale(SS_cl), w,'rad/s'));
end

