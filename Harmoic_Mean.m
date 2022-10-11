x = imread('circuit.tif');
NI = imnoise(x,'salt & pepper');
NI1 = im2double(NI);

NL = imnoise(x,'gaussian');
NL1 = im2double(NL);

f = [ 1, 1, 1; 1, 1, 1; 1, 1, 1]; %f = ones(9,9);

subplot(2,3,1)
imshow(x);
title('Original');

subplot(2,3,2);
y= imnoise(x,'salt & pepper');
imshow(y);
title('Noice Salt & Pepper');

subplot(2,3,3)
g=3*3./imfilter(1./(NI1 + eps),f,'replicate');
imshow(g);
title('Harmonic Mean Filter');

subplot(2,3,4)
imshow(NL);
title('Noice Gaussian');

subplot(2,3,5)
g=3*3./imfilter(1./(NL1 + eps),f,'replicate');
imshow(g);
title('Harmonic Geometric Mean Filter');
fprintf('92000103014 Tirth Patel');