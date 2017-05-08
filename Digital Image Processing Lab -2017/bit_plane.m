f = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0305(a)(DFT_no_log).tif');


b0 = mod(a, 2);
b1 = mod(floor(a/2), 2);
b2 = mod(floor(a/4), 2);
b3 = mod(floor(a/8), 2);
b4 = mod(floor(a/16), 2);
b5 = mod(floor(a/32), 2);
b6 = mod(floor(a/64), 2);
b7 = mod(floor(a/128), 2);

imshow(f);
figure, imshow(b0);
figure, imshow(b1);
figure, imshow(b2);
figure, imshow(b3);
figure, imshow(b4);
figure, imshow(b5);
figure, imshow(b6);
figure, imshow(b7);

g = 2*(2*(2*(2*(2*(2*(2*b7+b6)+b5)+b4)+b3)+b2)+b1);

figure, imshow(g);
