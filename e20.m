function p=e20(t1,t2)
    gt1=gpuArray(t1);
    gt2=gpuArray(t2);
    
    s=size(t1);
    
    gt1d=gt1;
    gt1d(2:end,:)=gt1(1:(s(1)-1),:);
    gt1d(1,:)=NaN;

    gt2d=gt2;
    gt2d(:,2:end)=gt2(:,1:(s(2)-1));
    gt2d(:,1)=NaN;

    gd=min(gt1d,gt2d);


    
    gt1dd=gt1;
    gt1dd(:,2:end)=gt1d(:,1:(s(2)-1));
    gt1dd(:,1)=NaN;
    
    gt2dd=gt2;
    gt2dd(2:end,:)=gt2d(1:(s(1)-1),:);
    gt2dd(1,:)=NaN;
    
    clear('gt1d','gt2d');
    gdd=min(gt1dd,gt2dd);
    clear('gt1dd','gt2dd');

    gt=min(gt1,gt2);
    clear('gt1','gt2');

    
    gr=min(gt,gd);
    clear('gt','gd');
    grl=min(gr,gdd);
    p=gather(grl);

end