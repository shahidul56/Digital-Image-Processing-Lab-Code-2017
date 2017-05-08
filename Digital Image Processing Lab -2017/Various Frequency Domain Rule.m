
%==============================================================================================
%function   IdealHighpass for30
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);  %2d fisrt furiar transform
f_shift=fftshift(f_transform); % zero frequency component to center of spectrum 
p=m/2;
q=n/2;
d0=30;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);

if distance>=d0
    high_filter(i,j)=1;
else
    high_filter(i,j)=0;
end
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply); % inverse zero frequency component to center of spectrum
image_filter_apply_i30=abs(ifft2(image_orignal)); %inverse 2d fisrt furiar transform


%==============================================================================================
%function IdealHighpass for160
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);
f_shift=fftshift(f_transform);
p=m/2;
q=n/2;
d0=160;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);

if distance>=d0
    high_filter(i,j)=1;
else
    high_filter(i,j)=0;
end
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply);
image_filter_apply_i160=abs(ifft2(image_orignal));





%==============================================================================================
%function Origibnal Image
%==============================================================================================


%==============================================================================================
%function Dft
%==============================================================================================





%==============================================================================================
%function Notch reject 
%==============================================================================================




%==============================================================================================
%function Notch pass 
%==============================================================================================



%==============================================================================================
%function ButterworthHighpass for30
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);
f_shift=fftshift(f_transform);
p=m/2;
q=n/2;
d0=30;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);

high_filter(i,j)=1/(1+((d0/distance)^2));
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply);
image_filter_apply_b30=abs(ifft2(image_orignal));



%==============================================================================================
%function ButterworthHighpass for160
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);
f_shift=fftshift(f_transform);
p=m/2;
q=n/2;
d0=30;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);
%high_filter(i,j)=1-exp(-(distance)^2/(2*(d0^2)));
high_filter(i,j)=1/(1+((d0/distance)^2));
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply);
image_filter_apply_b160=abs(ifft2(image_orignal));



%==============================================================================================
%function GaussianHighpass for30
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);
f_shift=fftshift(f_transform);
p=m/2;
q=n/2;
d0=30;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);
high_filter(i,j)=1-exp(-(distance)^2/(2*(d0^2)));
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply);
image_filter_apply_g30=abs(ifft2(image_orignal));




%==============================================================================================
%function GaussianHighpass for160
%==============================================================================================

a=imread('E:\EDUCATION\THEIRD YEAR\3rd year 2nd term\LAB\CSE-Digital Image Processing\Book Images\Ch 4\Fig0441(a)(characters_test_pattern).tif');


[m n]=size(a);
f_transform=fft2(a);
f_shift=fftshift(f_transform);
p=m/2;
q=n/2;
d0=160;
for i=1:m
for j=1:n
distance=sqrt((i-p)^2+(j-q)^2);
high_filter(i,j)=1-exp(-(distance)^2/(2*(d0^2)));
end
end
filter_apply=f_shift.*high_filter;
image_orignal=ifftshift(filter_apply);
image_filter_apply_g160=abs(ifft2(image_orignal));





figure;
subplot(3,4,1);imshow(image_filter_apply_i30,[]);title('Ideal High pass 30');
subplot(3,4,2);imshow(image_filter_apply_i160,[]);title('Ideal High pass 160');
subplot(3,4,3);imshow(a);title('Original Image');

subplot(3,4,5);imshow(image_filter_apply_b30,[]);title('Butter High 30');
subplot(3,4,6);imshow(image_filter_apply_b160,[]);title('Butter High 160');
subplot(3,4,9);imshow(image_filter_apply_g30,[]);title('Gaussian High 30');
subplot(3,4,10);imshow(image_filter_apply_g160,[]);title('Gaussian High 160');





