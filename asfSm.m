function cOut=asfSm(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpSm(cClSm(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./ssm/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end