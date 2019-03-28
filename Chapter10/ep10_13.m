clear all; clc;

%%
num = 2;
den = [1, 2, 3];
sys = tf(num, den);
[mag, pha, w] = bode(sys);
bode(sys);
[A, i] = max(mag(1,:));
Mr = 20*log10(A)
Wr = w(i)
