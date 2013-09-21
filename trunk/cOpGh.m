function cOut=cOpGh(cIn,i)
    cOut=cIn;
    
    a=floor(i/2);
    b=rem(i,2);
    
    for ii=1:a
          cOut=eroG(cOut);
    end
    
    if (b==1)
        cOut=cOph(cOut);
    end
    
    for ii=1:a
          cOut=dilG(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end