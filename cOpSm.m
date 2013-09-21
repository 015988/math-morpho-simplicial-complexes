function cOut=cOpSm(cIn,i)
    cOut=cIn;
    
    i=floor(i/3);
    j=rem(i,3);
    
    for ii=1:i
          cOut=eroS(cOut);
    end
    
    if (j>0)
        cOut=cOpm(cOut,j);
    end
    
    for ii=1:i
          cOut=dilS(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end