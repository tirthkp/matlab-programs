I=imread('peppers.png');
subplot(2,3,1);
imshow(I); 
title('Input Image');

I1=rgb2gray(I);
subplot(2,3,2);
imshow(I1); 
title('Input Grayscale Image');

NI =imnoise(I1,'gaussian');
subplot(2,3,3);
imshow(NI); 
title('Noisy Image');

G1=fspecial('gaussian', 5, 1);

Lap=[0 -1 0; -1 4 -1; 0 -1 0];

Output1=conv2(NI, G1, 'same');

subplot(2,3,4);
imshow(uint8(Output1));
title('Apply Gaussian Filter');

Output2 = conv2(Output1, Lap, 'same');

subplot(2,3,5);
imshow(Output2); 
title('Apply Laplacian Operator');