function cOut=asfCSl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClCS(cOpCS(cOut,i),i);
    end
end