I = imread('peppers.png');
subplot(2,4,1);
imshow(I);
title('Input Image');
I = rgb2gray(I);
subplot(2,4,2);
imshow(I);
title('Input Grayscale Image');
I1= edge(I,'prewitt');
subplot(2,4,3);
imshow(I1);
title('Prewitt Edge detection');

I2= edge(I,'sobel');
subplot(2,4,4);
imshow(I2);
title('Sobel Edge detection');

I3= edge(I,'roberts');
subplot(2,4,5);
imshow(I3);
title('Roberts Edge detection');

I4= edge(I,'log');
subplot(2,4,6);
imshow(I4);
title('Laplacian of Gaussian Edge detection');

I5= edge(I,'canny');
subplot(2,4,7);
imshow(I5);
title('Canny Edge detection');