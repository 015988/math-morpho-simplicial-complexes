function cOut=cClmS(cIn,d)
    cOut=cIn;
    s=size(cIn.points);
    if (d>0)
        cOut.points=nan(s);
    end
    if (d>1)
        cOut.h=nan(s);
        cOut.v=nan(s);
        cOut.d=nan(s);

        [cOut.h cOut.v cOut.d]=e21(cOut.t1,cOut.t2);
    end
    cOut.points=e10(cOut.h, cOut.v, cOut.d);
        
end