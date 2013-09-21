function iOut=classicCl(iIn,k)
se=[[1 1 0];[1 1 1];[0 1 1]];
iOut=iIn;

for kk=1:k
    iOut=imdilate(iOut,se);
end
for kk=1:k
    iOut=imerode(iOut,se);
end
end