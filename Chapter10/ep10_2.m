clear all;clc;

%%
A = [0, 1, 0; 0, 0, 1; -1, -2, -3];
B = [0; 0; 1];
C = [1, 0, 0];
D = 0;

sys1 = ss(A, B, C, D);
sys2 = tf(sys1);
sys3 = ss(sys2);
sys4 = zpk(sys3);
sys5 = ss(sys4);