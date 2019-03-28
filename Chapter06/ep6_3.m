clear all,clc;

%%
[t1, x1, y1] = sim('ep6_1', 10);
[t2, x2, y2] = sim('ep6_1', [0, 10]);
[t3, x3, y3] = sim('ep6_1', 0:15);
[t4, x4, y4] = sim('ep6_1', 0:0.01:15);

%%
subplot(2, 2 ,1);
plot(t1, y1);
subplot(2, 2 ,2);
plot(t2, y2);
subplot(2, 2 ,3);
plot(t3, y3);
subplot(2, 2 ,4);
plot(t4, y4);
