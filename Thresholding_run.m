function [ greenness_index ] = Thresholding_run(im )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

redChannel = im(:,:, 1);
greenChannel = im(:,:, 2);
blueChannel = im(:,:, 3);
redMean = mean(mean(redChannel));
blueMean = mean(mean(blueChannel));
greenMean = mean(mean(greenChannel));

greenness_index = greenMean/(redMean+blueMean+greenMean);

 
end

