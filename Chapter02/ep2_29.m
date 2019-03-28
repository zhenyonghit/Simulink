clear all,clc;

%%
fs = 500;
dt = 1/fs;
t = 0:dt:0.2;
f1 = 50;
f2 = 200;

x = 2*sin(2*pi*f1*t)+cos(2*pi*f2*t);
subplot(4,1,1);
plot(t, x);
title('f1(50Hz)\f2(200Hz)�������źţ� ����0');
xlabel('����(n)');
grid on;

number = 512;
y = fft(x, number);
n = 0:length(y)-1;
f = fs*n/length(y);
subplot(4,1,2);
plot(f,abs(y));
title('f1\f2�������źŵ�FFT��512�㣩');
xlabel('Ƶ��Hz');
grid on;

x = x+randn(1,length(x));
subplot(4,1,3);
plot(t, x);
title('f1(50Hz)\f2(200Hz)�������źţ��������źţ�');
xlabel('����(n)');
grid on;

y = fft(x, number);
n = 0:length(y)-1;
f = fs*n/length(y);
subplot(4,1,4);
plot(f,abs(y));
title('f1\f2�������źţ��������źţ���FFT��512�㣩');
xlabel('����(n)');
grid on;

