function R = filtre_mediane(I,a)

%I: Image a filtré
%a: taille du filtre
[M,N,~] = size(I);

R = zeros(M,N,1);
t=floor(a/2);
for i =t*2:M-1
    for j =t*2:N-1
        P = I(i-t:i+1,j-t:j+1);
        E=reshape(P,[],1);
        E1 = sort(E);
        R(i,j) = E1(ceil(length(E1)/2));
    end
end
R= uint8(R);
end