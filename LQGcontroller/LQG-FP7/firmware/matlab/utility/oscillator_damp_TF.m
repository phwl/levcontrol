function [y] = oscillator_damp_TF(w_in, Omega_0, Gamma_0, psd_W, psd_V, g_cd, tau, psd_fb)
    y = ((psd_W + psd_fb)./((Gamma_0.*w_in - g_cd.*w_in.*cos(tau.*w_in)).^2 ...
         + (Omega_0^2 - w_in.^2 + g_cd.*w_in.*sin(tau.*w_in)).^2) + psd_V);
end

