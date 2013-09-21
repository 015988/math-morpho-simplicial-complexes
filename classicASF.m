function cOut=classicASF(cIn,i,prefix)
cOut=cIn;

if (i>0)
    im=cIn.points;
    
    for ii=1:i
        im=classicOp(classicCl(im,ii),ii);
        imwrite(uint8(im),sprintf('./%s/a%d%s',prefix,ii,cIn.name));
    end
    
    cOut.points=im;
end
   
end