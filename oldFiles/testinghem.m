clc
close all;

a=imread('hem.jpg');
% a=rgb2gray(a);
I = Thresholdinghem(a);
% imshow(I);





imshow(I);
imtool(I);

