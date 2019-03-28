clear all; clc;

%%
A = [0, 0, -1; 1, 1, -2; 0, 1, -3];
B = [1; 0; 0];
C = [1, 1, 1];
D = 0;

[Ac, Bc, Cc, Dc, Pc] = canon(A, B, C, D, 'modal')
[As, Bs, Cs, Ds, Ps] = canon(A, B, C, D, 'companion')
