
%plot(out.rng1);
close all;
clc;

[len1, ~] = size(out.rng1.Data);
[len2, ~] = size(out.rng_wgn.Data);
fprintf("Number of RNG points: %d\n", len1*18);
fprintf("Number of pts: %d, %d\n", len1, len2);

fs = 250e6 / 36;
ts = 1/fs;

% RNG data processing
data = [out.rng1.Time, out.rng1.Data];
writematrix(data, "rng.csv")

%rng1_fft = fftshift(fft(out.rng1.Data));
%df = fs / length(rng1_fft);
%freq = -fs/2:df:fs/2-df;
[rng1_fft, freq] = periodogram(out.rng1.Data, [], [], fs);
semilogy(freq, abs(rng1_fft));
hold on;

data = [freq, abs(rng1_fft)];
writematrix(data, "rng_fft.csv");

% Reference WGN data processing
data = [out.rng_wgn.Time, out.rng_wgn.Data];
writematrix(data, "ref_noise.csv");

%rng_wgn_fft = fftshift(fft(out.rng_wgn.Data));
%df = fs / length(rng_wgn_fft);
%freq = -fs/2:df:fs/2-df;
[rng_wgn_fft, freq] = periodogram(out.rng_wgn.Data, [], [], fs);
semilogy(freq, abs(rng_wgn_fft));
grid;
hold off;

data = [freq, abs(rng_wgn_fft)];
writematrix(data, "ref_noise_fft.csv");

figure;
histogram(out.rng1.Data, 70);

figure;
histogram(out.rng_wgn.Data, 70);
