function cOut=asfGl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClG(cOpG(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ggl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end