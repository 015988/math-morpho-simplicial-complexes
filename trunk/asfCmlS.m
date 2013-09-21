function cOut=asfCmlS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClCmS(cOpCmS(cOut,i),i);
    end
end