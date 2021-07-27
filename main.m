close all;
%para mudança de exercicios e de graficos, utilizamos pause(), permitindo
%que o utilizador escolha quando visualizar o proximo exercicio ao
%carregar qualquer tecla do teclado

%exercicio 1

disp('Exercicio1: Histograma')
prompt = 'Escreva o nome do ficheiro: ';
nome_ficheiro = input(prompt, 's');
fonte=ler_ficheiros(nome_ficheiro);
%para escolher uma fonte
histograma_simbolos(fonte, nome_ficheiro);
%fornece o histograma

%%
%exercicio 2

disp('Exercicio 2: Entropia')
prompt = 'Escreva o nome do ficheiro: ';
nome_ficheiro = input(prompt, 's');
fonte = ler_ficheiros(nome_ficheiro);
alfabeto = unique(fonte);
%para escolher uma fonte e eliminar as repeticoes, obtendo o alfabeto
contagem = contar_ocorrencias(alfabeto, fonte);
%contar ocorrencia de cada simbolo
H = entropia(contagem);
%limite minimo teorico para o numero de bits por simbolo
fprintf('Entropia: %.5f\n\n', H);

%%

%exercicio 3

%utiliza o mesmo esquema acima para visualizar o histograma e a entropia de
%cada uma das fontes

fprintf('\nExercicio 3\n\n');

disp('--- guitarSolo.wav ---');
figure(1);
nome_ficheiro = 'guitarSolo.wav';
fonte=ler_ficheiros(nome_ficheiro);
contagem_1 = histograma_simbolos(fonte, nome_ficheiro);
H_1= entropia(contagem_1);
fprintf('Entropia: %.3f\n\n', H_1);

%%

disp('--- kid.bmp ---');
figure(2);
nome_ficheiro = 'kid.bmp';
fonte = ler_ficheiros(nome_ficheiro);
contagem_2 = histograma_simbolos(fonte, nome_ficheiro);
H_2= entropia(contagem_2);
fprintf('Entropia: %.3f\n\n', H_2);

%%
    
disp('--- homer.bmp ---');
figure(3);
nome_ficheiro = 'homer.bmp';
fonte=ler_ficheiros(nome_ficheiro);
contagem_3 = histograma_simbolos(fonte, nome_ficheiro);
H_3= entropia(contagem_3);
fprintf('Entropia: %.3f\n\n', H_3);

%%

    
disp('--- homerBin.bmp ---');
figure(4);
nome_ficheiro = 'homerBin.bmp';
fonte = ler_ficheiros(nome_ficheiro);
contagem_4 = histograma_simbolos(fonte, nome_ficheiro);
H_4= entropia(contagem_4);
fprintf('Entropia: %.3f\n\n', H_4);
                     
    
%%
  
disp('--- english.txt ---');
figure(5);
nome_ficheiro = 'english.txt';
fonte=ler_ficheiros(nome_ficheiro);
contagem_5 = histograma_simbolos(fonte, nome_ficheiro);
H_5 = entropia(contagem_5);
fprintf('Entropia: %.3f\n\n', H_5);

%%
%exercicio 4

fprintf('\nExercicio 4\n\n');

%media do hufflen
fprintf('\n--- MEDIA DO HUFFLEN---\n\n');

%kid
nome_ficheiro = 'kid.bmp';
fonte=ler_ficheiros(nome_ficheiro);
contar_1 = histograma_simbolos(fonte, nome_ficheiro);
%le a fonte e conta a ocorrencia de cada simbolo
media_1 = media(contar_1);
%rotina que obtem o numero medio de bits por simbolo 
disp('kid.bmp')
disp(media_1)

%%
%homer
nome_ficheiro = 'homer.bmp';
fonte=ler_ficheiros(nome_ficheiro);
contar_2 = histograma_simbolos(fonte, nome_ficheiro);
%le a fonte e conta a ocorrencia de cada simbolo
media_2 = media(contar_2);
%rotina que obtem o numero medio de bits por simbolo 
disp('homer.bmp')
disp(media_2)

%%

%homerbin
nome_ficheiro = 'homerBin.bmp';
fonte=ler_ficheiros(nome_ficheiro);
contar_3 = histograma_simbolos(fonte, nome_ficheiro);
%le a fonte e conta a ocorrencia de cada simbolo
media_3 = media(contar_3);
%rotina que obtem o numero medio de bits por simbolo 
disp('homerBin.bmp')
disp(media_3)

%%

%guitarSolo
nome_ficheiro = 'guitarSolo.wav';
fonte=ler_ficheiros(nome_ficheiro);
contar_4 = histograma_simbolos(fonte, nome_ficheiro);
%le a fonte e conta a ocorrencia de cada simbolo
media_4 = media(contar_4);
%rotina que obtem o numero medio de bits por simbolo 
disp('guitarSolo.wav')
disp(media_4)

%%
%english
nome_ficheiro = 'english.txt';
fonte=ler_ficheiros(nome_ficheiro);
contar_5 = histograma_simbolos(fonte, nome_ficheiro);
%le a fonte e conta a ocorrencia de cada simbolo
media_5 = media(contar_5);
%rotina que obtem o numero medio de bits por simbolo 
disp('english.txt')
disp(media_5)

%%
%exercicio 5
fprintf('\nExercicio 5\n\n');

%kid
disp('--- kid ---');
nome_ficheiro = 'kid.bmp';
fonte=ler_ficheiros(nome_ficheiro);
%le a fonte
nova_fonte = agrupamento(fonte);
%nova_fote = fonte apos agrupamento de simbolos
contagem_nova = histograma_simbolos(nova_fonte, nome_ficheiro);
H_nova= entropia(contagem_nova);
fprintf('Nova Entropia: %.3f\n\n', H_nova/2)
%visualizacao do histograma de ocorrencia dos simbolos e entropia para a
%fonte apos agrupamento do alfabeto

