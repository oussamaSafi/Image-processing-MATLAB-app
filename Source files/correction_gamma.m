function P = correction_gamma(Image,gamma)
[M,N,z] = size(Image);
   
        gray = Image;
    
    
    
    negatif = zeros(M,N,1);
    
    for i = 1:M
        for j = 1:N
            negatif(i,j)= 255 - gray(i,j);
        end
    end
    
    negatif = uint8(negatif);
    
    gray = double(gray);
    
   
    
    P = zeros(M,N,1);
    
    for i = 1:M
        for j = 1:N
            P(i,j)= ((255 / (255 ^ (gamma))) * (gray(i,j) ^ (gamma)));
        end
    end
    
    P = uint8(P);



end