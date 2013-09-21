function cOut=asfSS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpSS(cClSS(cOut,i),i);
    end
end