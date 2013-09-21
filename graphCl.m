    function iOut=graphCl(iIn,k)
        iOut=iIn;
        a=floor(k/2);
        b=rem(k,2);
        
        for kk=1:a
            [h v d]=d01(iOut.points);
            iOut.points=d10(h,v,d);
            
            p=d10(iOut.h,iOut.v,iOut.d);
            [iOut.h iOut.v iOut.d]=d01(p);
        end
        if (b==1)
            [h v d]=d01(iOut.points);
            iOut.points=e10(h,v,d);
            
            p=d10(iOut.h,iOut.v,iOut.d);
            [iOut.h iOut.v iOut.d]=e01(p);
            
        end
        for kk=1:a
            [h v d]=e01(iOut.points);
            iOut.points=e10(h,v,d);
            
            p=e10(iOut.h,iOut.v,iOut.d);
            [iOut.h iOut.v iOut.d]=e01(p);
        end
    end
