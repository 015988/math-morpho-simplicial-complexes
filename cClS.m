function cOut=cClS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=dilS(cOut);
    end
    for ii=1:i
        cOut=eroS(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end