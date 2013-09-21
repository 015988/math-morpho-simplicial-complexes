function cOut=asfCl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClC(cOpC(cOut,ii),ii);
        imwrite(uint8(cOut.points),sprintf('./ccl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);        
    end
end