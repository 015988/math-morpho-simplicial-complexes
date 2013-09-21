function cOut=cOpSd(cIn)

    cOut.name=cIn.name;

    [h v d]=e01(cIn.points);
    cOut.points=d10(h,v,d);
    
    p=e10(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=d01(p);
    
    [h v d]=e21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=d12(h,v,d);
    assert(isComplex(cOut),'Not a complex');
end