%This file contains all the experiments/tests I did while trying
%to understand how MATLAB processes images and colors

r = imread ('red.png');
g = imread ('green.png');
b = imread ('blue.png');
rgb = imread ('rgb.png');
rgbg = rgb2gray(rgb);
imshow (rgbg);
%imhist (rgb);
%openvar r;
%openvar g;
%openvar b;

%So apparently, MATLAB stores multidimensional vectors as A(rows,
%columns, dimension). Following that, in a multidimensional color file, the
%red color can be accessed as Var (:,:,1) i.e. all the rows and columns in
%the 1st dimension are selected. Blue would be Var (:,:,3) and so on.