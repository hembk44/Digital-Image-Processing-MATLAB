function im=Thresholdingmatlab(a)
  [r,c]=size(a);
  im=zeros(r,c);
  for i=1:r
      for j=1:c
          if a(i,j)==0
              im(i,j)=1;
          end
           if a(i,j)==255
              im(i,j)=1;
           end
%%             if a(i, j)>180
%%                im(i,j)=1;
%%             end
%%               if a(i,j)>95
%%                 im(i,j)=1;
%%               end
      end
  end
  im=bwareaopen(im, 5);
  im=imfill(im, 'holes');
end
