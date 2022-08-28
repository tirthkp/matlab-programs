subplot(2,2,1)
x=imread('cameraman.tif');
imshow(x);

subplot(2,2,2)
imhist(x)
title('regular histogram');

title('original image');
subplot(2,2,3)
e=histeq(x);
imshow(e);
title('Equilized image');

subplot(2,2,4)
imhist(e);
title('Equilize histogram');

fprintf('92000103014 Tirth Patel\n')