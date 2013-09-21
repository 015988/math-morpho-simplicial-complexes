function cOut=asfChS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpChS(cClChS(cOut,i),i);
    end
end