%%
%homer
disp('--- homer ---');
nome_ficheiro = 'homer.bmp';
fonte=ler_ficheiros(nome_ficheiro);
%le a fonte
nova_fonte = agrupamento(fonte);
%nova_fote = fonte apos agrupamento de simbolos
contagem_nova = histograma_simbolos(nova_fonte, nome_ficheiro);
H_nova= entropia(contagem_nova);
fprintf('Nova Entropia: %.3f\n\n', H_nova/2)
%visualizacao do histograma de ocorrencia dos simbolos e entropia para a
%fonte apos agrupamento de simbolos

%%

%homerBin
disp('--- homerBin ---');
figure(1);
nome_ficheiro = 'homerBin.bmp';
fonte = ler_ficheiros(nome_ficheiro);
%le a fonte
nova_fonte = agrupamento(fonte);
%nova_fote = fonte apos agrupamento de simbolos
contagem_nova = histograma_simbolos(nova_fonte, nome_ficheiro);
H_nova= entropia(contagem_nova);
fprintf('Nova Entropia: %.3f\n\n', H_nova/2)
%visualizacao do histograma de ocorrencia dos simbolos e entropia para a
%fonte apos agrupamento do alfabeto

%%

%guitarSolo
disp('--- guitarSolo ---');
nome_ficheiro = 'guitarSolo.wav';
fonte = ler_ficheiros(nome_ficheiro);
%le a fonte
nova_fonte = agrupamento(fonte);
%nova_fote = fonte apos agrupamento de simbolos
contagem_nova = histograma_simbolos(nova_fonte, nome_ficheiro);
H_nova= entropia(contagem_nova);
fprintf('Nova Entropia: %.3f\n\n', H_nova/2)
%visualizacao do histograma de ocorrencia dos simbolos e entropia para a
%fonte apos agrupamento do alfabeto

%%
%english
disp('--- english ---');
nome_ficheiro = 'english.txt';
fonte=ler_ficheiros(nome_ficheiro);
%le a fonte
nova_fonte = agrupamento(fonte);
%nova_fote = fonte apos agrupamento de simbolos
contagem_nova = histograma_simbolos(nova_fonte, nome_ficheiro);
H_nova= entropia(contagem_nova);
fprintf('Nova Entropia: %.3f\n\n', H_nova/2)
%visualizacao do histograma de ocorrencia dos simbolos e entropia para a
%fonte apos agrupamento do alfabeto
close all

%%
%exercicio 6

disp('Exercicio 6 a)')
query = [2 6 4 10 5 9 5 8 0 8]; 
target = [6 8 9 7 2 4 9 9 4 9 1 4 8 0 1 2 2 6 3 2 0 7 4 9 5 4 8 5 2 7 8 0 7 4 8 5 7 4 3 2 2 7 3 5 2 7 4 9 9 6]; 
alfabeto = 0 : 10; 
step = 1;
%exemplo de valores
inf = informacaoMutua(query, target, alfabeto, step);
disp(inf)
%visualizacao do vector de valores de informacao mutua em cada janela

%%

disp('Exercicio 6 b)')
query = ler_ficheiros('guitarSolo.wav');
step = length(query)/4; 
%passo com valor de 1/4 do comprimento do vector da query

target1 = ler_ficheiros('target01 - repeat.wav');
alfabeto1 = unique(target1);
inf1 = informacaoMutua(query, target1, alfabeto1, step);
disp(inf1)
%visualizacao do vector de valores de informacao mutua em cada janela

figure(1)
subplot(211);
plot(1:length(inf1), inf1)
title('target01 - repeat.wav')
xlabel('tempo');
ylabel('valores de informa??o m?tua');
%visualizacao do grafico com a evolucao da informacao mutua ao longo do
%tempo para target1

%%

target2 = ler_ficheiros('target02 - repeatNoise.wav');
alfabeto2 = unique(target2);
inf2 = informacaoMutua(query, target2, alfabeto2, step);
disp(inf2)
%visualizacao do vector de valores de informacao mutua em cada janela

subplot(212);
plot(1:length(inf2), inf2)
title('target02 - repeatNoise.wav')
xlabel('tempo');
ylabel('valores de informacao mutua');
%visualizacao do grafico com a evolucao da informacao mutua ao longo do
%tempo para target1

close all


%%
disp('Exercicio 6 c)')

query = ler_ficheiros('guitarSolo.wav');
maximos = zeros(9,1);
%cria a matriz maximos de 9 linhas e 1 coluna com zeros


for i = 1 : 1
    %para cada fonte
    fprintf('Song0%d: \n', i);
    filename = sprintf('Song0%d.wav', i);
    target = ler_ficheiros(filename);
    %ler o ficheiro Song para target
    step = length(query)/4; 
    %passo com valor de 1/4 do comprimento do vector da query
     
    if (i>7)
        %para os ficheiros Song08 e Song09, que sao estereos
        %usamos target(:1) para utilizarmos o canal da esquerda
        inf = informacaoMutua(query, target(:,1), alfabeto, step);
        %vector de valores de informacao mutua em cada janela
        
    else
         
        alfabeto = unique(target); 
        inf = informacaoMutua(query, target, alfabeto, step);
        %vector de valores de informacao mutua em cada janela
    end
    
    plot(1:length(inf), inf)
    title(filename); 
    %grafico com evolucao da Informacao Mutua entre determinada Song e o guitarSolo.
    maximos(i) = max(inf);
    %maximo(i) guarda o valor maximo de informacao mutua para a Song0i
    disp('->Carregue enter para proxima Song')
    pause()
   
end
close all
