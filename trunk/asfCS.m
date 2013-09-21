function cOut=asfCS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpCS(cClCS(cOut,i),i);
    end
end