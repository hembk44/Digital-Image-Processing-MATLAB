a = imread('hem.jpg');
imshow(a)
function Im=Thresholding(a);
[r, c]=size(I)
im=zeros(r, c);
for i = l:r
    for j = l:c
        if I(i,j)=1;
            
        end
    end
end
im = bwareaopen(I, 5);
im = imfill(I, 'holes');
end


