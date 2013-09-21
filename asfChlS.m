function cOut=asfChlS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClChS(cOpChS(cOut,i),i);
    end
end