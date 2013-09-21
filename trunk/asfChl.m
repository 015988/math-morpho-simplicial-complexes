function cOut=asfChl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClCh(cOpCh(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./chl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end