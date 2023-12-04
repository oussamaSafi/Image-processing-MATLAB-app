%% Crée par : Oussama Safi
    %2/10/2023
    
function [histo_cumul_egal,E] = Egalisation_histo_func(I)

    
    
    [M,N,~] = size(I);
    
    C1 = zeros(1,256);
    C1(1:end) = (1:1:256);
    histo = histogram__image(I);
    
    
    
    % calculer l'histogramme cumulé normalisé
    
    
    histo_cumul_norm = zeros(1,M);
    
    for i = 1:256
        S = histo(i)/(M*N);
        if i > 1
            histo_cumul_norm(1,i) = histo_cumul_norm(1,i-1) + S;
        else
            histo_cumul_norm(1,i) = S;
        end
    end
    
    
    
    % Egalisation
    
    E = zeros(M,N,1);
    
    for j = 1:256
        for a = 1:M
            for b = 1:N
                if I(a,b) == C1(1,j)
                    E(a,b) = round(255*histo_cumul_norm(1,j));
                end
            end
        end
    end
    
    histo_cumul_egal = histogram__image(E);
    E = uint8(E);
    
end


