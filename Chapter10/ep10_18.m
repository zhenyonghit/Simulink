clear all; clc;

%%
A = [1, -3, -2; -1, 1, -1; 2, 4, 5];
B = [1; 1; 0];
C = [0, 1, 0];
D = 0;

%%
[V, Aj] = jordan(A);
P = V^(-1)
Bj = P*B;
Cj = C*V;
Dj = D;

sys = ss(Aj, Bj, Cj, Dj)