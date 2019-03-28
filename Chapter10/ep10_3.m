clear all;clc;

%%
num = [2, 3, 1];
den = [1, 3.2, 2.4, 1];
sys = tf(num, den);
step(sys)