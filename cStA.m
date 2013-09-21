function cOut=cStA(cIn)
% despite the name, it mathematically corresponds to \opStar\adjoint, not
% StA.. then its the same as ClA
    cOut=cIn;
    [h v d]=e01(cIn.points);
    cOut.h=min(cOut.h,h);
    cOut.v=min(cOut.v,v);
    cOut.d=min(cOut.d,d);
    [t1 t2]=e12(cOut.h,cOut.v,cOut.d);
    cOut.t1=min(cOut.t1,t1);
    cOut.t2=min(cOut.t2,t2);
end