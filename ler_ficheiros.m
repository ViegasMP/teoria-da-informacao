
function [fonte] = ler_ficheiros(nome_ficheiro)
%ler a fonte de acordo com o seu tipo(som, imagem ou texto)

%se o ficheiro for audio

if (endsWith(nome_ficheiro, '.wav')==1)
    fonte = audioread(nome_ficheiro);

%se o ficheiro for uma imagem

elseif (endsWith(nome_ficheiro, '.bmp')==1)
    fonte= imread(nome_ficheiro); 
        
%se for um ficheiro de texto

else
    fonte= fileread(nome_ficheiro);
    %tratamento de dados do texto
    fonte(regexp(fonte,'[., \n]')) = [];
    fonte = double(fonte);
  
end 

%output da fonte

end

