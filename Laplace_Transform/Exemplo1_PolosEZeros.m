clc; clear; close all;

s = tf('s');
Gs = (s^3 + 5*s^2 + 9*s + 7)/(s + 1)*(s + 2);

figure(1)
pzplot(Gs), grid on;
title('Gráfico de Pólos e Zeros');