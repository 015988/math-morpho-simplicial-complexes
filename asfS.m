function cOut=asfS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpS(cClS(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./sss/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end