function R = filtre_moyonneur(I,a)
    h = (1/(a*a)) * ones(a,a);
    R = func_convolutiongeneral(I,h);
    R = uint8(R);
end