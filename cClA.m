function cOut=cClA(cIn)
    cOut=cIn;
    [h v d]=e21(cIn.t1,cIn.t2);
    cOut.h=min(cOut.h,h);
    cOut.v=min(cOut.v,v);
    cOut.d=min(cOut.d,d);
    p=e10(cOut.h,cOut.v,cOut.d);
    cOut.points=min(cOut.points,p);
end