I =imread('cameraman.tif');
NI = imnoise(I,'salt & pepper');
NI1 = imnoise(I,'gaussian');
%NI2 = im2double(NI);
f = [ 1, 1, 1; 1, 1, 1; 1, 1, 1];  %f = ones(9,9);

subplot(2,3,1);
imshow(I);
title('Original Image');

subplot(2,3,2);
imshow(NI);
title('Noise S & P Image');

subplot(2,3,3);
c2=ordfilt2(NI,9,f);
imshow(c2);
title('Max S & PFilter');

subplot(2,3,4);
imshow(I);
title('Original Image');

subplot(2,3,5);
imshow(NI1);
title('Guassian Noise Image');

subplot(2,3,6);
c2=ordfilt2(NI1,9,f);
imshow(c2);
title('Max Guassian Filter');
fprintf('92000103014 Tirth Patel');