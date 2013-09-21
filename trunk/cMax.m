function cOut=cMax(c1,c2)
%returns the a complex in which the values correspond to the max values
%associated with corresponding simplices
    cOut.filename=[c1.name c2.name];
    cOut.points=max(c1.points,c2.points);
    cOut.h = max(c1.h,c2.h);
    cOut.v = max(c1.v,c2.v);
    cOut.d = max(c1.d,c2.d);
    cOut.t1 = max(c1.t1,c2.t1);
    cOut.t2 = max(c1.t2,c2.t2);
end