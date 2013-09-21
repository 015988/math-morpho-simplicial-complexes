function cOut=cOpmS(cIn,d)
    cOut=cIn;
    s=size(cIn.points);
    
    if (d>0)
        cOut.t1=nan(s);
        cOut.t2=nan(s);
    end
    
    if (d>1)
        cOut.h=nan(s);
        cOut.v=nan(s);
        cOut.d=nan(s);

        [cOut.h cOut.v cOut.d]=d01(cOut.points);
    end
    [cOut.t1 cOut.t2]=d12(cOut.h, cOut.v, cOut.d);
        
end