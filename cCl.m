function cOut=cCl(cIn)
    cOut=cIn;
    [h v d]=d21(cIn.t1,cIn.t2);
    cOut.h=max(cOut.h,h);
    cOut.v=max(cOut.v,v);
    cOut.d=max(cOut.d,d);
    p=d10(cOut.h,cOut.v,cOut.d);
    cOut.points=max(cOut.points,p);
end