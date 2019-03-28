clear all; clc;

%%
num = [0.1, 0.3, 0.11, 1.7];
den = [2.01, 1.9, 3.12, 1];
sys = tf(num, den);
figure;
bode(sys);
figure;
nichols(sys);
