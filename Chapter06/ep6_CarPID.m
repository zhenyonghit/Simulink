clear all;clc;

%%
for Ki = 0.003:0.003:0.012
	[t, x, y] = sim('ep4_6_3', 1000);
	subplot(2, 2, Ki/0.003);
	plot(t, y);
	title(['Ki=', num2str(Ki)]);
end