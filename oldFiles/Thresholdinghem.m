function im=Thresholdinghem(k)
  [r,c,rgb1]=size(k);
   aveall = [];
   
    for i=1:r
      for j=1:c
           if k(i,j,1)<= 15 && k(i,j,2)<25 && k(i,j,3)<=50
               k(i,j,1) = 255;
               k(i,j,2) = 255;
               k(i,j,3) = 255;           
           end
           if i < 123 
               k(i,j,1) = 255;
               k(i,j,2) = 255;
               k(i,j,3) = 255;   
           end
      end
    end
  im = k;
  
%   im=zeros(r,c);
%   for i=1:r
%       for j=1:c
%           if k(:,:,1)==0
%               k(:,:,1) = 1;
%           end
%            if k(:,:,1)>225
%               im(i,j)=1;
%            end
%              if i < 123
%                  im(i,j)=1;
%              end
 %%             if k(:,:,3);
 %%                 im(i,j)=1;
 %%            end
%%             if a(i, j)>180
%%                im(i,j)=1;
%%             end
%%               if a(i,j)==95
%%                 im(i,j)=1;
%%               end
%      %  im=bwareaopen(im, 7);

%im = imread('hem.jpg');
%[width, height, depth] = size(im);
%count = 0;
%r=0;
%g=0;
%b=0;
%for x = 1 : width
 %   for y = 1: height
  %      %r = r + im(x,y,1);
   %     g = g + im(x,y,2);
    %    %b = b + im(x,y,3);     
     %   count = count + 1;
    %end
%end

%find averages of each RGB value.
%r2 = r/count;
%g2 = g/count;
%b2 = b/count;


rgbImage = imread('hem.jpg');
imshow(rgbImage);
%redChannel = rgbImage(:,:, 1);
greenChannel = rgbImage(:,:, 2);
%blueChannel = rgbImage(:,:, 3);
%redMean = mean(mean(redChannel));
greenMean = mean(mean(:,:,2));
%blueMean = mean(mean(blueChannel));
%message = sprintf('The red mean = %.2f\nThe green mean = %.2f\nTheblue mean = %.2f',redMean, greenMean, blueMean);


%pep = imread('hem.jpg');
%mean(mean(pep))

   im=imfill(im, 'holes');
%%end 
