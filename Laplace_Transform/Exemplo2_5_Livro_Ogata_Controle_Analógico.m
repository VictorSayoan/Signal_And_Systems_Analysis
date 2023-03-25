% Exemplo 2.5 do livro Ogata - Controle Analógico

clc; clear; close all;

num = [1 2 3];
dem = [1 3 3 1];

[r, p, k] = residue(num, dem);

scatter(real(p), imag(p), 'x'), grid on;
for i=1:length(p)
    text(real(p(i))+0.1, imag(p(i))+0.1, num2str(p(i)));
end
