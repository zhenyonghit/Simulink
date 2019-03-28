clear all; clc;

%%
num = conv([1, 1], [1, 2]);
den = conv([1, 3], [1, 4]);
sys1 = tf(num, den);
[A1, B1, C1, D1] = tf2ss(num, den)
sys2 = ss(sys1)

%%
z = [-1, -2];
p = [-3, -4];
k = 1;
sys3 = zpk(z, p, k);
[A2, B2, C2, D2] = zp2ss(z, p, k)
sys4 = ss(sys3)

