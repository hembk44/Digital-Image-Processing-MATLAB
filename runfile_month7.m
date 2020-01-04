function [x,finalGreenness_index] = runfile_month7(lengthx, finalGreenness_index, x)

%specify the folder for the images
folder = 'C:\Users\baralhems12\Desktop\MATLAB\codes\7_July_2015'; % change this to the location of the images
list    = dir(fullfile(folder, '*.jpg'));
nFile   = length(list);
%finalGreenness_index= [];
success = false(1, nFile);
%x = [];
iter_start = length(x);
for k = 1:nFile
    success(k) = true;
    file = list(k).name;
    %file = list(k).name
    
%select region of interest
I = imread(file); 
I2 = imcrop(I,[186 442 600 500]);
   % imtool(I);
  % figure(k)
    %  imshow(I2);
  greenness_index = Thresholding_run(I2);
  finalGreenness_index(k + iter_start) = greenness_index;
  x(k + iter_start) = k + iter_start;
  %y(k) = 0.4;
end

return
