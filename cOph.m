function cOut=cOph(cIn)
    cOut=cCl(cClA(cIn));
    assert(isComplex(cOut),'Not a complex');
end