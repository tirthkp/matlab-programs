I =imread('cameraman.tif');
f=1/16*[1,2,1;2,4,2;1,2,1];

X = imnoise(I,'salt & pepper');
Z=filter2(f,X);
X1 = imnoise(I,'gaussian');
Z1=filter2(f,X1);

subplot(2,3,1);
imshow(I);
title('Original Image');

subplot(2,3,2);
imshow(X);
title('Noise S & P Image');

subplot(2,3,3);
imshow(uint8(Z));
title('Denoised S & P Image');

subplot(2,3,4);
imshow(I);
title('Original Image');

subplot(2,3,5);
imshow(X1);
title('Noise Gaussian Image');

subplot(2,3,6);
imshow(uint8(Z1));
title('Denoised Gaussian Image');
fprintf('92000103014 Tirth Patel');