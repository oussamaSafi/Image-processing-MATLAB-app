function f=func_convolutiongeneral(I,noyau)
    
    [M,N]=size(I);
    
    [mm,nn]=size(noyau);
    
    fm=floor(mm/2);
    fn=floor(nn/2);
    cm=ceil(mm/2);
    cn=ceil(nn/2);
    Ir=zeros(M+2*fm,N+2*fn);
    g=zeros(M+2*fm,N+2*fn);
    
    for i=cm:M+fm
        for j=cn:N+fn
            Ir(i,j)=I(i-fm,j-fn);
        end
    end
    
   
    
    
    
    for i = cm:M+fm
        for j =ceil(nn/2):N+fn
            for k=-fm:fm
                for l=-fn:fn
                   
                    g(i,j)=noyau(k+cm,l+cm)*Ir(i+k,j+l)+g(i,j);
                end
            end
        end
    end
    
    f=g(cm:end-fm,cm:end-fm);
    
    
end