function F =  filtre_mediane_RGB(I,a)
R1 = filtre_mediane(I(:,:,1),a);
R2 = filtre_mediane(I(:,:,2),a);
R3 = filtre_mediane(I(:,:,3),a);

[M,N,~] = size(I);
F = zeros(M,N,3);

F(:,:,1) = R1(:,:);
F(:,:,2) = R2(:,:);
F(:,:,3) = R3(:,:);

F = uint8(F);
end