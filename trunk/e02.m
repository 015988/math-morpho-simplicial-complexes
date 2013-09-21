function [t1 t2]=e02(points)
    gp=gpuArray(points);
    
    s=size(points);
    
    gd=gp(2:end,2:end);
    gd(s(1),:)=NaN;
    gd(:,s(2))=NaN;

    gr=min(gp,gd);
    
    gv=gp(2:end,:);
    gv(s(1),:)=NaN;

    grl=min(gr,gv);
    clear('gv','gr');
    
    grl(s(1),:)=NaN;
    grl(:,s(2))=NaN;
    t1=gather(grl);

    gh=gp(:,2:end);
    gh(:,s(2))=NaN;
    
    gr=min(gp,gh);
    clear('gh');
    
    grl=min(gr,gd);
    grl(s(1),:)=NaN;
    grl(:,s(2))=NaN;
    t2=gather(grl);

end