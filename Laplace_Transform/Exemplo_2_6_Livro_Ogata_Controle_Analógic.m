% Exemplo 2.6 do livro Ogata - Controle Analógico
% K = Ganho da Função, p = Pólos da Função, r = Resíduo da Função

clc; clear; close all;

num = [2 5 3 6];
dem = [1 6 11 6];

[r, p, k] = residue(num, dem);

scatter(real(p), imag(p), 'x'), grid on;
for i=1:length(p)
    text(real(p(i))+0.1, imag(p(i))+0.1, num2str(p(i))); %Adicionará valores aos pólos, mostrando os seus valores.
end


