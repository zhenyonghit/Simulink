clear all; clc;

%%
num = 2*[0.141, 1];
den = conv([1, 0], conv([0.12, 1], conv([0.29, 1], [0.33, 1])));
sys = tf(num, den);
[gm, pm, wcg, wcp] = margin(sys)
margin(sys)
