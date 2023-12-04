function R = filtre_moyonneur_RGB(I,a)
    h = (1/(a*a)) * ones(a,a);
    R1 = func_convolutiongeneral(I(:,:,1),h);
    R2 = func_convolutiongeneral(I(:,:,2),h);
    R3 = func_convolutiongeneral(I(:,:,3),h);

    R(:,:,1) = R1(:,:);
    R(:,:,2) = R2(:,:);
    R(:,:,3) = R3(:,:);

    R= uint8(R);
end