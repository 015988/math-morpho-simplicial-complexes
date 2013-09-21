function cOut=cClCS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=dilCS(cOut);
    end
    for ii=1:i
        cOut=eroCS(cOut);
    end
    
end