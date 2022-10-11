I =imread('cameraman.tif');
subplot(5,2,1);
imshow(I);
title('Original Image');

subplot(5,2,2);
imhist(I);
title('Histogram');

subplot(5,2,3);
NI = imnoise(I,'salt & pepper');
imshow(NI)
title('salt and pepper');

subplot(5,2,4);
NI = imnoise(I,'salt & pepper');
imhist(NI);

subplot(5,2,5);
NL = imnoise(I,'gaussian');
imshow(NL)
title('gaussian');

subplot(5,2,6);
NL = imnoise(I,'gaussian');
imhist(NL);

subplot(5,2,7);
NT = imnoise(I,'poisson');
imshow(NT)
title('poisson');

subplot(5,2,8);
NT = imnoise(I,'poisson');
imhist(NT);

subplot(5,2,9);
NS = imnoise(I,'speckle')
imshow(NS)
title('speckle');

subplot(5,2,10);
NS = imnoise(I,'speckle');
imhist(NS);
fprintf('92000103014 Tirth Patel');