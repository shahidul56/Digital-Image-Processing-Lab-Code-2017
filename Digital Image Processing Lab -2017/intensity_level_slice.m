f = imread('F:\Book Images\Ch 3\Fig0316(3)(third_from_top).tif');

%b = imadjust(f, [0 1], [1 0]);

[row, col, channel] = size(f);

b = f;

for i=1:row
    for j=1:col
        if f(i,j)>150 || f(i,j)<170
            b(i,j) = 0;
        else
            b(i,j) = f(i,j);
        end
    end
end

subplot(1, 2, 1)
imshow(f)
title('original');

subplot(1, 2, 2)
imshow(b);
title('Intensity');