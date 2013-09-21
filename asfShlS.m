function cOut=asfShlS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClShS(cOpShS(cOut,i),i);
    end
end