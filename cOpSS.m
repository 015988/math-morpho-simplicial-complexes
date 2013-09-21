function cOut=cOpSS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=eroSS(cOut);
    end
    for ii=1:i
        cOut=dilSS(cOut);
    end
    
end