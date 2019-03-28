clear all,clc;
figure;

t = 0:pi/200:4*pi;
y1 = sin(t);
y2 = sin(t-2*pi/3);
y3 = sin(t-4*pi/3);

plot(t, y1, t, y2, t, y3, t, y1+y2*sin(2*pi/3)+y3*sin(4*pi/3), '.');