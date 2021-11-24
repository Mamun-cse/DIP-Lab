clear;
clc;
Img = imread('camera.png');
[m, n] = size(Img);
prompt = 'What is the intensity value? ';
inten = input(prompt);

prompt = 'What is the range? ';
x = input(prompt);
y = input('');

%ImgB=im2double(Img);
ImgB=uint16(Img);

for i=1:m
    for j=1:n
        %ImgB(i,j)=Img(i,j)+inten;
        if ImgB(i,j)>=x && ImgB(i,j)<=y
            ImgB(i,j)=Img(i,j)+inten;
        end
    end
end
tem_image = ImgB - min(ImgB(:));
output_img = double(tem_image)./double(max(tem_image(:)));
ImgB_Output=uint8(output_img*256);
subplot(1,2,1);
imshow(Img);
title('Orginal')
subplot(1,2,2);
imshow(ImgB_Output);
title('Bright');
