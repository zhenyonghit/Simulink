clear all; clc;

%%
num = [1, 2];
den = conv([1, 0], conv([1, 1], [1, 3]));
sys = tf(num, den);
rlocus(sys)
title('���켣ͼ');
axis equal;
