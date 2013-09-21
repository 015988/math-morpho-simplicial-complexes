function cOut=cOpSdi(cIn,i)
    cOut=cIn;
    
    a=floor(i/2);
    b=rem(i,2);
    
    for ii=1:a
          cOut=eroS(cOut);
    end
    
    if (b==1)
        cOut=cOpSd(cOut);
    end
    
    for ii=1:a
          cOut=dilS(cOut);
    end
    assert(isComplex(cOut),'Not a complex');

end