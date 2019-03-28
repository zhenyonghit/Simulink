clear all;clc;

%%
num = 2*[1, 1];
den = conv([1, 2, 3], [1, 3]);
sys = tf(num, den);
pzmap(sys)
grid on;
title('Áã¼«µãÍ¼');
axis equal;