function cOut=asfSh(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpSh(cClSh(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./ssh/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end