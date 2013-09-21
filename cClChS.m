function cOut=cClChS(cIn,i)
    cOut=cIn;
    
    a=floor(i/2);
    b=rem(i,2);
    
    for ii=1:a
          cOut=dilCS(cOut);
    end
    
    if (b==1)
        cOut=cClhS(cOut);
    end
    
    for ii=1:a
          cOut=eroCS(cOut);
    end
end