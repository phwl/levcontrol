function [H_c, S_w, S_fb] = oscillator_2dof_TF(Gamma, Gamma_z, Omega, Omega_z, c_f, c_f_xz, c_meas, c_meas_xz, c_meas_z, c_meas_zx, m, sqrt_P_w, sqrt_P_wz, w, fb_vec)
%2DOF_OSCILLATOR_TF Summary of this function goes here
%   Detailed explanation goes here

% (Gamma, Gamma_z, Omega, Omega_z, c_f, c_f_xz, c_meas, c_meas_xz, c_meas_z, c_meas_zx, m, w)
% S_x = [((Gamma*c_f*c_meas.*w)./(m*((Omega.*w.^2 + w.^2).^2 + Gamma.^2.*w.^2)) +...
%         (Gamma_z*c_f_xz*c_meas_xz.*w)./(m*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2))).^2 +...
%         ((c_f_xz*c_meas_xz*(Omega_z.^2 - w.^2))./(m*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) -...
%         (c_f*c_meas*(Omega.^2 + w.^2))./(m*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2 ; ...
%     ((Gamma*c_f*c_meas_zx.*w)./(m*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2)) +...
%     (Gamma_z*c_f_xz*c_meas_z.*w)./(m*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2))).^2 +...
%     ((c_f_xz*c_meas_z*(Omega_z.^2 - w.^2))./(m*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) -...
%     (c_f*c_meas_zx*(Omega.^2 + w.^2))./(m*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2];

% S_w = [((c_meas_xz.*sqrt_P_wz.*(Omega_z.^2 - w.^2))./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) - (c_meas.*sqrt_P_w.*(Omega.^2 + w.^2))./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2 + ((Gamma_z.*c_meas_xz.*sqrt_P_wz.*w)./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) + (Gamma.*c_meas.*sqrt_P_w.*w)./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2;
% ((c_meas_z.*sqrt_P_wz.*(Omega_z.^2 - w.^2))./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) - (c_meas_zx.*sqrt_P_w.*(Omega.^2 + w.^2))./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2 + ((Gamma_z.*c_meas_z.*sqrt_P_wz.*w)./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) + (Gamma.*c_meas_zx.*sqrt_P_w.*w)./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2];

% S_fb = [((Gamma.*c_f.*c_meas.*w)./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2)) + (Gamma_z.*c_f_xz.*c_meas_xz.*w)./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2))).^2 + ((c_f_xz.*c_meas_xz.*(Omega_z.^2 - w.^2))./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) - (c_f.*c_meas.*(Omega.^2 + w.^2))./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2;
% ((Gamma.*c_f.*c_meas_zx.*w)./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2)) + (Gamma_z.*c_f_xz.*c_meas_z.*w)./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2))).^2 + ((c_f_xz.*c_meas_z.*(Omega_z.^2 - w.^2))./(m.*((Omega_z.^2 - w.^2).^2 + Gamma_z.^2.*w.^2)) - (c_f.*c_meas_zx.*(Omega.^2 + w.^2))./(m.*((Omega.^2 + w.^2).^2 + Gamma.^2.*w.^2))).^2];

S_w = [((c_meas.*sqrt_P_w)./(m.*(Omega.^2 + w.^2 + Gamma.*w.*1i)) + (c_meas_xz.*sqrt_P_wz)./(m.*(- Omega_z.^2 + w.^2 + Gamma_z.*w.*1i))).*((c_meas.*sqrt_P_w)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_meas_xz.*sqrt_P_wz)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)));...
    ((c_meas_zx.*sqrt_P_w)./(m.*(Omega.^2 + w.^2 + Gamma.*w.*1i)) + (c_meas_z.*sqrt_P_wz)./(m.*(- Omega_z.^2 + w.^2 + Gamma_z.*w.*1i))).*((c_meas_zx.*sqrt_P_w)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_meas_z.*sqrt_P_wz)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)))];

S_fb = [((c_f.*c_meas)./(m.*(Omega.^2 + w.^2 + Gamma.*w.*1i)) + (c_f_xz.*c_meas_xz)./(m.*(- Omega_z.^2 + w.^2 + Gamma_z.*w.*1i))).*((c_f.*c_meas)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_f_xz.*c_meas_xz)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)));...
    ((c_f.*c_meas_zx)./(m.*(Omega.^2 + w.^2 + Gamma.*w.*1i)) + (c_f_xz.*c_meas_z)./(m.*(- Omega_z.^2 + w.^2 + Gamma_z.*w.*1i))).*((c_f.*c_meas_zx)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_f_xz.*c_meas_z)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)))];


S_x = S_w + S_fb.*fb_vec;

H_x =   [((c_f.*c_meas)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_f_xz.*c_meas_xz)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)));
         ((c_f.*c_meas_zx)./(m.*(Omega.^2 + w.^2 - Gamma.*w.*1i)) - (c_f_xz.*c_meas_z)./(m.*(Omega_z.^2 - w.^2 + Gamma_z.*w.*1i)))];

H_x = [-(c_f*c_meas)./(m*(Omega^2 + w.^2 - Gamma*w*1i)) + (c_f_xz*c_meas_xz)./(m*(Omega_z^2 - w.^2 + Gamma_z*w*1i));
       -(c_f*c_meas_zx)./(m*(Omega^2 + w.^2 - Gamma*w*1i)) + (c_f_xz*c_meas_z)./(m*(Omega_z^2 - w.^2 + Gamma_z*w*1i))];


H_c = H_x./(1 + H_x.*fb_vec);
end

