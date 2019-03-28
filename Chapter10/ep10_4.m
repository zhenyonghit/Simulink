clear all;clc;

%%
A = [0, 1, 0; 0, 0, 1; -1, -2, -3];
B = [0; 0; 1];
C = [1, 0, 0];
D = 0;

sys = ss(A, B, C, D);
impulse(sys);
