function [Y] = inverted_oscilllator_w_delay(w, Omega_0, Gamma_0, m, psd_W, C_el, C_fb, T_d, k1, k2)
%INVERTED_OSCILLLATOR_W_DELAY Summary of this function goes here
%   Detailed explanation goes here
% Y = (0*C_el^2*C_fb^2 + (1+0*C_el^2)*psd_W)./(C_el^2*C_fb^2*k1^2 - 2*C_el*C_fb*Gamma_0*T_d*k1*m*w.^2 - 2*C_el*C_fb*Omega_0^2*k1*m...
%     - 2*C_el*C_fb*k1*m*w.^2 + Gamma_0^2*T_d^2*m^2*w.^4 + Gamma_0^2*m^2*w.^2 + Omega_0^4*T_d^2*m^2*w.^2 + Omega_0^4*m^2 ...
%     + 2*Omega_0^2*T_d^2*m^2*w.^4 + 2*Omega_0^2*m^2*w.^2 + T_d^2*m^2*w.^6 + m^2*w.^4);

Y = psd_W*C_el^2./(w.^2.*(-T_d*m*Omega_0^2 - T_d*m*w.^2 + Gamma_0*m + C_el*C_fb*k2).^2 + (Omega_0^2*m + m*w.^2 - C_el*C_fb*k1 + Gamma_0*T_d*m*w.^2).^2);

end

