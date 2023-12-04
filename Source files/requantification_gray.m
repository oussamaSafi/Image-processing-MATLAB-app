function R = requantification_gray(I,a)

   
    I = double(I);
    [M,N] = size(I);
    
    R = zeros(M,N);
    
    
    
    
    
    for i = 1:M
        for j = 1:N
            D = dec2bin(I(i,j),8);
            shift = D(1:a);
            u = bin2dec(shift);
            R(i,j) = u*(255/(2^a - 1));
        end
    end
    R = uint8(R);
end


