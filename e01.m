function [h v d]=e01(points)
    gp=gpuArray(points);
    
    s=size(points);
    
    gh=gp(:,2:end);
    gh(:,s(2))=NaN;
    
    gr=min(gp,gh);
    clear('gh');
    gr(:,s(2))=NaN;
    h=gather(gr);

    
    
    gv=gp(2:end,:);
    gv(s(1),:)=NaN;

    gr=min(gp,gv);
    clear('gv');
    gr(s(1),:)=NaN;
    v=gather(gr);
    
    
    gd=gp(2:end,2:end);
    gd(s(1),:)=NaN;
    gd(:,s(2))=NaN;

    gr=min(gp,gd);
        
    gr(s(1),:)=NaN;
    gr(:,s(2))=NaN;
    
    d=gather(gr);

end