function S = Egalisation_RGB_RGB(I)
%% Egalisation de chaque couleur de l'image avec l'histogamme cumulé normalisé de sa couleur corespendante 
[~,~,check] = size(I);
if check == 3
    histogram_cumule_R =histo_cumule(I(:,:,1));
    histogram_cumule_V =histo_cumule(I(:,:,2));
    histogram_cumule_B =histo_cumule(I(:,:,3));

    C1 = zeros(1,256);
    C1(1:end) = (1:1:256);

    R = I(:,:,1);
    V = I(:,:,2);
    B = I(:,:,3);



    [M,N,~] = size(I);
    S = zeros(M,N,3);

    for j = 1:256
        for a = 1:M
            for b = 1:N
                if R(a,b) == C1(1,j)
                    S(a,b,1) = round(255*histogram_cumule_R(1,j));
                end
            end
        end
    end


    for j = 1:256
        for a = 1:M
            for b = 1:N
                if V(a,b) == C1(1,j)
                    S(a,b,2) = round(255*histogram_cumule_V(1,j));
                end
            end
        end
    end



    for j = 1:256
        for a = 1:M
            for b = 1:N
                if B(a,b) == C1(1,j)
                    S(a,b,3) = round(255*histogram_cumule_B(1,j));
                end
            end
        end
    end




    S= uint8(S);
else
    error('Donnez Une Image coloré (3 dimensions)');
end

end