function cOut=asfSd(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpSdi(cClSdi(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./ssd/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end