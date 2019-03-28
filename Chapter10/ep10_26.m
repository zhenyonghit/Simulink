clear all; clc;

%%
G1 = tf([1, 3, 1], [2, 5, 3]);
G2 = zpk(-1, [-2, -10], 2);
G3 = tf(5, [1, 7]);
G4 = tf([1, 0.3], [1, 1, 6]);

H = 1.5;

G = (G1*G2+G3)*G4;

sys = feedback(G, H);

step(sys);
