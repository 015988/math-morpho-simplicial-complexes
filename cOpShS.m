function cOut=cOpShS(cIn,i)
    cOut=cIn;
    
    a=floor(i/2);
    b=rem(i,2);
    
    for ii=1:a
          cOut=eroSS(cOut);
    end
    
    if (b==1)
        cOut=cOphS(cOut);
    end
    
    for ii=1:a
          cOut=dilSS(cOut);
    end
end