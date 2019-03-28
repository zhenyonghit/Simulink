clear all;clc;

%%
num = [1, 0.4, 1];
den = [0.2, 0.3, 1];
sys = tf(num, den);
w = logspace(-1, 1);
freqs(den, num, w);



%%
% z = [-0.5, -1];
% p = [0, -1.2, -2];
% k = 2;
% sys2 = zpk(z, p, k);
% freqs(sys2)
