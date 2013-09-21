function cOut=cOpCS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=eroCS(cOut);
    end
    for ii=1:i
        cOut=dilCS(cOut);
    end
    
end