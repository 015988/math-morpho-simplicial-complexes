function cOut=asfShl(cIn,i)
    cOut=cIn;
    for ii=1:i
       cOut=cClSh(cOpSh(cOut,ii),ii);
       imwrite(cOut.t1,sprintf('./shl/a%d%s',ii,cIn.name));  
       assert(isComplex(cOut),'Not a complex %d',ii);
    end
end