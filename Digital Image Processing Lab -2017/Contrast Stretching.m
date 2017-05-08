f = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0304(a)(breast_digital_Xray).tif');
f = im2double(f);

f1 = f;

b = max(f(:));
a = min(f(:));
[row, col, channel] = size(a);


for i=1:row
    for j=1:col
       f1(i,j)=(f(i,j) - a) * ((255 - 0) / (b - a)) + a;
    end
end

subplot(1, 2, 1);
imshow(f);
title('original');

subplot(1, 2, 2);
imshow(f1);
title('Contrast Stretching');

[b1,maxInd1] = max(f1(:))
[a1,minInd1] = min(f1(:))