clc
clear all

%specify the folder for the images
folder = 'C:\Users\baralhems12\Desktop\MATLAB\codes\Allimages_2015'; % change this to the location of the images
list    = dir(fullfile(folder, '*.jpg'));
nFile   = length(list);
finalGreenness_index= [];
success = false(1, nFile);
x = [];

%specify the folder for the images
folder = 'C:\Users\baralhems12\Desktop\MATLAB\codes\4_Apr_2014'; % change this to the location of the images
list    = dir(fullfile(folder, '*.jpg'));
nFile   = length(list);
finalGreenness_index= [];
success = false(1, nFile);
y = [];

for k = 1:nFile
    success(k) = true;
    file = list(k).name;
    %file = list(k).name
    
%select region of interest
I = imread(file); 
I2 = imcrop(I,[186 442 600 500]);
   % imtool(I);
  % figure(k)
%      imshow(I2);
  greenness_index = Thresholding_run(I2);
  finalGreenness_index(k) = greenness_index;
  x(k) = k;
  y(k) = k;
  
end
hold on
plot(x,finalGreenness_index,'--k','LineWidth',1)
plot(x,finalGreenness_index,'--k','LineWidth',2)
plot(x,y)

% lengthx = length(x);
%   [x,finalGreenness_index] = runfile_month2(lengthx, finalGreenness_index, x);
% plot(x,finalGreenness_index,'--k','LineWidth',1)

  

