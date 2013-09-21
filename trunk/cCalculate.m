
dim=32;

dn=dir('n*');
basedir=pwd;
for dirAtual=1:size(dn,1)
    if (dn(dirAtual).isdir==1)
        cd(dn(dirAtual).name);
        createDirs;
        
        d=dir('n*.png');
        
        
        parfor i=1:size(d,1)
            c=createComplex(d(i).name);
            
            %tic,classicASF(c,dim,'cla');sprintf('Done cla - %g %g mins',i,toc/60)
            
            %c.points=imresize(c.points,3,'nearest');
            %tic,classicASF(c,3*dim,'c3a');sprintf('Done c3a - %g %g mins',i,toc/60)
            
            tic,graphASF(c,2*dim);sprintf('Done gra - %g %g mins',i,toc/60)
            
            tic,asfC(c,dim);sprintf('Done ccc - %g - %g mins',i,toc/60)
            tic,asfCl(c,dim);sprintf('Done ccl - %g - %g mins',i,toc/60)
            tic,asfCh(c,2*dim);sprintf('Done cch - %g - %g mins',i,toc/60)
            tic,asfChl(c,2*dim);sprintf('Done chl - %g - %g mins',i,toc/60)
            tic,asfCm(c,3*dim);sprintf('Done ccm - %g - %g mins',i,toc/60)
            tic,asfCml(c,3*dim);sprintf('Done cml - %g - %g mins',i,toc/60)
            
            tic,asfG(c,dim);sprintf('Done ggg - %g - %g mins',i,toc/60)
            tic,asfGl(c,dim);sprintf('Done ggl - %g - %g mins',i,toc/60)
            
            
            tic,asfS(c,dim);sprintf('Done sss - %g - %g mins',i,toc/60)
            tic,asfSl(c,dim);sprintf('Done ssl - %g - %g mins',i,toc/60)
            
        end
        datestr(now)
        cd(basedir);
    end
end
