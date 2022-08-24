subplot(1,3,1)
a=imread('cameraman.tif');
imshow(a);
title('original')

subplot(1,3,2)
c=imcomplement(a);
imshow(c);
title('imcomplement')

subplot(1,3,3)
b=a;
for i=1:size(a,1)
    for j=1:size(a,2)
        b(i,j)=255-a(i,j);
    end
end
imshow(b);
title('using for loop')
fprintf('92000103014 Tirth Patel\n')