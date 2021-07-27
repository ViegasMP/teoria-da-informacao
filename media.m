function media = media(contagem)

    hl = hufflen(contagem);
    p = contagem/sum(contagem);
    media = sum(hl.*p);
    
end



