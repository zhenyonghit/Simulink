clear all; clc;

%%
G = [0, tf([3, 0], [1, 1, 10]); tf([1, 1], [1, 5]), tf(2, [1, 6])];
subplot(2, 1, 1);
sigma(G)
subplot(2, 1, 2);
sigma(G, [], 2)
