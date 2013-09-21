function cOut=asfC(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpC(cClC(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ccc/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end