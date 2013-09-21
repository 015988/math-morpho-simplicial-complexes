function cOut=asfCmS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpCmS(cClCmS(cOut,i),i);
    end
end