function cOut=cClGm(cIn,i)
    cOut=cIn;
    
    i=floor(i/3);
    j=rem(i,3);
    
    for ii=1:i
          cOut=dilG(cOut);
    end
    
    if (j>0)
        cOut=cClm(cOut,j);
    end
    
    for ii=1:i
          cOut=eroG(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end