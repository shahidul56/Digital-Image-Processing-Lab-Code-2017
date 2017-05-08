a = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0304(a)(breast_digital_Xray).tif');
a = im2double(a);
subplot(3, 2, 1);
imshow(a);
title('original 1');
[row, col, channel] = size(a);

% image negative

b = a;

for i=1:row
    for j=1:col
        b(i,j)=255 - a(i,j);
    end
end

subplot(3, 2, 2);
imshow(b);
title('Negative');


% Log Transformation

log_trans = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0305(a)(DFT_no_log).tif');
log_trans = im2double(log_trans);

c = input('Input the value of constant c: ');

log_trans1 = log_trans;

[row1, col1, channel1] = size(log_trans);

for i=1:row1
    for j=1:col1
        log_trans1(i,j)=c * log(1 + log_trans(i,j));
    end
end

subplot(3, 2, 3);
imshow(log_trans);
title('Original 2');

subplot(3, 2, 4);
imshow(log_trans1);
title('Log Transformation');

f = imcomplement(a);

subplot(3, 2, 5);
imshow(f);
title('Negative fun');


% Power-law (Gamma) Transformation

gamma_trans = imread('E:\3-2 term\DIP\DIP Images\DIP3E_CH03_Original_Images\DIP3E_Original_Images_CH03\Fig0309(a)(washed_out_aerial_image).tif');
gamma_trans = im2double(gamma_trans);

const = input('Input the value of constant const: ');
gamma = input('Input the value of constant gamma: ');
gamma1 = input('Input the value of constant gamma: ');
gamma2 = input('Input the value of constant gamma: ');

gamma_trans1 = gamma_trans;
gamma_trans2 = gamma_trans;
gamma_trans3 = gamma_trans;

[row2, col2, channel2] = size(gamma_trans);

for i=1:row2
    for j=1:col2
        r = double(gamma_trans(i,j));
        gamma_trans1(i,j)=const * r ^ (1/gamma);
    end
end

for i=1:row2
    for j=1:col2
        r = double(gamma_trans(i,j));
        gamma_trans2(i,j)=const * r ^ (1/gamma1);
    end
end

for i=1:row2
    for j=1:col2
        r = double(gamma_trans(i,j));
        gamma_trans3(i,j)=const * r ^ (1/gamma2);
    end
end

figure, subplot(2, 2, 1);
imshow(gamma_trans);
title('Original 2');

subplot(2, 2, 2);
imshow(gamma_trans2);
title('Gamma Transformation');

subplot(2, 2, 3);
imshow(gamma_trans1);
title('Gamma Transformation');

subplot(2, 2, 4);
imshow(gamma_trans3);
title('Gamma Transformation');