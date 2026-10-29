function [y, dy] = oscillator_TF(w_in, Omega_0, Gamma_0, psd_W, psd_V);

    y = (psd_W ./ (((Omega_0^2 - (w_in.^2)).^2) + Gamma_0^2*(w_in.^2)))+psd_V;
    dy = ((psd_W .*w_in.^2./Omega_0^2)./ (((Omega_0^2 - (w_in.^2)).^2) + Gamma_0^2*(w_in.^2)));%+psd_V;
end

