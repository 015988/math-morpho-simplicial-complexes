function cOut=cClShs(cIn,i)
    cOut=cIn;
    
    i=floor(i/2);
    j=rem(i,2);
    
    for ii=1:i
          cOut=dilSS(cOut);
    end
    
    if (j==1)
        cOut=cClhS(cOut);
    end
    
    for ii=1:i
          cOut=eroSS(cOut);
    end
end