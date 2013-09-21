function cOut=cClC(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=dilC(cOut);
    end
    for ii=1:i
        cOut=eroC(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end