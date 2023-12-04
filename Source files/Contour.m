function P = Contour(I,a)
[M,N,z] = size(I);
if z == 3
g=rgb2gray(I);
else
    g=I;
end


if a == 1
    h = [-1 0;0 1];
    h2 = [0 -1;1 0];
elseif a==2
    h = [-1 -1 -1; 0 0 0; 1 1 1];
    h2 = [-1 0 1;-1 0 1;-1 0 1];
elseif a ==3
    h = [-1 -2 -1; 0 0 0; 1 2 1];
    h2 = [-1 0 1;-2 0 2;-1 0 1];
end

[m,n,~] = size(h);



R1 = zeros(M,N,1);
R2 = zeros(M,N,1);

r1= 0;
r2=0;
k=0;

 c1 = ceil(m/2);
    c2 = ceil(n/2);
    if a == 1
        R1 = conv2(g,h);
        R2 = conv2(g,h2);
    else
    R1 = func_convolutiongeneral(g,h);
    R2= func_convolutiongeneral(g,h2);
    end


R1 = double(R1);
R2 = double(R2);

magp = sqrt(R1.^2 + R2.^2);
angp = round((180/pi)*atan2(R1,R2));
l = histogram__image(magp);
E=reshape(l,[],1);
E1 = sort(E);
treshold = E1(ceil(length(E1)/2));

P = zeros(M,N);

for x =1:M
    for y=1:N
        if magp(x,y) > 125
            P(x,y) = 255;
        else
            P(x,y) = 0;
        end
    end
end
P = uint8(P);

end