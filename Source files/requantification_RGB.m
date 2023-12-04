function R= requantification_RGB(I,a)

[M,N,~] = size(I);
R1 = requantification_gray(I(:,:,1),a);
R2 = requantification_gray(I(:,:,2),a);
R3 = requantification_gray(I(:,:,3),a);

R = zeros(M,N,3);

R(:,:,1) = R1(:,:);
R(:,:,2) = R2(:,:);
R(:,:,3) = R3(:,:);

R = uint8(R);
end