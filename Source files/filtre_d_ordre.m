function R = filtre_d_ordre(I,a,d)

%I: Image a filtré
%a: taille du filtre
%d: ordre du filtre
[M,N,~] = size(I);

R = zeros(M,N,1);
t=floor(a/2);
for i =t*2:M-1
    for j =t*2:N-1
        P = I(i-t:i+1,j-t:j+1);
        E=reshape(P,[],1);
        E1 = sort(E);
        R(i,j) = E1(d);
    end
end
R= uint8(R);
end