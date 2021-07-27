function [nova_fonte] = agrupamento(fonte)
%agrupar os simbolos do alfabeto em dois simbolos continuos 

%a nova fonte vai ter metade do tamanho da fonte original visto que os simbolos sao agrupados 2 a 2

fonte = double(fonte);
if (mod(length(fonte), 2) == 1)
    fonte(end)=[];
end
%agrupar dois a dois

array_impar = fonte(1:2:end-1);
%a partir do elemento na primeira posicao impar (1), de dois em dois, ate o penultimo elemento
array_par = fonte(2:2:end);
%a partir do elemento na primeira posicao par (2), de dois em dois, ate o ultimo elemento

nova_fonte = double(array_impar*(2^8) + array_par);
%nova_fonte = valor double da juncao do array_impar e o array_par
 
%output da nova_fonte

end
