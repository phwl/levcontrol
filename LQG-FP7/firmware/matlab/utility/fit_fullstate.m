function [FIT,D_out] = fit_fullstate(psd, f, C_0, D_0, g_w, n) %g_w = 0.0001
%% regression


FunMin = @(C, w_in)((C_0(1)+ C(3))./((sqrt(C_0(3)).*w_in + C(1).*w_in.*cos(C(2).*w_in) + C(4).*sin(C(2).*w_in)).^2 ...
                     + (C_0(2) - w_in.^2 + C(1).*w_in.*sin(C(2).*w_in) + C(4).*cos(C(2).*w_in) ).^2) + C_0(4));

% Gfb = -10e4;
% Snn = 0;%1e15;
% tau = 200e-9;
% D = [Gfb, tau];

% f = REF.f;
% psd = REF.psd_y;
w = 2*pi*f;
%D = C_0;


%% Logarithm
FunLog = @(C,w_in)log(FunMin(C,w_in));
obj_fun = @(C) norm(1./(1+g_w*w).*(FunLog(C,w) - log(psd)),n);
obj_fun_scaled = @(C) obj_fun(D_0.*C);

lb = [-inf, -inf, realmin, -inf];
ub = [inf, inf, inf, inf];


opts = optimoptions('fmincon','Display','iter');
opts.OptimalityTolerance = 1e-20;
opts.FunctionTolerance = 1e-20;
opts.StepTolerance = 1e-20;
opts.MaxFunctionEvaluations = 20000;
opts.MaxIterations = 10000;
%opts.Algorithm = 'sqp';
opts.Algorithm = 'interior-point';
%opts.Algorithm = 'active-set';

sol = fmincon(obj_fun_scaled, [1,1,1, 1],[],[],[],[],lb,ub,[],opts)

D_out = sol.*D_0;

FIT.f = f;
FIT.w = w;

FIT.W = sqrt(C_0(2));
FIT.G = sqrt(C_0(3));
FIT.Sw = C_0(1);
FIT.Sv = C_0(4);
FIT.g_cd = D_out(1);
FIT.tau = D_out(2);
FIT.S_fb = D_out(3);
FIT.g_di = D_out(4);

[FIT.psd] = oscillator_fullstate_TF(w, FIT.W, FIT.G, FIT.Sw, FIT.Sv, FIT.g_cd, FIT.g_di, FIT.tau, FIT.S_fb);

end

