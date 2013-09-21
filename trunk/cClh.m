function cOut=cClh(cIn)
    cOut=cStA(cSt(cIn));
    assert(isComplex(cOut),'Not a complex');
end