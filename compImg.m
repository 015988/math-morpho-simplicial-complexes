function te=compImg(orig,im)
  orig=double(orig);
  im=double(im);
  if (max(max(orig))>0)
    orig=double(orig/max(max(orig)));
  end
  if (max(max(im))>0)
    im=double(im/max(max(im)));
  end
  te=sum(sum(abs(orig-im)))/((size(im,1)*size(im,2)));
end