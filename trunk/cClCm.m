function cOut=cClCm(cIn,i)
    cOut=cIn;
    
    a=floor(i/3);
    b=rem(i,3);
    
    for ii=1:a
          cOut=dilC(cOut);
    end
    
    if (b>0)
        cOut=cClm(cOut,b);
    end
    
    for ii=1:a
          cOut=eroC(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end