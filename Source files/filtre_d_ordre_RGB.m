function F = filtre_d_ordre_RGB(I,a,d)
[M,N,~] = size(I);
R1 = filtre_d_ordre(I(:,:,1),a,d);
R2 = filtre_d_ordre(I(:,:,2),a,d);
R3 = filtre_d_ordre(I(:,:,3),a,d);

F = zeros(M,N,3);

F(:,:,1) = R1(:,:);
F(:,:,2) = R2(:,:);
F(:,:,3) = R3(:,:);

F = uint8(F);
end