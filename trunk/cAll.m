names=['ccc'; 'ccl' ; 'cch'; 'chl'; 'ccm'; 'cml'; 'ggg'; 'ggl'; 'sss'; 'ssl'; 'gra'; 'cla'; 'c3a'];
active=[ 1  ;   1   ;  1   ;  1   ;  1   ;  1   ;  1   ;  1   ;  1   ;  1   ;  0   ;   0  ;   0  ];
basedir=pwd;


nIt=5;
im=imread('../01.tif');
d=dir('*.tif');
nI=size(d,1);
%images=zeros(size(im,1),size(im,2),nI);
for i=1:nI
    im=imread(sprintf('../%.2d.tif',i));
    images(i).im=im;
end

for cDir=1:size(names,1)
   if (active(cDir)==1)
       if (any(names(cDir,:)=='m'))
           n=3*nIt;
       else
           if (any(names(cDir,:)=='h'))
               n=2*nIt;
           else
               n=nIt;
           end
       end
       if (all(names(cDir,:)=='gra'))
           n=2*nIt;
       end
       if (all(names(cDir,:)=='cla'))
           n=nIt;
       end
       if (all(names(cDir,:)=='c3a'))
           n=3*nIt;
       end
       
       sprintf('%s - %d\n',names(cDir,:),n)
       
       results=zeros(1,n);
       cd(names(cDir,:));
       
       for i=1:n
           aux=0;
           for cIm=1:nI
               im=imread(sprintf('a%.dn%.2d.tif',i,cIm));
               if (all(names(cDir,:)=='c3a'))
                    aux=aux+compImg(imresize(images(cIm).im,3,'nearest'),im);
               else
                    aux=aux+compImg(images(cIm).im,im);
               end
            end
            results(i)=aux/n;
       end
       figure,plot(100*results,'o-'); title(names(cDir,:));hold on; grid on;
       [v ind]=min(results);
       disp(sprintf('%s - %f - %f',names(cDir,:),nIt*(ind/n),100*v)) 
       save(sprintf('%s.mat',names(cDir,:)),'results');
       
       cd(basedir);
   end
end