clear all; clc;

%%
num = [1, 1];
den = conv([1, 0], conv([1, 2.3], [1, 5.6]));
sys = tf(num, den);
rlocus(sys);
axis equal;
[k, poles] = rlocfind(sys)
grid on;

