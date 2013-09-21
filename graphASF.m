function cOut=graphASF(cIn,i)
cOut=cIn;

if (i>0)
    for ii=1:i
        cOut=graphOp(graphCl(cOut,ii),ii);
        imwrite(uint8(255*(cOut.points/max(max(cOut.points)))),sprintf('./gra/a%d%s',ii,cIn.name));
    end
end


end