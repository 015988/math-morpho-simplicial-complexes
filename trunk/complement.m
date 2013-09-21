function cOut=complement(cIn,maxValue)
cOut=[];
cOut.name=cIn.name;
if (isstruct(cIn))
    names=fieldnames(cIn);
    for i=1:size(names,1)
        n=cell2mat(names(i));
        if (~ischar(cIn.(n)))
            cOut.(n)=complement(cIn.(n),maxValue);
        end
        %            out=setfield(out,n,complement(getfield(input,n),maxValue));
    end
else
    cOut=maxValue-cIn;
end

end