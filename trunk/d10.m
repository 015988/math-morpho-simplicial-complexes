function p=d10(h,v,d)

    s=size(h);
    
    gh=gpuArray(h);
    
    ghd=gh;
    ghd(:,2:end)=gh(:,1:(s(2)-1));
    ghd(:,1)=NaN;
    
    grh=max(gh,ghd);
    clear('gh','ghd');
    
    gv=gpuArray(v);
       
    gvd=gv;
    gvd(2:end,:)=gv(1:(s(1)-1),:);
    gvd(1,:)=NaN;
    
    grv=max(gv,gvd);
    clear('gv','gvd');
    
    gd=gpuArray(d);
    gdd=gd;
    gdd(2:end,2:end)=gd(1:(s(1)-1),1:(s(2)-1));
    gdd(1,:)=NaN;
    gdd(:,1)=NaN;
    
    grd=max(gd,gdd);
    clear('gd','gdd');
    
    gr=max(grh,grv);
    clear('grh','grv');
    grl=max(gr,grd);
    p=gather(grl);
end