clear all;

folder = 'C:\Users\baralhems12\Desktop\MATLAB\codes\images'; % change this to the location of the images
list    = dir(fullfile(folder, '*.jpg'));
nFile   = length(list);
finalGreenness_index= [];
success = false(1, nFile);

for k = 1:nFile
    success(k) = true;
  file = list(k).name;
  
  a=imread(file);
 [a2, greenness_index] = Thresholding(a);
  finalGreenness_index(k) = greenness_index;
end

finalGreenness_index;