function [contar] = histograma_simbolos(fonte, titulo)

%cria o histograma 

close all;

alfabeto = unique(fonte);
contar = contar_ocorrencias(alfabeto, fonte);

bar(alfabeto, contar);

%output = contar;

title(titulo);
xlabel('Alfabeto');
ylabel('Numero de ocorrencias');

  
end
