f = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0305(a)(DFT_no_log).tif');


b0 = bitget(f,1);
imshow(f);
figure, imshow(logical(b0));

b1 = bitget(f,2);
figure, imshow(logical(b1));

b2 = bitget(f,3);
figure, imshow(logical(b2));

b3 = bitget(f,4);
figure, imshow(logical(b3));

b4 = bitget(f,5);
figure, imshow(logical(b4));

b5 = bitget(f,6);
figure, imshow(logical(b5));

b6 = bitget(f,7);
figure, imshow(logical(b6));

b7 = bitget(f,8);
figure, imshow(logical(b7));

g = b7*128+b6*64+b5*32+b4*16+b3*8+b2*b0;
figure, imshow(g);