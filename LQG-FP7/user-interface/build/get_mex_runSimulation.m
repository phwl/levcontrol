% filepath: d:\02_ACIN_GitLab\LQG-FP7\user-interface\build\get_mex_runSimulation.m
% Script to generate a MEX for runSimulation using MATLAB Coder.
% Usage: run get_mex_runSimulation from the build folder (or add path).
%
% Requirements: MATLAB Coder (codegen). The script creates a MEX named
% runSimulation_mex (standard codegen naming). If codegen is unavailable
% the script prints an instructive message.

fprintf('Preparing to run codegen for runSimulation (this may take a moment)...\n');

% Define argument types for runSimulation
% All parameters passed as individual matrices to avoid struct limitations

idxsDACs_t = coder.typeof(double(0), [1 Inf], [false true]);
idxsADCs_t = coder.typeof(double(0), [1 Inf], [false true]);
idxsStates_t = coder.typeof(double(0), [1 Inf], [false true]);
P_W_mat_t = coder.typeof(0, [Inf Inf], [true true]);
P_V_mat_t = coder.typeof(0, [Inf Inf], [true true]);
B_mat_t = coder.typeof(0, [Inf Inf], [true true]);
ssys_d_A_t = coder.typeof(0, [Inf Inf], [true true]);
ssys_d_B_t = coder.typeof(0, [Inf Inf], [true true]);
ssys_d_C_t = coder.typeof(0, [Inf Inf], [true true]);
kest_d_A_t = coder.typeof(0, [Inf Inf], [true true]);
kest_d_B_t = coder.typeof(0, [Inf Inf], [true true]);
L_d_mat_t = coder.typeof(0, [Inf Inf], [true true]);
K_LQR_t = coder.typeof(0, [Inf Inf], [true true]);
numOfFrames_t = coder.typeof(double(0));
TsDMA_t = coder.typeof(0);
TsSim_t = coder.typeof(0);
Xest_0_t = coder.typeof(0,[7,1],[false,false]);
Xtrue_0_t = coder.typeof(0,[7,1],[false,false]);
FbEnable_t = coder.typeof(false);

args = {idxsDACs_t, idxsADCs_t, idxsStates_t, P_W_mat_t, P_V_mat_t, B_mat_t, ssys_d_A_t, ssys_d_B_t, ssys_d_C_t, kest_d_A_t, kest_d_B_t, L_d_mat_t, K_LQR_t, numOfFrames_t, TsDMA_t, TsSim_t, Xest_0_t, Xtrue_0_t, FbEnable_t};

fprintf('Generating MEX for runSimulation...\n');
codegen -report runSimulation.m -args args;

fprintf('Codegen completed. A MEX implementation should now exist (runSimulation_mex).\n');
fprintf('You can now call runSimulation and it will automatically use the MEX if available.\n');