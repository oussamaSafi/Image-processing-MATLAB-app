function [L] = rgb_to_gray(I,M,N)
L = zeros(M,N);
%L = 0.3*I(:,:,1) + 0.59*I(:,:,2) + 0.11*I(:,:,3);

for i=1:M
  for j=1:N
      L(i,j) = 0.3*I(i,j,1) + 0.59*I(i,j,2) + 0.11*I(i,j,3);
  end
end
L = uint8(L);
end