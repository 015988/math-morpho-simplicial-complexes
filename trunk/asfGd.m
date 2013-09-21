function cOut=asfGd(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpGdi(cClGdi(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./ggd/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end