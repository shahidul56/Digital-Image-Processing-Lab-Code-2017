clc;
f = imread('F:\Book Images\Ch 3\Fig0326(a)(embedded_square_noisy_512).tif');
im = f;
[r,c] = size(f);
temp = zeros(r+2,c+2);
n=3;
for i=1:r
    for j=1:c
        k=i+1;
        l=j+1;
        temp(k,l)=f(i,j);
    end
end
result = zeros(r,c);
temp2 = zeros(n,n);
for m=1:r
    for n=1:c
        x=m+1;
        y=n+1;
        temp2(1,1)=temp(x-1,y-1);
        temp2(1,2)=temp(x-1,y);
        temp2(1,3)=temp(x-1,y+1);
        temp2(2,1)=temp(x,y-1);
        temp2(2,2)=temp(x,y);
        temp2(2,3)=temp(x,y+1);
        temp2(3,1)=temp(x+1,y-1);
        temp2(3,2)=temp(x+1,y);
        temp2(3,3)=temp(x+1,y+1);
        
        %Using histeq function
        temp3 = temp2;
        temp3 = histeq(temp3);
        result(m,n) = temp3(2,2);
        
        
    end
end
 subplot(1,3,1);
 imshow(im);title('Original Image');

 subplot(1,3,2);
 imshow(result);title('Locally matched image using function');
 
