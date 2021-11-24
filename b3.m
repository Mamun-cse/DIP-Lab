clear;
clc;
Img = imread('camera.png');
[m, n] = size(Img);

three_msb_img = Img;
mask=224;
for i = 1 : m
    for j = 1 : n
        three_msb_img(i,j) = bitand(Img(i,j), mask);
    end
end

difference_image = imabsdiff(Img, three_msb_img);

subplot(2,2,1);
imshow(Img);
title('Original Image');

subplot(2,2,2);
imshow(three_msb_img);
title('Three MSB image');

subplot(2,2,3);
imshow(difference_image);
title('Difference Image');
