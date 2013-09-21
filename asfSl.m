function cOut=asfSl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClS(cOpS(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ssl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end