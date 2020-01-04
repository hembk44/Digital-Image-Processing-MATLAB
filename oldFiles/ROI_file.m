clc
clear all
% im = imread('hem.jpg');


%select region of interest
I = imread('hem.jpg');
 I2 = imcrop(I,[205 376 1245 859]);
    % imtool(I);
      imshow(I2);
redChannel = I2(:,:, 1);
greenChannel = I2(:,:, 2);
blueChannel = I2(:,:, 3);
redMean = mean(redChannel);


% greenness = greenChannel./(redChannel+blueChannel+greenChannel)
% 
% rgbImage = imread('hem.jpg');
% imshow(rgbImage);
% redChannel = rgbImage(:,:, 1);
% greenChannel = rgbImage(:,:, 2);
% blueChannel = rgbImage(:,:, 3);
% 
%  greenness = mean(mean(greenChannel))

% redMean = mean(mean(redChannel))
% greenMean = mean(mean(blueChannel))
% blueMean = mean(mean(blueChannel))
% disp(sprintf('The red mean = %.2f\nThe green mean = %.2f\nTheblue mean = %.2f', ...redMean, greenMean, blueMean));
% msgbox{ message);


% R = YourImage(:,:,1); % Red color plane
% G = YourImage(:,:,2);   % Green color plane
% B = YourImage(:,:,3);   % Blue color plane
% I = 1/3*(R+G+B);

