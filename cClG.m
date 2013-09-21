function cOut=cClG(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=dilG(cOut);
    end
    for ii=1:i
        cOut=eroG(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end