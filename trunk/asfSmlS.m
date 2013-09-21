function cOut=asfSmlS(cIn,i)
    cOut=cIn;
    for ii=1:i
        cOut=cClSmS(cOpSmS(cOut,i),i);
    end
end