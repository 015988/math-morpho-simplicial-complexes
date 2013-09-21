function cOut=cSt(cIn)
    cOut=cIn;
    [h v d]=d01(cIn.points);
    cOut.h=max(cOut.h,h);
    cOut.v=max(cOut.v,v);
    cOut.d=max(cOut.d,d);
    [t1 t2]=d12(cOut.h,cOut.v,cOut.d);
    cOut.t1=max(cOut.t1,t1);
    cOut.t2=max(cOut.t2,t2);
end