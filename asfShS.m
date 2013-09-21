function cOut=asfShS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpShS(cClShS(cOut,i),i);
    end
end