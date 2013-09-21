function cOut=asfSml(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClSm(cOpSm(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./sml/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end