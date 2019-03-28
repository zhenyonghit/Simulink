clear all;clc;

%%
num = [1, 1];
den = [1, 0.3, 1.02, 1];
sys = tf(num, den)
zpk = zpk(sys);
zpk.p{:}
roots(sys.den{:})