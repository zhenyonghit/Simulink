clear all; clc;

%%
A = [1, -1; 1, -2];
Q = [1, 0; 0, 1];

tic
P1 = lyap(A', Q)
toc

tic
P2 = lyap2(A', Q)
toc
