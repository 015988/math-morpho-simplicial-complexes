function cOut=asfG(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpG(cClG(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ggg/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end