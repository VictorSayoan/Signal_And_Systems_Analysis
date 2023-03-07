clc; clear; close all;
sympref('FloatingPointOutput', true);

syms nt w;
n = -2:0.1:5;

% De modo que projetemos uma função real com amplitude oscilatório e 
% decrescente, iniciaremso considerando a função:
% Onde a > 0:
a = 1;
xn = (-1).^n.*exp(-a.*n);
figure(1);
stem(n, xn, 'LineWidth', 2, 'color', 'black'), grid on;
title('Sinal discreto');
ylabel('x(n)'); 
xlabel('n');

%Temos que a sua transformada z bilateral:
Xz = ztrans((-1)^nt*exp(-a*nt));
pretty(Xz);
[num, den] = numden((Xz)); %numerador e denominador de Xz

% Usando a função tf2zpk, encmontramos os polos e zeros da função:
[z, p, k] = tf2zpk([0 1], [-1 3 -3 1]);

%Plot dos polos e zeros da função:
figure(2);
zplaneplot(z, p), grid on;
title('Zeros e Polos');

% Se fizer z = e^jw, teremos a transformada de Fourier:
z = exp(j*w);
Xf = z/(z + exp(-1));
pretty(Xf);



