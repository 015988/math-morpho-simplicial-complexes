function cOut=dilSS(cIn)
    
    cOut.name=cIn.name;
    
    [h v d]=d01(cIn.points);
    cOut.points=d10(h,v,d);

    p=d10(cIn.h,cIn.v,cIn.d);
    [cOut.h cOut.v cOut.d]=d01(p);

    [h v d]=d21(cIn.t1,cIn.t2);
    [cOut.t1 cOut.t2]=d12(h,v,d);

end