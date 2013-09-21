function C=createComplex(filename)
%reads image 'filename' and creates the appropropriate 2D simplicial
%complex C
    C.name=filename;
    C.points=double(imread(filename));
    s=size(C.points);
    if (size(s,2)>2)
        C.points=squeeze(C.points(:,:,1));
    end
    s=size(C.points);
    C.h=nan(s);
    C.v=nan(s);
    C.d=nan(s);
    C.t1=nan(s);
    C.t2=nan(s);
    C=cStA(C);
end