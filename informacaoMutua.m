function [inf] = informacaoMutua(query, target, alfabeto, step)
    qLen = length(query);
    tLen = length(target);
    %guarda os tamanhos de query e de target
    pLim = (tLen-qLen+1)/step;
    
    inf = zeros(int8(pLim),1);
    %inf e um vetor de tamanho pLim convertidos para 8-bit [-128, 127]
    inf = double(inf);
    %inf e reconvertido para double
    k = 1;
    %inicia variavel 
    
    for i = 1:step:(tLen-qLen+1)
        %enquanto i for menor  que a diferenca de tamanhos de step em step
        window = target(i:i+qLen-1);
        %janela deslizante
        inf(k) = calcInf(query, window, alfabeto);
        %calcula-se a informacao m?tua
        k = k+1;
        %incrementa variavel
    end
end
