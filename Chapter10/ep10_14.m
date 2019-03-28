clear all; clc;

%%
num = 0.5*[1, 4];
den = conv([1, 2], conv([1, -1], [1, 3]));
sys = tf(num, den);
nyquist(sys);
axis equal;
grid on;
