function cOut=asfSdl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClSdi(cOpSdi(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./sdl/a%d%s',ii,cIn.name));
        assert(isComplex(cOut),'Not a complex %d',ii);
    end
end