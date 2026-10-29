function [ADC_mat, DAC_mat, Xest_mat, t_vec_dma] = runSimulation(idxsDACs, idxsADCs, idxsStates, P_W_mat, P_V_mat,...
    B_mat, ssys_d_A, ssys_d_B, ssys_d_C, kest_d_A, kest_d_B, L_d_mat, K_LQR, numOfFrames, TsDMA, TsSim, Xest_0, Xtrue_0, FbEnable)
%RUNSIMULATION This function runs simulation of an LTI system
%   This function runs simulation of an LTI system

    NDACs = numel(idxsDACs);
    NADCs = numel(idxsADCs);
    NStates = numel(idxsStates);
    NDACs_max = 2;
    NADCs_max = 2;
    NStates_max = 7;

    t_max = TsDMA*(numOfFrames-1);
    t_vec_sim = 0:TsSim:t_max;

    numOfSimSteps = length(t_vec_sim);
    t_vec_dma = 0:TsDMA:t_max;

    TsDecimFactor = TsDMA/TsSim;

    stdW = chol(P_W_mat);
    stdV = chol(P_V_mat);
    
    W_sim = stdW*randn(size(stdW,1),numOfSimSteps);
    V_sim = stdV*randn(size(stdV,1),numOfSimSteps);
    %X_sim = zeros(NStates,numOfSimSteps);
    ADC_sim = zeros(NADCs_max,numOfSimSteps);
    DAC_sim = zeros(NDACs_max,numOfSimSteps);
    Xtrue_sim = zeros(NStates_max,numOfSimSteps);
    Xest_sim = zeros(NStates_max,numOfSimSteps);


    X_mat = zeros(NStates,numOfFrames);
    ADC_mat = zeros(NADCs_max,numOfFrames);
    DAC_mat = zeros(NDACs_max,numOfFrames);
    Xtrue_mat = zeros(NStates_max,numOfFrames);
    Xest_mat = zeros(NStates_max,numOfFrames);


    if ~isempty(Xtrue_0)
        Xtrue_sim(:,1) = Xtrue_0;
    end

    if ~isempty(Xest_0)
        Xest_sim(:,1) = Xest_0;
    end
    
    for i = 1:(numOfSimSteps-1)
        [Xtrue_sim(idxsStates,i+1), Xest_sim(idxsStates,i+1), DAC_sim(idxsDACs,i+1), ADC_sim(idxsADCs,i)] = simulationStep(...
            B_mat, ssys_d_A, ssys_d_B, ssys_d_C, kest_d_A, kest_d_B, L_d_mat, K_LQR, ...
            Xtrue_sim(idxsStates,i), Xest_sim(idxsStates,i), W_sim(:,i), V_sim(:,i), DAC_sim(idxsDACs,i), FbEnable);
    end

    % OPTION A: Zero-Order Hold (simplest)
    % for j = 1:numOfFrames
    %     % Find which sim step contains this DMA time
    %     idx = find(t_vec_dma(j) >= t_vec_sim,1,"first");
    % 
    %     %[~, idx] = min(abs(sim_times - dma_times(j)));
    %     ADC_mat(:, j) = ADC_sim(:, idx);
    %     DAC_mat(:, j) = DAC_sim(:, idx);
    %     Xest_mat(:, j) = Xest_sim(:, idx);
    % end

    % 1. Calculate all indices at once (Deterministic & Vectorized)
    % Use floor if you want the "last available" sample, or round for "nearest"
    idx = floor(t_vec_dma / TsSim) + 1;
    
    % 2. Safety: Clamp indices to be within the bounds of the simulation array
    idx = max(1, min(idx, size(ADC_sim, 2)));
    
    % 3. Vectorized Assignment (No loop needed)
    ADC_mat  = ADC_sim(:, idx);
    DAC_mat  = DAC_sim(:, idx);
    Xest_mat = Xest_sim(:, idx);

end

function [Xtrue_kp1, Xest_kp1, U_kp1, Ytrue_kp1] = simulationStep(B_mat, ssys_d_A, ssys_d_B, ssys_d_C, kest_d_A, kest_d_B, L_d_mat, K_LQR, Xtrue_k, Xest_k, W_k, V_k, U_k, FbEnable)
    
    knownIns = 1:size(B_mat,2);

    A_p = ssys_d_A;
    B_p = ssys_d_B(:,knownIns);
    G_p = ssys_d_B(:,(numel(knownIns)+1):end);
    C_p = ssys_d_C;

    A_e = kest_d_A;
    L_e = L_d_mat;
    B_e = kest_d_B(:,knownIns);
    
    K_e = K_LQR;
    
    % Advance plant one timestep
    Xtrue_kp1 = A_p*Xtrue_k + B_p*U_k + G_p*W_k;
    Ytrue_kp1 = C_p*Xtrue_kp1 + V_k;

    % Get new state estimate and feedback action
    Xest_kp1 = A_e*Xest_k + B_e*U_k + L_e*Ytrue_kp1;
    if FbEnable
        U_kp1 = -K_e*Xest_kp1;
    else
        U_kp1 = zeros(size(K_e,1),1);
    end
end