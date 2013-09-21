function cOut=asfCh(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpCh(cClCh(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./cch/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end