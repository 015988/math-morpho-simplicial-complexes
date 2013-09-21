function [h v d]=d21(t1, t2)
    gt1=gpuArray(t1);
    gt2=gpuArray(t2);
    
       
    s=size(t1);
    
    
    
    gt1d=gt1;
    gt1d(2:end,:)=gt1(1:(s(1)-1),:);
    gt1d(1,:)=NaN;
    
    gh=max(gt1d,gt2);
    clear('gt1d');
    gh(:,s(2))=NaN;
    h=gather(gh);
    clear('gh')
    
    
    gt2d=gt2;
    gt2d(:,2:end)=gt2(:,1:(s(2)-1));
    gt2d(:,1)=NaN;
    
    gv=max(gt1,gt2d);
    clear('gt2d');
    gv(s(1),:)=NaN;
    v=gather(gv);
    clear('gv');
    

    %diagonal
    gd=max(gt1,gt2);
    gd(s(1),:)=NaN;
    gd(:,s(2))=NaN;
    d=gather(gd);

end