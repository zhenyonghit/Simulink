clear all;clc;

%%
h = 80;
m = 70;
g = 9.8;
a1 = 1.3;
a2 = 1.1;
x0 = 30;

for k=18.45:0.1:30
	[t, x, y] = sim('ep4_4', 50);
	if min(y)>1
		break;
	end
end

disp(['��С��ȫ����ϵ��kΪ��', num2str(k)]);
distance = min(y);
disp(['�ļ����������С����Ϊ��', num2str(distance)]);
plot(t, y);
