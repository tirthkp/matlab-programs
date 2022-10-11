x = imread('circuit.tif');
NI = imnoise(x,'salt & pepper');
NI1 = im2double(NI);

NL = imnoise(x,'gaussian');
NL1 = im2double(NL);

f = [ 1, 1, 1; 1, 1, 1; 1, 1, 1];

subplot(2,3,1)
imshow(x);
title('Original');

subplot(2,3,2);
imshow(NI);
title('Noice Salt & Pepper');

subplot(2,3,3)
g=exp(imfilter(log(NI1),f,'replicate')).^(1/9);
imshow(g);
title('Geometric Mean Filter');

subplot(2,3,4)
imshow(NL);
title('Noice Gaussian');

subplot(2,3,5)
g=exp(imfilter(log(NL1),f,'replicate')).^(1/9);
imshow(g);
title('Gaussian Geometric Mean Filter');
fprintf('92000103014 Tirth Patel');