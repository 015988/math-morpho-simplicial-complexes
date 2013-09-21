function cOut=cClm(cIn,d)
    cOut=cIn;
    s=size(cIn.points);
    
    if (d>0)
        cOut.t1=nan(s);
        cOut.t2=nan(s);
    end
    
    if (d>1)
        cOut.h=nan(s);
        cOut.v=nan(s);
        cOut.d=nan(s);

        [cOut.h cOut.v cOut.d]=e01(cOut.points);
    end
    [cOut.t1 cOut.t2]=e12(cOut.h, cOut.v, cOut.d);
    assert(isComplex(cOut),'Not a complex');    
end