function cOut=asfGS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpGS(cClGS(cOut,i),i);
    end
end