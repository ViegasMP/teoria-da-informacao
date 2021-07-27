function [val] = calcInf(query,window,alfabeto)
    c1 = contar_ocorrencias(alfabeto, query);
    h1 = entropia(c1);
    c2 = contar_ocorrencias(alfabeto, window);
    h2 = entropia(c2);
    %guarda a ocorrencia de cada simbolo e entropia do query e da window
    p = zeros(length(alfabeto));
    %cria uma matriz de zeros com dimencoes do tamanho alfabeto
    
    for i = 1:length(query)
        %para a fonte query inteira
        posX = find(alfabeto == query(i));
        %guarda o indice linear de todas as ocorrencias do s?mbolo querry(i) no alfabeto
        posY = find(alfabeto == window(i));
        %guarda o indice linear de todas as ocorrencias do s?mbolo window(i) no alfabeto
        p(posX,posY) = p(posX,posY) + 1;
        %Aumenta +1 de tamanho na janela
    end
   
    p = p(:);
    hConj = entropia(p);
    %calcula entropia conjunta
    val = h1 + h2 - hConj;
    %formula Informa??o M?tua
    
    %devolve val
end

