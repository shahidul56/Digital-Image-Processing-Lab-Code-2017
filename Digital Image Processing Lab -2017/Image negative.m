a = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0304(a)(breast_digital_Xray).tif');

[row, col, channel] = size(a);

% image negative

b = a;

for i=1:row
    for j=1:col
        b(i,j)=255 - a(i,j);
    end
end

% b = imcomplement(a);

subplot(1, 2, 1);
imshow(a);
title('Original');

subplot(1, 2, 2);
imshow(b);
title('Negative');
