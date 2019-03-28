clear all;clc;

%%
A = [0, 1, 0; 0, 0, 1; -1, -2, -3];
B = [0; 0; 1];
C = [1, 0, 0];
D = 0;

sys = ss(A, B, C, D);
[u, t] = gensig('square', 4, 10, 0.01);
u = 2*u-1;
lsim(sys, u, t)
