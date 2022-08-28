subplot(1,2,1)
I = imread('cameraman.tif');
imshow(I)
title('Original gray-scale image')
subplot(1,2,2)
bw = im2bw(I,0.5);
imshow(bw)
title('Output of im2bw')
fprintf('92000103014 Tirth Patel\n')