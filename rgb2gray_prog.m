subplot(1,2,1)
RGB = imread('peppers.png');
imshow(RGB)
subplot(1,2,2)
I = rgb2gray(RGB);
imshow(I)
fprintf('92000103014 Tirth Patel\n')