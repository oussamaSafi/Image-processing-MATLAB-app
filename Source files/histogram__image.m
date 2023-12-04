%% crée par Oussama Safi
% 26/09/2023


function C2 = histogram__image(I)
    
    % trouver les dimensions d'image
    [M,N,~] = size(I);
    
    % Matrice contenant les valeurs possible a trouver dans une matrice
    % (1 -> 256)
    C1 = zeros(1,256);
    
    % Matrice contenant le nombre de fois qu'on a trouver chaque nombre
    C2 = zeros(1,256);
    
    % remplire la matrice par des valeurs de 1 jusqu'a 255
    [~,e2,~] = size(C1);
    C1(1:end) = (1:1:e2);

    % on parcouru la matrice pour tester si on a trouver un nombre puis on
    % pass pour tester le prochain (1 -> 255) si on trouve ce nombre on
    % augmente la valeur d'element ccorrespondant à ce nombre dans la
    % matrice C2
    for x = 1:255
        for i = 1:M
            for j = 1:N
                if I(i,j) == x
                    C2(x) = C2(x) +1;
                end
            end
        end
    end  
end
