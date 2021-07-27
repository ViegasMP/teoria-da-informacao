function [H] = entropia(contagem)

%limite m�nimo te�rico para o n�mero m�dio de bits por s�mbolo

H = 0;
%F�rmula da Entropia:
%H = somatorio *  (probabilidade(ai)*log2(1/prob(ai)) )
%  = - somatorio * (probabilidade(ai)*log2(prob(ai))
  
    total=sum(contagem);
    probabilidade= contagem/total;
    probabilidade= probabilidade(probabilidade~=0); %elimina probabilidades = 0 (~= 0 significa diferentes de 0)
    H = -sum(probabilidade.*log2(probabilidade));

end

