function [psd_out, H_out] = averaged_psd(x_sig, Fs, averaging, fft_len)

N = length(x_sig) - mod(length(x_sig),2);
split = averaging;
N_part = floor(N/split);
L = fft_len;
%L = L - mod(L,2);

P1_pwr = [];
P1_pwr = zeros(split, L/2 +1);
H = zeros(split, L/2 +1);
%P1_angl = zeros(split, L/2 +1);

for(i = 1:split)
    idx0 = (i-1)*N_part+1;
    idx1 = i*N_part;
    
    Y = fft(x_sig(idx0:idx1),L);
    
    psd = (1/(Fs*L))*abs(Y(1:L/2+1)).^2;
    psd(2:end-1) = 2*psd(2:end-1);
    
    P1_pwr(i,:) = psd;
    H(i,:) = Y(1:L/2+1);
    %P1_mag(i,:) = (1/(Fs*L))*abs(Y(1:L/2+1));
    %P1_mag(i,2:end-1) = 2*P1_mag(i,2:end-1);
    %P1_angl(i,:) = angle(Y(1:L/2+1));
end

psd_out = mean(P1_pwr, 1);
H_out = mean(H, 1);
%h_angle = mean(P1_angl, 1);
end

