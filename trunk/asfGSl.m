function cOut=asfGSl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClGS(cOpGS(cOut,i),i);
    end
end