function cOut=eroS(cIn)

    cOut.name=cIn.name;

    [h v d]=e01(cIn.points);
    cOut.points=e10(h,v,d);
    
    [h v d]=e21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=e12(h,v,d);
    
    p=e10(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=e01(p);   
    cOut=cStA(cOut);
    assert(isComplex(cOut),'Not a complex');
end