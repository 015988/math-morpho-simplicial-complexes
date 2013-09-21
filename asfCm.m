function cOut=asfCm(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpCm(cClCm(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ccm/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end