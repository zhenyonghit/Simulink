clear all;clc;

%% 设置模型参数
m = 1;
g = 9.8;
K = 0.8;
v0 = 0;
y0 = 1;

%% 设置仿真参数
tStart = 0;
tFinal = 5;
dt = (tFinal-tStart)/50000;
t = tStart:dt:tFinal;

%%
leng = length(t);
v = zeros(leng, 1);
y = zeros(leng, 1);
v(1) = v0;
y(1) = y0;

for i = 1:leng-1
	
	if (y(i)>0)||(v(i)>0)
		v(i+1) = v(i)-g*dt;
		y(i+1) = y(i)+v(i)*dt;
	else
		v(i+1) = -K*v(i)-g*dt;
		y(i+1) = y(i)-K*v(i)*dt;
	end		
end
figure;
subplot(2, 1, 1);
plot(t, v);
subplot(2, 1, 2);
plot(t, y);



