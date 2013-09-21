function cOut=cMin(c1,c2)
%returns the a complex in which the values correspond to the max values
%associated with corresponding simplices
    cOut.filename=[c1.name c2.name];
    
    cOut.points=min(c1.points,c2.points);
    cOut.h = min(c1.h,c2.h);
    cOut.v = min(c1.v,c2.v);
    cOut.d = min(c1.d,c2.d);
    cOut.t1 = min(c1.t1,c2.t1);
    cOut.t2 = min(c1.t2,c2.t2);
end