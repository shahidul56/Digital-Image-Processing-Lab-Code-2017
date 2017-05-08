% Power-law (Gamma) Transformation

gamma_trans = imread('F:\Book Images\Ch 3\Fig0308(a)(fractured_spine).tif');

const = input('Input the value of constant const: ');
gamma = input('Input the value of constant gamma: ');

gamma_trans1 = gamma_trans;

[row2, col2, channel2] = size(gamma_trans);

for i=1:row2
    for j=1:col2
        r = double(gamma_trans(i,j));
        gamma_trans1(i,j)=const .* r .^ gamma;
    end
end


figure, subplot(2, 2, 1);
imshow(gamma_trans);
title('Original');

subplot(2, 2, 2);
imshow(gamma_trans1);
title('Gamma Transformation');
