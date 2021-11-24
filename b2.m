clc;
clear;
a = imread('camera.png');
a = im2double(a);
[m,n] = size(a);
pImg= zeros(m,n);
invImg= zeros(m,n);

g = input('value of gamma:');
c =1 ;
for i = 1:m
    for j =1:n
        pImg(i,j) = c*a(i,j)^g;
    end
end
for i = 1:m
    for j =1:n
        invImg(i,j) = 10^(a(i,j)/c) - 1 ;
    end
end


new=imabsdiff(pImg,invImg);
subplot(2,2,1);
imshow(a);
title('originalImage');
subplot(2,2,2);
imshow(pImg);
title('powerlaWImage');
subplot(2,2,3);
imshow(invImg);
title('inverseLogImage');
subplot(2,2,4);
imshow(new);
title('new image');