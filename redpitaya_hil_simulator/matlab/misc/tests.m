
clc;
close all;

fclk = 250e6;
ts = 36 / fclk;

A = [1, 0; ts, 1];
B = [ts; 0];
C = [0, 1];
D = [0];
sys1 = ss(A, B, C, D, ts);

A = [1, 0; ts, 1];
B = [ts; ts^2];
C = [0, 1];
D = 0;
sys2 = ss(A, B, C, D, ts);
[x, y] = ss2tf(A, B, C, D);
disp(x);
disp(y);

A = 1;
B = ts;
C = 1;
D = 0;
sys3 = ss(A, B, C, D, ts);

sys4 = c2d(tf([1],[1, 0, 0]), ts);

bode(sys1, {1e-1, 1e8});
figure;
bode(sys2, {1e-1, 1e8});
figure;
bode(sys3, {1e-1, 1e8});
figure;
bode(sys4, {1e-1, 1e8});

