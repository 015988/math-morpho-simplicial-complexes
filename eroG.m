function cOut=eroG(cIn)
    
    cOut.name=cIn.name;

    [h v d]=e01(cIn.points);
    cOut.points=e10(h,v,d);
    
    [t1 t2]=e12(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=e21(t1,t2);
    
    [h v d]=e21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=e12(h,v,d);
    cOut=cStA(cOut);
    assert(isComplex(cOut),'Not a complex');   
end