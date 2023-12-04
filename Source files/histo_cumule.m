function  histo_cumul_norm = histo_cumule(I)

    [M,N,~] = size(I);
    histo = histogram__image(I);

    % calculer l'histogramme cumulé normalisé

    histo_cumul_norm = zeros(1,256);

    for i = 1:256
        S = histo(i)/(M*N);
        if i > 1
            histo_cumul_norm(1,i) = histo_cumul_norm(1,i-1) + S;
        else
            histo_cumul_norm(1,i) = S;
        end
    end

   
end