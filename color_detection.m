clc; clear;
cam = webcam;

while true
i = snapshot(cam);
%i = imread ('test1.jpg');
g = rgb2gray (i);
red = i(:,:,1) - g;

%x = im2bw(red, 0.2);
%imshow (i);
%figure, imshow (g);
%figure, imshow(red);
%figure, imshow (x);

x = im2bw(red, 0.2); %use static thresh, adaptive threshold gives issues
l = logical (bwlabel (x,8));
%x = imbinarize(red,graythresh(red));
%s = strel ('disk', 5);
%x = imerode (x, s);
box = regionprops(l, 'BoundingBox');

imshow (i) 
hold on

for y = 1:length(box)
   bb = box(y).BoundingBox;
   rectangle('Position',bb,'EdgeColor', 'r','LineWidth',2);
end
%l = bwlabel (x);

end

