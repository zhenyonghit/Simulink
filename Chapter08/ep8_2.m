clear all;clc;

%%
theta = 0:0.01:2*pi;
xBound = sin(theta);
yBound = cos(theta);

N = 1000000000;

x = 2*rand(N,1) - 1;
y = 2*rand(N,1) - 1;

hold on;
plot(xBound, yBound, '-k');
axis equal;
axis([-2 2 -2 2]);
plot(x, y, '.');

r = x.^2+y.^2;
index = (r<=1);
count = sum(index);


myPi = count/N*4
