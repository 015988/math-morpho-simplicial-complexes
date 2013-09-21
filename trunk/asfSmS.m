function cOut=asfSmS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cOpSmS(cClSmS(cOut,i),i);
    end
end