function cOut=cClGhS(cIn,i)
    cOut=cIn;
    
    a=floor(i/2);
    b=rem(i,2);
    
    for ii=1:a
          cOut=dilGS(cOut);
    end
    
    if (b==1)
        cOut=cClhS(cOut);
    end
    
    for ii=1:a
          cOut=eroGS(cOut);
    end
end