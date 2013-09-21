function cOut=cOpGm(cIn,i)
    cOut=cIn;
    
    i=floor(i/3);
    j=rem(i,3);
    
    for ii=1:i
          cOut=eroG(cOut);
    end
    
    if (j>0)
        cOut=cOpm(cOut,j);
    end
    
    for ii=1:i
          cOut=dilG(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end