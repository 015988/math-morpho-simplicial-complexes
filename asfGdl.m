function cOut=asfGdl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClGdi(cOpGdi(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./gdl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end