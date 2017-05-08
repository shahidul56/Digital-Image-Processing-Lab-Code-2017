a = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0305(a)(DFT_no_log).tif');
%a = im2double(f);

[row, col, channel] = size(a);

b = a;

c = input('Input the value of constant c: ');

for i=1:row
    for j=1:col
        r = double(a(i,j));
        b(i,j)=c .* log10(1 + r);
    end
end


subplot(1, 2, 1);
imshow(a);
title('Original');

subplot(1, 2, 2);
imshow(b);
title('Log Transformation');
