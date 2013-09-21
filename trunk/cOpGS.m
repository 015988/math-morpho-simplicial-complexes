function cOut=cOpGS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=eroGS(cOut);
    end
    for ii=1:i
        cOut=dilGS(cOut);
    end
    
end