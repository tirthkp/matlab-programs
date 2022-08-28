subplot(5,2,1)
x=imread('cameraman.tif');
imshow(x);
title('original image');

subplot(5,2,2)
imhist(x)
title('regular histogram');

subplot(5,2,3)
y=x;
for i=1:size(x,1)
    for j=1:size(x,2)
        y(i,j)=x(i,j)/numel(x);
    end
end
imshow(y)
title('Normalized');

subplot(5,2,4)

n=imhist(x)/numel(x);
imhist(n)
title('normalized histogram');

subplot(5,2,5)
e=histeq(x);
imshow(e);
title('Equilized image');

subplot(5,2,6)
imhist(e);
title('Equilize histogram');

subplot(5,2,7)
z=x;
for i=1:size(x,1)
    for j=1:size(x,2)
        z(i,j)=x(i,j)-50;
    end
end
imshow(z);
title('left slide');

subplot(5,2,8)
imhist(z)
title('left slide');

subplot(5,2,9)
w=x;
for i=1:size(x,1)
    for j=1:size(x,2)
        w(i,j)=x(i,j)+50;
    end
end
imshow(w);
title('right slide');

subplot(5,2,10)
imhist(w)
title('right slide');
fprintf('92000103014 Tirth Patel/n')