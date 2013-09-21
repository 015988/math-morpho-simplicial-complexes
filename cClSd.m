function cOut=cClSd(cIn)

    cOut.name=cIn.name;

    [h v d]=d01(cIn.points);
    cOut.points=e10(h,v,d);
    
    p=d10(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=e01(p);
    
    [h v d]=d21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=e12(h,v,d);
    assert(isComplex(cOut),'Not a complex');
end