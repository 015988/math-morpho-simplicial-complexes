function cOut=dilG(cIn)

    cOut.name=cIn.name;

    [h v d]=d01(cIn.points);
    cOut.points=d10(h,v,d);
    
    [t1 t2]=d12(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=d21(t1,t2);
    
    [h v d]=d21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=d12(h,v,d);
    assert(isComplex(cOut),'Not a complex');
end