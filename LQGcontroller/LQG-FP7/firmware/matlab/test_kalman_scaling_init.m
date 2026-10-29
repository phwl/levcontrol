% =========================================================================
%  test_kalman_scaling_init.m
% =========================================================================
%  Created: 24.02.2025 by Berndorfer
%
%  Initialization script 
%
%  The purpose of this model is to evaluate the feasability of using
%  bit-shift scaling combined with fixed point multiplication to implement
%  state space systems, in particular time-discrete time-invariant LQG
%  controllers on an Xilinx 7000 series FPGAs. The LQG itself was
%  designed elsewhere and is assumed to be known.
%
%  The following state space representation of the LQG:
%
%     x_k+1 = F x_k + Gamma u_k + L y_k
%     u_k   = -K x_k
%
%  The feedback matrix F is composed of the discrete system dynamic matrix
%  of the plant model, Phi and the the Kalman gain L,
%
%     F = Phi - L C,
%
%  the state space controller gain K is determined via an LQR controller
%  design.

close all;
clear;

%% Run init for three axis plant.
run three_axis_plant_ver_0_init.m

%% Load LQG / Kalman Model

lqg.shift_multiple = 1;

% Calculate shift decompositions of LQG matrices.
[lqg.F_ip_shift, lqg.F_ip_residue] = shift_decompose(k.F_ip, lqg.shift_multiple);
[lqg.F_ap_shift, lqg.F_ap_residue] = shift_decompose(k.F, lqg.shift_multiple);
[lqg.Gamma_ip_shift, lqg.Gamma_ip_residue] = shift_decompose(k.Bd_ip, lqg.shift_multiple);
[lqg.Gamma_ap_shift, lqg.Gamma_ap_residue] = shift_decompose(k.Bd, lqg.shift_multiple);
[lqg.L_ip_shift, lqg.L_ip_residue] = shift_decompose(k.L_ip, lqg.shift_multiple);
[lqg.L_ap_shift, lqg.L_ap_residue] = shift_decompose(k.L, lqg.shift_multiple);
[lqg.K_ip_shift, lqg.K_ip_residue] = shift_decompose(clqr.Kc_ip, lqg.shift_multiple);
[lqg.K_ap_shift, lqg.K_ap_residue] = shift_decompose(clqr.Kc, lqg.shift_multiple);

display(lqg.K_ip_residue .* (2 .^ -lqg.K_ip_shift));
display(clqr.Kc_ip);

%% Functions

% Decomposes the given matrix into a shift matrix, that contains the number
% of bitshifts that need to be done before multiplication of each RHS
% element with the matrix and a residue matrix, which represents the
% residual multiplication factors of the given matrix to achive, in the
% end, the identity
%  M = M_residue .* (2 .^ -M_shift)
function [M_shift, M_residue] = shift_decompose(M_orig, shift_multiple)
    [N, M] = size(M_orig);

    M_shift = zeros(N, M);
    M_residue = zeros(N, M);

    for i = 1:N
        for j = 1:M
            % Check special case: M(i,j) == 0 -> log2 would go towards
            % infinity, so we just do not shift in this case (since it
            % would not change the result anyways)
            if abs(M_orig(i,j)) < eps
                M_shift(i,j) = 0;
                M_residue(i,j) = 0.0;
                continue;
            end

            % Calcualte how many shifts would be required to fit the
            % residue into the range (1,2)
            lg2_ceil = ceil(log2(abs(M_orig(i,j))));

            % With the given shift multiple, calculate how many shifts
            % should be done and the resulting residue factor.
            shift = floor(lg2_ceil / shift_multiple);
            residue = M_orig(i,j) * 2^(-shift * shift_multiple);

            M_shift(i,j) = -shift;
            M_residue(i,j) = residue;
        end
    end
end

% Rescales the given LQG controller using the given state scaling factors.
% The dimension of the scaling factor vector has to be equal to the state
% vector dimension.
function [F_sc, Gamma_sc, L_sc, K_sc] = rescale_lqg(F, Gamma, L, K, scaling_factors)
    [N, ~] = size(F);
    [~, N_feedback] = size(Gamma);
    [~, N_meas] = size(L);

    % Check sizes of given vectors/matrices.
    assert(size(F) == [N, N]);
    assert(size(Gamma) == [N, N_feedback]);
    assert(size(L) == [N, N_meas]);
    assert(size(K) == [N_feedback, N]);
    assert(size(scaling_factors) == [N, 1]);

    % Calculate scaling for F
    F_prescale = zeros(N, N);
    for i = 1:N
        for j = 1:N
            F_prescale(i,j) = scaling_factors(j) / scaling_factors(i);
        end
    end

    % Calculate scaling for Gamma and K
    Gamma_prescale = zeros(N, N_feedback);
    K_prescale = zeros(N_feedback, N);
    for i = 1:N
        for j = 1:N_feedback
            Gamma_prescale(i,j) = scaling_factors(i);
            K_prescale(j,i) = 1 / scaling_factors(i);
        end
    end

    % Calculate scaling for L
    L_prescale = zeros(N, N_meas);
    for i = 1:N
        for j = 1:N_meas
            L_prescale(i,j) = scaling_factors(i);
        end
    end

    % Apply scaling.
    F_sc = F_prescale .* F;
    Gamma_sc = Gamma_prescale .* Gamma;
    L_sc = L_prescale .* L;
    K_sc = K_prescale .* K;
end