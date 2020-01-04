clc
close all;
clear all;

a=imread('russellsage.jpg');
a=rgb2gray(a);
a2 = Thresholding(a);
imshow(a2);