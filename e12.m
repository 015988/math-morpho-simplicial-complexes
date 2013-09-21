function [t1 t2]=e12(h,v,d)
    gh=gpuArray(h);
    gv=gpuArray(v);
    gd=gpuArray(d);
    
    s=size(h);
    
    ghd=gh(2:end,:);
    ghd(s(1),:)=NaN;
    
    
    gr=min(gv,gd);
    grl=min(gr,ghd);
    clear('ghd');
    
    grl(s(1),:)=NaN;
    grl(:,s(2))=NaN;
    t1=gather(grl);
    
    gvd=gv(:,2:end);
    gvd(:,s(2))=NaN;
    
    gr=min(gh,gd);
    clear('gh','gd');
    grl=min(gr,gvd);
    grl(s(1),:)=NaN;
    grl(:,s(2))=NaN;
    t2=gather(grl);
end