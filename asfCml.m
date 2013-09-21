function cOut=asfCml(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClCm(cOpCm(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./cml/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end