function cOut=asfSSl(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClSS(cOpSS(cOut,ii),ii);
        imwrite(cOut.t1,sprintf('./ssl/a%d%s',ii,cIn.name));
    end
end