function R = Correction_gamma_RGB(I,gamma)
[M,N,~] = size(I);
R1 = correction_gamma(I(:,:,1),gamma);
R2 = correction_gamma(I(:,:,2),gamma);
R3 = correction_gamma(I(:,:,3),gamma);

F = zeros(M,N,3);

R(:,:,1) = R1(:,:);
R(:,:,2) = R2(:,:);
R(:,:,3) = R3(:,:);


end