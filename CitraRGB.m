clear
clc
close all

img = imread('tiger.jpg');
gray = rgb2gray(img);
bnw = im2bw(img);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

red = cat(3,R,G.*0,B.*0);
green = cat(3,R.*0,G,B.*0);
blue = cat(3,R.*0,G.*0,B);

figure,imshow(red);
figure,imshow(green);
figure,imshow(blue);
imshow(gray);
imshow(bnw);