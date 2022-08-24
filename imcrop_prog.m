subplot(1,2,1)
I = imread('circuit.tif');
imshow(I)
subplot(1,2,2)
I2 = imcrop(I,[75 68 130 112]);
imshow(I2)
fprintf('92000103014 Tirth Patel\n')