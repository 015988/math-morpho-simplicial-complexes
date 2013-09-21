function cOut=cOpG(cIn,i)

    cOut=cIn;
    for ii=1:i
          cOut=eroG(cOut);
    end
    for ii=1:i
          cOut=dilG(cOut);
    end
    assert(isComplex(cOut),'Not a complex');
end